--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "[���������ض�]�ѿ��ţ�")
        --lualib:SysMsg_SendBroadcastMsg("[���������ض�]�ѿ��ţ�", "ϵͳ֪ͨ")
		
		lualib:SysMsg_SendBoardMsg("0", "[���������ض�]", "[���������ض�]�ѿ��ţ�", 15000)
        local dgn = lualib:Map_CreateDgn("���������ض�", true, 1800)
        if dgn == "" then
            lualib:Error("���������������ض�����ʧ�ܣ�")
            return
        end
        lualib:Debug("���������������ض������ɹ���")

        lualib:Map_SetCustomVarStr(map, "scheduled_dsctmdfb_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "[���������ض�]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӺ�ͯ��С��[226.232]���룡")
        --lualib:SysMsg_SendBroadcastMsg("[���������ض�]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӺ�ͯ��С��[226.232]���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���������ض�]", "[���������ض�]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴӺ�ͯ��С��[226.232]���룡", 15000)
		end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_dsctmdfb_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "[���������ض�]�ѹرգ�")
        --lualib:SysMsg_SendBroadcastMsg("[���������ض�]�ѹرգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���������ض�]", "[���������ض�]�ѹرգ�", 15000)
    else
	--lualib:SysMsg_SendTopMsg(1, "[���������ض�]����"..math.floor(times / 60000).."���Ӻ�رգ�")
        --lualib:SysMsg_SendBroadcastMsg("[���������ض�]����"..math.floor(times / 60000).."���Ӻ�رգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���������ض�]", "[���������ض�]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
		
    end
end

--[[function on_scheduled_timer(param)
    local time_table = {{15, 1000}, {13, 120000}, {12, 180000}, {11, 240000}, {10, 300000}}
    for i = 1, table.getn(time_table) do
        if not lualib:AddTimer(param, time_table[i][1], time_table[i][2], 1, "on_timer_scheduled") then
            lualib:Print("��Ӽƻ�������������ض��淨�㲥��ʱ��ʧ�ܣ�")
            return
        end
    end
    lualib:Print("��Ӽƻ�������������ض��淨�㲥��ʱ���ɹ���")
end

function on_timer_scheduled(map, time_id)
    if time_id > 10 then
        time_id = time_id - 10
        lualib:SysMsg_SendTopMsg(1, "[���������ض�]����"..time_id.."���ӿ����ˣ���ʿ�ǿ�ȥ����[��ͯ��С��][���꣺236.216]������[���������ض�],���Ӷ��[������ͯ��]͵���˴��������[������������]�ı��")
        lualib:SysMsg_SendBroadcastMsg("[���������ض�]����"..time_id.."���ӿ����ˣ���ʿ�ǿ�ȥ����[��ͯ��С��][���꣺236.216]������[���������ض�],���Ӷ��[������ͯ��]͵���˴��������[������������]�ı��", "ϵͳ֪ͨ")
    else
        lualib:SysMsg_SendTopMsg(1, "[���������ض�]�Ѵ򿪣�")
        lualib:SysMsg_SendBroadcastMsg("[���������ض�]�Ѵ򿪣�", "ϵͳ֪ͨ")

        local dgn = lualib:Map_CreateDgn("���������ض�", true, 33 * 60)
        if dgn == "" then
            lualib:Print("���������������ض�����ʧ�ܣ�")
            return
        end
        lualib:Print("���������������ض������ɹ���")

        lualib:Map_SetCustomVarInt(map, "scheduled_dsctmd_begin_tick", lualib:GetTime())
        lualib:Map_SetCustomVarStr(map, "scheduled_dsctmd_dgn_guid", dgn)
    end
end]]

function Goto(id,player,map)
	 local x = 228
	 local y = 232
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