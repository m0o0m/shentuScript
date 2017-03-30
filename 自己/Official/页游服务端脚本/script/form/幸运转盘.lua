local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/幸运转盘物品")
require("npc/每日签到物品")
require("system/每日签到")

function main(player, action)
    if action == 1 then
        Continue(player)
    elseif action == 2 then
        RefreshAward(player)
    elseif action == 3 then
        GetAward(player)
    end

    return ""
end

function Continue(player)
	if lualib:GetStr(player, "zhuanpanleixing") == "幸运转盘" then
		if lualib:Player_GetCustomVarInt(player, "幸运转盘_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品还未领取，请先领取。")
			notify_award(player, 0)
			return
		end
		
		local group = lualib:Player_GetCustomVarInt(player, "幸运转盘_CurGroupID")
		if group == 0 then
			return
		end

		--判断宝箱次数
		local times = lualib:Player_GetCustomVarInt(player, "幸运转盘_times")
		if times >= settings["转盘次数"] then
			lualib:SysMsg_SendWarnMsg(player, "你已经转过"..settings["转盘次数"].."次了。")
			notify_award(player, 0)
			return
		end

		-- 判断是否有元宝
		if lualib:Player_SubIngot(player, settings["消耗元宝"], false, "幸运转盘", "") == false then
			local msg = "你的元宝不足，是否立即充值，获取心爱的宝物？\n \n"
			msg = msg.."#IMAGE1902700017#<@chouqu *01*充值>"
			lualib:NPCTalk(player, msg)
			lualib:SysMsg_SendWarnMsg(player, "你的元宝不足。")
			notify_award(player, 0)
			return
		end

		local sel = GetRandomAward(player)
		times = times + 1
		lualib:Player_SetCustomVarInt(player, "幸运转盘_Sel_"..times, sel)
		lualib:Player_SetCustomVarInt(player, "幸运转盘_times", times)
		lualib:Player_SetCustomVarInt(player, "幸运转盘_HasAward", 1)
		notify_award(player, 1)
	elseif lualib:GetStr(player, "zhuanpanleixing") == "每日签到" then
		if lualib:Player_GetCustomVarInt(player, "每日签到_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品还未领取，请先领取。")
		--	notify_award1(player, 0)
			return
		end
		
		local group = lualib:Player_GetCustomVarInt(player, "每日签到_CurGroupID")
		if group == 0 then
			return
		end
		
		--判断宝箱次数
		local times = lualib:Player_GetCustomVarInt(player, "每日签到_times")
		if times >= settings1["转盘次数"] then
			lualib:SysMsg_SendWarnMsg(player, "每个转盘只能猜"..settings1["转盘次数"].."次。")
		--	notify_award1(player, 0)
			return
		end

		local sel = GetRandomAward(player)
		times = times + 1
		lualib:Player_SetCustomVarInt(player, "每日签到_Sel_"..times, sel)
		lualib:Player_SetCustomVarInt(player, "每日签到_times", times)
		lualib:Player_SetCustomVarInt(player, "每日签到_HasAward", 1)
		notify_award1(player, 1)
	end
end

function chouqu(player)
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function RefreshAward(player)
	if lualib:GetStr(player, "zhuanpanleixing") == "幸运转盘" then
		if lualib:Player_GetCustomVarInt(player, "幸运转盘_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品还未领取，请先领取。")
			notify_award(player, 0)
			return
		end
		-- 判断是否有元宝
		if lualib:Player_IsIngotEnough(player, settings["消耗元宝"], false) == false then
			lualib:SysMsg_SendWarnMsg(player, "你的元宝不足。")
			notify_award(player, 0)
			return
		end

		lualib:Player_SetCustomVarInt(player, "幸运转盘_times", 0)
		for n = 1, settings["转盘次数"] do
			lualib:Player_SetCustomVarInt(player, "幸运转盘_Sel_"..n, 0)
		end

		local i = lualib:GenRandom(1, table.getn(AwardGroup))
		lualib:Player_SetCustomVarInt(player, "幸运转盘_CurGroupID", i)

		Continue(player)
	elseif lualib:GetStr(player, "zhuanpanleixing") == "每日签到" then
		if lualib:Player_GetCustomVarInt(player, "每日签到_HasAward") == 1 then
			lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品还未领取，请先领取。")
		--	notify_award1(player, 0)
			return
		end

		local player_count = lualib:Player_GetCustomVarInt(player, "每日签到_times")
		local level = lualib:Player_GetIntProp(player, lua_role_level)
		if level < settings1["等级限制"] then
			local msg = "你的等级还不满"..settings1["等级限制"].."，不能使用此功能哟！"
			lualib:NPCTalk(player,msg)
			return ""
		end
		
		for n = 1, settings1["转盘次数"] do
			lualib:Player_SetCustomVarInt(player, "每日签到_Sel_"..n, 0)
		end

		lualib:Player_SetCustomVarInt(player, "每日签到_CurGroupID", 1)
		Continue(player)
	end
end


function GetAward(player)
	if lualib:BagFree(player, true, false, false) < 1 then
		lualib:SysMsg_SendWarnMsg(player, "包裹空位不足！请整理以后再试！")
		return
	end
	
	if lualib:GetStr(player, "zhuanpanleixing") == "幸运转盘" then
		if lualib:Player_GetCustomVarInt(player, "幸运转盘_HasAward") == 0 then
			lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品已经领取。")
			return
		end
		
		local times = lualib:Player_GetCustomVarInt(player, "幸运转盘_times")
		if times == 0 or times > settings["转盘次数"] then
			return
		end

		local group = lualib:Player_GetCustomVarInt(player, "幸运转盘_CurGroupID")
		if group == 0 or group > table.getn(AwardGroup) then
			return
		end

		local var = "幸运转盘_Sel_"..times
		local sel = lualib:Player_GetCustomVarInt(player, var)
		if sel == 0 or sel > table.getn(AwardGroup[group]) then
			return
		end

		if lualib:Player_GiveItemUnbind(player, AwardGroup[group][sel][1], AwardGroup[group][sel][3], "幸运转盘抽奖", "") then
			lualib:Player_SetCustomVarInt(player, "幸运转盘_HasAward", 0)
			lualib:Print("玩家"..lualib:Player_GetStrProp(player,  lua_role_user_name).."领取了"..AwardGroup[group][sel][3].."个"..AwardGroup[group][sel][1])
			if AwardGroup[group][sel][4] ~= "" then
				lualib:SysMsg_SendBroadcastMsg("", string.format(AwardGroup[group][sel][4], lualib:Player_GetStrProp(player,  lua_role_user_name)))
			end
			
			return
		end

		lualib:Warn(string.format("幸运转盘：玩家%s领取%d[%d]的%s失败。", lualib:Player_GetStrProp(player, lua_role_user_name),
								  group, sel, AwardGroup[group][sel][1]))
		lualib:SysMsg_SendWarnMsg(player, "领取奖励失败，请检查包裹")
		notify_award(player, 0)
	elseif lualib:GetStr(player, "zhuanpanleixing") == "每日签到" then
		if lualib:Player_GetCustomVarInt(player, "每日签到_HasAward") == 0 then
			lualib:SysMsg_SendWarnMsg(player, "您上次抽中的奖品已经领取。")
			return
		end
		
		local times = lualib:Player_GetCustomVarInt(player, "每日签到_times")
		if times == 0 or times > settings1["转盘次数"] then
			return
		end

		local group = lualib:Player_GetCustomVarInt(player, "每日签到_CurGroupID")
		if group == 0 or group > table.getn(AwardGroup1) then
			return
		end

		local var = "每日签到_Sel_"..times
		local sel = lualib:Player_GetCustomVarInt(player, var)

		if sel == 0 or sel > table.getn(AwardGroup1[group]) then
			return
		end

		if lualib:AddItem(player, lualib:Player_GetCustomVarStr(player, "每日签到_ItmeName"), AwardGroup1[group][sel][3],true, "每日签到抽奖", "") == true then
			lualib:Player_SetCustomVarInt(player, "每日签到_HasAward", 0)
			lualib:Print("玩家"..lualib:Player_GetStrProp(player, lua_role_user_name).."领取了"..AwardGroup1[group][sel][3].."个"..lualib:Player_GetCustomVarStr(player, "每日签到_ItmeName"))
			if AwardGroup1[group][sel][4] ~= "" then
				lualib:SysMsg_SendBroadcastMsg("", string.format(AwardGroup1[group][sel][4], lualib:Player_GetStrProp(player, lua_role_user_name)))
			end
			meiriqiandao(player) --弹出每日领取签到对话框
			return
		else
			lualib:SysMsg_SendWarnMsg(player, "领取奖励失败，请检查包裹")
			notify_award1(player, 0)
		end
	end
end
