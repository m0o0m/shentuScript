--������ɻص�
--select_index ��ѡ��������


function on_accomplish(player, quest_id, select_index)
	local job = lualib:Job(player)
	local item_table = {{"����", "��̽���"}, {"ħ�鷨��", "�����", "��������"}, {"������", "��ɷ��ħ��", "�������"}}	
	
	local player_name = lualib:Name(player)
	local item_num = 3
	
	if lualib:Player_GetBagFree(player) < item_num then
		for i = 1, #item_table[job] do 
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job][i]..">ͨ���ʼ����͸���", 0, 0, {item_table[job][i], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		end
		
	else
		for i = 1, #item_table[job] do
		lualib:AddItem(player, item_table[job][i], 1, true, "��������", "��������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[job][i]..">��򿪱����鿴������")
		end
		
	end
	return true
end