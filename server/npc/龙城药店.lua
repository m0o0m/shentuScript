local talk_t = 
{
	"久在龙城，想起以前喜欢看我配药的翠花，我心里都是酸菜！", 
	"看看，我这忧郁的眼神，稀嘘的胡喳子，神乎其技的配药手法，还有这瓶回蓝90的大蓝，难道我不是一个拉风的男人？", 
	"出门请右拐！呐，转弯之前遇见我，惊喜吧！"
}

function on_create(npc)
	lualib:AddTimer(npc, 1, 13000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)	
	lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])
end

function main(npc, player)
	lualib:AddShop(npc, 5)
	local msg = "     唉，妖魔横行，订好的药材还没有运来，真让人头痛啊！啊，大人，欢迎光临！这里有足量的药品的供应！ \n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037#<@OpenShop#5 *01*「购买」           >#IMAGE1902700036#<@SellItem#1 *01*「出售」>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
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