local talk_t = {"藏宝阁里埋藏着无数奇珍异宝，如果没有强大的实力，是得不到这些宝藏的。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "    在这个藏宝阁里埋藏着无数宝藏，想要得到它们，没有实力可是不是行的！\n"
	msg = msg.."#COLORCOLOR_GREENG#传送到其它房间需要2000金币！#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.." #OFFSET<X:0,Y:-5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#木人巷2#181#182#5 *01*前往中级木人巷>(大量经验)"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#木人巷3#181#182#5 *01*前往高级木人巷>(大量经验)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#藏经楼#28#75#5 *01*前往藏经楼>(终极技能残页)"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#异兽栏#22#39#5 *01*前往异兽栏>(稀有坐骑抓捕)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#珍宝洞#27#104#5 *01*前往珍宝洞>(各种强化道具)"
	msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#百草堂#18#27#5 *01*前往百草堂>(各种高级药品)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#修炼场#62#69#5 *01*前往修炼场>(升级加速道具)"
    msg = msg.." #OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#锁魔宫#158#160#5 *01*前往锁魔宫>(挑战各种BOSS)\n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump_longcheng#龙城#234#226#5 *01*返回龙城>\n \n"
	msg = msg.." #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*离开>"
	return msg
end

function leave(player,npc)
	return ""
end

function jump_longcheng(npc, player)

	if not lualib:Player_MapMoveXY(player, "龙城", 234, 226, 5) then return "跳地图失败！\n \n<@main *01*返回>" end
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
    if not lualib:Player_SubGold(player, 2000, false, "扣金币：传送费", "修炼场传送人") then return "金币不足，扣金币失败！" end
	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "跳地图失败！\n \n<@main *01*返回>" end
	return ""
end
