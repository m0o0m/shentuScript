function main(npc,player)
local 	msg = "     在这里，轻烟飘渺，溪水清澈，偶尔艳阳的余辉透过树梢飘洒而下，各种珍禽异兽毫不畏人，此情此景，如果能与自己相爱的人携手而行，也不枉此生了！可惜...哎~！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n \n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#巫山城#235#304#3 *01*[回到巫山城]>\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*「关闭」>\n"
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

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "辟岭村传送") then return "你的金币不足，不能传送！" end
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
