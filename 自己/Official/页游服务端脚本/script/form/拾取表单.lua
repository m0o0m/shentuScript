local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
 
function getTab(player)
	local PickUp = lualib:GetStr(player,"PickUp")
	PickUp1 = json.decode(PickUp)
	lualib:ShowFormWithContent(player,"½Å±¾±íµ¥","SettingPickup.Update("..serialize(PickUp1)..");")
	return ""
	
end

function SetTab(player,param)
	param = tonumber(param)
	local Key_tab = {"PickMedicines","PickGlod","PickMaterial","PickItem","PickEquipped","PickRedEquipped"}
	local PickUp = lualib:GetStr(player,"PickUp")
	local PickUp1 = json.decode(PickUp)
	local old = PickUp1[Key_tab[param]]
	if old == 1 then 
		old = 0
	else 
		old = 1
	end
	PickUp1[Key_tab[param]] = old
	local PickUp2 = json.encode(PickUp1)
	lualib:SetStr(player,"PickUp",PickUp2)
	lualib:NotifyVar(player, "PickUp")
	return ""
end

function SetTxt(player , level)
	local PickUp = lualib:GetStr(player,"PickUp")
	local PickUp1 = json.decode(PickUp)
	PickUp1["level"] = tonumber(level)
	local PickUp2 = json.encode(PickUp1)
	lualib:SetStr(player,"PickUp",PickUp2)
	lualib:NotifyVar(player, "PickUp")
	return ""
end