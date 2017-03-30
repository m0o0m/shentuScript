silverToTime =
	{
	{["silver"] = 200,  ["time"] = 1 },
	{["silver"] = 400,  ["time"] = 2 },
	{["silver"] = 600,  ["time"] = 3 },
	{["silver"] = 1000, ["time"] = 5 },
	{["silver"] = 1600, ["time"] = 8 },
	{["silver"] = 2400, ["time"] = 12},
	{["silver"] = 4800, ["time"] = 24}
	}

function main(npc, player)
    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘幻境#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."年轻人，准备好了进入幻境探险么？\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:0>#<@DreamlandIntro *01*「幻境介绍」      >#OFFSET<X:0,Y:0>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-1>#<@TimeInquires *01*「时间查询」    > #OFFSET<X:0,Y:1>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@CulStoneExchage *01*「修炼石兑换」>\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#"
	msg = msg .. "        #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@EnterMap              *01*进入幻境>                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@Leave                 *01*「离开」>"
    return msg
end

--<@SilverExchage         *01*「元宝兑换」>

--进入幻境
function EnterMap(npc, player)
	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘幻境#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "进入幻境后修炼时间将开始扣除，是否确认进入？\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_RED#您当前剩余的幻境修炼时间为:#COLOREND#" .. hour .. "小时" .. minute .. "分" .. second .. "秒\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg .. "          #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@ToMap *01*确认进入幻境>               #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end

function ToMap(npc, player)
	local msg = "<@huanjinggoto#幻境1#190#75#10 *01*进入幻境一层>\n"
	msg = msg .. "<@huanjinggoto#幻境2#7#107#10 *01*进入幻境二层>\n"
	msg = msg .. "<@huanjinggoto#幻境3#15#126#10 *01*进入幻境三层>\n"
	msg = msg .. "<@huanjinggoto#幻境4#293#231#10 *01*进入幻境四层>\n"
	msg = msg .. "<@huanjinggoto#幻境5#18#222#10 *01*进入幻境五层>\n"
	msg = msg .. "<@huanjinggoto#幻境6#18#168#10 *01*进入幻境六层>\n"
	msg = msg .. "<@huanjinggoto#幻境7#244#165#10 *01*进入幻境七层>\n"
	msg = msg .. "<@huanjinggoto#幻境8#117#161#10 *01*进入幻境八层>\n"
	return msg
end

function huanjinggoto(npc, player,mapname,x,y,r)
	if lualib:Player_GetCustomVarInt(player, "time") <= 0 then
		return "您的幻境修炼时间为0，无法进入幻境\n" .. "\n \n \n \n \n \n                                            #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	else
		lualib:Player_MapMoveXY(player, mapname, tonumber(x), tonumber(y), tonumber(r))
		return ""
	end
end

--元宝兑换时间
function SilverExchage(npc, player)
         local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘幻境#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "请选择兑换的元宝数量：\n"
	msg = msg .. "（提示：单次兑换的时间越多，花费的元宝数量越少）\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#"
	for i = 1, #silverToTime do
		msg = msg .. "<@silFunc1#".. i .." *01*兑换" .. silverToTime[i]["time"] .. "小时(" .. silverToTime[i]["silver"] .. "元宝)>\n"
	end
	msg = msg .. "\n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-8>##IMAGE<ID:1902700019>#<@main *01*「返回」>"
	return msg
end

function silFunc1(npc, player, s)
	s = tonumber(s)
	local msg = ""
	msg = msg .. "你确定要用" .. silverToTime[s]["silver"] .."元宝兑换" .. silverToTime[s]["time"] .. "小时修炼时间吗？\n \n \n \n \n"
	msg = msg .. "<@silFunc#" .. s .. " *01*确定>"
	msg = msg .. "#IMAGE<ID:1902700019>#<@main *01*「返回」>"
	return msg
end

function silFunc(npc, player, s)
	s = tonumber(s)
	if lualib:Player_IsIngotEnough(player, silverToTime[s]["silver"], false) then
		if lualib:Player_SubIngot(player, silverToTime[s]["silver"], false, "扣元宝：幻境引渡者兑换时间", "幻境引渡者") == false then
			return "扣除元宝失败"
		end
		
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + silverToTime[s]["time"] * 3600)
		return "您已经成功花费" .. silverToTime[s]["silver"] .. "元宝兑换了" .. silverToTime[s]["time"] .. "小时修炼时间\n" .. "\n \n \n \n \n \n \n#IMAGE<ID:1902700019>#<@main *01*返回>"
	else
		return "你当前的元宝不足\n \n \n \n \n \n \n#IMAGE<ID:1902700019>#<@main *01*「返回」>"
	end
end

--修炼石兑换时间
function CulStoneExchage(npc, player)
    local msg = ""
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘幻境#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "　　利用#COLORCOLOR_GOLD#「修炼石」#COLOREND#可以在我这里兑换进入幻境的修炼时间，一个修炼石可以兑换30分钟的幻境修炼时间\n\n"
    msg = msg .. "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#"
	msg = msg .. "　　　#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@Cul *01*「修炼石兑换」>　　　　　           　#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main    *01*「返回」>\n\n"
	return msg
end

function Cul(npc, player)
	if lualib:Player_GetItemCount(player, "修炼石") >= 1 then
		lualib:Player_DestroyItem(player, "修炼石", 1, "修炼石兑换幻境修炼时间", "幻境引渡者");
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + 1800)
		return "您兑换了30分钟的幻境修炼时间\n" .. "\n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	else
		return "您包裹里没有修炼石\n" .. "\n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
end

function DreamlandIntro(npc, player)
    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘幻境#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "天藏！天藏！这生死的轮回，时空破碎的天藏，真是绝望与希望同在！曾经，神灵决战时溅射的神力，撕裂了天藏，也同时造成了无数神奇的所在，这片幻境正是其中之一。这里面，你将见识到各种颠倒穿越的怪物，如果有足够的运气，还可以得到高级的珍稀装备，不过，千万要记住，真不是真，假不是假！\n"
	msg = msg .. "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#"
	msg = msg .. "                                                 #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function TimeInquires(npc, player)
	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
	return "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘幻境#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n#COLORCOLOR_RED#您当前剩余的幻境修炼时间为:#COLOREND#" .. hour .. "小时" .. minute .. "分" .. second .. "秒" .. "\n#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function Leave(npc, player)
	return ""
end
