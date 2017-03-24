function on_create(item)
	assert(lualib:KeyName(item) == "护身戒指", "系统错误:物品挂错了脚本.");
	assert(lualib:Equip_SetExtProp("", item, 9, 136, 1), "系统错误:物品扩展属性设置失败.");
--[[	local item_name = lualib:KeyName(item)
	if item_name == "护身戒指" then
		lualib:Equip_SetExtProp("", item, 9, 136, 1)
	elseif item_name == "火龙之心" or item_name == "火龙之心(赠)" then
		lualib:Equip_SetExtProp("", item, 9, 195, 10)
	end
]]	
end