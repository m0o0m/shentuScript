function main(npc, player)
	lualib:AddShop(npc, 26)	
	local msg = [[
	这里是制作和试验各种药品，同时也是教这些的地方
	从不老长生仙丹到剧毒药粉，样样俱全
	药根据使用人不同，可用在善事，也可用在坏事
	一定要记住这一点
	]]
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#26 *01*「购买」   >#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#IMAGE<ID:1902700034>#<@info *01*有关毒药的说明>\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
	return msg		
end

function leave()
	return ""
end

function info(npc, player)
	local msg = "药有两种.\n"	
	msg = msg.."<@helpdrug#1 *01* 灰色毒粉药效>\n"
	msg = msg.."<@helpdrug#2 *01* 黄色毒粉药效>\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg		
end

function helpdrug(npc, player, int)
	local str_tbl =
	{
		["1"] = "灰色毒粉可以降低对方的体力.\n 只有道士通过施毒术才能使用.\n",
		["2"] = "黄色毒粉可以降低对方的防御力.\n 只有道士通过施毒术才能使用.\n",
	}
	local msg = str_tbl[int]
	msg = msg.."\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@info *01*「返回」>\n"
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
