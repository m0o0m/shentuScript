local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")


function AddAtivityMagic(player)

	local str = lualib:GetDBStr("nowActivityName")
	str = serialize(str)
																			  
	lualib:ShowFormWithContent(player,"脚本表单","LittleMap.AddActivityMagic();LittleMap.ShowActivitySchedule("..str..");" )
	--lualib:ShowFormWithContent(player,"脚本表单","LittleMap.AddActivityMagic();")
	--lualib:ShowFormWithContent(player,"脚本表单","LittleMap.Testt("..str..");")
	return ""
end

function DelAtivityMagic(player)

	local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	local ActivityNum = lualib:GetDBNum("wasActivityUnderway")
	if ActivityNum == 1 then 
		return ""
	end
	if ActivityVar <= 0 then
		lualib:ShowFormWithContent(player,"脚本表单","LittleMap.DelActivityMagic();LittleMap.HideActivitySchedule();" )
	end
	return ""
end
