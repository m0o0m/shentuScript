--������ɻص�
--select_index ��ѡ��������
function on_accomplish(player, quest_id, select_index)
	local item_table = 
	{
		{"��������", "�ƽ�����"},
		{"��ħ����", "��������"},
		{"���ʯ����", "���껤��"}
	}
	local job = lualib:Job(player)
	local player_name = lualib:Name(player)
	local item_num = 2
	
	if lualib:Player_GetBagFree(player) < item_num then
		for i = 1 , 2 do		
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job][i]..">ͨ���ʼ����͸���", 0, 0, {item_table[job][i], 1, 1})
		end
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")		
		
	else
		for i = 1, 2 do 
		lualib:AddItem(player, item_table[job][i], 1, true, "������������", "������������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[job][i]..">��򿪱����鿴������")
		end
	end
	return true
end