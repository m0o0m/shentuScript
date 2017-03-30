local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, code)
	local player_code = lualib:GetStr(player, "_lock_pwd")
	if code == player_code then
		lualib:SetInt(player, "set_lock_pwd", 1)
		lualib:NotifyVar(player, "set_lock_pwd")
	else
		return "密码不正确，请重新输入！"
	end
	return ""
end