local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, vipLevel)
	local zhuangbeiwei = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13}
	for i = 1, #zhuangbeiwei do
		 zbw_guid1 = lualib:Player_GetItemGuid(player, zhuangbeiwei[1])
		 zbw_guid2 = lualib:Player_GetItemGuid(player, zhuangbeiwei[2])
		 zbw_guid3 = lualib:Player_GetItemGuid(player, zhuangbeiwei[3])
		 zbw_guid4 = lualib:Player_GetItemGuid(player, zhuangbeiwei[4])
		 zbw_guid5 = lualib:Player_GetItemGuid(player, zhuangbeiwei[5])
		 zbw_guid6 = lualib:Player_GetItemGuid(player, zhuangbeiwei[6])
		 zbw_guid7 = lualib:Player_GetItemGuid(player, zhuangbeiwei[7])
		 zbw_guid8 = lualib:Player_GetItemGuid(player, zhuangbeiwei[8])
		 zbw_guid9 = lualib:Player_GetItemGuid(player, zhuangbeiwei[9])
		 zbw_guid10 = lualib:Player_GetItemGuid(player, zhuangbeiwei[10])
		 zbw_guid11 = lualib:Player_GetItemGuid(player, zhuangbeiwei[11])
		 zbw_guid12 = lualib:Player_GetItemGuid(player, zhuangbeiwei[12])
		 zbw_guid13 = lualib:Player_GetItemGuid(player, zhuangbeiwei[13])
		 zbw_guid14 = lualib:Player_GetItemGuid(player, zhuangbeiwei[14])

	end
	
	local zhuangbeiweiguid = {zbw_guid1, zbw_guid2, zbw_guid3, zbw_guid4, zbw_guid5, zbw_guid6, zbw_guid7, zbw_guid8, zbw_guid9, zbw_guid10, zbw_guid11, zbw_guid12, zbw_guid13, zbw_guid14}


	if zbw_guid1 == "" and zbw_guid2 == "" and zbw_guid3 == "" and zbw_guid4 == "" and zbw_guid5 == "" and zbw_guid6 == "" and zbw_guid7 == "" and zbw_guid8 == ""  and zbw_guid9 == ""  and zbw_guid10 == "" and zbw_guid11 == ""  and zbw_guid12 == "" and zbw_guid13 == "" and zbw_guid14 == ""  then
		lualib:SysMsg_SendPromptMsg(player, "你身上没有穿戴装备,不能使用远程特修!")
	else
	




		local yuanbaonum = 39
		
		if lualib:Player_IsIngotEnough(player, yuanbaonum, false) == false then
			lualib:SysMsg_SendPromptMsg(player, "你的元宝不足100，不能使用!")
		else
			
			local equip_table = {{0,  lua_site_weapon},
				{0,  lua_site_helmet},
								 {0,  lua_site_wrist_0},
								 {0,  lua_site_wrist_1},
								 {0,  lua_site_armor},
								 {0,  lua_site_juju},
								 {0,  lua_site_shoes},
								 {0,  lua_site_shoulder},
								 {0,  lua_site_necklace},
								 {0,  lua_site_ring_0},
								 {0,  lua_site_ring_1},
								 {0,  lua_site_gem},
								 {0,  lua_site_medal},
								 {0,  lua_site_wings}}

			local is_success = false
			for i = 1, table.getn(equip_table) do
				equip_table[i][1] = lualib:Player_GetEquipGuid(player, equip_table[i][2])
				if equip_table[i][1] ~= "" then
					if lualib:Player_FixSingleEquip(player, equip_table[i][1], true) then
						is_success = true
					end
				end
			end
			
			if is_success then
				if lualib:Player_SubIngot(player, yuanbaonum, false, "使用会员的远程特修扣元宝", player) == false then
					lualib:SysMsg_SendTriggerMsg(player, "元宝扣除失败！")
					return false
				end
				
				lualib:SysMsg_SendTriggerMsg(player, "修理装备成功！")
				return true
			end
			
			lualib:SysMsg_SendTriggerMsg(player, "修理装备失败！")
		end
		
	end
	return false
end
