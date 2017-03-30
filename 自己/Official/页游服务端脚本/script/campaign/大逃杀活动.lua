--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[大逃杀]", "[大逃杀]已开放！这里有虽千里必诛的追杀，也有万人不能挡的逃亡，狮心虎胆，快来尽情享受专属于英雄们的豪情吧！", 15000)

        local dgn = lualib:Map_CreateDgn("大逃杀", true, 1800)
        if dgn == "" then
            lualib:Error("副本：大逃杀创建失败！")
            return
        end
        lualib:Debug("副本：大逃杀创建成功！")
		lualib:GSRunScript("大逃杀入场:on_campaign_start", dgn)
        lualib:Map_SetCustomVarStr(map, "scheduled_dtsfb_dgn_guid", dgn)
    else
		lualib:SysMsg_SendBoardMsg("0", "[大逃杀]", "[大逃杀]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从大逃杀使者[250.310]进入！", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_dtsfb_dgn_guid", "")
		lualib:SysMsg_SendBoardMsg("0", "[大逃杀]", "[大逃杀]已关闭！", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[大逃杀]", "[大逃杀]将在"..math.floor(times / 60000).."分钟后关闭！", 15000)
    end
end

--[[local campaign_10010_id = 11000

function on_scheduled_timer(param)
    local param_table = lualib:StrSplit(param, "#")
    if param_table == nil then return end

    local campaign_10010 = campaign_impl:new()
    campaign_10010.cur = deserialize(param_table[2])
    if campaign_10010.cur == nil then return end

    campaign_10010:set_begin_timer(param_table[1])
    campaign_10010:set_end_timer(param_table[1])
end

function on_timer_campaign_begin_declare(map, timer_id)
    timer_id = timer_id - campaign_10010_id
    lualib:SysMsg_SendTopMsg(1, "武斗场"..timer_id.."分钟后即将开启，请勇士们速去巫山城【武斗场使者[241:309]】进入，快来体验百人同屏畅快，这里会有你们所有想要的东西。！")
    lualib:SysMsg_SendBroadcastMsg("武斗场"..timer_id.."分钟后即将开启，请勇士们速去巫山城【武斗场使者[241:309]】进入，快来体验百人同屏畅快，这里会有你们所有想要的东西。！", "系统通知")
end

function on_timer_campaign_begin(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "武斗场已经开启！")
    lualib:SysMsg_SendBroadcastMsg("武斗场已经开启！", "系统通知")

    local dgn = lualib:Map_CreateDgn("武斗场", true, 1800)
    if dgn == "" then
        lualib:Error("副本：武斗场创建失败！")
        return
    end
    lualib:Debug("副本：武斗场创建成功！")

    lualib:Map_SetCustomVarStr(map, "scheduled_qrwdcfb_dgn_guid", dgn)
    lualib:Map_SetCustomVarInt(map, "scheduled_qrwdcfb_dgn_times", lualib:GetAllTime())
	
	lualib:GSRunScript("千人武斗场入场:on_campaign_start", dgn)
end

function on_timer_campaign_end_declare(map, timer_id)
    timer_id = timer_id - campaign_10010_id - 500
    lualib:SysMsg_SendTopMsg(1, "【武斗场】将在"..timer_id.."分钟后关闭，请勇士们抓紧时间！")
    lualib:SysMsg_SendBroadcastMsg("【武斗场】将在"..timer_id.."分钟后关闭，请勇士们抓紧时间！", "系统通知")
end

function on_timer_campaign_end(map, timer_id)
    lualib:Map_SetCustomVarStr(map, "scheduled_qrwdcfb_dgn_guid", "")
    lualib:SysMsg_SendTopMsg(1, "【武斗场】已关闭！")
    lualib:SysMsg_SendBroadcastMsg("【武斗场】已关闭！", "系统通知")
end]]

function Goto(id,player,map)
	 local x = 248
	 local y = 310
	 local r = 3
	 local map_key_name = "东临城"
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