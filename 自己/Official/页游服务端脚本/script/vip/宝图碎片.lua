function main(player, vipLevel)
	local VIP20_vipLevel = lualib:GetVipLevel(player)

	if VIP20_vipLevel >= 1 then

		if lualib:Player_IsIntegralEnough(player, 500) == false then
			lualib:SysMsg_SendPromptMsg(player, "��Ļ��ֲ���500�����������ȡ�м��ر�ͼ��Ƭ")
		else
			lualib:Player_SubIntegral(player, 500, "��Ա�����м��ر�ͼ�۳�����", player)
			lualib:AddSingleItem(player, "�м��ر�ͼ��Ƭ", 1, 0, "��Ա�û��ֹ����м��ر�ͼ", player)
		end

		
	else
		lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,������ȡ��Ա����״̬!")
	end

	
	return true
end