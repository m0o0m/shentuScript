function main(player, item)
	--lualib:SysMsg_SendTriggerMsg(player, lualib:GetGSVer().."")
	if lualib:AddBagSite(player, 19) then
		 --lualib:SysMsg_SendTriggerMsg(player, "��ʹ����Ǭ������������15����������")
		return true
	else
		--lualib:SysMsg_SendTriggerMsg(player, "��Ʒʹ��ʧ��")
		return false
	end
end