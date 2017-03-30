
function main(npc, player)
	--[[
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#渡劫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "妖魔乱世横行，我辈英雄牺牲无数，悲唱挽歌，化为亡灵不散，需各位高人超度以重生……\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##COLORCOLOR_GREENG#1.活动期间内,每诵经一次，可获得#COLOREND##COLORCOLOR_YELLOW#25W经验#COLOREND##COLORCOLOR_GREENG#！并召唤出一只亡灵随机刷在地图内！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#2.每超度(打死)一只亡灵，便可获得亡灵的海量经验！亡灵的经验为#COLOREND##COLORCOLOR_YELLOW#50W#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#3.亡灵一旦得到超度，诵经者会额外获得系统赠送的一部分经验！！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_RED#4.每人每日召唤数量有限制：40级以下[30只];40~49级[60只];50~59级[120只];60~65级[240只]！#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#渡劫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@mv *01*进入[渡劫]>\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	msg = msg .. ""
	return msg
	]]--
end



function mv(npc, player)
	if lualib:Player_MapMoveXY(player, "龙城", 250, 254, 5) == false then
		return "传送失败，请再传送一次！"
	end
	return ""
end