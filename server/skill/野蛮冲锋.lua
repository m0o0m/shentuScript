--script\skill\野蛮冲锋.lua
--脚本挂在技能中即可

local self_buffs = {"野蛮冲锋3级", "野蛮冲锋2级", "野蛮冲锋1级"};		--野蛮冲锋技能给自己附加的BUFF
local self_hp = {10, 50};		--冲撞失败后自身扣HP值(10~50随机)
local target_hp = {5, 30};		--冲撞成功后目标扣HP值(随机)

function post_apply(player, skill, x, y, targets)
	local id = lualib:GenTimerId(player);
	local map = lualib:MapGuid(player);
	local target = "";
	if #targets == 1 then
		target = targets[1];
	elseif #targets > 1 then
		target = get_target(player, targets);
	end

	lualib:AddTimerEx(player, id, 1000, 1, "on_timer_post_apply", target);
end

function on_timer_post_apply(player, id, target)
	if target == nil then
		target = "";
	end
	
	local result = false;
	for _, v in ipairs(self_buffs) do
		if lualib:HasBuff(player, v) then
			result = true;
			break;
		end
	end
	
	if not result then
		--冲撞被打断
		if target == "" then
			ReduceHp(player, self_hp);		--无目标(撞墙等)，自身扣血
		else
			if lualib:Level(player) <= lualib:Level(target) or lualib:HasBuff(target, "无敌") then
				ReduceHp(player, self_hp);		--未撞动，自身扣血
			else
				if IsFront(player, target) then
					ReduceHp(target, target_hp);	--撞动，目标扣血
				end
			end
		end
	else
		--冲撞未被打断		
		if target ~= "" and IsFront(player, target) then
			ReduceHp(target, target_hp);
		end
	end
end

function get_target(player, targets)
	local index = 1;
	local temp = lualib:Distance(player, targets[1]);
	for i = 2, #targets do
		local distance = lualib:Distance(player, targets[i]);
		if distance < temp then
			temp = distance;
			index = i;
		end
	end
	
	return targets[index];
end

function ReduceHp(role, hp)
	hp = lualib:GenRandom(hp[1], hp[2]);
	local hp_ref = -1 * hp;
	hp = lualib:Hp(role, false) - hp;
	if hp > 0 then
		lualib:SetHp(role, hp, false);
	else
		lualib:Kill(role);
	end
	lualib:SendRoleHPNtf(role);		--通知周围角色的血条，较耗，自行斟酌是否需要
	lualib:ShowRoleHPRef("", role, hp_ref);		--通知周围角色头顶冒血，较耗，自行斟酌是否需要(若需要请更新测试版最新的引擎)
end

function IsFront(role, target)
	local dxs = {[0] = 0, 1, 1, 1, 0, -1, -1, -1};
	local dys = {[0] = -1, -1, 0, 1, 1, 1, 0, -1};
	local role_x, role_y = lualib:X(role), lualib:Y(role);
	local target_x, target_y = lualib:X(target), lualib:Y(target);
	local dir = lualib:Dir(role);
	if (target_x == (role_x + dxs[dir])) and (target_y == (role_y + dys[dir])) then
		return true;
	else
		return false;
	end
end