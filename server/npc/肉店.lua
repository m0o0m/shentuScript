function main(npc, player)
	lualib:AddShop(npc, 23)
	local msg = "�Ҿ�Ӫ�����̵��Ѿ����� ����������ʲô�ⶼ������������������Ҿ��Ի����һ���ü�Ǯ������Ʒ�ʲ��õ��⣬�ҿ��ǲ����̫�߼۵ģ�����������˭�����أ�\n\n"
	msg = msg.."<@SellItem#1 *01*����>"

	return msg
end

function OpenShop(npc, player, id)
	lualib:OpenShop(npc, player, tonumber(id))
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end
