function main(player, item)
	
	local random = 0
	random = math.random(1, 1000)
	if random == 1 then 
		if not lualib:Player_AddIngot(player, 2000, false, "openѰ�����佱��", "openѰ�����佱��") then 
			lualib:Error("��"..lualib:Name(player)"����'openѰ�����佱��'ʧ��!")
			return false
		end
		lualib:SysPromptMsg(player, '��Ѱ��������2000Ԫ��')
		--lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip('��Ѱ��������2000Ԫ��')")
		
	elseif random < 100 then
		if not lualib:Player_AddIngot(player, 1000, false, "openѰ�����佱��", "openѰ�����佱��") then 
			lualib:Error("��"..lualib:Name(player)"����'openѰ�����佱��'ʧ��!")
			return false
		end
		lualib:SysPromptMsg(player, '��Ѱ��������1000Ԫ��')
		--lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip('��Ѱ��������1000Ԫ��')")
		
	else
		if not lualib:Player_AddIngot(player, 500, false, "openѰ�����佱��", "openѰ�����佱��") then 
			lualib:Error("��"..lualib:Name(player)"����'openѰ�����佱��'ʧ��!")
			return false
		end
		lualib:SysPromptMsg(player, '��Ѱ��������500Ԫ��')
		--lualib:ShowFormWithContent(player, "�ű���", "bottom_msg_tip('��Ѱ��������500Ԫ��')")
		
	end
	return true
end