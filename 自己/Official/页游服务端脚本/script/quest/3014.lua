local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
	
--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
	local job = lualib:Job(player)
	local skill = {"�����޼����", "���ַ������", "���ֶ�ħ֮ŭ"}
	lualib:AddSkill(player, skill[job])
	lualib:SysMsg_SendWarnMsg(player, "���Ѿ�����"..skill[job].."������ʹ��100�Σ���򿪼���������ã�")
    return true
end
