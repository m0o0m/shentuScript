--������ɻص�
--select_index ��ѡ��������
function on_accomplish(player, quest_id, select_index)
	local job = lualib:Job(player)
	local sex = lualib:Gender(player)
	local item_table = {
							{"��ʿ����(��)","��ʿ����(Ů)"},
							{"��귨��(��)","��귨��(Ů)"},
							{"�������(��)","�������(Ů)"},
						}						
						
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job][sex]..">ͨ���ʼ����͸���", 0, 0, {item_table[job][sex], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		
	else
		lualib:AddItem(player, item_table[job][sex], 1, true, "������������", "������������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[job][sex]..">��򿪱����鿴������")
	end	
    return true
end