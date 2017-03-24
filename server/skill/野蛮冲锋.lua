--script\skill\Ұ�����.lua
--�ű����ڼ����м���

local self_buffs = {"Ұ�����3��", "Ұ�����2��", "Ұ�����1��"};		--Ұ����漼�ܸ��Լ����ӵ�BUFF
local self_hp = {10, 50};		--��ײʧ�ܺ������HPֵ(10~50���)
local target_hp = {5, 30};		--��ײ�ɹ���Ŀ���HPֵ(���)

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
		--��ײ�����
		if target == "" then
			ReduceHp(player, self_hp);		--��Ŀ��(ײǽ��)�������Ѫ
		else
			if lualib:Level(player) <= lualib:Level(target) or lualib:HasBuff(target, "�޵�") then
				ReduceHp(player, self_hp);		--δײ���������Ѫ
			else
				if IsFront(player, target) then
					ReduceHp(target, target_hp);	--ײ����Ŀ���Ѫ
				end
			end
		end
	else
		--��ײδ�����		
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
	lualib:SendRoleHPNtf(role);		--֪ͨ��Χ��ɫ��Ѫ�����Ϻģ����������Ƿ���Ҫ
	lualib:ShowRoleHPRef("", role, hp_ref);		--֪ͨ��Χ��ɫͷ��ðѪ���Ϻģ����������Ƿ���Ҫ(����Ҫ����²��԰����µ�����)
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