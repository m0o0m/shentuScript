
function main(npc, player)
    lualib:AddShop(npc, 500)
	msg = "我经营肉类商店已经多年 ，不管你是鸡肉、鹿肉、牛肉、猪肉、BOSS肉、都可以卖到我这边来，我绝对会给你一个好价钱！但是品质不好的肉，我可是不会给太高价的，亏本的买卖谁会做呢？\n \n"

	msg = msg.."#IMAGE1902700030# <@SellItem#1 *01*出售>\n"

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end



function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end
