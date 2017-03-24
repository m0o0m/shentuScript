
function main(npc, player)
	local my_quest = lualib:GetInt(player, "my_quest")
	local msg = ""
	if my_quest == 3 then	
		msg = [[找我什么事?巫山城铁匠铺老板?
		你怎么知道我的弟子?你想和我说些什么?
		那我们玩布,剪刀,锤游戏,你赢了我就听你讲.
		
		<@jiandao *01*剪刀>　　　<@shitou *01*石头>　　　<@bu *01*布>]]
		return msg
	end
	
	if my_quest == 4 then 
		msg = [[你说你见过我的弟子-巫山城铁匠铺老板?
		他没死活得很好?天分不是很好,
		但是就凭他那个热情,我就把他带在身边教他,很懒,我也没说过他,他现在在哪儿做什么?
		
		<@talk_one *01*现在在巫山城铁匠铺做铁匠>
		<@talk_two *01*不要说那种话,先听我讲吧.>]]
		return msg
	end
	
	if my_quest == 5 then
		msg = [[是吗?其实我也没有忘了他.
		我收他为弟子,是想传给他一个技术,
		这个技术单凭才能是不够的,需要经过无数次的失败,
		从失败中得到经验,才能完成,我以为他有热情应该可以做得到.
		但是我现在老了,想不起来了.\n再加上整理技术内容时,魔鬼进入了书中,
		曾有一次为了消灭它们,我翻开书,引诱它们出来,\n但是它们太强大了,我是不敢再那么做了.
		怎么样,你能帮我打败书里的魔鬼吗?
		
		<@accept *01*接受>          <@Leave *01*拒绝>]]
		return msg
	end
	
	if my_quest == 6 then
		msg = [[好,不过书里的魔鬼很强大,
		做好心理准备了就告诉我吧,
		如果还没准备好就准备好装备和补给品再来!
		<@start *01*准备好了>          <@Leave *01*等我准备准备再来>]]
		return msg
	end
	
	if my_quest == 7 then 
		lualib:AddItem(player, "命运之书", 1, true, "命运之刃任务", player)
		lualib:SetInt(player, "my_quest", 8)
		msg = [[哦,你是真正的勇士,能把魔鬼消灭掉.
		真是太辛苦你了,没想到还有翻开此书的一天啊,
		来,我把这本书给你,你替我把它交给巫山城铁匠铺老板
		他会明白我的意思的.
		
		<@Leave *01*关闭对话>]]
		return msg
	end
	msg = "我不认识你,能有什么话好对你说呢?\n \n"
	msg = msg.."<@Leave *01*关闭对话>"
	return msg
end

function start (npc, player)
	local msg = ""
	local map = lualib:Map_GetMapGuid("命运小屋")
	if lualib:Map_GetPlayerCount(map, true) == 0 then
		lualib:Player_MapMove(player, "命运小屋")
		lualib:Map_ClearMonster(map, 24, 33, 100, "", true, true)
		lualib:Map_GenMonster(map, 73, 64, 50, 4, "火焰沃玛", 30, false)
		return ""
	else
		msg = "现在有人正在和魔鬼战斗.\n你还是等一会再来吧!\n \n "
		msg = msg.."<@Leave *01*关闭对话>"
		return msg
	end
end

function accept (npc, player)
	lualib:SetInt(player, "my_quest", 6)
	local msg = "好,不过书里的魔鬼很强大,做好心理准备了就告诉我吧! \n"
	msg = msg.."<@start *01*准备好了>       <@Leave *01*等我准备准备再来>"
	return msg
end

function answer_two (npc, player)
	lualib:SetInt(player, "my_quest", 0)	
	local msg = "你说什么?你在和我计较吗?\n我想说什么就说什么!!!\n不想在和你这种人说话了.\n你回去吧!!!\n<@Leave *01*关闭对话>"
	return msg
end

function talk_one(npc, player)
	lualib:SetInt(player, "my_quest", 0)
	return "是吗?没出息的东西，我知道了,现在你可以回去了!"
end

function talk_two(npc, player)
	local msg = "你想对我说什么?\n \n"
	msg = msg.."<@answer *01*其实巫山城铁匠铺老板也很想念师傅>\n"
	msg = msg.."<@answer_two *01*为什么把曾经是你弟子的人说的那么难听?>"
	return msg
end

function answer (npc, player)
	lualib:SetInt(player, "my_quest", 5)
	local msg = "是吗?其实我也没有忘了他。\n \n<@main *01*继续对话>"
	return msg
end

function jiandao (npc, player)
	local sz = lualib:GenRandom (1, 5)
	if sz == 3 then
		lualib:SetInt(player, "my_quest", 4)
		return "我出了布,竟然赢了我?\n厉害,让我听听究竟你要说什么?\n \n \n<@main *01*继续对话>"
	else
		lualib:SetInt(player, "my_quest", 0)
		return "我出了石头,我赢了,你走吧!\n \n \n<@Leave *01*关闭对话>"
	end
end

function shitou (npc, player)
	local sz = lualib:GenRandom (1, 5)
	if sz == 3 then
		lualib:SetInt(player, "my_quest", 4)
		return "我出了剪刀,竟然赢了我?\n厉害,让我听听究竟你要说什么?\n \n \n<@main *01*继续对话>"
	else
		lualib:SetInt(player, "my_quest", 0)
		return "我出了布,我赢了,你走吧!\n \n \n<@Leave *01*关闭对话>"
	end
end

function bu (npc, player)
	local sz = lualib:GenRandom (1, 5)
	if sz == 3 then
		lualib:SetInt(player, "my_quest", 4)
		return "我出了石头,竟然赢了我?\n厉害,让我听听究竟你要说什么?\n \n \n<@main *01*继续对话>"
	else
		lualib:SetInt(player, "my_quest", 0)
		return "我出了剪刀,我赢了,你走吧!\n \n \n<@Leave *01*关闭对话>"
	end
end

function Leave (npc, player)
	return ""
end
