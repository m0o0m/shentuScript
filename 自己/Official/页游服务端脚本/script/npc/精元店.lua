function main(npc, player)
    msg = "²âÊÔÓÃ¾«Ôªµê\n \n"
	msg = msg.."<@OpenShop#996 *01*¹ºÂò>\n"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end