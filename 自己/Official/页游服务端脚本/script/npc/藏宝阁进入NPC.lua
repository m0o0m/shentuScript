silverToTime =
	{
	{["silver"] = 100,  ["time"] = 1 },
	{["silver"] = 200,  ["time"] = 2 },
	{["silver"] = 490,  ["time"] = 5 },
	{["silver"] = 960, ["time"] = 10 },
	{["silver"] = 1900, ["time"] = 20 },
	{["silver"] = 4850, ["time"] = 50},
	{["silver"] = 9500, ["time"] = 100}
	}

	local talk_t = {"想穿越吗？想穿越吗？想穿越干嘛不来找我捏？", "穿越是一件严肃的事情，严肃到……不准笑！", "进入藏宝阁需要时之沙砾，藏宝阁里有各种奇珍异兽哟~~"}

function on_create(npc)
	--lualib:AddTimer(npc, 1, 260000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		--[[lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])--]]

end

function main(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#   ━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."    藏宝阁内藏有各种#COLORCOLOR_YELLOW#[奇珍]#COLOREND#和#COLORCOLOR_GREENG#[异兽]#COLOREND##COLORCOLOR_RED#→→用钱都无法买到！#COLOREND#\n                  #COLORCOLOR_GREENG#【进入需要兑换时间】#COLOREND#\n \n"
    msg = msg .. "#IMAGE<ID:1902700037>#<@CulStoneExchage *01*[入场时间兑换]>        #IMAGE1902700042#<@TimeInquires *01*[可用时间查询]>\n \n"
	msg = msg .. "#IMAGE<ID:1902700017>#<@DreamlandIntro *01*[查看宝阁物品]>        #IMAGE1902700031#<@hec *01*[合成终极技能]>\n \n"
	msg = msg .. "#IMAGE<ID:1902700018>#<@EnterMap *01*[进入藏宝阁]>\n"
--]]	return msg
end

--#OFFSET<X:0,Y:2>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-2>#<@SilverExchage *01*「元宝兑换」>    

--进入藏宝阁
function EnterMap(npc, player)
--[[	local talkX, talkY = 418, 250
	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
    local msg = "#COLORCOLOR_BROWN#━━━#COLOREND##COLORCOLOR_SKYBLUE#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━#COLOREND##COLORCOLOR_SKYBLUE#您剩余探宝时间:#COLOREND#" .. hour .. "小时" .. minute .. "分" .. second .. "秒#COLORCOLOR_BROWN#━━━\n"
	msg = msg.."#COLORCOLOR_RED#进入不同的地图，所扣除的时间会不同。进入藏宝阁后探宝时间将开始扣除，时间不足会自动回到龙城#COLOREND#，你要去哪？\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#木人巷#181#182#5 *01*初级木人巷>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30-40级，主产经验#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#木人巷2#181#182#5 *01*中级木人巷>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级40-50级，主产经验#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#木人巷3#181#182#5 *01*高级木人巷>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级50-60级，主产经验#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#修炼场#61#68#5 *01*进入修炼场>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30以上，产消耗道具#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#珍宝洞#27#104#5 *01*进入珍宝洞>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30以上，产消耗道具#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#锁魔宫#158#160#5 *01*进入锁魔宫>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30以上，真假BOSS聚集#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#百草堂#18#27#5 *01*进入百草堂>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30以上，产特殊道具#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#异兽栏#22#39#5 *01*进入异兽栏>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30以上，产稀有坐骑#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@huanjinggoto#藏经楼#27#74#5 *01*进入藏经楼>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级50-65级，产终极技能#COLOREND#\n"
	lualib:NPCTalkDetailEx(npc, player, msg, talkX, talkY)--]]
	return ""
end

function huanjinggoto(npc, player,mapname,x,y,r)
--[[	if lualib:Player_GetCustomVarInt(player, "time") <= 0 then
		return "您的探宝时间为0，无法进入藏宝阁\n" .. "\n \n \n \n \n \n                                            #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	else
		local gold = 2000
		if mapname ~= "木人巷" then
			if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
			lualib:Player_MapMoveXY(player, mapname, tonumber(x), tonumber(y), tonumber(r))
		else
			lualib:Player_MapMoveXY(player, mapname, tonumber(x), tonumber(y), tonumber(r))
		end
		return ""
	end--]]
end
--元宝兑换时间
function SilverExchage(npc, player)
--[[         local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "（提示：单次兑换的时间越多，花费的元宝数量越少）\n"
	msg = msg .. "请选择兑换的元宝数量：\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	for i = 1, #silverToTime do
		msg = msg .. "#IMAGE<ID:1902700032>#<@silFunc1#".. i .." *01*兑换【" .. silverToTime[i]["time"] * 60 ..  "分钟】(" .. silverToTime[i]["silver"] .. "元宝)>\n"
	end
	msg = msg .. "\n                                              #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
--]]	return msg
end

function silFunc1(npc, player, s)
--[[	s = tonumber(s)
	local msg = ""
	msg = msg .. "你确定要用" .. silverToTime[s]["silver"] .."元宝兑换" .. silverToTime[s]["time"] * 60 .. "分钟探宝时间吗？\n \n \n \n \n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@silFunc#" .. s .. " *01*「确定」>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@SilverExchage *01*「返回」>"
--]]	return msg
end

function silFunc(npc, player, s)
--[[	s = tonumber(s)
	if lualib:Player_IsIngotEnough(player, silverToTime[s]["silver"], false) then
		if lualib:Player_SubIngot(player, silverToTime[s]["silver"], false, "扣元宝：幻境引渡者兑换时间", "幻境引渡者") == false then
			return "扣除元宝失败"
		end
		
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + silverToTime[s]["time"] * 3600)
		return "您已经成功花费" .. silverToTime[s]["silver"] .. "元宝兑换了" .. silverToTime[s]["time"] * 60 .. "分钟探宝时间\n" .. "\n \n \n \n \n \n \n#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*[返回首页]>"
	else
		return "你当前的元宝不足\n \n \n \n \n \n \n#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end--]]
end

--时之沙砾兑换时间
function CulStoneExchage(npc, player)
--[[    local msg = ""
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "　　利用#COLORCOLOR_GOLD#「时之沙砾」#COLOREND#可以在我这里兑换进入藏宝阁的探宝时间，一颗时之沙砾可以兑换30分钟的探宝时间\n\n"
    msg = msg .. "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@Cul *01*「时之沙砾兑换探宝时间」>\n                         　　　　　           　#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main    *01*「返回」>\n\n"
--]]	return msg
end

function Cul(npc, player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time") + 1800
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)

	if lualib:Player_GetItemCount(player, "时之沙砾") >= 1 then
		lualib:Player_DestroyItem(player, "时之沙砾", 1, "时之沙砾兑换幻境修炼时间", "藏宝阁进入NPC");
		lualib:Player_SetCustomVarInt(player, "time", lualib:Player_GetCustomVarInt(player, "time") + 1800)
		return "您兑换了30分钟的探宝时间\n" .. "您当前剩余的藏宝阁时间为:#COLOREND#" .. hour .. "小时" .. minute .. "分" .. second .. "秒" .. "\n \n \n \n \n \n　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@Cul *01*「继续兑换」>\n                      　　　　　　　　　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	else
		return "您包裹里没有时之沙砾\n" .. "\n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end--]]
end

-- 藏宝阁物品介绍
--[[function DreamlandIntro(npc, player)
    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#修炼场#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND#1.5倍经验卷轴、双倍经验卷轴、3倍经验卷轴、聚灵珠(小)、聚灵珠(中)、聚灵珠(大)、超级聚灵珠、清心丹、怒攻神丹、怒法神丹、怒道神丹等……(大量用钱买不到的宝物！)\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#珍宝洞#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND#护炼符、幸运星、封印鉴定符等……(大量用钱买不到的宝物！)\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#异兽栏#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND##COLORCOLOR_GREENG#稀有坐骑#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#藏经楼#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND##COLORCOLOR_SKYBLUE#终极技能残页#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end]]



--目录

function DreamlandIntro(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@murenxiang *01*「木人巷」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@dating *01*「修炼场」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@zhenbaoge *01*「珍宝洞」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@yishoulan *01*「异兽栏」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@cangjinglou *01*「藏经楼」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@baicaotang *01*「百草堂」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#OFFSET<X:0,Y:-2>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@suomogong *01*「锁魔宫」>\n#OFFSET<X:0,Y:10>#"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━#COLOREND#"
	msg = msg .. "           #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
--]]	return msg
end




--大厅

function dating(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#修炼场#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND#1.5倍经验卷轴、双倍经验卷轴、3倍经验卷轴、聚灵珠、清心丹、怒攻神丹、怒法神丹、怒道神丹、循环魔咒、修复神水、道士高级符毒等……(大量用钱买不到的宝物！)\n"
	msg = msg .."#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#修炼场#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━#COLOREND#\n"

	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"
--]]	return msg
end


--珍宝洞
function zhenbaoge(npc, player)
--[[    local msg =  "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#珍宝洞#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND#护炼符、幸运星、封印鉴定符、灵元珠、定位石、逍遥游等……(大量用钱买不到的强化装备道具！)\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#珍宝洞#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━#COLOREND#\n"

	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"
--]]	return msg
end

--异兽栏
function yishoulan(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#异兽栏#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND#吼天兽#COLORCOLOR_GREENG#（稀有坐骑）#COLOREND#、雪域天狼#COLORCOLOR_GREENG#（稀有坐骑）#COLOREND#、梦魇兽#COLORCOLOR_GREENG#（稀有坐骑）#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#异兽栏#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"
--]]	return msg
end

--藏经楼
function cangjinglou(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#藏经楼#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND##COLORCOLOR_SKYBLUE#终极技能残页#COLOREND#\n可以兑换下列终极技能\n#COLORCOLOR_SKYBLUE#[恶魔之怒]#COLOREND#、#COLORCOLOR_SKYBLUE#[凤凰涅槃]#COLOREND#、#COLORCOLOR_SKYBLUE#[无间地狱]#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#藏经楼#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"
--]]	return msg
end

--百草堂
function baicaotang(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#百草堂#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND##COLORCOLOR_SKYBLUE#疗伤药、万年玄参、小特制疗伤药、中特制疗伤药、大特制疗伤药、小特制魔法药、中特制魔法药、大特制魔法药#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#百草堂#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"
--]]	return msg
end

--木人巷
function murenxiang(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#木人巷#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND##COLORCOLOR_SKYBLUE#大量经验、经验丹、大型经验丹#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#木人巷#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"--]]
	return msg
end

--锁魔宫
function suomogong(npc, player)
--[[    local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#锁魔宫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_YELLOW#产出：#COLOREND##COLORCOLOR_SKYBLUE#内有各种真假BOSS，掉落各种高级装备和神羽，尤其是里面的猪牛羊，装备好得不得了，哎最近猪肉在涨价！#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_RED#锁魔宫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "                                                #OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@DreamlandIntro *01*「返回」>"--]]
	return msg
end

function TimeInquires(npc, player)
--[[	local time = lualib:Player_GetCustomVarInt(player, "time")
	local hour   = (time - (time % 3600)) / 3600
	local minute = ((time - (hour * 3600)) - (((time - (hour * 3600)) % 60))) / 60
	local second = time - (hour * 3600) - (minute * 60)
	return "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#藏宝阁#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n#COLORCOLOR_RED#您当前剩余的藏宝阁时间为:#COLOREND#" .. hour .. "小时" .. minute .. "分" .. second .. "秒" .. "\n#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
--]]end

function Leave(npc, player)
	return ""
end

--终极技能兑换


-- 终极技能书
local zhongjishu =
{
    {"无间地狱", {"无间地狱1级", "无间地狱2级", "无间地狱3级", "无间地狱4级", "无间地狱5级"}}, 
	{"凤凰涅槃", {"凤凰涅槃1级", "凤凰涅槃2级", "凤凰涅槃3级", "凤凰涅槃4级", "凤凰涅槃5级"}}, 
	{"恶魔之怒", {"恶魔之怒1级", "恶魔之怒2级", "恶魔之怒3级", "恶魔之怒4级", "恶魔之怒5级"}}, 



}


local zhongjishuJob =
{
    ["无间地狱"] = " ---- 战士职业",
	["凤凰涅槃"] = " ---- 法师职业",
	["恶魔之怒"] = " ---- 道士职业",

}

-- 合成终极技能书需要的终极技能残页数量
local zhongjishu_num =
{
	["无间地狱1级"]	= 5,
	["无间地狱2级"] = 25,
	["无间地狱3级"] = 125, 
	["无间地狱4级"] = 625, 
	["无间地狱5级"] = 3125, 
    ["凤凰涅槃1级"]	= 5,
	["凤凰涅槃2级"]	= 25,
	["凤凰涅槃3级"]	= 125, 
	["凤凰涅槃4级"]	= 625, 
	["凤凰涅槃5级"]	= 3125,
	["恶魔之怒1级"] = 5,
	["恶魔之怒2级"] = 25,
	["恶魔之怒3级"] = 125, 
	["恶魔之怒4级"] = 625, 
	["恶魔之怒5级"] = 3125,


}
-- 终极技能书兑换终极技能残页可以获得终极技能残页的数量
local zhongjishu_num_fan =
{
	["无间地狱1级"]	= 2,
	["无间地狱2级"] = 8,
	["无间地狱3级"] = 20, 
	["无间地狱4级"] = 100, 
	["无间地狱5级"] = 500, 
    ["凤凰涅槃1级"]	= 2,
	["凤凰涅槃2级"]	= 8,
	["凤凰涅槃3级"]	= 20, 
	["凤凰涅槃4级"]	= 100,
	["凤凰涅槃5级"]	= 500,
	["恶魔之怒1级"] = 2,
	["恶魔之怒2级"] = 8,
	["恶魔之怒3级"] = 20, 
	["恶魔之怒4级"] = 100,
	["恶魔之怒5级"] = 500,
}


function hec(npc, player)
--[[	local msg ="在#COLORCOLOR_SKYBLUE#藏宝阁#COLOREND#的#COLORCOLOR_GREENG#藏经阁#COLOREND#内，你可以寻找到#COLORCOLOR_GREENG#终极技能残页#COLOREND#，祝你早日领悟终极技能！\n \n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@convert_prompt *01*「残页合成终极技能书」>\n \n#OFFSET<X:0,Y:0>##IMAGE<ID:1902700036>##OFFSET<X:0,Y:-1>#<@convert_back_prompt *01*「终极技能书拆解残页」>\n \n#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
--]]	return msg
end


function convert_prompt(npc, player)
--[[		local msg = "收集到一定量的终极技能残页就可以来我这里换取传说中的终极技能书哦！加油收集吧！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#COLORCOLOR_GREENG#目前你可以在我这里利用终极技能残页换取如下终极技能书：#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		for i = 1,#zhongjishu do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan#"..i.." *01*"..zhongjishu[i][1]..zhongjishuJob[zhongjishu[i][1]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg..""                                 #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" --]]

    return msg;
end

function duihuan(npc, player, k)
--[[	local k = tonumber(k)
	local msg = "请选择需要合成的终极技能书\n"
		  msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		for k1, v1 in pairs(zhongjishu[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@duihuan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*「返回」>\n"

	return msg--]]
end


function duihuan1(npc, player,  v1)
--[[	local msg = ""
	
		for k2, v2 in pairs(zhongjishu_num) do
				if v1 == k2 then
					msg = msg.."合成#COLORCOLOR_YELLOW#"..v1.."#COLOREND#需要#COLORCOLOR_RED#"..v2.."#COLOREND#个终极技能残页，确定合成吗？\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@duihuan2#"..v1.."#"..v2.." *01*确定合成>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n" --]]

	return msg
end

function duihuan2(npc, player,v1, v2)
--[[	local msg = ""
	local num = lualib:ItemCount(player, "终极技能残页")
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "你的包裹不足1格，请空出一格包裹再来合成！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_prompt *01*「返回」>"
	end
	v2 = tonumber(v2)
	if num < v2 then
		return "你的终极技能残页数量不足"..v2.."，不能合成！ \n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	else
		if lualib:DelItem(player, "终极技能残页", v2, 0, "合成终极技能书成功删除终极技能残页", player) == true then
			lualib:AddItem(player, v1, 1, false, "合成终极技能书成功！", player)
			return "合成成功！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		else
			return "删除道具失败，请重新试试！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
	end
	--]]
	return msg
end


function convert_back_prompt(npc, player)
--[[       local msg = "如果你有多余的终极技能书，也可以到我这里拆解残页！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#COLORCOLOR_GREENG#目前你可以在我这里用下列终极技能书拆解为残页#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		
		for i = 1, #zhongjishu do
			msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700036>##OFFSET<X:0,Y:-2>#<@duihuan_fan#"..i.." *01*"..zhongjishu[i][1]..">\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
--]]
    return msg;
end

function duihuan_fan(npc, player, k)
--[[	local k = tonumber(k)
	local msg = "选择需要拆解为残页的终极技能书\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	
		for k1, v1 in pairs(zhongjishu[k][2]) do
				msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700036>##OFFSET<X:0,Y:-1>#<@duihuan_fan1#"..v1.." *01*["..v1.."]>\n"
		end
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                   #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@convert_back_prompt *01*「返回」>\n"

	return msg--]]
end


function duihuan_fan1(npc, player,  v1)
--[[	local msg = ""
	
		for k2, v2 in pairs(zhongjishu_num_fan) do
				if v1 == k2 then
					msg = msg..v1.."可以拆解到：#COLORCOLOR_RED#"..v2.."#COLOREND#个终极技能残页，确定拆解吗？\n \n \n \n \n"
					msg = msg.."#OFFSET<X:0,Y:2>##IMAGE<ID:1902700033>##OFFSET<X:0,Y:-2>#<@duihuan_fan2#"..v1.."#"..v2.." *01*「拆解」>\n \n \n \n"
					
				end
		end
		msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
--]]
	return msg
end

function duihuan_fan2(npc, player, v1, v2)
--[[	v2 = tonumber(v2)
	local zhongjishuang = lualib:ItemCountByKey(player, v1, true, false, false, 0)
	local msg = ""
	local bagfree = lualib:Player_GetBagFree(player)
	if bagfree < 1 then
		return "你的包裹不足1格，请空出一格包裹再来合成！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@duihuan_fan *01*「返回」>"
	else
		if zhongjishuang < 1 then
			return "你没有终极技能书，不能拆解\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			
		else
			if lualib:DelItem(player, v1, 1, 0, "拆解成终极技能残页删除终极技能书", player) == true then
				lualib:AddItem(player, "终极技能残页", v2, false, "拆解终极技能书成功！", player)
				return "拆解成功！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			else
				return "删除道具失败，请重新试试！\n \n \n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
	end
--]]
	return msg
end