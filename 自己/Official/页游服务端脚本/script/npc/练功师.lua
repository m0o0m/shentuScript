local talk_t = {"使用练功木人可以使你的技能很快晋阶。", "练功木人是打不坏的，不信你试试。", "点我可以快速回到广场。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "     想试试自己的实力么？去打练功木人吧！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#巫山城#235#305#3 *01*[回到巫山城广场]>\n \n \n \n \n"
	msg = msg.."                                                   #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*[离开]>\n"
	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "跳地图失败！\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	return ""
end
