function main(player, item)
    local dgn = lualib:Map_CreateDgn("��ħ̨", false, 1800)
    if dgn == "" then
		lualib:SysMsg_SendWarnMsg(player, "��������ħ̨����ʧ�ܣ�")
        return false
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then
		lualib:SysMsg_SendWarnMsg(player, "��������ɽ����ͼ��")
        return false
    end

    if lualib:Player_EnterDgn(player, "��ħ̨", 0, 0, 0) == false then
		lualib:SysMsg_SendWarnMsg(player, "�����ͼʧ�ܣ�")
        return false
    end

    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
	return true
end