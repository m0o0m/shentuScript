
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*�ϳɵ��³��ܳ�>\n \n"
    msg = msg.."<@leave *01*��ȡ����>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 10
    local require_item = "�ܳײп�"
    local award_item = "���³��ܳ�"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "���߲��㣬��Ҫ"..require_count.."��"..require_item.."��\n \n<@leave *01*���رա�>" end

    if not lualib:Player_DestroyItem(player, require_item, 10, "����Ʒ�����һ������³��ܳ�", "") then
        return "���һ���ʧ�ܣ�\n \n<@leave *01���رա�>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "����Ʒ�����һ������³��ܳ�", "") then
        return "���һ���ʧ�ܣ�\n \n<@leave *01*���رա�>"
    end

    return "���³��ܳס��һ����ɹ���\n \n<@key *01*�������һ���>"
end
