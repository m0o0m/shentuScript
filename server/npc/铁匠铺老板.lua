function main(npc, player)
    lualib:AddShop(npc, 1)
	local msg = "嘘！听到了吗,有一把武器正在因你的出现而低鸣！师傅说过,每一把武器都是有灵魂的,现在,它终于等到了自己的主人！\n \n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepire#1 *01*修理> \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepireEx#1 *01*特殊修理> \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1># <@SellItem#1 *01*出售> \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@talk *01*对话> "
	return msg
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "修理表单")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "特殊修理表单")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function talk(npc, player)
	local my_quest = lualib:GetInt(player, "my_quest")
	local msg = ""
	if my_quest == 2 then
		msg = [[哦，原来你就是卫家店所讲的那个人？
		看来他看人还有眼光啊。
		至于我，曾经可是很风光过。
		想听我的故事吗？
		
		<@hear *01*听>          <@Leave *01*不听>]]
		return msg
	end
	
	if my_quest == 3 then
		msg = [[快去找高级武士吧!他就在巫山城的77:355
		
		
		<@Leave *01*关闭对话>]]
		return msg
	end
	
	if my_quest == 8 then
		msg = [[啊?这本书是?师傅的命运之书!
		师傅还是没有忘了我.
		呜呜呜....
		我不能就这样呆着,我要重振师傅的绝世珍品“命运之刃”!
		你现在要把书给我吗?
		
		<@enter *01*现在就给你>           <@Leave *01*为什么要给你?>]]
		return msg
	end
	
	
	return "我没有什么好对你说的!"
end
	
function enter(npc, player)
	local msg = ""
	if lualib:DelItem(player, "命运之书", 1, 2, "命运之刃任务需求", player) == true then

		local item_tbl =
		{
			{"命运之刃",  800},
			{"命运之刃1", 700},
			{"命运之刃2", 600},
			{"命运之刃3", 500},
			{"命运之刃4", 400},
			{"命运之刃5", 300},
			{"命运之刃6", 200},
			{"命运之刃7", 100},
		}
		local max, pr_y = 0, 0
		
		for i = 1, #item_tbl do
			max = max + item_tbl[i][2]		
		end
		
		local r = lualib:GenRandom(1, max)
		for _, v in pairs(item_tbl) do
			pr_y = pr_y + v[2]
			if r <= pr_y then
				local item_k = v[1]
				lualib:AddItem(player, item_k, 1, false, "命运之刃任务给命运之刃", player)
				lualib:SysMsg_SendBroadcastMsg("高级武士的徒弟终于修炼成绝世珍品“命运之刃”,没辜负他师傅的教导和恩惠,这把刀奖给了【"..lualib:Name(player).."】是他让高级武士的铁匠技术又重振江湖!！", "系统通知")
				lualib:SetInt(player, "my_quest", 0)
				msg = [[看,是不是很厉害?好好用吧.
				是一把和你很相称的剑.
		
				<@Leave 关闭对话>]]	
				return msg
			end
		end		

		return msg
	else
		msg = "你把命运之书卖到哪儿去了?\n有了命运之书才能制造命运之刃啊!\n \n \n"
		msg = msg.."<@Leave 关闭对话>"
		return msg
	end
end

function hear(npc, player)
	local msg = ""
	local level = lualib:Level(player)
	if level < 35 then
		msg = [[嗯，看来你还不具备听我故事的资格。
		要想挑战我要讲的故事，凭你的能力是万万不行的。
		既然你已经找到这儿了，看在卫家店的面子上，我就给你说个笑话吧!
		
		<@Leave *01*关闭对话>]]
		return msg
	else
		msg = [[还是很会看人啊。不知你有没有听说过命运之刃?
		那是我为了学铁匠技术到处找师傅的时候，
		当时我年轻，血气旺盛，没有落过一个村庄，
		为了学到最高的技术，我走遍了所有的地方。
		年轻时候立志要在自己的做事氛围成为第一。
		所以，过起了流浪生活,有一天到了一个小村庄，
		当时我只是想在这里填饱肚子，所以就先在附近找客栈。
		进入客栈，我叫老板，想点几个简单的菜，
		但是我发现他手里拿着的菜刀不是一般的刀，
		那把刀比我曾经见过的任何刀都要出色。
		那可是一把菜刀啊，你能相信吗？
		一把菜刀竟然比匠人制造的刀还要好。
		我缠上客栈老板，要他一定告诉我制造那把刀的人。
		告诉我的人不是别人，他就是高级武士。
		他的剑术当时已经达到了神的境界。
		但是没有任何野心的先生，从世俗的观念醒悟过来,
		只是一个人在离村庄不很远的地方生活。
		我发疯似的寻找他，终于找到了他，我求他三天三夜，成了他的弟子。
		但是，自从感觉自己的实力有长进，我就开始很变得自傲。
		师傅叫我做的事情我理都不理，
		每天除了喝酒就是玩，到现在我还很后悔。
		到最后师傅也没有抛弃我，也就是这一点让我更不能忍受。
		对过着放荡生活的我，师傅没有说任何话。
		我实在是太对不起师傅，后来没有留任何话，我就离开了师傅，
		到如今还在这里做事。师傅过隐居生活之前，制造了一把剑。
		但是我在没有学到制造这把剑的技术之前，
		就过起了腐败的生活，所以我不知道此技术。
		现在没脸再去找师傅，不知你能不能替我找师傅？ 
		<@accept *01*接受>          <@Leave *01*拒绝>]]
		return msg
	end
end

function accept(npc, player)
	local msg = "快去找高级武士吧!他就在巫山城的77:355\n \n"
	msg = msg.."<@Leave *01*关闭对话>"
	lualib:SetInt(player, "my_quest", 3)
	return msg
end
	
function Leave(npc, player)
	return ""
end
