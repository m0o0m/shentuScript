local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


	itemTbl =
		{
			{
				{
					{["name"] = "精钢手镯  ", ["count"] = 2, ["keyname"] = "精钢手镯"},
					{["name"] = "龙形戒指  ", ["count"] = 2, ["keyname"] = "龙形戒指"},
					{["name"] = "鬼牙项链  ", ["count"] = 1, ["keyname"] = "鬼牙项链"},
					{["name"] = "幽灵面具  ", ["count"] = 1, ["keyname"] = "幽灵面具"},
					{["name"] = "阴阳靴    ", ["count"] = 1, ["keyname"] = "阴阳靴"},
					{["name"] = "鬼噬      ", ["count"] = 1, ["keyname"] = "鬼噬"},
				},
				{
					{["name"] = "黄金手镯  ", ["count"] = 2, ["keyname"] = "黄金手镯"},
					{["name"] = "武圣之戒  ", ["count"] = 2, ["keyname"] = "武圣之戒"},
					{["name"] = "浮云      ", ["count"] = 1, ["keyname"] = "浮云"}
				},
				{
					{["name"] = "骷髅手套  ", ["count"] = 1, ["keyname"] = "骷髅手套"},
					{["name"] = "破坏戒指  ", ["count"] = 1, ["keyname"] = "破坏戒指"},
					{["name"] = "黄金头盔  ", ["count"] = 1, ["keyname"] = "黄金头盔"},
					{["name"] = "审判      ", ["count"] = 1, ["keyname"] = "审判"}
				},
				{
					{["name"] = "铁战护腕  ", ["count"] = 2, ["keyname"] = "铁战护腕"},
					{["name"] = "铁战戒指  ", ["count"] = 2, ["keyname"] = "铁战戒指"},
					{["name"] = "铁战靴子  ", ["count"] = 1, ["keyname"] = "铁战靴子"}
				}
			},
			{
				{
					{["name"] = "魔王手镯  ", ["count"] = 2, ["keyname"] = "魔王手镯"},
					{["name"] = "红玛瑙戒指", ["count"] = 2, ["keyname"] = "红玛瑙戒指"},
					{["name"] = "奥普项链  ", ["count"] = 1, ["keyname"] = "奥普项链"},
					{["name"] = "幽灵面具  ", ["count"] = 1, ["keyname"] = "幽灵面具"},
					{["name"] = "阴阳靴    ", ["count"] = 1, ["keyname"] = "阴阳靴"},
					{["name"] = "魔灵法杖  ", ["count"] = 1, ["keyname"] = "魔灵法杖"},
				},
				{
					{["name"] = "奥普手镯  ", ["count"] = 2, ["keyname"] = "奥普手镯"},
					{["name"] = "奥普戒指  ", ["count"] = 2, ["keyname"] = "奥普戒指"},
					{["name"] = "浮云      ", ["count"] = 1, ["keyname"] = "浮云"}
				},
				{
					{["name"] = "龙牙手镯  ", ["count"] = 1, ["keyname"] = "龙牙手镯"},
					{["name"] = "摄魂戒指  ", ["count"] = 1, ["keyname"] = "摄魂戒指"},
					{["name"] = "阎魔头盔  ", ["count"] = 1, ["keyname"] = "阎魔头盔"},
					{["name"] = "囚龙      ", ["count"] = 1, ["keyname"] = "囚龙"}
				},
				{
					{["name"] = "聚魂护腕  ", ["count"] = 2, ["keyname"] = "聚魂护腕"},
					{["name"] = "聚魂戒指  ", ["count"] = 2, ["keyname"] = "聚魂戒指"},
					{["name"] = "聚魂靴子  ", ["count"] = 1, ["keyname"] = "聚魂靴子"}
				}
			},
			{
				{
					{["name"] = "灵石手镯  ", ["count"] = 2, ["keyname"] = "灵石手镯"},
					{["name"] = "白金戒指  ", ["count"] = 2, ["keyname"] = "白金戒指"},
					{["name"] = "荧光项链  ", ["count"] = 1, ["keyname"] = "荧光项链"},
					{["name"] = "幽灵面具  ", ["count"] = 1, ["keyname"] = "幽灵面具"},
					{["name"] = "阴阳靴    ", ["count"] = 1, ["keyname"] = "阴阳靴"},
					{["name"] = "天玄剑    ", ["count"] = 1, ["keyname"] = "天玄剑"},
				},
				{
					{["name"] = "境魂护腕  ", ["count"] = 2, ["keyname"] = "境魂护腕"},
					{["name"] = "青云戒指  ", ["count"] = 2, ["keyname"] = "青云戒指"},
					{["name"] = "浮云      ", ["count"] = 1, ["keyname"] = "浮云"}
				},
				{
					{["name"] = "幻邪手镯  ", ["count"] = 1, ["keyname"] = "幻邪手镯"},
					{["name"] = "混元戒指  ", ["count"] = 1, ["keyname"] = "混元戒指"},
					{["name"] = "魔化面具  ", ["count"] = 1, ["keyname"] = "魔化面具"},
					{["name"] = "忘机      ", ["count"] = 1, ["keyname"] = "忘机"}
				},
				{
					{["name"] = "玄光护腕  ", ["count"] = 2, ["keyname"] = "玄光护腕"},
					{["name"] = "玄光戒指  ", ["count"] = 2, ["keyname"] = "玄光戒指"},
					{["name"] = "玄光靴子  ", ["count"] = 1, ["keyname"] = "玄光靴子"}
				}
			}
		}

	itemRewardTbl =
		{
			{

			},
			{
				{["keyname"] = "灵元珠", ["count"] = 2}, {["keyname"] = "封印鉴定符", ["count"] = 1}
			},
			{
				{["keyname"] = "灵元珠", ["count"] = 3}, {["keyname"] = "封印鉴定符", ["count"] = 2}
			},
			{
				{["keyname"] = "灵元珠", ["count"] = 5}, {["keyname"] = "封印鉴定符", ["count"] = 3}
			}
		}


--[[经验计算方式：
	local level = lualib:Level(player)
	local mul = math.floor(level - lvlExp[lvl][2])
	local exp = lvlExp[lvl][1] * mul
]]
--经验系数 分别是 低级 中级 高级 精英

lvlExp =
	{
		{24000,  15},
		{40000,  15},
		{80000,  15},
		{120000, 15}
	}

local talk_t = {"老马可以识途，老兵可以带你避开危险。", "唉，打了一辈子仗，如今只能在这儿引路了。", "勇士，永远要记住老兵的忠告。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 230000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

local castle_table = {"神歌城",}
function main(npc,player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
	msg = "    想当年我也曾手持利剑斩妖荡魔，可惜躺着中了一枪……。言归正传，请问客官想要去哪里？\n \n"
	msg = msg .. "#IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@anquan *01*【安全区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各大城市的安全区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@digong *01*【危险区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到探险区域#COLOREND#\n"
	msg = msg .. "#IMAGE1902700015# <@shangdian *01*【商店传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各地的交易区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@shenge *01*【城堡传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到神歌城城堡#COLOREND#\n \n"
    --msg = msg .. "#IMAGE1902700015# <@equip *01*【军备收集】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 收集您不需要的各种装备#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#24 *01*「老兵商店」>#COLORCOLOR_GREENG#您没有加入占领神歌城的行会，购物原价！#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@xinshoubuff *01*「经验加成」>#COLORCOLOR_RED#海角秘境或镇魔禁地开启后低级人物免费取三倍经验#COLOREND#" 
	--msg = msg .. "\n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*「离开」>\n"
 else
	msg = "    #COLORCOLOR_GREENG#想当年我也曾手持利剑斩妖荡魔，可惜躺着中了一枪……。言归正传，请问客官想要去哪里？#COLOREND#\n \n"
	msg = msg .. "#IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@anquan *01*【安全区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各大城市的安全区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@digong *01*【危险区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到探险区域#COLOREND#\n"
	msg = msg .. "#IMAGE1902700015# <@shangdian *01*【商店传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各地的交易区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@shenge *01*【城堡传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到神歌城城堡#COLOREND#\n \n"
    --msg = msg .. "#IMAGE1902700015# <@equip *01*【军备收集】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 收集您不需要的各种装备#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#11 *01*「老兵商店」>#COLORCOLOR_GREENG#您没有加入占领神歌城的行会，购物原价！#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@xinshoubuff *01*「经验加成」>#COLORCOLOR_RED#海角秘境或镇魔禁地开启后低级人物免费取三倍经验#COLOREND#" 
	--msg = msg .. "\n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*「离开」>\n"
     end

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function equip(npc, player)
    local msg = "     你好英雄，龙城的状况还很严峻，我们现在需要大量的装备来武装我们的军队，如果你在旅途有什么多余的装备可以给我，我会给你一定的报酬！\n"
    msg = msg .. "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE<ID:1902700017>#<@equipEx#1 *01*「战士军备」>     #IMAGE<ID:1902700017>#<@equipEx#2 *01*「法师军备」>     #IMAGE<ID:1902700017>#<@equipEx#3 *01*「道士军备」>\n"
    msg = msg .."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."　　　　　　　　　　　　　　　　　　      　  #IMAGE<ID:1902700019>#<@main *01* 返回>\n"

    return msg
end

function equipEx(npc, player, job)
	job = tonumber(job)
	local jobTbl =
	{
		"战士",
		"法师",
		"道士"
	}

	local msg = "#COLORCOLOR_RED#装备采集提示：#COLOREND#\n"
    msg = msg.."您有多余的" .. jobTbl[job] .. "套装么，我们是按套采集的，如果您有以下套装，就可以来我这里换取大量经验哦！\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg .. "    #IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 1 .." *01*「低级" .. jobTbl[job] .. "军备回收」>    #IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 2 .." *01*「中级" .. jobTbl[job] .. "军备回收」>\n"
	msg = msg .. "    #OFFSET<X:0,Y:8>##IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 3 .." *01*「高级" .. jobTbl[job] .. "军备回收」>    #IMAGE<ID:1902700017>#<@equipEx2#" .. job .. "#" .. 4 .." *01*「精英" .. jobTbl[job] .. "军备回收」>\n"
    msg = msg.."\n#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."　　　　　　　　　　　　　　　　　　      　  #IMAGE<ID:1902700019>#<@equip *01* 返回>\n"
	return msg
end

function equipEx2(npc, player, job, lvl)
	job = tonumber(job)
	lvl = tonumber(lvl)
	local lvlTbl = {26, 33, 35, 40}
	local msg = ""
	if lualib:Level(player) < lvlTbl[lvl] then
		msg = msg .. "您的等级不够，需要" .. lvlTbl[lvl] .. "级\n \n"
		msg = msg .. "<@main *01*「返回」>"
		return msg
	end

	local lvlNameTbl = {"低级", "中级", "高级", "精英"}
	local jobTbl =
	{
		"战士",
		"法师",
		"道士"
	}

	msg = msg .. "#COLORCOLOR_RED#此次回收需要如下物品：#COLOREND#\n"
	for k, v in pairs(itemTbl[job][lvl]) do
		msg = msg .. "【"..v.name .. v.count .. "个】  "
		if (k % 3) == 0 then
			msg = msg .. "\n"
		end
	end
	msg = msg .. "\n"

	local level = lualib:Level(player)
	local mul = math.floor(level - lvlExp[lvl][2])
	local exp = lvlExp[lvl][1] * mul
	msg = msg .. "#COLORCOLOR_RED#回收可以得到如下奖励：#COLOREND#\n"
	msg = msg .. "【".."经验：" .. exp .. "】\n"
	for k, v in pairs(itemRewardTbl[lvl]) do
		msg = msg .. "【"..v.keyname .. v.count .. "个】  "
		if (k % 3) == 0 then
			msg = msg .. "\n"
		end
	end
	msg = msg .. "\n#COLORCOLOR_GREENG#是否确定回收装备?#COLOREND#\n"
	msg = msg .. "                 #IMAGE<ID:1902700017>#<@OK#" .. job .. "#" .. lvl .."   *01*「确定」>          #IMAGE<ID:1902700019>#<@equip *01*「返回」>\n"
	return msg
end

function OK(npc, player, job, lvl)
	job = tonumber(job)
	lvl = tonumber(lvl)

	local keynameTbl = {}
    local countTbl   = {}
    local bindTbl    = {}
    local operaTbl   = {}
	for k, v in pairs(itemTbl[job][lvl]) do
		keynameTbl[k] = v.keyname
		countTbl[k]   = v.count
		bindTbl[k]    = 0
		operaTbl[k]   = 1
	end

	if not lualib:Player_ItemRequest(player, keynameTbl, countTbl, bindTbl, operaTbl, "事务操作：龙城老兵军装任务回收套装", "龙城老兵") then
        return "套装部件不足，无法回收！\n \n<@main *01*返回>"
    end

	local level = lualib:Level(player)
	local mul = math.floor(level - lvlExp[lvl][2])
	local exp = lvlExp[lvl][1] * mul
	if not lualib:Player_AddExp(player, exp, "加经验：龙城老兵军装任务回收套装", "龙城老兵") then
        return "加经验失败！\n \n<@equip *01*返回>"
    end

	local rewardKeynameTbl = {}
    local rewardCountTbl   = {}
    local rewardBindTbl    = {}
    local rewardOperaTbl   = {}
	for k, v in pairs(itemRewardTbl[lvl]) do
		rewardKeynameTbl[k] = v.keyname
		rewardCountTbl[k]   = v.count
		rewardBindTbl[k]    = 0
		rewardOperaTbl[k]   = 0
	end

	if not lualib:Player_ItemRequest(player, rewardKeynameTbl, rewardCountTbl, rewardBindTbl, rewardOperaTbl, "事务操作：龙城老兵军装任务回收套装奖励", "龙城老兵") then
        return "错误，给奖励失败\n \n<@main *01*返回>"
    end

	local msg = ""

	msg = msg .. "奖励发放成功\n \n"
	msg = msg .. "<@main  *01*返回>\n"
	msg = msg .. "<@Leave *01*离开>"

	return msg
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	local mapname = {"巫山城", "东临城", "新手村", "龙城武器店", "龙城首饰店", "龙城书店", "龙城"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "巫山城".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "东临城".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "新手村".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "龙城武器店".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 128, 300, 1, "mvtx", "龙城首饰店".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "龙城书店".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "龙城".."#"..x.."#"..y)	
		end
	end

	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"巫山城", "东临城", "新手村", "龙城武器店", "龙城首饰店", "龙城书店", "龙城", "神歌城"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end



function anquan(npc,player)
	msg = "#COLORCOLOR_GOLD#我可以将你免费传送到附近的城市#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@MapMoveXYA#巫山城#237#303#3 *01*巫山城>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015# #OFFSET<X:0,Y:-1>#<@MapMoveXYA#巫山城#500#682#3 *01*新手村>\n \n"
	--msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015# #OFFSET<X:0,Y:-2>#<@MapMove_zhenmo#镇魔城#226#174#3 *01*镇魔城>\n \n \n"
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#巫山城#496#687#3 *01*天桑村>          "
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#巫山城#194#679#3 *01*辟岭村>\n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end


function shangdian(npc,player)
	msg = "#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城武器店#18#30#3 *01*武器店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购武器的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城服装店#14#27#3 *01*服装店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购铠甲的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城首饰店#14#30#3 *01*首饰店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购首饰的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城#247#231#3 *01*杂货店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售收购各种卷类物品#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城#266#234#3 *01*药  店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购各类红蓝药品#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城书店#15#26#3 *01*书  店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购各职业技能书#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #OFFSET<X:0,Y:-1>##COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#龙城#237#268#3 *01*仓  库> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#存放各类物品的地方#COLOREND#\n \n                                                    #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end


function digong(npc,player)
	msg = "#COLORCOLOR_GOLD#传送到危险地区需要缴纳金币\n40级以下缴纳1500，40级及以上缴纳15000，你要去哪里冒险？#COLOREND#\n \n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#巫山城#458#97#1 *01*将军冢> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级15-20级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#巫山城#22#94#1 *01*废弃矿洞>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级20-25级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#绝路岭#18#54#1 *01*绝路城> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级25-35级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#172#40#1 *01*妖山暗穴>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级25-30级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#龙城#209#198#1 *01*天荒阵> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30-40级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#515#31#1 *01*天荒邪庙>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级35-45级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#34#36#1 *01*天魔石窟>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级40-50级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#135#734#1 *01*海角秘境>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级45-55级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#242#462#1 *01*镇魔禁地>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级50-60级探险#COLOREND#\n"
	msg = msg.."                                                 #OFFSET<X:0,Y:0>##IMAGE1902700019# #OFFSET<X:0,Y:0>#<@main *01*「返回」>\n"
	return msg
end

function chengbao(npc,player)
	msg = "#COLORCOLOR_GOLD#传送到城堡需要缴纳金币，40级以下缴纳1500，40级及以上缴纳15000，你要去哪个城堡？#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015# <@shenge *01*神歌城>\n \n"
	msg = msg.."#IMAGE1902700015#<@main *01*「返回」>\n \n"
	return msg
end
function shenge(npc,player)
	msg = "#COLORCOLOR_GOLD#传送到城堡需要缴纳金币\n40级以下缴纳1500，40级及以上缴纳15000，你要去哪个方位？#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#╔---------------------╦---------------------╗#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#50#103#10 *01*神歌城左上>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#470#70#10 *01*神歌城右上>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┆\n"
	msg = msg.."#COLORCOLOR_BLUE#╚---------------------╩---------------------╝#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#╔---------------------╦---------------------╗#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#112#635#10 *01*神歌城左下>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#408#617#10 *01*神歌城右下>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┆\n"
	msg = msg.."#COLORCOLOR_BLUE#╚---------------------╩---------------------╝#COLOREND##IMAGE1902700019#   <@main *01*「返回」>\n"

	return msg
end

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "龙城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	local mapname = {"巫山城", "东临城", "新手村", "神歌城", "龙城"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "巫山城".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "东临城".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "新手村".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "神歌城".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "龙城".."#"..x.."#"..y)	
		end
	end

	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	return msg
end

function MapMovecb(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "龙城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	local mapname = {"巫山城", "东临城", "新手村", "神歌城", "龙城"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "巫山城".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "东临城".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "新手村".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "神歌城".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "龙城".."#"..x.."#"..y)	
		end
	end

	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	return msg
end


function MapMove_zhenmo(npc, player, map_key_name, x, y, r)
	local zmc_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open < zmc_key then
		return "镇魔城还未被勇士开启，当大陆出现"..zmc_key.."位52级的勇士时，镇魔城的探险之路将会开启！"
	end
	
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	return ""
end

function xinshoubuff(npc,player)
    local jingyan_table_hj = {{47, 150}, {45, 200}, {42, 300}, }  --海角秘境开启
    local jingyan_table_zm = {{52, 150}, {50, 200}, {48, 300}, }  --镇魔城开启

    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    local lv = lualib:Level(player)
    local player_buff_value = 0
    
    local msg = "当天藏大陆遭遇危险时，某位异能者为来为冒险者进行赐福，符合条件的人可以在我这里领取对初来的冒险者的成长非常有助益的经验加成！\n\n"
    if zhenmocheng_Open >= 5 then
        msg = msg.."#COLORCOLOR_RED#镇魔城已经开启！#COLOREND#\n"
        for _, v in pairs(jingyan_table_zm) do
            local beilv = v[2]/100
            msg = msg .. v[1].."以下可以领取#COLORCOLOR_GREENG#"..beilv.."#COLOREND#倍经验加成！\n"
            if lv <= v[1] then
                player_buff_value = v[2]
            end
        end
    elseif haidi_Open >= 20 then
        msg = msg.."#COLORCOLOR_RED#海角秘境已经开启！#COLOREND#\n"
        for _, v in pairs(jingyan_table_hj) do
            local beilv = v[2]/100
            msg = msg .. v[1].."以下可以领取#COLORCOLOR_GREENG#"..beilv.."#COLOREND#倍经验加成！\n"
            if lv <= v[1] then
                player_buff_value = v[2]
            end
        end
	else
		msg = msg.."#COLORCOLOR_RED#等到海角秘境开启或者镇魔禁地开启之时，就可以领取新手经验加成了！#COLOREND#\n\n"
    end
    msg = msg .. "\n#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@xinshoubuff_Ex#"..player_buff_value.." *01*我要领取经验加成> \n \n"
    --msg = msg .. "#OFFSET<X:250,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*返回>"
    return msg

end

function xinshoubuff_Ex(npc,player, player_buff_value)
    local player_buff_value = tonumber(player_buff_value)
    if player_buff_value == 0 then
        return "你没有领取资格！"
    end
    
    if lualib:AddBuffEx(player, "神秘气息", 3600, player_buff_value) == true then
        return "领取经验加成成功，天藏大陆的未来就要看你的了！"
    else
        return "领取经验加成失败！"
    end
end

function Leave(npc,player)
	return ""
end