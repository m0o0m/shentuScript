--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "[Ư����]�ѿ��ţ�")
        --lualib:SysMsg_SendBroadcastMsg("[Ư����]�ѿ��ţ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[Ư����]", "[Ư����]�ѿ��ţ�", 15000)

        local dgn = lualib:Map_CreateDgn("Ư����", true, 1800)
        if dgn == "" then
            lualib:Error("������Ư��������ʧ�ܣ�")
            return
        end
        lualib:Debug("������Ư���������ɹ���")

        lualib:Map_SetCustomVarStr(map, "scheduled_pldfb_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "[Ư����]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ�ͨ��ʦ[231.216]���룡")
        --lualib:SysMsg_SendBroadcastMsg("[Ư����]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ�ͨ��ʦ[231.216]���룡", "ϵͳ֪ͨ")  
		lualib:SysMsg_SendBoardMsg("0", "[Ư����]", "[Ư����]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ�ͨ��ʦ[231.216]���룡", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_pldfb_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "[Ư����]�ѹرգ�")
        --lualib:SysMsg_SendBroadcastMsg("[Ư����]�ѹرգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[Ư����]", "[Ư����]�ѹرգ�", 15000)
    else
        --lualib:SysMsg_SendTopMsg(1, "[Ư����]����"..math.floor(times / 60000).."���Ӻ�رգ�")
        --lualib:SysMsg_SendBroadcastMsg("[Ư����]����"..math.floor(times / 60000).."���Ӻ�رգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[Ư����]", "[Ư����]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
    end
end

--[[function on_scheduled_timer(param)
	lualib:Print("Ư�����淨�ص���")
    local time_table = {{5, 1000}, {3, 120000}, {2, 180000}, {1, 240000}, {0, 300000}}
    for i = 1, table.getn(time_table) do
        if not lualib:AddTimer(param, time_table[i][1], time_table[i][2], 1, "on_timer_scheduled") then
            lualib:Print("��Ӽƻ�����Ư�����淨�㲥��ʱ��ʧ�ܣ�")
            return
        end
    end
    lualib:Print("��Ӽƻ�����Ư�����淨�淨�㲥��ʱ���ɹ���")
end

function on_timer_scheduled(map, timer_id)
    if timer_id > 0 then
        lualib:SysMsg_SendTopMsg(1, "������ʧ�ڶ�ħ��½�ϵ�Ư���������ˣ�����"..timer_id.."���ӱ��ͨ������[ͨ��ʦ]����[240, 219]���룡")
        lualib:SysMsg_SendBroadcastMsg("������ʧ�ڶ�ħ��½�ϵ�Ư���������ˣ�����"..timer_id.."���ӱ��ͨ������[ͨ��ʦ]����[240, 219]���룡", "ϵͳ֪ͨ")
    else
        lualib:SysMsg_SendTopMsg(1, "[Ư����]�����Ѵ򿪣�")
        lualib:SysMsg_SendBroadcastMsg("[Ư����]�����Ѵ򿪣�", "ϵͳ֪ͨ")

        local dgn = lualib:Map_CreateDgn("Ư����", true, 30 * 60)
        if dgn == "" then
            lualib:Print("������Ư��������ʧ�ܣ�")
            return
        end
        lualib:Print("������Ư���������ɹ���")

        lualib:Map_SetCustomVarInt(map, "scheduled_pldwf_begin_tick", lualib:GetTime())
        lualib:Map_SetCustomVarStr(map, "scheduled_pldwf_dgn_guid", dgn)
    end
en]]

function Goto(id,player,map)
	 local x = 231
	 local y = 219
	 local r = 3
	 local map_key_name = "����"
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
	
	if not lualib:Player_SubGold(player, gold, false, "�۷ǰ���", player) then
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