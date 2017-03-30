function on_create(item)
	local sItem = lualib:KeyName(item)
	local sPlayer = lualib:Item_GetRole(item)
	local player = lualib:Name(sPlayer)
	lualib:ApplyItem(player, "±³°üÀ©³ä40", true);
	return
end