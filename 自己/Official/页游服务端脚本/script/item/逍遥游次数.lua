function main(player_guid, item_guid)
    lualib:NPCTalk(player_guid, "<@TiaoDiTu#"..item_guid.." *01*开启逍遥游 （".."还能使用"..lualib:Item_GetUsesCount(player_guid, item_guid).."次".."）>")
    return true
end




function TiaoDiTu(player_guid, item_guid)
	local msg = ""
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#地宫:#COLORCOLOR_BLUE#〗#COLOREND#                                     \n"
	msg = msg.."<@JumpMap#1#"..item_guid.." *01*将军冢> "
	msg = msg.."<@JumpMap#5#"..item_guid.." *01*废弃矿洞> "
	msg = msg.."<@JumpMap#9#"..item_guid.." *01*妖山暗穴> "
	msg = msg.."<@JumpMap#12#"..item_guid.." *01*天荒阵> "
	msg = msg.."<@JumpMap#17#"..item_guid.." *01*天荒邪庙> "
	msg = msg.."<@JumpMap#65#"..item_guid.." *01*天魔石窟> "
	msg = msg.."<@JumpMap#66#"..item_guid.." *01*海角秘境> "
	msg = msg.."<@JumpMap#67#"..item_guid.." *01*镇魔禁地> \n"
	--msg = msg.."<@jjz#"..item_guid.." *01*将军冢>  "
	--msg = msg.."<@fqkd#"..item_guid.." *01*废弃矿洞>  "
	--msg = msg.."<@jlc#"..item_guid.." *01*绝路城>  "
	--msg = msg.."<@ysax#"..item_guid.." *01*妖山>  "
	--msg = msg.."<@thz#"..item_guid.." *01*天荒阵>  "
	--msg = msg.."<@xm#"..item_guid.." *01*天荒邪庙>  "
	--msg = msg.."<@tmsk#"..item_guid.." *01*天魔石窟>  "
	--msg = msg.."<@hjmj#"..item_guid.." *01*海角秘境>  "
	--msg = msg.."<@zmjd#"..item_guid.." *01*镇魔禁地>  \n"
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#野外:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@JumpMap#18#"..item_guid.." *01*绝路岭>  "
	msg = msg.."<@JumpMap#19#"..item_guid.." *01*绝路谷>\n"
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#城市:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@JumpMap#68#"..item_guid.." *01*辟岭村>  "
	msg = msg.."<@wsc#"..item_guid.." *01*巫山城>  "
	msg = msg.."<@lc#"..item_guid.." *01*龙城>  \n"
	--msg = msg.."<@dlc#"..item_guid.." *01*东临城>"
	--msg = msg.."<@zmc#"..item_guid.." *01*  镇魔城>\n"
	msg = msg.."#COLORCOLOR_BLUE#〖#COLOREND#城堡:#COLORCOLOR_BLUE#〗#COLOREND#\n"
	msg = msg.."<@JumpMap#38#"..item_guid.." *01*神歌城>  \n"
	--msg = msg.."还能使用"..lualib:Item_GetUsesCount(player_guid, item_guid).."次  \n"
	return msg
end

--将军冢
function jjz(player_guid, item_guid)
	local msg = "<@JumpMap#1#"..item_guid.." *01*将军冢一层> \n"
	msg = msg.."<@JumpMap#2#"..item_guid.." *01*将军冢二层> \n"
	msg = msg.."<@JumpMap#3#"..item_guid.." *01*将军冢三层> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end

--废弃矿洞
function fqkd(player_guid, item_guid)
	local msg = "<@JumpMap#4#"..item_guid.." *01*矿洞入口> \n"
	msg = msg.."<@JumpMap#5#"..item_guid.." *01*南部矿区> \n"
	msg = msg.."<@JumpMap#6#"..item_guid.." *01*北部矿区> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end
--绝路城
function jlc(player_guid, item_guid)
	local msg = "<@JumpMap#7#"..item_guid.." *01*绝路城东部> \n"
	msg = msg.."<@JumpMap#8#"..item_guid.." *01*绝路城南部> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end
--妖山暗穴
function ysax(player_guid, item_guid)
	local msg = "<@JumpMap#9#"..item_guid.." *01*妖山暗穴一层> \n"
	msg = msg.."<@JumpMap#10#"..item_guid.." *01*妖山暗穴二层> \n"
	msg = msg.."<@JumpMap#11#"..item_guid.." *01*妖山暗穴三层> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end

--天荒阵
function thz(player_guid, item_guid)
	local msg = "<@JumpMap#12#"..item_guid.." *01*天荒阵一层> \n"
	msg = msg.."<@JumpMap#13#"..item_guid.." *01*天荒阵二层> \n"
	msg = msg.."<@JumpMap#14#"..item_guid.." *01*天荒阵三层> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n \n"
	return msg
end

--邪庙
function xm(player_guid, item_guid)
	local msg = "<@JumpMap#15#"..item_guid.." *01*天荒邪庙一层> \n"
	msg = msg.."<@JumpMap#16#"..item_guid.." *01*天荒邪庙二层> \n"
	msg = msg.."<@JumpMap#17#"..item_guid.." *01*天荒邪庙三层> \n \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end

--天魔石窟
function tmsk(player_guid, item_guid)
	--local tmsk_key = 5
	--local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
	if lualib:Level(player_guid) >= 40 then
		local msg = "<@JumpMap#46#"..item_guid.." *01*天魔石窟一层> \n"
		msg = msg.."<@JumpMap#47#"..item_guid.." *01*天魔石窟二层> \n \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
		return msg
	else
		return "你还未达到40级，无法进入天魔石窟！"
	end
end

--海角秘境
function hjmj(player_guid, item_guid)
	local haidi_key = 20
	local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
	if haidi_Open >= haidi_key then
		local msg = "<@JumpMap#49#"..item_guid.." *01*秘境沉船一层> \n"
		msg = msg.."<@JumpMap#50#"..item_guid.." *01*秘境沉船二层> \n \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
		return msg
	else
		return "海角秘境还未被勇士开启，当大陆出现"..haidi_key.."位47级的勇士时，海角秘境的探险之路将会开启！"
	end
end

--镇魔禁地
function zmjd(player_guid, item_guid)
	local zmjd_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open >= zmjd_key then
		local msg = "<@JumpMap#51#"..item_guid.." *01*镇魔禁地一层> \n"
		msg = msg.."<@JumpMap#52#"..item_guid.." *01*镇魔禁地二层> \n"
		msg = msg.."<@JumpMap#53#"..item_guid.." *01*镇魔禁地三层> \n"
		msg = msg.."<@JumpMap#54#"..item_guid.." *01*镇魔禁地四层> \n"
		msg = msg.."<@JumpMap#55#"..item_guid.." *01*镇魔禁地五层> \n"
		msg = msg.."<@JumpMap#56#"..item_guid.." *01*镇魔禁地六层> \n"
		msg = msg.."<@JumpMap#57#"..item_guid.." *01*镇魔禁地七层> \n \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
		return msg
	else
		return "镇魔禁地还未开启，当大陆出现"..zmjd_key.."位52级的勇士时，镇魔禁地探险之路将会开启！"
	end
end

--巫山城和室内
function wsc(player_guid, item_guid)
	local msg = "<@JumpMap#20#"..item_guid.." *01*巫山城> \n \n"
	--[[msg = msg.."<@JumpMap#21#"..item_guid.." *01*天桑村>  "
	msg = msg.."<@JumpMap#22#"..item_guid.." *01*辟岭村> \n \n"]]
	msg = msg.."<@JumpMap#23#"..item_guid.." *01*巫山城武器店>  "
	msg = msg.."<@JumpMap#24#"..item_guid.." *01*巫山城服装店>  "
	msg = msg.."<@JumpMap#25#"..item_guid.." *01*巫山城首饰店>  "
	msg = msg.."<@JumpMap#26#"..item_guid.." *01*巫山城药店>  "
	msg = msg.."<@JumpMap#27#"..item_guid.." *01*巫山城杂货店>  "
	msg = msg.."<@JumpMap#28#"..item_guid.." *01*巫山城书店>    "
	msg = msg.."<@JumpMap#29#"..item_guid.." *01*巫山城仓库>\n  \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"

	return msg
end

--龙城和室内
function lc(player_guid, item_guid)
	local msg = "<@JumpMap#30#"..item_guid.." *01*龙城> \n \n"
	msg = msg.."<@JumpMap#31#"..item_guid.." *01*龙城武器店>  "
	msg = msg.."<@JumpMap#32#"..item_guid.." *01*龙城服装店>  "
	msg = msg.."<@JumpMap#33#"..item_guid.." *01*龙城首饰店>  "
	msg = msg.."<@JumpMap#34#"..item_guid.." *01*龙城药店>  "
	msg = msg.."<@JumpMap#35#"..item_guid.." *01*龙城杂货店>  "
	msg = msg.."<@JumpMap#36#"..item_guid.." *01*龙城书店>    "
	msg = msg.."<@JumpMap#37#"..item_guid.." *01*龙城仓库>\n  \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end

--东临城

function dlc(player_guid, item_guid)
	local msg = "<@JumpMap#39#"..item_guid.." *01*东临城> \n \n"
	msg = msg.."<@JumpMap#40#"..item_guid.." *01*东临城武器店>  "
	msg = msg.."<@JumpMap#41#"..item_guid.." *01*东临城服装店>  "
	msg = msg.."<@JumpMap#42#"..item_guid.." *01*东临城首饰店>  "
	msg = msg.."<@JumpMap#43#"..item_guid.." *01*东临城药店>  "
	msg = msg.."<@JumpMap#44#"..item_guid.." *01*东临城杂货店>  "
	msg = msg.."<@JumpMap#45#"..item_guid.." *01*东临城仓库>\n  \n"
	msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
	return msg
end
--镇魔城
function zmc(player_guid, item_guid)
	local zmjd_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open >= zmjd_key then
		local msg = "<@JumpMap#58#"..item_guid.." *01*镇魔城> \n \n"
		msg = msg.."<@JumpMap#59#"..item_guid.." *01*镇魔城武器店>  "
		msg = msg.."<@JumpMap#60#"..item_guid.." *01*镇魔城服装店>  "
		msg = msg.."<@JumpMap#61#"..item_guid.." *01*镇魔城首饰店>  "
		msg = msg.."<@JumpMap#62#"..item_guid.." *01*镇魔城杂货店>  "
		msg = msg.."<@JumpMap#63#"..item_guid.." *01*镇魔城药店>  "
		msg = msg.."<@JumpMap#64#"..item_guid.." *01*镇魔城仓库>\n  \n"
		msg = msg.."<@TiaoDiTu#"..item_guid.." *01*「返回」>\n"
		return msg
	else
		return "镇魔城还未开启，当大陆出现"..zmjd_key.."位52级的勇士时，镇魔禁地探险之路将会开启！"
	end
end

function JumpMap(player_guid, index, item_guid)
    local map_table = {{"将军冢1", 130, 36}, --1
					   {"将军冢2", 142, 24}, --2
					   {"将军冢3", 190, 76}, --3
                       {"废弃矿洞1", 21, 176},--4
					   {"废弃矿洞2", 6, 24},--5
					   {"废弃矿洞3", 5, 110},--6
                       {"绝路城1", 295, 494},--7
					   {"绝路城2", 155, 231},--8
                       {"妖山暗穴1", 154, 220},--9
					   {"妖山暗穴2", 211, 108},--10
					   {"妖山暗穴3", 28, 175},--11
					   {"天荒阵1", 93, 96},--12
					   {"天荒阵3", 19, 169},--13
					   {"天荒阵6", 27, 163},--14
                       {"邪庙1", 86, 194},--15
					   {"邪庙2", 48, 274},--16
					   {"邪庙4", 244, 162},--17
					   {"绝路岭", 101, 257},--18
					   {"绝路谷", 167, 236},--19
					   {"巫山城", 237, 303},--20
					   {"巫山城", 502, 690}, --21天桑村
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
					   {"新手村", 202, 276}, --48新手天桑村
					   {"海底入口", 38, 70}, --49
					   {"海底2", 139, 70}, --50
					   {"镇魔禁地1", 280, 167}, --51
					   {"镇魔禁地2", 215, 234}, --52
					   {"镇魔禁地3", 67, 88}, --53
					   {"镇魔禁地4", 83, 175}, --54
					   {"镇魔禁地5", 177, 190}, --55
					   {"镇魔禁地6", 69, 83}, --56
					   {"镇魔禁地7", 173, 274}, --57
					   {"镇魔城", 224, 174}, --58
					   {"镇魔城", 188, 191}, --59武器店
					   {"镇魔城服装店", 14, 24}, --60
					   {"镇魔城首饰店", 14, 26}, --61
					   {"镇魔城", 231, 164}, --62杂货店
					   {"镇魔城药店", 14, 23}, --63
					   {"镇魔城", 211, 167}, --64仓库
					   {"龙城", 32, 34}, --65天魔石窟
					   {"龙城", 134, 734}, --66海角秘境
					   {"龙城", 242, 463}, --67镇魔禁地
					   {"巫山城", 500, 686}, --68出生点

					   }
	local itemname	= lualib:Name(item_guid)
	local itemkeyname = lualib:KeyName(item_guid)
	local item_num = lualib:ItemCountByKey(player_guid, itemkeyname, true, false, false, 2)

	if item_num < 1 then
		lualib:SysTriggerMsg(player_guid, "你是不是把["..itemname.."]给放别处了？")
		return ""
	end				   
					   
					   
					   
					   
	if not lualib:Player_MapMoveXY(player_guid, map_table[tonumber(index)][1],
                                   map_table[tonumber(index)][2],
                                   map_table[tonumber(index)][3], 5) then
        return "跳地图失败"
    end

    local use_count = lualib:Item_GetUsesCount(player_guid, item_guid)

    if use_count <= 0 then
        if not lualib:Item_Destroy(player_guid, item_guid, "删物品：使用逍遥游次数", "逍遥游次数") then
			return  "扣除道具失败"
		end
    else
        use_count = use_count -1
        lualib:Item_SetUsesCount(player_guid, item_guid, use_count)
    end


    return ""
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "["..player_name.."]人品爆发了，在"..item_map_name.."["..item_map_x..":"..item_map_y.."]打出了一个".."【"..item_name.."】！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end