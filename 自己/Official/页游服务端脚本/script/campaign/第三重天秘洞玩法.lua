--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "[第三重天秘洞]已开放！")
        --lualib:SysMsg_SendBroadcastMsg("[第三重天秘洞]已开放！", "系统通知")
		
		lualib:SysMsg_SendBoardMsg("0", "[第三重天秘洞]", "[第三重天秘洞]已开放！", 15000)
        local dgn = lualib:Map_CreateDgn("第三重天秘洞", true, 1800)
        if dgn == "" then
            lualib:Error("副本：第三重天秘洞创建失败！")
            return
        end
        lualib:Debug("副本：第三重天秘洞创建成功！")

        lualib:Map_SetCustomVarStr(map, "scheduled_dsctmdfb_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "[第三重天秘洞]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从何童天小妖[226.232]进入！")
        --lualib:SysMsg_SendBroadcastMsg("[第三重天秘洞]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从何童天小妖[226.232]进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[第三重天秘洞]", "[第三重天秘洞]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从何童天小妖[226.232]进入！", 15000)
		end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_dsctmdfb_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "[第三重天秘洞]已关闭！")
        --lualib:SysMsg_SendBroadcastMsg("[第三重天秘洞]已关闭！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[第三重天秘洞]", "[第三重天秘洞]已关闭！", 15000)
    else
	--lualib:SysMsg_SendTopMsg(1, "[第三重天秘洞]将在"..math.floor(times / 60000).."分钟后关闭！")
        --lualib:SysMsg_SendBroadcastMsg("[第三重天秘洞]将在"..math.floor(times / 60000).."分钟后关闭！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[第三重天秘洞]", "[第三重天秘洞]将在"..math.floor(times / 60000).."分钟后关闭！", 15000)
		
    end
end

--[[function on_scheduled_timer(param)
    local time_table = {{15, 1000}, {13, 120000}, {12, 180000}, {11, 240000}, {10, 300000}}
    for i = 1, table.getn(time_table) do
        if not lualib:AddTimer(param, time_table[i][1], time_table[i][2], 1, "on_timer_scheduled") then
            lualib:Print("添加计划任务第三重天秘洞玩法广播定时器失败！")
            return
        end
    end
    lualib:Print("添加计划任务第三重天秘洞玩法广播定时器成功！")
end

function on_timer_scheduled(map, time_id)
    if time_id > 10 then
        time_id = time_id - 10
        lualib:SysMsg_SendTopMsg(1, "[第三重天秘洞]还有"..time_id.."分钟开启了，勇士们快去龙城[何童天小妖][坐标：236.216]处进入[第三重天秘洞],可掠夺从[清明何童天]偷盗了大量宝物的[第三重天妖盗]的宝物！")
        lualib:SysMsg_SendBroadcastMsg("[第三重天秘洞]还有"..time_id.."分钟开启了，勇士们快去龙城[何童天小妖][坐标：236.216]处进入[第三重天秘洞],可掠夺从[清明何童天]偷盗了大量宝物的[第三重天妖盗]的宝物！", "系统通知")
    else
        lualib:SysMsg_SendTopMsg(1, "[第三重天秘洞]已打开！")
        lualib:SysMsg_SendBroadcastMsg("[第三重天秘洞]已打开！", "系统通知")

        local dgn = lualib:Map_CreateDgn("第三重天秘洞", true, 33 * 60)
        if dgn == "" then
            lualib:Print("副本：第三重天秘洞创建失败！")
            return
        end
        lualib:Print("副本：第三重天秘洞创建成功！")

        lualib:Map_SetCustomVarInt(map, "scheduled_dsctmd_begin_tick", lualib:GetTime())
        lualib:Map_SetCustomVarStr(map, "scheduled_dsctmd_dgn_guid", dgn)
    end
end]]

function Goto(id,player,map)
	 local x = 228
	 local y = 232
	 local r = 3
	 local map_key_name = "龙城"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	
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