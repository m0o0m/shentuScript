local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")


function main(player, item)

	local require_distance = 7
    local spouse = lualib:Player_GetCustomVarStr(player, "配偶GUID")
	local distance = lualib:Distance(player, spouse)

	if spouse == "" then
		lualib:SysMsg_SendWarnMsg(player, "你没有结婚，无法使用同心疗伤药！")
		return false
	end

	if distance <= require_distance then
		lualib:AddBuff(player, "同心疗伤药", 2)
		lualib:AddBuff(spouse, "同心疗伤药", 2)

		return true
	else
		lualib:SysMsg_SendWarnMsg(player, "你的配偶离你距离过远，无法使用同心疗伤药！")
		return false
	end


end


