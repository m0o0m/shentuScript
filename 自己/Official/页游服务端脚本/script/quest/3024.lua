--������ɻص�
--select_index ��ѡ��������
--ģ����3ѡ1��ְҵ����Ʒ

function on_accomplish(player, quest_id, select_index)
	local item_table = {"�������", "�����", "�ظ�֮��"}
	local item_num_table = {1, 1, 1}
	local item_bind_table = {1, 1, 1}
	local on_item_table = {0, 0, 0}
	local player_name = lualib:Name(player)
	
	if lualib:Job(player) == 3 then
		if  lualib:Player_GetBagFree(player) < 4 then
			lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[1]..","..item_table[2]..","..item_table[3]..">ͨ���ʼ����͸���", 0, 0, {item_table[1], 2, 1,item_table[2], 1, 1,item_table[3], 1, 1})
			lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ3�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		else
			lualib:Player_ItemRequest(player, item_table, item_num_table, item_bind_table, on_item_table, "������������", "")
			lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[1]..","..item_table[2]..","..item_table[3]..">��򿪱����鿴������")
		end
	elseif lualib:Job(player) == 1 then
		if  lualib:Player_GetBagFree(player) < 1 then
			lualib:Mail("��;", player_name, "������İ������������ѽ�<����ն>ͨ���ʼ����͸���", 0, 0, {"����ն", 1, 1})
			lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ1�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		else
			lualib:AddItem(player, "����ն", 1, true, "������������", "������������")
			lualib:SysMsg_SendTriggerMsg(player, "�������<����ն>��򿪱����鿴������")
		end
	elseif lualib:Job(player) == 2 then
		if  lualib:Player_GetBagFree(player) < 1 then
			lualib:Mail("��;", player_name, "������İ������������ѽ�<������>ͨ���ʼ����͸���", 0, 0, {"������", 1, 1})
			lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ1�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		else
			lualib:AddItem(player, "������", 1, true, "������������", "������������")
			lualib:SysMsg_SendTriggerMsg(player, "�������<������>��򿪱����鿴������")
		end
	end
	return true
end

