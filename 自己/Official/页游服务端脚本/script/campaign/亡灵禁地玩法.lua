--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[亡灵禁地]", "[亡灵禁地]已开放！", 15000)

local dgn = lualib:Map_CreateDgn("亡灵禁地", true, 1800)
        if dgn == "" then
            lualib:Error("副本：亡灵禁地创建失败！")
            return
        end
        lualib:Debug("副本：亡灵禁地创建成功！")

        lualib:Map_SetCustomVarStr(map, "scheduled_wljdfb_dgn_guid", dgn)
    else    
		lualib:SysMsg_SendBoardMsg("0", "[亡灵禁地]", "[亡灵禁地]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从禁地使者[226.228]进入！", 15000)
	end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[亡灵禁地]", "[亡灵禁地]已关闭！", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[亡灵禁地]", "[亡灵禁地]将在"..math.floor(times / 60000).."分钟后关闭！", 15000)
    end
end

--[[
local campaign_10007_id = 7000

function on_scheduled_timer(param)
    local param_table = lualib:StrSplit(param, "#")
    if param_table == nil then return end
    
    local campaign_10007 = campaign_impl:new() 
    campaign_10007.cur = deserialize(param_table[2])
    if campaign_10007.cur == nil then return end
    
    campaign_10007:set_begin_timer(param_table[1])
    campaign_10007:set_end_timer(param_table[1])
end

function on_timer_campaign_begin_declare(map, timer_id)
    timer_id = timer_id - campaign_10007_id
    lualib:SysMsg_SendTopMsg(1, "[亡灵禁地]还有"..timer_id.."分钟开启。英雄们请速从龙城禁地使者[239.216]进入！")
    lualib:SysMsg_SendBroadcastMsg("[亡灵禁地]还有"..timer_id.."分钟开启。英雄们请速从龙城禁地使者[239.216]进入！", "系统通知")
end

function on_timer_campaign_begin(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "[亡灵禁地]已开放！")
    lualib:SysMsg_SendBroadcastMsg("[亡灵禁地]已开放！", "系统通知")

    local dgn = lualib:Map_CreateDgn("亡灵禁地", true, 1800)
    if dgn == "" then
        lualib:Print("副本：亡灵禁地创建失败！")
        return
    end
    lualib:Print("副本：亡灵禁地创建成功！")

    lualib:Map_SetCustomVarStr(map, "scheduled_wljdfb_dgn_guid", dgn)
    lualib:Map_SetCustomVarInt(map, "scheduled_wljdfb_dgn_times", lualib:GetAllTime())
end

function on_timer_campaign_end_declare(map, timer_id)
    timer_id = timer_id - campaign_10007_id - 500
    lualib:SysMsg_SendTopMsg(1, "[亡灵禁地]将在"..timer_id.."分钟后关闭，请大家尽快消灭亡灵！")
    lualib:SysMsg_SendBroadcastMsg("[亡灵禁地]将在"..timer_id.."分钟后关闭，请大家尽快消灭亡灵！", "系统通知")
end

function on_timer_campaign_end(map, timer_id)
    lualib:Map_SetCustomVarStr(map, "scheduled_wljdfb_dgn_guid", "")
    lualib:SysMsg_SendTopMsg(1, "[亡灵禁地]已关闭！")
    lualib:SysMsg_SendBroadcastMsg("[亡灵禁地]已关闭！", "系统通知")
end
]]

function Goto(id,player,map)
	 local x = 228
	 local y = 228
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