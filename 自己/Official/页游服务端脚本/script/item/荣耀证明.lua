function main(player, item)
	local itemNum = lualib:ItemCountByKey(player, "��ҫ֤��", true, false, false, 2)
	if itemNum < 1 then
		lualib:SysMsg_SendTriggerMsg(player, "��ӵ���ʧ�ܣ�")
		return false
	end
	
	if not lualib:DelItem(player, "��ҫ֤��", 1, 2, "", "") then
		lualib:SysMsg_SendTriggerMsg(player, "��ӵ���ʧ�ܣ�")
		return false
	end
	
	local cur_rongyao = lualib:GetInt(player, "jjc_rongyao")

	if not lualib:SetInt(player, "jjc_rongyao", cur_rongyao + 500) then
		lualib:SysMsg_SendTriggerMsg(player, "�����ҫʧ�ܣ�")
        return false
    end
	lualib:SysMsg_SendTriggerMsg(player, "��ҫֵ����500��")
	return true
end