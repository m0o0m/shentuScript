function on_accomplish(player, quest_id, select_index)
	local item_table = {"�ֲ�����", "�ֲ���Ů"}
	local gender = lualib:Gender(player)
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:GetBagFree(player) < item_num then
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[gender]..">ͨ���ʼ����͸���", 0, 0, {item_table[gender], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		
	else
		lualib:AddItem(player, item_table[gender], 1, true, "������������", "������������")
	end
	return true
end
