function main(npc, player)
	lualib:AddShop(npc, 23)
	local msg = "我经营肉类商店已经多年 ，不管你是什么肉都可以卖到我这边来，我绝对会给你一个好价钱！但是品质不好的肉，我可是不会给太高价的，亏本的买卖谁会做呢？\n\n"
	msg = msg.."<@SellItem#1 *01*出售>"

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
