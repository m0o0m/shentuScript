--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[����ɱ]", "[����ɱ]�ѿ��ţ���������ǧ������׷ɱ��Ҳ�����˲��ܵ���������ʨ�Ļ�����������������ר����Ӣ���ǵĺ���ɣ�", 15000)

        local dgn = lualib:Map_CreateDgn("����ɱ", true, 1800)
        if dgn == "" then
            lualib:Error("����������ɱ����ʧ�ܣ�")
            return
        end
        lualib:Debug("����������ɱ�����ɹ���")
		lualib:GSRunScript("����ɱ�볡:on_campaign_start", dgn)
        lualib:Map_SetCustomVarStr(map, "scheduled_dtsfb_dgn_guid", dgn)
    else
		lualib:SysMsg_SendBoardMsg("0", "[����ɱ]", "[����ɱ]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӴ���ɱʹ��[250.310]���룡", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_dtsfb_dgn_guid", "")
		lualib:SysMsg_SendBoardMsg("0", "[����ɱ]", "[����ɱ]�ѹرգ�", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[����ɱ]", "[����ɱ]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
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
    lualib:SysMsg_SendTopMsg(1, "�䶷��"..timer_id.."���Ӻ󼴽�����������ʿ����ȥ��ɽ�ǡ��䶷��ʹ��[241:309]�����룬�����������ͬ�����죬�����������������Ҫ�Ķ�������")
    lualib:SysMsg_SendBroadcastMsg("�䶷��"..timer_id.."���Ӻ󼴽�����������ʿ����ȥ��ɽ�ǡ��䶷��ʹ��[241:309]�����룬�����������ͬ�����죬�����������������Ҫ�Ķ�������", "ϵͳ֪ͨ")
end

function on_timer_campaign_begin(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "�䶷���Ѿ�������")
    lualib:SysMsg_SendBroadcastMsg("�䶷���Ѿ�������", "ϵͳ֪ͨ")

    local dgn = lualib:Map_CreateDgn("�䶷��", true, 1800)
    if dgn == "" then
        lualib:Error("�������䶷������ʧ�ܣ�")
        return
    end
    lualib:Debug("�������䶷�������ɹ���")

    lualib:Map_SetCustomVarStr(map, "scheduled_qrwdcfb_dgn_guid", dgn)
    lualib:Map_SetCustomVarInt(map, "scheduled_qrwdcfb_dgn_times", lualib:GetAllTime())
	
	lualib:GSRunScript("ǧ���䶷���볡:on_campaign_start", dgn)
end

function on_timer_campaign_end_declare(map, timer_id)
    timer_id = timer_id - campaign_10010_id - 500
    lualib:SysMsg_SendTopMsg(1, "���䶷��������"..timer_id.."���Ӻ�رգ�����ʿ��ץ��ʱ�䣡")
    lualib:SysMsg_SendBroadcastMsg("���䶷��������"..timer_id.."���Ӻ�رգ�����ʿ��ץ��ʱ�䣡", "ϵͳ֪ͨ")
end

function on_timer_campaign_end(map, timer_id)
    lualib:Map_SetCustomVarStr(map, "scheduled_qrwdcfb_dgn_guid", "")
    lualib:SysMsg_SendTopMsg(1, "���䶷�����ѹرգ�")
    lualib:SysMsg_SendBroadcastMsg("���䶷�����ѹرգ�", "ϵͳ֪ͨ")
end]]

function Goto(id,player,map)
	 local x = 248
	 local y = 310
	 local r = 3
	 local map_key_name = "���ٳ�"
	local gold = 1500
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ1500���"
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