function main(npc,player)	
	local msg = [[
	勇士，玛法大陆四处都充满着挑战！\n
	你有勇气去接受各类挑战吗？我可以送你一程！	
	]]
	msg = msg.."\n"		
	msg = msg.."#IMAGE1902700015#<@move_city *01*城市传送>\n"
	msg = msg.."#IMAGE1902700015#<@move_shop *01*商店传送>\n"
	--msg = msg.."<@text *01*测试专用>\n"	
	msg = msg.."<@exit_e *01*离开>"
	return msg
end

function text(npc, player)
	local mon_k = "进尸王殿僵尸"
	local map = lualib:MapGuid(npc)
	local x, y, r = 245, 269, 5
	lualib:Map_GenSingleMonster(map, x, y, r, lualib:GenRandom(1, 8), mon_k, false)
	
	return ""
end



function exit_e(npc, player)
	return ""
end

---------------商店传送--------------------
function move_shop(npc, player)
	local msg = "我可以将你免费传送到附近的商店\n \n"
	msg = msg.."<@MapMoveA#巫山城#343#353 *01*「药店」>　　　　"
	msg = msg.."<@MapMoveA#巫山城#296#279 *01*「仓库」>　　　"
	msg = msg.."<@MapMoveA#巫山城#300#303 *01*「首饰店」>　　　\n"	
	msg = msg.."<@MapMoveA#巫山城#359#298 *01*「武器店」>　　　"
	msg = msg.."<@MapMoveA#巫山城#325#258 *01*「书店」>　　　"
	msg = msg.."<@MapMoveA#巫山城#337#313 *01*「杂货店」>　　　"
	msg = msg.."<@MapMoveA#巫山城#308#336 *01*「衣服店」>　　　\n\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　　　　<@main *01*「返 回」>\n "
	return msg
end

function MapMoveA(npc, player, map_k, x, y)
	if not lualib:Player_MapMoveXY(player, map_k, tonumber(x), tonumber(y), 3) then
		return "跳地图失败.\n\n<@exit_e *01*离开>"
    end
	
	return ""
end

----------------------城市传送-----------------

function move_city(npc,player)
	local msg = [[    不要相信什么凌波微步，其实这个东西很简单，只要你付#COLORCOLOR_SKYBLUE#5000金币#COLOREND#,什么问题不能解决呢？
	   来吧，小伙子这个世界充满危险，让我送你一程吧！
	
	
	 #IMAGE1902700015#<@move_yes#龙城#255#270 *01*龙城>           　#IMAGE1902700015#<@move_yes#蛮荒城#121#158 *01*蛮荒城>        　　  #IMAGE1902700015#<@move_yes#龙城#569#282 *01*神歌城>\n
	\n\n　　　　　　　　　　　　　　　　　　　　　　　　　<@main *01*返回>\n]]	
	return msg
end

function move_yes(npc, player, map_k, x, y)
	--if lualib:Player_SubGold(player, 5000, false, "", "") then
		lualib:Player_MapMoveXY(player, map_k, tonumber(x), tonumber(y), 5)
	--[[else
		return "没有钱怎么传送呢？想想办法吧！\n\n\n\n　　　　　　　　　　　　　　　　　　　　　　　　　<@main *01*返回>\n"
	end]]
	
	return ""
end