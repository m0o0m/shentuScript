
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*�ϳɳ����ر�ͼ>\n \n"
    msg = msg.."<@leave *01*��ȡ����>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 5
    local require_item = "�����ر�ͼ��Ƭ"
    local award_item = "�����ر�ͼ"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "���߲��㣬��Ҫ"..require_count.."��"..require_item.."��\n \n<@leave *01*���رա�>" end

    if not lualib:Player_DestroyItem(player, require_item, 5, "����Ʒ�����ϳɡ������ر�ͼ", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01���رա�>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "����Ʒ�����ϳɡ������ر�ͼ", "") then
        return "���ϳɡ�ʧ�ܣ�\n \n<@leave *01*���رա�>"
    end

    return "���ϳɡ��ɹ���\n \n<@key *01*�������ϳɡ�>"
end
