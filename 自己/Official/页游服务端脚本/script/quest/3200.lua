--任务完成回调
--select_index 可选奖励索引


function on_accept(player, quest_id)	
	local msg = "#COLORCOLOR_RED#\n      恭喜你渡过新手阶段，接下来你可以通过以下几种方式迅速熟悉游戏！#COLOREND#\n\n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#245#221#1 *01*悬赏任务(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#天机老人#COLOREND#接取：在任意时期都能获得稳定且不低的经验和金币！\n \n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#212#212#1 *01*镇魔殿(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#镇魔殿传送人#COLOREND#进入：建议组队进入，每天3次会获得海量经验！\n \n"	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*藏宝阁(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#藏宝阁守护者#COLOREND#进入，不管是升级、打宝还是捕捉坐骑，都是非常不错的选择！\n \n"			
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*支线任务>：\n"
	msg = msg .. "      #COLORCOLOR_GREENG#按【Ctrl+R】打开任务面板，从【可接任务】中了解支线任务。不仅可以获得急需的技能书，也可以从此熟悉游戏以及获得经验。#COLOREND#\n \n"
	lualib:NPCTalk(player, msg)
	msg = nil
	return true
end


function MapMoveXYA(player, map_key_name, x, y, r)
	local x = tonumber(x)
	local y = tonumber(y)
	local r = tonumber(r)
	lualib:Player_MapMoveXY(player,map_key_name, x, y, r)
	on_accept(player)
	return ""
end


