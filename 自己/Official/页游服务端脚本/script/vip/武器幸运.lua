function main(player, vipLevel)
	local VIP26_day = lualib:GetAllDays(0)
	local VIP26_today = lualib:GetInt(player, "VIP26_daybl")
	local VIP26_vipLevel = lualib:GetVipLevel(player)
	local weapon = lualib:Player_GetItemGuid(player,  1)
	
	if VIP26_today == VIP26_day then
		lualib:SysMsg_SendPromptMsg(player, "������Ѿ���ȡ��ף����!")
	else
		lualib:SetInt(player, "VIP26_todaylucky", 0)
		
		
	
		if VIP26_vipLevel >= 1 then
			if weapon == "" then
				lualib:SysMsg_SendPromptMsg(player, "���������Ҫ�������������ܻ�ȡף��!")
			else
				local VIP26_today_lucky = lualib:GetInt(player, "VIP26_todaylucky")
					
					if VIP26_today_lucky < 1 then	
						local weapon_lucky = lualib:Equip_GetLuckCurse(player, weapon)
						
						if weapon_lucky >= 9 then
							lualib:SysMsg_SendPromptMsg(player, "�������ף���Ѿ��ﵽ9�������ٻ��ף����!")
						else
							lualib:SetInt(player, "VIP26_daybl", VIP26_day)
							lualib:SetInt(player, "VIP26_todaylucky", 1)
							local r = lualib:GenRandom(1, 7)
							
							if r == 7 then
							
								lualib:Equip_SetLuckCurse(player, weapon, weapon_lucky + 1)
								lualib:SysMsg_SendPromptMsg(player, "��ȡ����ף���ɹ�!")
							else
								lualib:SysMsg_SendPromptMsg(player, "�������ã��������û�л��ף��!")
							end	
						end
					end	
			end
			
				
			
		else
			lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,���ܻ�ȡÿ������ף��!")
		end
	end
	
	return true
end