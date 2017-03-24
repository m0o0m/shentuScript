local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function pre_apply(actor, skillid)
	local item_table = {
	["����ʯ��С��"] = true,
	["����ʯ���У�"] = true,
	["����ʯ����"] = true,
	["��������ʯ"] = true,
	["�ռ�����ʯ"] = true,
	["�񼶼���ʯ"] = true,
	}
	local item_guid = lualib:Player_GetItemGuid(actor, lua_site_amulet)
	local zb_item_key = lualib:KeyName(item_guid)

	if item_table[zb_item_key] == nil then
		local item_guid_table = lualib:GetItemsByKeys(actor, "����ʯ��С��#����ʯ���У�#����ʯ����#��������ʯ#�ռ�����ʯ#�񼶼���ʯ", false, true, false, false)
		if #item_guid_table ~= 0 then
			for i = 1, #item_guid_table do
				if lualib:TakeOnEx(actor, item_guid_table[i], lua_site_amulet) == true then
					zbw_item_guid = lualib:Player_GetItemGuid(actor, lua_site_amulet)
					break
					else
					lualib:SysMsg_SendBroadcastMsg("װ������ʯʧ��", "")
					return false
				end
			end
		else
			lualib:MsgBox(actor, "��δװ������ʯ���ߣ��޷�ʹ�øü���")
			return false
		end
	elseif item_table[zb_item_key] == true then
	end
	
	local jichu_naijiu = 1000
	local item_naijiu = lualib:Item_GetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet))
	if skillid == 33016 or skillid == 33021 or skillid == 33026 then
		local new_naijiu = (item_naijiu - jichu_naijiu)
			if item_naijiu >= jichu_naijiu then
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), new_naijiu)
			else
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), 0)
			end
	elseif skillid == 33017 or skillid == 33022 or skillid == 33027 then
		local new_naijiu = (item_naijiu - (jichu_naijiu*2))
			if item_naijiu >= (jichu_naijiu * 2) then
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), new_naijiu)
			else
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), 0)
			end
	elseif skillid == 33018 or skillid == 33023 or skillid == 33028 then
		local new_naijiu = (item_naijiu - (jichu_naijiu*3))
			if item_naijiu >= (jichu_naijiu * 3) then
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), new_naijiu)
			else
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), 0)
			end
	elseif skillid == 33019 or skillid == 33024 or skillid == 33029 then
		local new_naijiu = (item_naijiu - (jichu_naijiu*4))
			if item_naijiu >= (jichu_naijiu * 4) then
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), new_naijiu)
			else
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), 0)
			end
	elseif skillid == 33020 or skillid == 33025 or skillid == 33030 or skillid == 33031 then
		local new_naijiu = (item_naijiu - (jichu_naijiu*5))
			if item_naijiu >= (jichu_naijiu * 5) then
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), new_naijiu)
			else
				lualib:Item_SetDurability(actor, lualib:Player_GetItemGuid(actor, lua_site_amulet), 0)
			end
	end
	return true
end
