function main(npc, player)
	local msg = ""
	msg = "能来到这里，说明你有足够的实力进入下一层。 \n"
	msg = "你现在还想去吗？\n \n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@go_nest#幻境4层#48#63 *01*「去幻境四层」   >\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@go_nest#幻境2层#173#214 *01*「去幻境二层」   >\n"

	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「不去」>\n"
	return msg
end




function go_nest(npc, player, map_k, x, y)
	local x, y = tonumber(x), tonumber(y)
	lualib:Player_MapMoveXY(player, map_k, x, y, 3)

	return ""
end


function leave(player)
	return ""
end