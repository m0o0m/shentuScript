function switch(player,guid,key2,num,level)
	local consumption = {10000,20000,40000,80000,160000,320000,640000,1280000,2560000,5120000,10240000,20480000}
	local gold = tonumber(num*consumption[tonumber(level)])
	local z_name = lualib:KeyName(guid) 
	if lualib:SubBindGold(player,gold, "�۽��:��ʯת��", player) then 
		if  lualib:DelItem(player, z_name,tonumber(num), 0, "��ʯת��", "��ʯת��") then
			lualib:AddItem(player,key2,tonumber(num),false,"��ʯת��", player)
			lualib:ShowFormWithContent(player,"�ű���","ConvCrystal.clean();msg_up(\"ת���ɹ�\");")
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"CrystalSystem,ConvCrystal\",3006600000,79,-150,200,1);")
		end
	elseif lualib:SubGold(player,gold, "�۽��:��ʯת��", player) then 
		if  lualib:DelItem(player, z_name,tonumber(num), 0, "��ʯת��", "��ʯת��") then 
			lualib:AddItem(player,key2,tonumber(num),false,"��ʯת��", player)
			lualib:ShowFormWithContent(player,"�ű���","ConvCrystal.clean();msg_up(\"ת���ɹ�\");")
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"CrystalSystem,ConvCrystal\",3006600000,76,-150,200,1);")
		end
	else
		lualib:ShowFormWithContent(player,"�ű���","msg_up(\"��Ҳ���\");")
	end
	return ""
end