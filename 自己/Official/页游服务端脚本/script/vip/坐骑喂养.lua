function main(player, vipLevel)
	local VIP24_day = lualib:GetAllDays(0)
	local VIP24_today = lualib:GetInt(player, "VIP24_daybl")
	local VIP24_vipLevel = lualib:GetVipLevel(player)
	local mount = lualib:Player_GetItemGuid(player,  16)
	

	
		if VIP24_vipLevel >= 1 then
			if mount == "" then
				lualib:SysMsg_SendPromptMsg(player, "����Ҫװ����������ܻ�����ι��!")
			else
				local VIP24_today_feed = lualib:GetInt(player, "VIP24_todayfeed")
					

							local mountdur = lualib:Item_GetDurability(player, mount)
							local mountmaxdur = lualib:Item_GetMaxDurability(player, mount)
							
							if mountdur == mountmaxdur then
								lualib:SysMsg_SendPromptMsg(player, "��������Ѿ��ܱ���!")
							elseif mountdur == 0 then
								lualib:SysMsg_SendPromptMsg(player, "��������Ѿ������ˣ����ȸ���!")
							else
								lualib:SetInt(player, "VIP24_todayfeed", 1)
								lualib:SetInt(player, "VIP24_daybl", VIP24_day)
								lualib:Item_SetDurability(player, mount, mountdur + 2000)
								lualib:SysMsg_SendPromptMsg(player, "�������ι���ɹ�!")
							end

			end
			
		else
			lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,���ܻ�ȡ�������ι��!")
		end

	
	return true
end