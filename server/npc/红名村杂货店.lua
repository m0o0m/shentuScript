function main(npc, player)
	lualib:AddShop(npc, 21)
	local msg = "������ʲô��\n \n"
	msg = msg.."<@OpenShop#21 *01*����>\n"
	msg = msg.."<@SellItem#1 *01*����>\n"
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
