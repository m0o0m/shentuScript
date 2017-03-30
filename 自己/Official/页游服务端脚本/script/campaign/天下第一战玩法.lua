--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------
function on_start(id, map)
end

function on_start_decl(id, map, times)
    local job_table = {"սʿ", "��ʦ", "��ʿ", ""}
    local wday = lualib:GetWeek(0)
    if job_table[wday] == nil then return end
    
    times = tonumber(times)
    if times == 0 then
        --lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday].."�������볡��ʼ����Ҫ���������ץ��ʱ���볡��")
        --lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday].."�������볡��ʼ����Ҫ���������ץ��ʱ���볡��", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���µ�һ]", "���µ�һ"..job_table[wday].."�������볡��ʼ����Ҫ���������ץ��ʱ�����ɽ�ǵ���ݽ������볡��", 15000)

        local dgn = lualib:Map_CreateDgn("���µ�һս��", true, 3600 * 7)
        if dgn == "" then
            lualib:Error("���������µ�һս������ʧ�ܣ�")
            return
        end
        lualib:Error("���������µ�һս�������ɹ���")

        lualib:Map_SetCustomVarStr(map, "scheduled_txdyzc_dgn_guid", dgn)
    else
        --lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday].."����������"..math.floor(times / 60000).."���ӿ�ʼ�볡����Ҫ��������������볡׼����")
        --lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday].."����������"..math.floor(times / 60000).."���ӿ�ʼ�볡����Ҫ��������������볡׼����", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���µ�һ]", "���µ�һ"..job_table[wday].."����������"..math.floor(times / 60000).."���ӿ�ʼ�볡����Ҫ���������ץ��ʱ�����ɽ�ǵ���ݽ������볡��", 15000)
    end
end

function on_end_decl(id, map, times)
    local job_table = {"սʿ", "��ʦ", "��ʿ", ""}
    local wday = lualib:GetWeek(0)
    if job_table[wday] == nil then return end
    
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_txdyzc_dgn_guid", "")
        --lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday].."�������볡�Ѿ��رգ�")
        --lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday].."�������볡�Ѿ��رգ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���µ�һ]", "���µ�һ"..job_table[wday].."�������볡�Ѿ��رգ�", 15000)
    else
        --lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday].."�������볡����"..math.floor(times / 60000).."���ӹرգ��뻹δ�볡�����ץ��ʱ�����ɽ�ǵ���ݽ������볡��")
        --lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday].."�������볡����"..math.floor(times / 60000).."���ӹرգ��뻹δ�볡�����ץ��ʱ�����ɽ�ǵ���ݽ������볡��", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[���µ�һ]", "���µ�һ"..job_table[wday].."�������볡����"..math.floor(times / 60000).."���ӹرգ��뻹δ�볡�����ץ��ʱ�����ɽ�ǵ���ݽ������볡��", 15000)
    end
end

--[[
function on_scheduled_timer(param)
    lualib:Print("���µ�һս�淨�ص���")
    local time_table = {{10, 1000}, {5, 300000}, {3, 420000}, {1, 540000}, {0, 600000}}
    for i = 1, table.getn(time_table) do
        if not lualib:AddTimer(param, time_table[i][1], time_table[i][2], 1, "on_timer_scheduled") then
            lualib:Print("��Ӽƻ��������µ�һս�淨�㲥��ʱ��ʧ�ܣ�")
            return
        end
    end
    lualib:Print("��Ӽƻ��������µ�һս�淨�㲥��ʱ���ɹ���")
end

function on_timer_scheduled(map, timer_id)
    local job_table = {"սʿ", "��ʦ", "��ʿ", ""}
    local wday = os.date("*t", os.time())["wday"]
    if job_table[wday - 1] == nil then return end

    if timer_id > 0 then
        lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday - 1].."����������"..timer_id.."���ӿ�ʼ�볡����Ҫ��������������볡׼����")
        lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday - 1].."����������"..timer_id.."���ӿ�ʼ�볡����Ҫ��������������볡׼����", "ϵͳ֪ͨ")
    else
        lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday - 1].."�������볡��ʼ����Ҫ���������ץ��ʱ���볡��")
        lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday - 1].."�������볡��ʼ����Ҫ���������ץ��ʱ���볡��", "ϵͳ֪ͨ")

        local dgn = lualib:Map_CreateDgn("���µ�һս��", true, 3600 * 7)
        if dgn == "" then
            lualib:Print("���������µ�һս������ʧ�ܣ�")
            return
        end
        lualib:Print("���������µ�һս�������ɹ���")

        lualib:Map_SetCustomVarInt(map, "scheduled_txdyzc_begin_tick", lualib:GetTime())
        lualib:Map_SetCustomVarStr(map, "scheduled_txdyzc_dgn_guid", dgn)

        local time_table = {{5, 300000}, {3, 420000}, {1, 540000}, {6, 600000}}
        for i = 1, table.getn(time_table) do
            if not lualib:AddTimer(map, time_table[i][1], time_table[i][2], 1, "on_timer_close") then
                lualib:Print("��Ӽƻ��������µ�һս�淨�볡�رչ㲥��ʱ��ʧ�ܣ�")
                return
            end
        end
        lualib:Print("��Ӽƻ��������µ�һս�淨�볡�رչ㲥��ʱ���ɹ���")
    end
end

function on_timer_close(map, timer_id)
    local job_table = {"սʿ", "��ʦ", "��ʿ", ""}
    local wday = os.date("*t", os.time())["wday"]
    if job_table[wday - 1] == nil then return end
    if timer_id < 6 then
        lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday - 1].."�������볡����"..timer_id.."���ӹرգ��뻹δ�볡�����ץ��ʱ�����ɽ�ǵ���ݽ������볡��")
        lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday - 1].."�������볡����"..timer_id.."���ӹرգ��뻹δ�볡�����ץ��ʱ�����ɽ�ǵ���ݽ������볡��", "ϵͳ֪ͨ")
    else
        lualib:SysMsg_SendTopMsg(1, "���µ�һ"..job_table[wday - 1].."�������볡�Ѿ��رգ�")
        lualib:SysMsg_SendBroadcastMsg("���µ�һ"..job_table[wday - 1].."�������볡�Ѿ��رգ�", "ϵͳ֪ͨ")
    end
end
]]

function Goto(id,player,map)
	 local x = 331
	 local y = 271
	 local r = 3
	 local map_key_name = "��ɽ��"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
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
