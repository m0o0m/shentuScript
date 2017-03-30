local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


--取消密码保护
function main(player, code)
	local player_code = lualib:GetStr(player, "_lock_pwd")
	
	if player_code ~= code then
		return "你输入的原始密码不正确！"
	end
	
	if not lualib:SetStr(player, "_lock_pwd", "") then
		return "设置二级密码失败！"
	end
	return ""
end