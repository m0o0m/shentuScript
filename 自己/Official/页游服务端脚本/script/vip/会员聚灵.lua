function main(player, vipLevel)
	local VIP28_vip_level = {1, 2, 3, 4, 5, 6, 7}
	local VIP28_juling_num = {1, 2, 3, 4, 5, 6, 7}
	local VIP28_day = lualib:GetAllDays(0)
	local VIP28_today = lualib:GetInt(player, "VIP28_daybl")
	local VIP28_vipLevel = lualib:GetVipLevel(player)

	if VIP28_today == VIP28_day then
		lualib:SysMsg_SendPromptMsg(player, "������Ѿ���ȡ��������������!")
	else
		lualib:SetInt(player, "VIP28_todayjuling", 0)
		local bagfreenum = lualib:BagFree(player, true, false, false)
		
		if bagfreenum < 4 then
			lualib:SysMsg_SendPromptMsg(player, "�뽫�����ճ�4������!")
		else
			
			if VIP28_vipLevel >= 1 then
					local VIP28_today_juling = lualib:GetInt(player, "VIP28_todayjuling")
					
					if VIP28_today_juling < 1 then							
						for i = 1, #VIP28_vip_level do
								if VIP28_vipLevel == VIP28_vip_level[i] then
									lualib:SetInt(player, "VIP28_daybl", VIP28_day)
									lualib:SetInt(player, "VIP28_todayjuling", 1)
									lualib:AddItem(player, "����������", VIP28_juling_num[i], false, "��Ա���������������", player) 
									print(VIP28_juling_num[i])
									lualib:SysMsg_SendPromptMsg(player, "��ȡ����������ɹ�!")
								end
						end
					end	
				
			else
				lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,������ȡ����������!")
			end
		end
	end	
	
	return true
end