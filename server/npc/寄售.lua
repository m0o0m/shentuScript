function main(npc, player)
	local msg = "尊客，欢迎光临！本店经营一切物品的委托销售，公正公开，绝无虚价。\n \n"
	msg = msg.."#IMAGE1902700037##OFFSET<X:0,Y:-1>#<@ShowSellMarket#1 *01*进入交易行>\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*离开>\n"
    return msg
end

function ShowSellMarket(npc, player)
    lualib:ShowForm(player, "交易行表单")
    return ""
end

function likai()
	return ""
end