--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "[�ᱦ����]�ѿ��ţ�")
        --lualib:SysMsg_SendBroadcastMsg("[�ᱦ����]�ѿ��ţ�", "ϵͳ֪ͨ")
		
		lualib:SysMsg_SendBoardMsg("0", "[�ᱦ����]", "[�ᱦ����]�ѿ��ţ�", 15000)
        local dgn = lualib:Map_CreateDgn("�ᱦ����", true, 1800)
        if dgn == "" then
            lualib:Error("�������ᱦ��������ʧ�ܣ�")
            return
        end
        lualib:Debug("�������ᱦ���������ɹ���")

        lualib:Map_SetCustomVarStr(map, "scheduled_dbdtfb_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "[�ᱦ����]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӶᱦ��ʹ[235.216]���룡")
        --lualib:SysMsg_SendBroadcastMsg("[�ᱦ����]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӶᱦ��ʹ[235.216]���룡", "ϵͳ֪ͨ") 
		
		lualib:SysMsg_SendBoardMsg("0", "[�ᱦ����]", "[�ᱦ����]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӶᱦ��ʹ[235.216]���룡", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_dbdtfb_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "[�ᱦ����]�ѹرգ�")
        --lualib:SysMsg_SendBroadcastMsg("[�ᱦ����]�ѹرգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�ᱦ����]", "[�ᱦ����]�ѹرգ�", 15000)
    else
        --lualib:SysMsg_SendTopMsg(1, "[�ᱦ����]����"..math.floor(times / 60000).."���Ӻ�رգ�")
        --lualib:SysMsg_SendBroadcastMsg("[�ᱦ����]����"..math.floor(times / 60000).."���Ӻ�رգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�ᱦ����]", "[�ᱦ����]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
		
    end
end

--[[local campaign_10009_id = 9000

function on_scheduled_timer(param)
    local param_table = lualib:StrSplit(param, "#")
    if param_table == nil then return end
    
    local campaign_10009 = campaign_impl:new() 
    campaign_10009.cur = deserialize(param_table[2])
    if campaign_10009.cur == nil then return end
    
    campaign_10009:set_begin_timer(param_table[1])
    campaign_10009:set_end_timer(param_table[1])
end

function on_timer_campaign_begin_declare(map, timer_id)
    timer_id = timer_id - campaign_10009_id
    lualib:SysMsg_SendTopMsg(1, "�ᱦӢ���淨"..timer_id.."���Ӻ�����")
    lualib:SysMsg_SendBroadcastMsg("�ᱦӢ���淨"..timer_id.."���Ӻ�����", "ϵͳ֪ͨ")
end

function on_timer_campaign_begin(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "�ᱦӢ���淨�Ѿ���ʼ�ˣ�")
    lualib:SysMsg_SendBroadcastMsg("�ᱦӢ���淨�Ѿ���ʼ�ˣ�", "ϵͳ֪ͨ")

    local dgn = lualib:Map_CreateDgn("�ᱦ����", true, 1800)
    if dgn == "" then
        lualib:Error("�������ᱦ��������ʧ�ܣ�")
        return
    end
    lualib:Debug("�������ᱦ���������ɹ���")

    lualib:Map_SetCustomVarStr(map, "scheduled_dbdtfb_dgn_guid", dgn)
end

function on_timer_campaign_end_declare(map, timer_id)
    timer_id = timer_id - campaign_10009_id - 500
    lualib:SysMsg_SendTopMsg(1, "�ᱦ��������"..timer_id.."���Ӻ�رգ�����ʿ��ץ��ʱ�䣡")
    lualib:SysMsg_SendBroadcastMsg("�ᱦ��������"..timer_id.."���Ӻ�رգ�����ʿ��ץ��ʱ�䣡", "ϵͳ֪ͨ")
end

function on_timer_campaign_end(map, timer_id)
    lualib:Map_SetCustomVarStr(map, "scheduled_dbdtfb_dgn_guid", "")
    lualib:SysMsg_SendTopMsg(1, "�ᱦ�����ѹرգ�")
    lualib:SysMsg_SendBroadcastMsg("�ᱦ�����ѹرգ�", "ϵͳ֪ͨ")
end]]

function Goto(id,player,map)
	local x = 228
	local y = 237
	local r = 3
	local map_key_name = "����"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ"..gold.."���"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "����", player) then
	msg = msg.."�۳����ʧ��"
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
