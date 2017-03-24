local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTimerEx(map, 1, 1*30*1000, 1, "closeDgn", "")
	return
end

function closeDgn(dgn)
	local map = lualib:Map_GetMapGuid("天怒之城");
	lualib:SetStr(map, "guild_map_guid", "")
	lualib:SetInt(map, "guild_active_time", 0)
	lualib:SysMsg_SendTopColor(2, "[行会争霸]已停止进入！让我们期待胜利行会的诞生", 11, 13) --竟然是红色
	lualib:SysMsg_SendBroadcastMsg("[行会争霸]已停止进入！让我们期待胜利行会的诞生", "系统通知")
	lualib:SysMsg_SendBroadcastMsg("请击杀其他行会的所有玩家", "友情提示")
	lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]已停止进入！", 15000)
	
	lualib:AddTimerEx(dgn, 2, 30*1000, 35, "panding", "")
	
end

function on_enter_map(player)
	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#进入行会争霸地图！#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return ""
end


function panding(map, id)
	lualib:SysMapMsg(map, "判定获胜行会中-----");
	local players = lualib:Map_GetMapPlayers(map, true)
	if #players < 1 then
		lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，无行会胜出.活动地图内没人", "系统通知")
		lualib:Map_DestroyDgn(map)
		return
	end

	local strTempOwner = lualib:MapOwnerFamily(map);
	if strTempOwner == "" then
		lualib:SysMapMsg(map, "系统每分钟判断一次胜利行会，请击杀其他行会的所有玩家，取得最终胜利！！");
		return
	end
	
	for i = 1, #players do
		Guild = lualib:GuildGuid(players[i])
		if Guild ~= "" and Guild ~= nil then
			break
		end
	end
	lualib:SetDBStr("Guild_award", Guild)
	lualib:SetDBNum("Guild_yb", 30000)
	lualib:SysMsg_SendBroadcastMsg("[行会争霸]已经已结束，行会["..strTempOwner.."]胜出", "系统通知")
	lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，行会["..strTempOwner.."]胜出", "系统通知")
	lualib:SysMsg_SendBroadcastMsg("[行会争霸]活动已结束，行会["..strTempOwner.."]胜出", "系统通知")
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BLUE#"..strTempOwner.."#COLOREND##COLORCOLOR_YELLOW#清除了地图内所有的敌对势力,夺得了行会战胜利，雄霸天下！！.#COLOREND#", "行会战通知", 1, 0);
	lualib:DisableTimer(map, 1)
	lualib:Map_DestroyDgn(map)
	return
end