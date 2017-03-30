local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/��ҩʦ")

function main(player, vipLevel)
	local VIP16_day = lualib:GetAllDays(0)
	local VIP16_today = lualib:GetInt(player, "VIP16_daybl")
	local VIP16_vipLevel = lualib:GetVipLevel(player)
	local curYL  = lualib:GetInt(player, "YL")
	local VIP16_vip_level = {1, 2, 3, 4, 5, 6, 7}
	local VIP16_YL = {1, 2, 3, 4, 5, 6, 7}
	
	
	if VIP16_today == VIP16_day then
		lualib:SysMsg_SendPromptMsg(player, "������Ѿ���ȡ��ҩ����!")
	else
		lualib:SetInt(player, "VIP16_todayyl", 0)
		
		
	
		if VIP16_vipLevel >= 1 then
				local VIP16_today_yl = lualib:GetInt(player, "VIP16_todayyl")
				if 	VIP16_today_yl < 1 then
					lualib:SetInt(player, "VIP16_daybl", VIP16_day)
					lualib:SetInt(player, "VIP16_todayyl", 1)
					lualib:SysMsg_SendPromptMsg(player, "��ȡҩ��ɹ�!")
					
					for i = 1, #VIP16_vip_level do
						if VIP16_vipLevel == VIP16_vip_level[i] then
							lualib:SetInt(player, "YL", curYL + VIP16_YL[i])
						end
					end
				
				end

			
		else
			lualib:SysMsg_SendPromptMsg(player, "�㲻��VIP1~VIP7,������ȡÿ��ҩ��!")
		end
	end
	
	return true
end