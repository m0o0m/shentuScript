local table_bag = {}
table_bag["1"] = {"��ɫҩ��(����)", "����","Ы��β��","ʳ����Ҷ", 3, 3, 12}
table_bag["2"] = {"��ɫҩ��(����)", "ʳ�˻���ʵ", "��֩������", "ʳ����Ҷ", 3, 6, 12}
table_bag["3"] = {"��ɫҩ��(����)", "����","Ы��β��","ʳ����Ҷ", 2, 2, 8}
table_bag["4"] = {"��ɫҩ��(����)", "ʳ�˻���ʵ", "��֩������", "ʳ����Ҷ", 2, 4, 8}
table_bag["5"] = {"��ɫҩ��(С��)", "����","Ы��β��","ʳ����Ҷ", 1, 1, 4}
table_bag["6"] = {"��ɫҩ��(С��)", "ʳ�˻���ʵ", "��֩������", "ʳ����Ҷ", 1, 2, 4}


function main(npc, player)
	local msg = "�����ܴ������õ�ʿ����Ҫ����Ʒ�� \n \n"
	msg = msg.."<@GenBag#1 *01*��ɫҩ��(��)>��������"
	msg = msg.."<@GenBag#2 *01*��ɫҩ��(��)>\n"
	msg = msg.."<@GenBag#3 *01*��ɫҩ��(��)>��������"
	msg = msg.."<@GenBag#4 *01*��ɫҩ��(��)>\n"
	msg = msg.."<@GenBag#5 *01*��ɫҩ��(��)>��������"
	msg = msg.."<@GenBag#6 *01*��ɫҩ��(��)>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "���� "..table_bag[types][1].." ��Ҫ "..table_bag[types][5].." �� "..table_bag[types][2].." ����Ҫ "..table_bag[types][6].." �� "..table_bag[types][3].." ����Ҫ "..table_bag[types][7].." �� "..table_bag[types][4].." ���㡸ȷ����Ҫ������\n \n"
	msg = msg.."<@GenBagEx#"..types.." *01*��ȷ����>\n"
	msg = msg.."<@Leave *01*���뿪��>\n"
	return msg
end

function GenBagEx(npc, player, types)
	if table_bag[types] == nil then return "ϵͳ����@1��" end

	local table_name = {table_bag[types][1], table_bag[types][2], table_bag[types][3], table_bag[types][4]}
	local table_count = {1, table_bag[types][5], table_bag[types][6], table_bag[types][7]}
	local table_bind = {0, 0, 0, 0}
	local table_remove = {0, 1, 1, 1}
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "���������ҩ������", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "[ϵͳ��ʾ]:����ʧ�ܣ�")
		return "����ʧ�ܣ���������ڲ����Ƿ��㹻��"
	end


	lualib:SysMsg_SendTriggerMsg(player, "ϵͳ��ʾ:��Ʒ "..table_bag[types][1].." �������ɹ���")
	return "��Ʒ "..table_bag[types][1].." �������ɹ���"
end

function Leave()
	return ""
end
