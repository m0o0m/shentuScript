function main(player, npc)
	local msg = "     请问有什么可以帮到你的吗？\n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#巫山城#235#305#3 *01*回到巫山城>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#龙城#236#228#3 *01*回到龙城>\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@leave *01*离开>\n"
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