
function main(npc, player)
    lualib:AddShop(npc, 500)
	msg = "�Ҿ�Ӫ�����̵��Ѿ����� ���������Ǽ��⡢¹�⡢ţ�⡢���⡢BOSS�⡢��������������������Ҿ��Ի����һ���ü�Ǯ������Ʒ�ʲ��õ��⣬�ҿ��ǲ����̫�߼۵ģ�����������˭�����أ�\n \n"

	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*����>\n"

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end



function SellItem(npc, player, id)
	lualib:ShowForm(player, "������Ʒ��")
	return ""
end
