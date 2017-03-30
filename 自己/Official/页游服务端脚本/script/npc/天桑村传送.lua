function main(npc,player)
	msg = "学千卷技能，不如走万里路！路上的风险也是对勇士的一种锻炼啊！事实上，我并不赞同你选择直接传送！你真的要传送吗？\n \n"
	msg = msg.."#IMAGE1902700015# <@anquan *01*[安全区域]>\n \n   "
	--msg = msg.."<@digong *01*[危险区域]>\n \n"
	msg = msg.."<@likai *01*「离开」>\n"
	return msg
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
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

function anquan(npc,player)
	msg = "我可以将你免费传送到附近的城市\n \n"
	--msg = msg.."<@MapMoveXYA#巫山城#237#303#1 *01*巫山城>          "
	msg = msg.."#IMAGE1902700015# <@MapMoveXYA#巫山城#194#679#3 *01*辟岭村>\n \n"
		msg = msg.."#IMAGE1902700019#<@main *01*「返回」>\n \n"
	return msg
end



function digong(npc,player)
	msg = "传送到危险地区需要缴纳2000金币，你要去哪里冒险？\n \n"
	msg = msg.."<@MapMoveXYB#巫山城#459#94#1 *01*将军冢>              "
	msg = msg.."<@MapMoveXYB#巫山城#19#91#1 *01*废弃矿洞>            "
	msg = msg.."<@MapMoveXYB#绝路岭#16#54#1 *01*绝路城>\n"
	msg = msg.."<@MapMoveXYB#龙城#30#47#1 *01*妖山暗穴>            "
	msg = msg.."<@MapMoveXYB#龙城#210#197#1 *01*天荒阵>            "
	msg = msg.."<@MapMoveXYB#龙城#518#23#1 *01*天荒邪庙>\n \n"
	msg = msg.."<@main *01*「返回」>\n \n"
	return msg
end

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 2000
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费消耗", "天桑村传送") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end

function likai(npc,player)
	return ""
end
