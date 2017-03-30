function main(player,npc)
	msg = "请问有什么可以帮到你的吗？\n \n \n \n \n"
	msg = msg.."#OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:2,Y:-1>#<@MapMoveXYA#龙城#234#222#3 *01*回到龙城>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@info *01*活动介绍>\n \n \n"
	msg = msg.."                                                #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*「关闭」>\n"
	return msg
end

function info(npc,player)
   local msg = "    活动开启时间：每周一、三、五 17:00~17:30  21:30~22:00\n#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n    队长需要交纳一张英雄帖，交纳后传送整个队伍的玩家进入活动场景，若无队伍玩家可自行进入！\n"
	msg = msg.."    锁魔宫的怪物会掉落英雄帖！\n#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND# \n"
	msg = msg.."                                                #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*「返回」>\n"
	return msg
end

function likai(player,npc)
	return ""
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