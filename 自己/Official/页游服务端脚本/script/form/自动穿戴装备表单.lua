
	local lua_path = lualib:IO_GetLuaPath()
	local package_path = package.path
	package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
	require("system/logic_def_lua")
	require("system/serializer")
	require("item/������")

function auto_equip(player,item_bag_site,equip_site)
	
	lualib:Debug("item bag site = "..item_bag_site)
	lualib:Debug("equip site = "..equip_site)
	local item = lualib:Player_GetItemGuid(player, tonumber(item_bag_site))
	
	
	

	if lualib:TakeOnEx(player, item, tonumber(equip_site)) then
		lualib:Debug("successfully add equip")
		return "�ɹ�������װ��"
	else
		lualib:Debug("can not add equip")
		return "�޷�������װ��"
	end
end

function auto_equip_skill(player,item_guid)
	main(player,item_guid)
	return
end