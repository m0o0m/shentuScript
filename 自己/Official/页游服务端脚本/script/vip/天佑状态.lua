function main(player, vipLevel)
	local VIP22_day = lualib:GetAllDays(0)
	local VIP22_today = lualib:GetInt(player, "VIP22_daybl")
	local VIP22_vipLevel = lualib:GetVipLevel(player)
	local bufftable = {"���BUFF1",	"���BUFF2",	"���BUFF3",	"���BUFF4",	"���BUFF5",	"���BUFF6",	"���BUFF7",	"���BUFF8",	"���BUFF9",	"���BUFF10",	"���BUFF11",	"���BUFF12",	"���BUFF13",	"���BUFF14",	"���BUFF15",	"���BUFF16",	"���BUFF17",	"���BUFF18",	"���BUFF19",}
	local buffattvalue = {1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 7, 8, 9, 10}
	
	if VIP22_today == VIP22_day then
		lualib:SysMsg_SendPromptMsg(player, "������Ѿ���ȡ����Ա����״̬��!")
	else
		lualib:SetInt(player, "VIP22_todaybuff", 0)
		
		if VIP22_vipLevel >= 1 then

				local VIP22_today_buff = lualib:GetInt(player, "VIP22_todaybuff")
					
					if VIP22_today_buff < 1 then
							lualib:SetInt(player, "VIP22_todaybuff", 1)
							lualib:SetInt(player, "VIP22_daybl", VIP22_day)
							lualib:AddBuffEx(player, bufftable[lualib:GenRandom(1, table.getn(bufftable))], 0, buffattvalue[lualib:GenRandom(1, table.getn(buffattvalue))])
							lualib:SysMsg_SendPromptMsg(player, "��ȡ��Ա����״̬�ɹ�!")

					end	

			
		else
			lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,������ȡ��Ա����״̬!")
		end
	end
	
	return true
end