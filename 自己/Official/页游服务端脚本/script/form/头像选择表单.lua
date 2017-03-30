local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

function HeadSelect(player,guid)
	local keyname = lualib:KeyName(guid)	
	local mt_type = lualib:Monster_Type(keyname)
	if tonumber(mt_type) == 4 then
		lualib:ShowFormWithContent(player,"½Å±¾±íµ¥","OtherRoleHeadInfo.CreateUI(2,"..serialize(keyname)..")")			
	end
	return ""
end