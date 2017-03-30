local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, code)
	local player_code = lualib:GetStr(player, "_lock_pwd")
	if player_code ~= "" then
		return "�������ù��ֿ����룡"
	end
	if not lualib:SetStr(player, "_lock_pwd", code) then
		return "���ö�������ʧ�ܣ�"
	end
	lualib:SetInt(player, "set_lock_pwd", 1)
	lualib:NotifyVar(player, "set_lock_pwd")
	return ""
end