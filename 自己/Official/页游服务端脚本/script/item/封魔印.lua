
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*�ϳɷ�ħ����>\n \n"
    msg = msg.."<@leave *01*��ȡ����>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 20
    local require_item = "��ħӡ"
    local award_item = "��ħ����"
    local request_slots = 1

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "���߲��㣬��Ҫ"..require_count.."��"..require_item.."��\n \n<@leave *01*���رա�>" end
    
	if lualib:Player_GetBagFree(player) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻����")
	    return "�����ռ䲻����"
	end

    if not lualib:Player_DestroyItem(player, require_item, 20, "����Ʒ�����ϳɡ���ħ����", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01���رա�>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "����Ʒ�����ϳɡ���ħ����", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01*���رա�>"
    end

    return "��ħ���ơ��ϳɡ��ɹ���\n \n<@key *01*�������ϳɡ�>"
end
