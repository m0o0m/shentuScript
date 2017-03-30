--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "[漂流岛]已开放！")
        --lualib:SysMsg_SendBroadcastMsg("[漂流岛]已开放！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[漂流岛]", "[漂流岛]已开放！", 15000)

        local dgn = lualib:Map_CreateDgn("漂流岛", true, 1800)
        if dgn == "" then
            lualib:Error("副本：漂流岛创建失败！")
            return
        end
        lualib:Debug("副本：漂流岛创建成功！")

        lualib:Map_SetCustomVarStr(map, "scheduled_pldfb_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "[漂流岛]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从通灵师[231.216]进入！")
        --lualib:SysMsg_SendBroadcastMsg("[漂流岛]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从通灵师[231.216]进入！", "系统通知")  
		lualib:SysMsg_SendBoardMsg("0", "[漂流岛]", "[漂流岛]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从通灵师[231.216]进入！", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_pldfb_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "[漂流岛]已关闭！")
        --lualib:SysMsg_SendBroadcastMsg("[漂流岛]已关闭！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[漂流岛]", "[漂流岛]已关闭！", 15000)
    else
        --lualib:SysMsg_SendTopMsg(1, "[漂流岛]将在"..math.floor(times / 60000).."分钟后关闭！")
        --lualib:SysMsg_SendBroadcastMsg("[漂流岛]将在"..math.floor(times / 60000).."分钟后关闭！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[漂流岛]", "[漂流岛]将在"..math.floor(times / 60000).."分钟后关闭！", 15000)
    end
end

--[[function on_scheduled_timer(param)
	lualib:Print("漂流岛玩法回调！")
    local time_table = {{5, 1000}, {3, 120000}, {2, 180000}, {1, 240000}, {0, 300000}}
    for i = 1, table.getn(time_table) do
        if not lualib:AddTimer(param, time_table[i][1], time_table[i][2], 1, "on_timer_scheduled") then
            lualib:Print("添加计划任务漂流岛玩法广播定时器失败！")
            return
        end
    end
    lualib:Print("添加计划任务漂流岛玩法玩法广播定时器成功！")
end

function on_timer_scheduled(map, timer_id)
    if timer_id > 0 then
        lualib:SysMsg_SendTopMsg(1, "曾经消失在恶魔大陆上的漂流岛出现了！还有"..timer_id.."分钟便可通过龙城[通灵师]坐标[240, 219]进入！")
        lualib:SysMsg_SendBroadcastMsg("曾经消失在恶魔大陆上的漂流岛出现了！还有"..timer_id.."分钟便可通过龙城[通灵师]坐标[240, 219]进入！", "系统通知")
    else
        lualib:SysMsg_SendTopMsg(1, "[漂流岛]传送已打开！")
        lualib:SysMsg_SendBroadcastMsg("[漂流岛]传送已打开！", "系统通知")

        local dgn = lualib:Map_CreateDgn("漂流岛", true, 30 * 60)
        if dgn == "" then
            lualib:Print("副本：漂流岛创建失败！")
            return
        end
        lualib:Print("副本：漂流岛创建成功！")

        lualib:Map_SetCustomVarInt(map, "scheduled_pldwf_begin_tick", lualib:GetTime())
        lualib:Map_SetCustomVarStr(map, "scheduled_pldwf_dgn_guid", dgn)
    end
en]]

function Goto(id,player,map)
	 local x = 231
	 local y = 219
	 local r = 3
	 local map_key_name = "龙城"
	local gold = 1500
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要1500金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "扣非绑金币", player) then
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