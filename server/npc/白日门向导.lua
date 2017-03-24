

function main(npc, player)
	local msg = [[
	里面是连绵不断的群山，东面上无边无际的大海。
	南面是辽阔的沃玛森林，埋伏着沃玛教主的迷宫。
	还有北面是阴森恐怖的丛林迷宫，那里潜伏着许多巨大的变异生物，
	据说恐怖的赤月恶魔就隐藏在其中
	]]
	msg = msg.."\n"
	msg = msg.."<@go_next *01* 到别处去>\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「确定」>\n"
	return msg		
end

function leave()
	return ""
end

function go_next(npc, player)
	local msg = [[
	白日门附近很危险，
	如果你想回到安全的地方，
	我可以帮你。
	]]
	msg = msg.."\n"
	msg = msg.."<@move1 *01* 回到比奇>\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg	
end

function move1(npc, player)
	local msg = [[
	移动到比奇需要金币
	不能让你免费使用
	你必须支付2000金币
	你想花这比钱吗？
	]]
	msg = msg.."\n"
	msg = msg.."<@movemap *01* 回到比奇>\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「退出」>\n"
	return msg	
end

function movemap(npc, player)
	if not lualib:SubGold(player, 2000, "扣金币:白日门向导传送费", "白日门向导") then
		return "你没有足够的金币用来支付我们的服务费用!\n 请努力赚钱哦:)\n 　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	else
		lualib:Player_MapMoveXY(player, "巫山城", 335, 291, 3)
	end

	return ""	
end
