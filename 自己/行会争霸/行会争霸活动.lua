--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	
	local StartServer2 = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", StartServerTime_int)) + 691200
	local times_server = lualib:GetAllTime()
	if StartServer2 > times_server then
		return 
	end

    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]已开始，请各行会成员踊跃参加！", "系统通知")
		--lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]已开始！", 15000)

        local dgn = lualib:Map_CreateDgn("行会战争地图", true, 14400)
        if dgn == "" then
            lualib:Error("副本：行会争霸战创建失败！")
            return
        end
        lualib:Debug("副本：行会争霸战创建成功！")
		local cur_time = lualib:GetAllTime()
        lualib:SetStr(map, "guild_map_guid", dgn)
		lualib:SetInt(map, "guild_active_time", cur_time + 3600)
    else 
		lualib:SysMsg_SendBroadcastMsg("[行会争霸]还有"..math.floor(times / 60000).."分钟开启。", "系统通知")
		--lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]还有"..math.floor(times / 60000).."分钟开启。", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:SetStr(map, "guild_map_guid", "")
		lualib:SetInt(map, "guild_active_time", 0)
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]已停止进入！让我们期待胜利行会的诞生", "系统通知")
		lualib:SysMsg_SendBroadcastMsg("请击杀其他行会的所有玩家", "友情提示")
		lualib:SysMsg_SendBroadcastMsg("请在系统提示XX行会获得胜利后离开活动地图.否则视为弃权", "友情提示")
		--lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]已停止进入！让我们期待胜利行会的诞生", 15000)
    else
        lualib:SysMsg_SendBroadcastMsg("[行会争霸]将在"..math.floor(times / 60000).."分钟后停止进入！", "系统通知")
		--lualib:SysMsg_SendBoardMsg("0", "[行会争霸]", "[行会争霸]将在"..math.floor(times / 60000).."分钟后停止进入！", 15000)
    end
end

function Goto(id,player,map)
	local x = 245
	local y = 271
	local r = 3
	local map_key_name = "龙城"
	local gold = 20000
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要20000金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end