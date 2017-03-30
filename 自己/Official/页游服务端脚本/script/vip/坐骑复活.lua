function main(player, vipLevel)
	local VIP25_day = lualib:GetAllDays(0)
	local VIP25_today = lualib:GetInt(player, "VIP25_daybl")
	local VIP25_vipLevel = lualib:GetVipLevel(player)
	local mount = lualib:Player_GetItemGuid(player,  16)
	
	
	if VIP25_today == VIP25_day then
		lualib:SysMsg_SendPromptMsg(player, "你今日已经获取过坐骑复活了!")
	else
		lualib:SetInt(player, "VIP25_todaylife", 0)
	
		if VIP25_vipLevel >= 1 then
			if mount == "" then
				lualib:SysMsg_SendPromptMsg(player, "你需要装备上坐骑，才能获得坐骑复活!")
			else
				local VIP25_today_life = lualib:GetInt(player, "VIP25_todaylife")
					
					if VIP25_today_life < 1 then
							local mountdur = lualib:Item_GetDurability(player, mount)
							local mountmaxdur = lualib:Item_GetMaxDurability(player, mount)
							
							if mountdur ~= 0 then
								lualib:SysMsg_SendPromptMsg(player, "你的坐骑还健在，别这么想不开啊!")
							else
								lualib:SetInt(player, "VIP25_todaylife", 1)
								lualib:SetInt(player, "VIP25_daybl", VIP25_day)
								lualib:Item_SetDurability(player, mount, mountdur + 1000)
								lualib:SysMsg_SendPromptMsg(player, "坐骑免费复活成功!")
							end
					end	
			end
			
		else
			lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能获取坐骑免费复活!")
		end
	end
	
	return true
end