local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
	
--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
	local item_table = {"�鲼��(��)", "�鲼��(Ů)"}
	local a = lualib:Gender(player)
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if  lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[a]..">ͨ���ʼ����͸���", 0, 0, {item_table[a], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")	
	else
		lualib:AddItem(player, item_table[a], 1, true, "������������", "������������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[a]..">��򿪱����鿴������")
	end
	return true
end
