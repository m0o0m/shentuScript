local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


--ȡ�����뱣��
function main(player, code)
	local player_code = lualib:GetStr(player, "_lock_pwd")
	
	if player_code ~= code then
		return "�������ԭʼ���벻��ȷ��"
	end
	
	if not lualib:SetStr(player, "_lock_pwd", "") then
		return "���ö�������ʧ�ܣ�"
	end
	return ""
end