
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*������ǹ�Ԫ>\n \n"
    msg = msg.."<@leave *01*��ȡ����>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 10
    local require_item = "�������"
    local award_item = "����(δ����)"
    local request_slots = 1

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "���ǲ��㣬��Ҫ"..require_count.."��"..require_item.."��\n \n<@leave *01*���رա�>" end
    
	if lualib:Player_GetBagFree(player) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻����")
	    return "�����ռ䲻����"
	end
    
    if not lualib:Player_DestroyItem(player, require_item, 10, "����Ʒ�����ϳɡ�����(δ����)", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01���رա�>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "����Ʒ�����ϳɡ�����(δ����)", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01*���رա�>"
    end

    return "����(δ����)���ϳɡ��ɹ���\n "
end
