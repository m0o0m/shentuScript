
function main(npc, player)
    local msg = "��һ��������ب�Ŷ�������ӿ�����������˲�ս������һ������ɽ���ϣ�ˮ���ܸ����׻��������˿��ӱܣ�շת���࣬��ҹ���ߣ�ֻ�Ƚ�ָ�����������ָ��������İ��£���������ָ���Ϳ�����������������\n \n"
    msg = msg.."<@propose *01*��Ҫ���>\n"
    msg = msg.."<@divorce *01*Э�����>\n"
    msg = msg.."<@force_divorce *01*ǿ�����>\n"
	msg = msg.."<@leave *01*�뿪>"
    return msg
end

function leave(...)
	return "";
end

function propose(npc, player)
    -- �ж��Ա������ܸ����е�
    if lualib:Gender(player) ~=  lua_gender_male then
        return "������¶���Ů����������ֵ�á�\n\n<@leave *01*�뿪>"
    end

    -- �жϻ��
    if lualib:GetStr(player, "��żGUID") ~= "" then
        return "�ػ���Ƿ����ġ�\n\n<@leave *01*�뿪>"
    end

    if lualib:ItemCount(player, "����ָ") < 1 then
       return "����ָ��û׼���þ�����飿\n\n<@leave *01*�뿪>"
    end

    -- �������ϣ�ѯ�ʽ�����
    lualib:ShowForm(player, "����")
    return ""
end

function divorce(npc, player)
    local spouse = lualib:GetStr(player, "��ż����")
    if spouse == "" then
        return "�㻹û����ء�"
    end

    -- �ж϶Է��Ƿ�����
    local spouse_guid = lualib:Player_GetGuid(spouse)
    if spouse_guid == "" or lualib:Distance(player, spouse_guid) > 10 then
        return "�ף���û����"..spouse.."�����ﰡ��"
    end

    local player_name = lualib:Name(player)
    if lualib:SysMsg_SendMsgDlg(spouse_guid, 1, "��ȷ��Ҫ��"..player_name.."�����#BUTTON0#ȷ��#BUTTONEND##BUTTON1#ȡ��#BUTTONEND#", 30, "on_divorce_ack", player_name) == false then
        return "æ���أ�������������"
    end

	return "����Է�������Э�����������ȴ��Է���Ӧ��"
end

function force_divorce(npc, player)
    local spouse = lualib:GetStr(player, "��ż����")
    if spouse == "" then
        return "�㻹û����ء�"
    end

    lualib:SysMsg_SendMsgDlg(player, 1, "��ȷ��Ҫ��"..spouse.."�����#BUTTON0#ȷ��#BUTTONEND##BUTTON1#ȡ��#BUTTONEND#", 30, "on_force_divorce_ack", spouse)
end

function on_divorce_ack(dlg_id, player, button_id, spouse)
	button_id = tonumber(button_id)
	
	local spouse_guid = lualib:Name2Guid(spouse)
    if button_id ~= 0 then
		lualib:SysMsg_SendTriggerMsg(spouse_guid, "�Է��ܾ���顣")
		lualib:SysMsg_SendTriggerMsg(player, "��ܾ�����飡")
        return "�Է��ܾ���顣"
    end
	
    lualib:SetStr(player, "��ż����", "")
    lualib:SetStr(player, "��żGUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "���"..spouse.."����ˡ�")
    lualib:NotifyVar(player, "��ż����")
    lualib:ScriptFuncToPlayer(spouse, "���", "on_divorce", "")

    return ""
end

function on_force_divorce_ack(dlg_id, player, button_id, spouse)
    if button_id ~= 0 then
        return ""
    end

    lualib:SetStr(player, "��ż����", "")
    lualib:SetStr(player, "��żGUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "���"..spouse.."����ˡ�")
    lualib:NotifyVar(player, "��ż����")
    lualib:ScriptFuncToPlayer(spouse, "���", "on_divorce", "")

    return ""
end

function on_divorce(player)
    local spouse = lualib:GetStr(player, "��ż����")
	
    lualib:SetStr(player, "��ż����", "")
    lualib:SetStr(player, "��żGUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, spouse.."��������ˡ�")
    lualib:NotifyVar(player, "��ż����")
end


function marry_unload(player)
    lualib:SetInt(player, "intimacy", 0)
end