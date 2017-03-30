function main(player, npc)
	local msg = "     哦，你要出去了吗？肯定获得了很大收获吧，看看你要去哪里？\n \n"
	msg = msg.."#OFFSET<X:0,Y:-8>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#巫山城#235#305#3 *01*回到巫山城>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#龙城#230#230#3 *01*回到龙城>\n \n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*关闭>\n"
	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "跳地图失败！\n \n<@main *01*返回>" end
	return ""
end