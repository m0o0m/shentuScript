function main(npc, player)
	lualib:AddShop(npc, 21)
	local msg = "你想买什么？\n \n"
	msg = msg.."<@OpenShop#21 *01*购买>\n"
	msg = msg.."<@SellItem#1 *01*出售>\n"
	return msg
end

function OpenShop(npc, player, id)
	lualib:OpenShop(npc, player, tonumber(id))
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end
