--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------
function on_start(id, map)
end

function on_start_decl(id, map, times)
    local job_table = {"战士", "法师", "道士", ""}
    local wday = lualib:GetWeek(0)
    if job_table[wday] == nil then return end
    
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday].."争霸赛入场开始，请要参赛的玩家抓紧时间入场！")
        --lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday].."争霸赛入场开始，请要参赛的玩家抓紧时间入场！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[天下第一]", "天下第一"..job_table[wday].."争霸赛入场开始，请要参赛的玩家抓紧时间从巫山城的武馆教练处入场！", 15000)

        local dgn = lualib:Map_CreateDgn("天下第一战场", true, 3600 * 7)
        if dgn == "" then
            lualib:Error("副本：天下第一战场创建失败！")
            return
        end
        lualib:Error("副本：天下第一战场创建成功！")

        lualib:Map_SetCustomVarStr(map, "scheduled_txdyzc_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday].."争霸赛还有"..math.floor(times / 60000).."分钟开始入场，请要参赛的玩家做好入场准备！")
        --lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday].."争霸赛还有"..math.floor(times / 60000).."分钟开始入场，请要参赛的玩家做好入场准备！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[天下第一]", "天下第一"..job_table[wday].."争霸赛还有"..math.floor(times / 60000).."分钟开始入场，请要参赛的玩家抓紧时间从巫山城的武馆教练处入场！", 15000)
    end
end

function on_end_decl(id, map, times)
    local job_table = {"战士", "法师", "道士", ""}
    local wday = lualib:GetWeek(0)
    if job_table[wday] == nil then return end
    
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_txdyzc_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday].."争霸赛入场已经关闭！")
        --lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday].."争霸赛入场已经关闭！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[天下第一]", "天下第一"..job_table[wday].."争霸赛入场已经关闭！", 15000)
    else
        --lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday].."争霸赛入场还有"..math.floor(times / 60000).."分钟关闭，请还未入场的玩家抓紧时间从巫山城的武馆教练处入场！")
        --lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday].."争霸赛入场还有"..math.floor(times / 60000).."分钟关闭，请还未入场的玩家抓紧时间从巫山城的武馆教练处入场！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[天下第一]", "天下第一"..job_table[wday].."争霸赛入场还有"..math.floor(times / 60000).."分钟关闭，请还未入场的玩家抓紧时间从巫山城的武馆教练处入场！", 15000)
    end
end

--[[
function on_scheduled_timer(param)
    lualib:Print("天下第一战玩法回调！")
    local time_table = {{10, 1000}, {5, 300000}, {3, 420000}, {1, 540000}, {0, 600000}}
    for i = 1, table.getn(time_table) do
        if not lualib:AddTimer(param, time_table[i][1], time_table[i][2], 1, "on_timer_scheduled") then
            lualib:Print("添加计划任务天下第一战玩法广播定时器失败！")
            return
        end
    end
    lualib:Print("添加计划任务天下第一战玩法广播定时器成功！")
end

function on_timer_scheduled(map, timer_id)
    local job_table = {"战士", "法师", "道士", ""}
    local wday = os.date("*t", os.time())["wday"]
    if job_table[wday - 1] == nil then return end

    if timer_id > 0 then
        lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday - 1].."争霸赛还有"..timer_id.."分钟开始入场，请要参赛的玩家做好入场准备！")
        lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday - 1].."争霸赛还有"..timer_id.."分钟开始入场，请要参赛的玩家做好入场准备！", "系统通知")
    else
        lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday - 1].."争霸赛入场开始，请要参赛的玩家抓紧时间入场！")
        lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday - 1].."争霸赛入场开始，请要参赛的玩家抓紧时间入场！", "系统通知")

        local dgn = lualib:Map_CreateDgn("天下第一战场", true, 3600 * 7)
        if dgn == "" then
            lualib:Print("副本：天下第一战场创建失败！")
            return
        end
        lualib:Print("副本：天下第一战场创建成功！")

        lualib:Map_SetCustomVarInt(map, "scheduled_txdyzc_begin_tick", lualib:GetTime())
        lualib:Map_SetCustomVarStr(map, "scheduled_txdyzc_dgn_guid", dgn)

        local time_table = {{5, 300000}, {3, 420000}, {1, 540000}, {6, 600000}}
        for i = 1, table.getn(time_table) do
            if not lualib:AddTimer(map, time_table[i][1], time_table[i][2], 1, "on_timer_close") then
                lualib:Print("添加计划任务天下第一战玩法入场关闭广播定时器失败！")
                return
            end
        end
        lualib:Print("添加计划任务天下第一战玩法入场关闭广播定时器成功！")
    end
end

function on_timer_close(map, timer_id)
    local job_table = {"战士", "法师", "道士", ""}
    local wday = os.date("*t", os.time())["wday"]
    if job_table[wday - 1] == nil then return end
    if timer_id < 6 then
        lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday - 1].."争霸赛入场还有"..timer_id.."分钟关闭，请还未入场的玩家抓紧时间从巫山城的武馆教练处入场！")
        lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday - 1].."争霸赛入场还有"..timer_id.."分钟关闭，请还未入场的玩家抓紧时间从巫山城的武馆教练处入场！", "系统通知")
    else
        lualib:SysMsg_SendTopMsg(1, "天下第一"..job_table[wday - 1].."争霸赛入场已经关闭！")
        lualib:SysMsg_SendBroadcastMsg("天下第一"..job_table[wday - 1].."争霸赛入场已经关闭！", "系统通知")
    end
end
]]

function Goto(id,player,map)
	 local x = 331
	 local y = 271
	 local r = 3
	 local map_key_name = "巫山城"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要"..gold.."金币"
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
