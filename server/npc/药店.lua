function main(npc, player)
    lualib:AddShop(npc, 5)
	local msg = "妙手回春赵神医嘛……嘻嘻，说的就是我啦！俗话说人在大陆飘，哪能不挨刀，你来找我就对了，上次王婆的孙子拉肚子，吃了我的药后马上就好了！\n \n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#5 *01*「购买」   >#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
	return msg
end

function OpenShop(npc, player, id)
	local map_k = lualib:KeyName(lualib:MapGuid(npc))
	if map_k == "幻境3层" then
		lualib:OpenShop(npc, player, 22)
		return ""
	end
	
	lualib:OpenShop(npc, player, tonumber(id))	
	return ""
end

function SellItem(npc, player)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function leave(player)
	return ""
end