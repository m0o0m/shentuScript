function main(player, vipLevel)
	local VIP26_day = lualib:GetAllDays(0)
	local VIP26_today = lualib:GetInt(player, "VIP26_daybl")
	local VIP26_vipLevel = lualib:GetVipLevel(player)
	local weapon = lualib:Player_GetItemGuid(player,  1)
	
	if VIP26_today == VIP26_day then
		lualib:SysMsg_SendPromptMsg(player, "你今日已经获取过祝福了!")
	else
		lualib:SetInt(player, "VIP26_todaylucky", 0)
		
		
	
		if VIP26_vipLevel >= 1 then
			if weapon == "" then
				lualib:SysMsg_SendPromptMsg(player, "你的手上需要拿上武器，才能获取祝福!")
			else
				local VIP26_today_lucky = lualib:GetInt(player, "VIP26_todaylucky")
					
					if VIP26_today_lucky < 1 then	
						local weapon_lucky = lualib:Equip_GetLuckCurse(player, weapon)
						
						if weapon_lucky >= 9 then
							lualib:SysMsg_SendPromptMsg(player, "你的武器祝福已经达到9，不能再获得祝福了!")
						else
							lualib:SetInt(player, "VIP26_daybl", VIP26_day)
							lualib:SetInt(player, "VIP26_todaylucky", 1)
							local r = lualib:GenRandom(1, 7)
							
							if r == 7 then
							
								lualib:Equip_SetLuckCurse(player, weapon, weapon_lucky + 1)
								lualib:SysMsg_SendPromptMsg(player, "获取武器祝福成功!")
							else
								lualib:SysMsg_SendPromptMsg(player, "运气不好，这次武器没有获得祝福!")
							end	
						end
					end	
			end
			
				
			
		else
			lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能获取每日武器祝福!")
		end
	end
	
	return true
end