function on_create(item)
	
	lualib:Equip_SetRefineLevel("",item,6)
	
	local shux1 ={{11,10},{13,12},{15,14}}

	local keyName = lualib:KeyName(item)
	local tb = {["ħ�귨��Plus"]=2,["���ս��Plus"]=1,["�������Plus"]=3}
	local index = tb[keyName]
	lualib:Equip_SetExtProp("", item, 8, shux1[index][1], 25)

	lualib:Equip_SetExtProp("", item, 9, shux1[index][2], 78)	
end




