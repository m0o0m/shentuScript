
local table_bag = {}
table_bag["1"] = {"��֯��", "����", 10, 0}
table_bag["2"] = {"Ƥ����", "Ƥ��", 10, 0}
table_bag["3"] = {"������", "�߼�Ƥ��", 10, 0}

function main(npc, player)
	local msg = "�����ܴ������������õİ�����\n \n"
	msg = msg.."<@GenItem *01*�������������>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenItem(npc, player)
	local msg = "����Ҫ�����������͵İ�����\n \n"
	msg = msg.."<@GenBag#1 *01*��֯��>\n"
	msg = msg.."<@GenBag#2 *01*Ƥ����>\n"
	msg = msg.."<@GenBag#3 *01*������>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "���� "..table_bag[types][1].." ��Ҫ "..table_bag[types][3].." �� "..table_bag[types][2].." ��"..table_bag[types][4].." ��ң��㡸ȷ����Ҫ������\n \n"
	msg = msg.."<@GenBagEx#"..types.." *01*��ȷ����>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenBagEx(npc, player, types)
	if table_bag[types] == nil then return "ϵͳ����@1��" end
	
    if not lualib:Player_IsGoldEnough(player, table_bag[types][4], false) then
        return "��Ǯ����"
    end

	local table_name = {table_bag[types][1], table_bag[types][2]}
	local table_count = {1, table_bag[types][3]}
	local table_bind = {0, 0}
	local table_remove = {0, 1}
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "�����������������", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "����ʧ�ܣ�")
		return "��������ʧ�ܣ���ȷ�ϲ����Ƿ��㹻�������Ƿ���ʣ��ո�"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "�۽�ң��������컨��", player) then
        return "ϵͳ����@3��"
    end
	
	lualib:SysMsg_SendTriggerMsg(player, "��Ʒ "..table_bag[types][1].." ������ɹ���")
	return "��Ʒ "..table_bag[types][1].." ������ɹ���"
end

function Leave()
	return ""
end
