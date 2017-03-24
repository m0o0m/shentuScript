function main(npc, player)
	msg = "听说龙城是一个很富饶的地方,有大量的勇士驻留在那里,那里是安全的,我可以指引你一段路.\n \n"
	msg = msg.."#IMAGE1902700015#<@mv *01*我想瞬间移动>\n"
	msg = msg.."#IMAGE1902700017#<@info *01*坐标询问>\n"
	msg = msg.."#IMAGE1902700034#<@Leave *01*离开>\n"
	return msg
end

function mv(npc,player)
	msg = "不要相信什么凌波微步,其实这个东西很简单,只要你付钱,什么问题不能解决呢?来吧,小伙子这个世界充满危险,让我送你一程吧!只需要2000金币哦!\n \n"
	msg = msg.."<@MapMoveXYB#龙城#230#230#1 *01*「龙城」>\n\n"
	msg = msg.."<@main *01*「返 回」>\n \n"
	return msg
end




function info(npc, player)
	msg = "天藏最大的城市就是你所在的巫山城，坐标就不用我说了吧!天藏山谷的小村很好找，你只要往东北的峡谷走就能够到了。不过，如果你要到龙城，就应该牢记300 300这个数字，穿过天藏山谷，他会指引你走到那里。离流放地很近的，是一个危险的区域，是大家一起争夺多时的神歌城，我记得以前在东边的路去过那里。不过我要提醒你，每个省份的坐标都是不同的，可别在龙城找神歌城哦！所以，要记住每个通往其他省的关口。最后，要记得多跟朋友走走，你就会和我一样熟悉这个大陆。\n \n"
	msg = msg.."<@main *01*「返回」>\n \n"
	return msg
end



function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 2000
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "传送服务") 
then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end