--������ɻص�
--select_index ��ѡ��������
function on_accept(player, quest_id, select_index)
	local player_name = lualib:Name(player)
	local s = {
				"��ҡ�"..player_name.."��ׯ�ϵ��������ԣ�����һ��ܺ���������һ���˼�룬��ô�����а��Ķ���������ֹ��",
			    "��ҡ�"..player_name.."��ׯ�ϵ��������ԣ������ȫ�����������ħ������ȫ����Ѫ�ս���ѣ�",
				}
	local a = lualib:GenRandom(1,2)
	lualib:SysMsg_SendCenterMsg(1, s[a], "")
    return true
end

--[[
function on_accomplish(player, quest_id)
	local job = lualib:Job(player)
	local item_table = {"���ĳ���", "ҹ��ì", "����"}
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
]]