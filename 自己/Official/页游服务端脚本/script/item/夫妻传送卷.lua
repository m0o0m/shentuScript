local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")


function main(player, item)

    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local spouse_map = lualib:MapGuid(spouse)
	local spouse_mapkeyname = lualib:KeyName(spouse_map)
	local spouse_X = lualib:X(spouse)
	local spouse_Y = lualib:Y(spouse)


	lualib:Print("配偶GUID：“"..spouse.."”")
	lualib:Print("配偶所在地图：“"..spouse_mapkeyname.."”")
	lualib:Print("配偶地图GUID：“"..spouse_map.."”")
	lualib:Print("配偶所在坐标"..spouse_X..":"..spouse_Y.."")



	if spouse == "" then
		lualib:SysMsg_SendWarnMsg(player, "你没有结婚，无法使用夫妻卷轴！")
		return false
	end

	if spouse_mapkeyname == "" then
		lualib:SysMsg_SendWarnMsg(player, "你的配偶不在线，无法使用夫妻卷轴！")
		return false
	else
		lualib:Player_MapMoveXY(player, spouse_mapkeyname, spouse_X, spouse_Y, 3)
		return true
	end

end


