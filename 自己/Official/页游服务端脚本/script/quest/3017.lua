local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
	
--����ɹ���ȡ�ص� ����3011�ű� �д��޴�����˵
--quest_id ����id
function on_accomplish(player, quest_id)
	local item_table = {"����ֹˮ", "���������", "������ɫҩ��", "������ɫҩ��"}
	local item_num_table = {1, 1, 1, 1}
	local item_bind_table = {1, 1, 1, 1}
	local on_item_table = {0, 0, 0, 0}
	local player_name = lualib:Name(player)
	local item_num = 6
	
	if lualib:Job(player) == 3 then
		if  lualib:Player_GetBagFree(player) < item_num then
			lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[1]..","..item_table[2]..","..item_table[3]..","..item_table[4]..">ͨ���ʼ����͸���", 0, 0, {item_table[1], 1, 1,item_table[2], 1, 1,item_table[3], 2, 1,item_table[4], 2, 1})
			lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		else
			lualib:Player_ItemRequest(player, item_table, item_num_table, item_bind_table, on_item_table, "������������", "")
			lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[1]..","..item_table[2]..","..item_table[3]..","..item_table[4]..">��򿪱����鿴������")
		end
	end
	return true
end

