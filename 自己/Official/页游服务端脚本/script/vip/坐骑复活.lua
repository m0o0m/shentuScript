function main(player, vipLevel)
	local VIP25_day = lualib:GetAllDays(0)
	local VIP25_today = lualib:GetInt(player, "VIP25_daybl")
	local VIP25_vipLevel = lualib:GetVipLevel(player)
	local mount = lualib:Player_GetItemGuid(player,  16)
	
	
	if VIP25_today == VIP25_day then
		lualib:SysMsg_SendPromptMsg(player, "������Ѿ���ȡ�����︴����!")
	else
		lualib:SetInt(player, "VIP25_todaylife", 0)
	
		if VIP25_vipLevel >= 1 then
			if mount == "" then
				lualib:SysMsg_SendPromptMsg(player, "����Ҫװ����������ܻ�����︴��!")
			else
				local VIP25_today_life = lualib:GetInt(player, "VIP25_todaylife")
					
					if VIP25_today_life < 1 then
							local mountdur = lualib:Item_GetDurability(player, mount)
							local mountmaxdur = lualib:Item_GetMaxDurability(player, mount)
							
							if mountdur ~= 0 then
								lualib:SysMsg_SendPromptMsg(player, "������ﻹ���ڣ�����ô�벻����!")
							else
								lualib:SetInt(player, "VIP25_todaylife", 1)
								lualib:SetInt(player, "VIP25_daybl", VIP25_day)
								lualib:Item_SetDurability(player, mount, mountdur + 1000)
								lualib:SysMsg_SendPromptMsg(player, "������Ѹ���ɹ�!")
							end
					end	
			end
			
		else
			lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,���ܻ�ȡ������Ѹ���!")
		end
	end
	
	return true
end