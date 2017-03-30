function main(player, vipLevel)
	local VIP18_vip_level = {1, 2, 3, 4, 5, 6, 7}
	local VIP18_mall_Integral = {1, 2, 3, 4, 5, 6, 7}
	local VIP18_day = lualib:GetAllDays(0)
	local VIP18_today = lualib:GetInt(player, "VIP18_daybl")
	local VIP18_vipLevel = lualib:GetVipLevel(player)
	
	if VIP18_today == VIP18_day then
		lualib:SysMsg_SendPromptMsg(player, "你今日已经领取过积分了!")
	else
		lualib:SetInt(player, "VIP18_todayIntegral", 0)
	

		if VIP18_vipLevel >= 1 then
				local VIP18_today_Integral = lualib:GetInt(player, "VIP18_todayIntegral")
				
				if VIP18_today_Integral < 1 then							
					for i = 1, #VIP18_vip_level do
							if VIP18_vipLevel == VIP18_vip_level[i] then
								lualib:SetInt(player, "VIP18_daybl", VIP18_day)
								lualib:SetInt(player, "VIP18_todayIntegral", 1)
								lualib:Player_AddIntegral(player, VIP18_mall_Integral[i], "会员每日领取积分", player)
								lualib:SysMsg_SendPromptMsg(player, "领取积分成功!")
							end
					end
				end	
			
		else
			lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能领取会员积分!")
		end
		end	
	
	return true
end