
	local lua_path = lualib:IO_GetLuaPath()
	local package_path = package.path
	package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
	require("system/logic_def_lua")
	require("system/serializer")
	require("item/技能书")

function auto_equip(player,item_bag_site,equip_site)
	
	lualib:Debug("item bag site = "..item_bag_site)
	lualib:Debug("equip site = "..equip_site)
	local item = lualib:Player_GetItemGuid(player, tonumber(item_bag_site))
	
	
	

	if lualib:TakeOnEx(player, item, tonumber(equip_site)) then
		lualib:Debug("successfully add equip")
		return "成功穿戴新装备"
	else
		lualib:Debug("can not add equip")
		return "无法穿戴新装备"
	end
end

function auto_equip_skill(player,item_guid)
	main(player,item_guid)
	return
end