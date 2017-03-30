--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_scheduled_timer(param)
    lualib:SysMsg_SendTopMsg(1, "��Ĺ�����ſ����ˣ������вμ��л�����ǰ�������6������[165:155]�������")

    --��������
    local dgn_guid = lualib:Map_CreateDgn("��Ĺ���", true, 120 * 60)
    if dgn_guid == "" then
        lualib:Print("����������ȺӢ����ʧ�ܣ�")
        return
    end
    lualib:Print("����������ȺӢ�����ɹ���")

    --ˢ����NPC
    local npc_info = {"������ʹ��", 163, 160, 0}
    npc_info[4] = lualib:Map_GenNpc(param, npc_info[1], npc_info[2], npc_info[3], 5, 6)
    if npc_info[4] == "" then
        lualib:Print(" ����"..npc_info[1].."ʧ�ܣ�")
        return
    end
    lualib:Print(" ����"..npc_info[1].."�ɹ���")

    --��NPC��Ӹ�����GUID
    if lualib:Npc_SetCustomVar(npc_info[4], "custom_var_dgn_guid", dgn_guid) == false then
        lualib:Print("��NPC"..npc_info[1].."����Զ������ʧ�ܣ�")
        return
    end
    lualib:Print("��NPC"..npc_info[1].."����Զ�������ɹ���")

    --���ɾ������NPC�Ķ�ʱ��
    if not lualib:AddTimer(npc_info[4], 1, 15 * 60 * 1000, 1, "on_timer_remove_trans_npc") then
        lualib:Print(" �������"..npc_info[1].."��ʱ��ʧ�ܣ�")
        return
    end
    lualib:Print(" �������"..npc_info[1].."��ʱ���ɹ���")
end

--15���Ӻ����ٴ���NPC
function on_timer_remove_trans_npc(npc_guid, time_id)
    if lualib:Npc_IsExist(npc_guid) then
        lualib:Npc_Remove(npc_guid)
    end
    lualib:Print("����NPC������ʹ�߳ɹ���")
end

function Goto(id,player,map)
	 local x = 165
	 local y = 155
	 local r = 3
	 local map_key_name = "�����6"
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
	 if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	 end
end