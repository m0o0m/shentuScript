--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	
	local StartServer2 = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", StartServerTime_int)) + 691200
	local times_server = lualib:GetAllTime()
	if StartServer2 > times_server then
		return 
	end

    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
        lualib:SysMsg_SendBroadcastMsg("[�л�����]�ѿ�ʼ������л��ԱӻԾ�μӣ�", "ϵͳ֪ͨ")
		--lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]�ѿ�ʼ��", 15000)

        local dgn = lualib:Map_CreateDgn("�л�ս����ͼ", true, 14400)
        if dgn == "" then
            lualib:Error("�������л�����ս����ʧ�ܣ�")
            return
        end
        lualib:Debug("�������л�����ս�����ɹ���")
		local cur_time = lualib:GetAllTime()
        lualib:SetStr(map, "guild_map_guid", dgn)
		lualib:SetInt(map, "guild_active_time", cur_time + 3600)
    else 
		lualib:SysMsg_SendBroadcastMsg("[�л�����]����"..math.floor(times / 60000).."���ӿ�����", "ϵͳ֪ͨ")
		--lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]����"..math.floor(times / 60000).."���ӿ�����", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:SetStr(map, "guild_map_guid", "")
		lualib:SetInt(map, "guild_active_time", 0)
        lualib:SysMsg_SendBroadcastMsg("[�л�����]��ֹͣ���룡�������ڴ�ʤ���л�ĵ���", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBroadcastMsg("���ɱ�����л���������", "������ʾ")
		lualib:SysMsg_SendBroadcastMsg("����ϵͳ��ʾXX�л���ʤ�����뿪���ͼ.������Ϊ��Ȩ", "������ʾ")
		--lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]��ֹͣ���룡�������ڴ�ʤ���л�ĵ���", 15000)
    else
        lualib:SysMsg_SendBroadcastMsg("[�л�����]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", "ϵͳ֪ͨ")
		--lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", 15000)
    end
end

function Goto(id,player,map)
	local x = 245
	local y = 271
	local r = 3
	local map_key_name = "����"
	local gold = 20000
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ20000���"
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