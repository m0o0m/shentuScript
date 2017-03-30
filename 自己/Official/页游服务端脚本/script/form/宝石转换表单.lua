function switch(player,guid,key2,num,level)
	local consumption = {10000,20000,40000,80000,160000,320000,640000,1280000,2560000,5120000,10240000,20480000}
	local gold = tonumber(num*consumption[tonumber(level)])
	local z_name = lualib:KeyName(guid) 
	if lualib:SubBindGold(player,gold, "扣金币:宝石转换", player) then 
		if  lualib:DelItem(player, z_name,tonumber(num), 0, "宝石转换", "宝石转换") then
			lualib:AddItem(player,key2,tonumber(num),false,"宝石转换", player)
			lualib:ShowFormWithContent(player,"脚本表单","ConvCrystal.clean();msg_up(\"转换成功\");")
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"CrystalSystem,ConvCrystal\",3006600000,79,-150,200,1);")
		end
	elseif lualib:SubGold(player,gold, "扣金币:宝石转换", player) then 
		if  lualib:DelItem(player, z_name,tonumber(num), 0, "宝石转换", "宝石转换") then 
			lualib:AddItem(player,key2,tonumber(num),false,"宝石转换", player)
			lualib:ShowFormWithContent(player,"脚本表单","ConvCrystal.clean();msg_up(\"转换成功\");")
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"CrystalSystem,ConvCrystal\",3006600000,76,-150,200,1);")
		end
	else
		lualib:ShowFormWithContent(player,"脚本表单","msg_up(\"金币不足\");")
	end
	return ""
end