--����ɹ���ȡ�ص�
--quest_id ����id
function on_accept(player, quest_id)
	lualib:AddBuff(player, "������", 0)
	lualib:AddTimerEx(player, 1, 2000, 1, "chuansong", "")
	lualib:SysPromptMsg(player, "����·;��Զ��2��֮���㴫�͵�Ŀ�ĵأ�")
	return	true
end

function chuansong(player)
	lualib:Player_MapMoveXY(player, "��·��", 121, 215, 5)
	lualib:SysPromptMsg(player, "���ͳɹ���")
	lualib:DisableTimer(player, 1)
    return true
end



function on_accomplish(player, quest_id, select_index)
	local job = lualib:Job(player)
	local item_table = {"ն�ǵ�", "���·���", "��ħ��"}
	local player_name = lualib:Name(player)
	local item_num = 1
	
	if lualib:Player_GetBagFree(player) < item_num then
		lualib:Mail("��;", player_name, "������İ������������ѽ�<"..item_table[job]..">ͨ���ʼ����͸���", 0, 0, {item_table[job], 1, 1})
		lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ"..item_num.."�����ӣ�������ͨ���ʼ����͸��㣬��ע�����")
		
	else
		lualib:AddItem(player, item_table[job], 1, true, "������������", "������������")
		lualib:SysMsg_SendTriggerMsg(player, "�������<"..item_table[job]..">��򿪱����鿴������")
	end
	return true
end