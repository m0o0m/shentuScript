function main(player, item)
       local dgn = lualib:Map_CreateDgn("���ϸ�", false, 1800)
    if dgn == "" then
		lualib:SysMsg_SendWarnMsg(player, "���������³Ǵ���ʧ�ܣ�")
        return false
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then
		lualib:SysMsg_SendWarnMsg(player, "��������ɽ����ͼ��")
        return false
    end

    if lualib:Player_EnterDgn(player, "���ϸ�", 0, 0, 0) == false then
		lualib:SysMsg_SendWarnMsg(player, "�����ͼʧ�ܣ�")
        return false
    end

    --lualib:Item_Destroy(player, item, "ɾ��Ʒ��ʹ����ʯ", "��ʯ")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)

	return true
end
--[[
function enter(player, item)
    local dgn = lualib:Map_CreateDgn("���ϸ�", false, 1800)
    if dgn == "" then
        return "���������³Ǵ���ʧ�ܣ�\n \n<@leave *01*���뿪��>"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then
        return "��������ɽ����ͼ��\n \n<@leave *01*���뿪��>"
    end

    if lualib:Player_EnterDgn(player, "���ϸ�", 0, 0, 0) == false then
        return "�����ͼʧ�ܣ�\n \n<@leave *01*���뿪��>"
    end

    --lualib:Item_Destroy(player, item, "ɾ��Ʒ��ʹ����ʯ", "��ʯ")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
    return ""
end]]

function leave(player)
    return ""
end
