function on_create(item)
	assert(lualib:KeyName(item) == "�����ָ", "ϵͳ����:��Ʒ�Ҵ��˽ű�.");
	assert(lualib:Equip_SetExtProp("", item, 9, 136, 1), "ϵͳ����:��Ʒ��չ��������ʧ��.");
--[[	local item_name = lualib:KeyName(item)
	if item_name == "�����ָ" then
		lualib:Equip_SetExtProp("", item, 9, 136, 1)
	elseif item_name == "����֮��" or item_name == "����֮��(��)" then
		lualib:Equip_SetExtProp("", item, 9, 195, 10)
	end
]]	
end