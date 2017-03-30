local talk_t = {"藏宝阁里埋藏着无数奇珍异宝，如果没有强大的实力，是得不到这些宝藏的。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "    在这个藏宝阁里埋藏着无数宝藏，想要得到它们，没有实力可是不是行的！\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#木人巷#181#182#5 *01*返回初级木人巷>(大量经验)\n \n \n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*离开>\n"
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
