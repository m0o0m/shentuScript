--[[function main(player, vipLevel)
    lualib:NPCTalk(player, "<@TiaoDiTu#"..vipLevel.." *01*使用无限逍遥功能>")
	return false
end]]

function main(player, vipLevel)
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#地宫:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@jjz#"..vipLevel.." *01*将军冢>  "
	msg = msg.."<@fqkd#"..vipLevel.." *01*废弃矿洞>  "
	msg = msg.."<@jlc#"..vipLevel.." *01*绝路城>  "
	msg = msg.."<@ysax#"..vipLevel.." *01*妖山>  "
	msg = msg.."<@thz#"..vipLevel.." *01*天荒阵>  "
	msg = msg.."<@xm#"..vipLevel.." *01*天荒邪庙>  "
	msg = msg.."<@tmsk#"..vipLevel.." *01*天魔石窟>  "
	msg = msg.."<@hjmj#"..vipLevel.." *01*海角秘境>  \n"
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#野外:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@JumpMap#18#"..vipLevel.." *01*绝路岭>  "
	msg = msg.."<@JumpMap#19#"..vipLevel.." *01*绝路谷>\n"
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#城市:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@wsc#"..vipLevel.." *01*巫山城>  "
	msg = msg.."<@lc#"..vipLevel.." *01*龙城>\n  "
	msg = msg.."<@dlc#"..vipLevel.." *01*东临城>\n"
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#城堡:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@JumpMap#38#"..vipLevel.." *01*神歌城>  \n"
	lualib:NPCTalk(player, msg)
	return ""
end

--将军冢
function jjz(player, vipLevel)
	local msg = "<@JumpMap#1#"..vipLevel.." *01*将军冢一层> \n"
	msg = msg.."<@JumpMap#2#"..vipLevel.." *01*将军冢二层> \n"
	msg = msg.."<@JumpMap#3#"..vipLevel.." *01*将军冢三层> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

--废弃矿洞
function fqkd(player, vipLevel)
	local msg = "<@JumpMap#4#"..vipLevel.." *01*矿洞入口> \n"
	msg = msg.."<@JumpMap#5#"..vipLevel.." *01*南部矿区> \n"
	msg = msg.."<@JumpMap#6#"..vipLevel.." *01*北部矿区> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end
--绝路城
function jlc(player, vipLevel)
	local msg = "<@JumpMap#7#"..vipLevel.." *01*绝路城东部> \n"
	msg = msg.."<@JumpMap#8#"..vipLevel.." *01*绝路城南部> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end
--妖山暗穴
function ysax(player, vipLevel)
	local msg = "<@JumpMap#9#"..vipLevel.." *01*妖山暗穴一层> \n"
	msg = msg.."<@JumpMap#10#"..vipLevel.." *01*妖山暗穴二层> \n"
	msg = msg.."<@JumpMap#11#"..vipLevel.." *01*妖山暗穴三层> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

--天荒阵
function thz(player, vipLevel)
	local msg = "<@JumpMap#12#"..vipLevel.." *01*天荒阵一层> \n"
	msg = msg.."<@JumpMap#13#"..vipLevel.." *01*天荒阵二层> \n"
	msg = msg.."<@JumpMap#14#"..vipLevel.." *01*天荒阵三层> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n \n"
	return msg
end

--邪庙
function xm(player, vipLevel)
	local msg = "<@JumpMap#15#"..vipLevel.." *01*天荒邪庙一层> \n"
	msg = msg.."<@JumpMap#16#"..vipLevel.." *01*天荒邪庙二层> \n"
	msg = msg.."<@JumpMap#17#"..vipLevel.." *01*天荒邪庙三层> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

--天魔石窟
function tmsk(player, vipLevel)
	local msg = "<@JumpMap#46#"..vipLevel.." *01*天魔石窟一层> \n"
	msg = msg.."<@JumpMap#47#"..vipLevel.." *01*天魔石窟二层> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

--海角秘境
function hjmj(player, vipLevel)
	local msg = "<@JumpMap#48#"..vipLevel.." *01*秘境沉船一层> \n"
	msg = msg.."<@JumpMap#49#"..vipLevel.." *01*秘境沉船二层> \n \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

--巫山城和室内
function wsc(player, vipLevel)
	local msg = "<@JumpMap#20#"..vipLevel.." *01*巫山城> \n \n"
	msg = msg.."<@JumpMap#21#"..vipLevel.." *01*天桑村>  \n \n"
	--msg = msg.."<@JumpMap#22#"..vipLevel.." *01*辟岭村> \n \n"
	msg = msg.."<@JumpMap#23#"..vipLevel.." *01*巫山城武器店>  "
	msg = msg.."<@JumpMap#24#"..vipLevel.." *01*巫山城服装店>  "
	msg = msg.."<@JumpMap#25#"..vipLevel.." *01*巫山城首饰店>  "
	msg = msg.."<@JumpMap#26#"..vipLevel.." *01*巫山城药店>  "
	msg = msg.."<@JumpMap#27#"..vipLevel.." *01*巫山城杂货店>  "
	msg = msg.."<@JumpMap#28#"..vipLevel.." *01*巫山城书店>    "
	msg = msg.."<@JumpMap#29#"..vipLevel.." *01*巫山城仓库>\n  \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"

	return msg
end

--龙城和室内
function lc(player, vipLevel)
	local msg = "<@JumpMap#30#"..vipLevel.." *01*龙城> \n \n"
	msg = msg.."<@JumpMap#31#"..vipLevel.." *01*龙城武器店>  "
	msg = msg.."<@JumpMap#32#"..vipLevel.." *01*龙城服装店>  "
	msg = msg.."<@JumpMap#33#"..vipLevel.." *01*龙城首饰店>  "
	msg = msg.."<@JumpMap#34#"..vipLevel.." *01*龙城药店>  "
	msg = msg.."<@JumpMap#35#"..vipLevel.." *01*龙城杂货店>  "
	msg = msg.."<@JumpMap#36#"..vipLevel.." *01*龙城书店>    "
	msg = msg.."<@JumpMap#37#"..vipLevel.." *01*龙城仓库>\n  \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

--东临城

function dlc(player, vipLevel)
	local msg = "<@JumpMap#39#"..vipLevel.." *01*东临城> \n \n"
	msg = msg.."<@JumpMap#40#"..vipLevel.." *01*东临城武器店>  "
	msg = msg.."<@JumpMap#41#"..vipLevel.." *01*东临城服装店>  "
	msg = msg.."<@JumpMap#42#"..vipLevel.." *01*东临城首饰店>  "
	msg = msg.."<@JumpMap#43#"..vipLevel.." *01*东临城药店>  "
	msg = msg.."<@JumpMap#44#"..vipLevel.." *01*东临城杂货店>  "
	msg = msg.."<@JumpMap#45#"..vipLevel.." *01*东临城仓库>\n  \n"
	msg = msg.."<@main#"..vipLevel.." *01*「返回」>\n"
	return msg
end

function JumpMap(player, index, vipLevel)
    local map_table = {{"将军冢1", 130, 36}, --1
					   {"将军冢2", 142, 24}, --2
					   {"将军冢3", 190, 76}, --3
                       {"废弃矿洞1", 21, 176},--4
					   {"废弃矿洞2", 6, 24},--5
					   {"废弃矿洞3", 5, 110},--6
                       {"绝路城1", 295, 494},--7
					   {"绝路城2", 155, 231},--8
                       {"妖山暗穴1", 32, 174},--9
					   {"妖山暗穴2", 211, 108},--10
					   {"妖山暗穴3", 28, 175},--11
					   {"天荒阵1", 93, 96},--12
					   {"天荒阵3", 19, 169},--13
					   {"天荒阵6", 27, 163},--14
                       {"邪庙1", 86, 194},--15
					   {"邪庙2", 48, 274},--16
					   {"邪庙4", 47, 203},--17
					   {"绝路岭", 101, 257},--18
					   {"绝路谷", 171, 60},--19
					   {"巫山城", 237, 303},--20
					   {"天桑村", 205, 275}, --21天桑村
					   {"巫山城", 196, 679}, --22辟岭村
					   {"武器店", 18, 30},--23
					   {"服装店", 14, 27},--24
					   {"首饰店", 14, 30},--25
					   {"药店", 17, 24},--26
					   {"巫山城", 243, 355},--27杂货店
					   {"书店", 15, 26},--28
					   {"巫山城", 289, 341},--29仓库
					   {"龙城", 234, 222},--30
					   {"龙城武器店", 18, 30},--31
					   {"龙城服装店", 14, 27},--32
					   {"龙城首饰店", 16, 30},--33
					   {"龙城", 268, 234},--34药店
					   {"龙城", 249, 232},--35杂货店
					   {"龙城书店", 16, 25},--36
					   {"龙城", 238, 268},--37仓库
					   {"神歌城", 51, 606},--38
					   {"东临城", 330, 300},--39
					   {"东临城", 335, 286},--40
					   {"东临城", 301, 306},--41
					   {"东临城", 344, 354},--42
					   {"东临城", 320, 259},--43
					   {"东临城", 324, 320},--44
					   {"东临城", 360, 304},--45
					   {"天魔石窟1", 25, 189},--46
					   {"天魔石窟2", 15, 184},--47
					   {"海底1", 91, 157}, --48
					   {"海底2", 139, 70}, --49
					   }
	if not lualib:Player_MapMoveXY(player, map_table[tonumber(index)][1],
                                   map_table[tonumber(index)][2],
                                   map_table[tonumber(index)][3], 5) then
        return "跳地图失败"
    end


    return ""
end