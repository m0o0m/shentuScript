function main(npc, player)
    msg = "�����þ�Ԫ��\n \n"
	msg = msg.."<@OpenShop#996 *01*����>\n"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end