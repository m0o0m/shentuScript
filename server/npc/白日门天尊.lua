

function main(npc, player)
	local msg = [[
	不管你说了什么做了什么！
	真心谢谢你做出的贡献！
	]]
	msg = msg.."\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@next_to *01*「继续」>\n"
	return msg	
end

function next_to(npc, player)
	local msg = [[
	在宝塔下
	可能有你想要找的。
	]]
	msg = msg.."\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg	
end
