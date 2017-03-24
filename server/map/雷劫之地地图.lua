local data = {	--等级  = 每次扣除生命上限百分比【根据突破等级不同扣除百分比不同，自行设置】
	[1] = 5,
	[2] = 10,
	[3] = 15,
	[4] = 20,
	[5] = 25,
	[6] = 30,
	[7] = 35,
	[8] = 45,
	[9] = 50,
	[10] = 55,
	[11] = 60,
	[12] = 65,
}

local item = "渡劫丹"--可减免伤害的道具索引名

local times = 9--执行几次雷击

local second = 10	--多少秒执行一次雷击

local buffs = "轮回渡劫闪电"	--收到雷击是给予玩家BUFF索引名，实现雷击特效【自行配置buff】

--地图模版表自行禁止可使用的道具，比如随机，回城啥的


function on_map_create(map, key)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_leave_map")
end

function on_timer(player, id)
	local leijinum = lualib:GetInt(player, "leijinum")
	if not lualib:DelItem(player, item, 1, 2, "渡劫消耗", player) then
		local is = lualib:GetInt(player, "exerciselv") + 1
		local pct = data[is]
		local maxhp = lualib:Hp(player, true)
		local curhp = lualib:Hp(player, false)
		local subs = math.floor(maxhp * pct / 100)
		if curhp - subs > 0 then
			lualib:SetHp(player, curhp - subs, false)
			lualib:ShowRoleHPRef("", player, -subs)
			lualib:SetInt(player, "leijinum", leijinum + 1)
		else
			lualib:Kill(player)
			lualib:SysWarnMsg(player, "很遗憾，本次内功突破失败了。")
		end
		lualib:AddBuff(player, buffs, 0)
	else
		lualib:SetInt(player, "leijinum", leijinum + 1)
		lualib:SysWarnMsg(player, "恭喜您消耗一颗“渡劫丹”，免受本次雷击伤害。")
	end
	if leijinum + 1 >= times then
		lualib:DelayCall(player, 1, "龙吟修仙诀表单:success", "")
	end
end

function on_enter_map(player)
	if lualib:GetInt(player, "dujieing") ~= 0 then
		lualib:AddTimer(player, 1, second * 1000, times, "on_timer")
	end
	lualib:SetInt(player, "dujieing", 0)
	lualib:SetInt(player, "leijinum", 0)
end

function on_leave_map(player)
	local leijinum = lualib:GetInt(player, "leijinum")
	if leijinum < times then
		lualib:SysWarnMsg(player, "很遗憾，本次内功突破失败了。")
	end
	lualib:SetInt(player, "dujieing", 0)
	lualib:SetInt(player, "leijinum", 0)
end