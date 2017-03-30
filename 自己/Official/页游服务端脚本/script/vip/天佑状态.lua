function main(player, vipLevel)
	local VIP22_day = lualib:GetAllDays(0)
	local VIP22_today = lualib:GetInt(player, "VIP22_daybl")
	local VIP22_vipLevel = lualib:GetVipLevel(player)
	local bufftable = {"随机BUFF1",	"随机BUFF2",	"随机BUFF3",	"随机BUFF4",	"随机BUFF5",	"随机BUFF6",	"随机BUFF7",	"随机BUFF8",	"随机BUFF9",	"随机BUFF10",	"随机BUFF11",	"随机BUFF12",	"随机BUFF13",	"随机BUFF14",	"随机BUFF15",	"随机BUFF16",	"随机BUFF17",	"随机BUFF18",	"随机BUFF19",}
	local buffattvalue = {1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 7, 8, 9, 10}
	
	if VIP22_today == VIP22_day then
		lualib:SysMsg_SendPromptMsg(player, "你今日已经领取过会员天佑状态了!")
	else
		lualib:SetInt(player, "VIP22_todaybuff", 0)
		
		if VIP22_vipLevel >= 1 then

				local VIP22_today_buff = lualib:GetInt(player, "VIP22_todaybuff")
					
					if VIP22_today_buff < 1 then
							lualib:SetInt(player, "VIP22_todaybuff", 1)
							lualib:SetInt(player, "VIP22_daybl", VIP22_day)
							lualib:AddBuffEx(player, bufftable[lualib:GenRandom(1, table.getn(bufftable))], 0, buffattvalue[lualib:GenRandom(1, table.getn(buffattvalue))])
							lualib:SysMsg_SendPromptMsg(player, "领取会员天佑状态成功!")

					end	

			
		else
			lualib:SysMsg_SendPromptMsg(player, "你不是VIP1~VIP7,不能领取会员天佑状态!")
		end
	end
	
	return true
end