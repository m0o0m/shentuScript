--������ɻص�
--select_index ��ѡ��������
function on_accomplish(player, quest_id, select_index)
	local item_table = {"������", "��̴����", "��ʿ����"}
	local item ={"����ʯ","����ʯ","����ʯ"}
	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 2
	
	if lualib:GetBagFree(player) < item_num then
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job]..">ͨ���ʼ����͸���", 0, 0, {item_table[job], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		
	else
		lualib:AddItem(player, item_table[job], 1, true, "������������", "������������")
		lualib:AddItem(player, item[job], 1, true, "������������", "������������")
	end
	return true
end