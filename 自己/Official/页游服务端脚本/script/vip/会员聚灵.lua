function main(player, vipLevel)
	local VIP28_vip_level = {1, 2, 3, 4, 5, 6, 7}
	local VIP28_juling_num = {1, 2, 3, 4, 5, 6, 7}
	local VIP28_day = lualib:GetAllDays(0)
	local VIP28_today = lualib:GetInt(player, "VIP28_daybl")
	local VIP28_vipLevel = lualib:GetVipLevel(player)

	if VIP28_today == VIP28_day then
		lualib:SysMsg_SendPromptMsg(player, "你今日已经领取过超级聚灵珠了!")
	else
		lualib:SetInt(player, "VIP28_todayjuling", 0)
		local bagfreenum = lualib:BagFree(player, true, false, false)
		
		if bagfreenum < 4 then
			lualib:SysMsg_SendPromptMsg(player, "请将包裹空出4个格子!")
		else
			
			if VIP28_vipLevel >= 1 then
					local VIP28_today_juling = lualib:GetInt(player, "VIP28_todayjuling")
					
					if VIP28_today_juling < 1 then							
						for i = 1, #VIP28_vip_level do
								if VIP28_vipLevel == VIP28_vip_level[i] then
									lualib:SetInt(player, "VIP28_daybl", VIP28_day)
									lualib:SetInt(player, "VIP28_todayjuling", 1)
									lualib:AddItem(player, "超级聚灵珠", VIP28_juling_num[i], false, "会员聚灵给超级聚灵珠", player) 
									print(VIP28_juling_num[i])
									lualib:SysMsg_SendPromptMsg(player, "领取超级聚灵珠成功!")
								end
						end
					end	
				
			else
				lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能领取超级聚灵珠!")
			end
		end
	end	
	
	return true
end