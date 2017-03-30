
function main(npc, player)
	msg = "     留下来才能证明自己是天下第一，你很的想放弃了？\n \n \n \n \n \n \n"
	msg = msg.."#OFFSET<X:5,Y:-4>##IMAGE<ID:1902700015>##OFFSET<X:5,Y:-1>#<<@JumpMap#巫山城#237#303#3 *01*回到巫山城>>\n"
	msg = msg.." #OFFSET<X:-1,Y:4>##IMAGE<ID:1902700034>##OFFSET<X:-1,Y:-2>#<@leave *01*「关闭」>\n"
	return msg
end




function TiaoDiTu(npc, player)
	local msg=""
	msg = msg.."<@JumpMap#巫山城#237#303#3 *01*巫山城>\n"
	msg = msg.."<@main *01*「返回」>\n"
	return msg
end






function JumpMap(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
	end
	return msg
end



function leave(npc, player)
    return ""
end
