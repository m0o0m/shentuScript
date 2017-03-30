function main(player, vipLevel)
	local VIP24_day = lualib:GetAllDays(0)
	local VIP24_today = lualib:GetInt(player, "VIP24_daybl")
	local VIP24_vipLevel = lualib:GetVipLevel(player)
	local mount = lualib:Player_GetItemGuid(player,  16)
	

	
		if VIP24_vipLevel >= 1 then
			if mount == "" then
				lualib:SysMsg_SendPromptMsg(player, "你需要装备上坐骑，才能获得免费喂养!")
			else
				local VIP24_today_feed = lualib:GetInt(player, "VIP24_todayfeed")
					

							local mountdur = lualib:Item_GetDurability(player, mount)
							local mountmaxdur = lualib:Item_GetMaxDurability(player, mount)
							
							if mountdur == mountmaxdur then
								lualib:SysMsg_SendPromptMsg(player, "你的坐骑已经很饱了!")
							elseif mountdur == 0 then
								lualib:SysMsg_SendPromptMsg(player, "你的坐骑已经死亡了，请先复活!")
							else
								lualib:SetInt(player, "VIP24_todayfeed", 1)
								lualib:SetInt(player, "VIP24_daybl", VIP24_day)
								lualib:Item_SetDurability(player, mount, mountdur + 2000)
								lualib:SysMsg_SendPromptMsg(player, "坐骑免费喂养成功!")
							end

			end
			
		else
			lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能获取坐骑免费喂养!")
		end

	
	return true
end