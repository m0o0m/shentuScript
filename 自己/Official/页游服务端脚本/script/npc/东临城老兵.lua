gQuestMap =
{
   {3002, "QuestAccept3002", "QuestAccomplish3002","*01*任务: 探察天魔石窟", "*01*完成任务: 探察天魔石窟"},
   {3003, "QuestAccept3003", "QuestAccomplish3003","*01*任务: 深入天魔石窟", "*01*完成任务: 深入天魔石窟"},
   {3004, "QuestAccept3004", "QuestAccomplish3004","*01*任务: 继续深入天魔石窟", "*01*完成任务: 继续深入天魔石窟"},
   {3005, "QuestAccept3005", "QuestAccomplish3005","*01*任务: 消灭天魔怨灵", "*01*完成任务: 消灭天魔怨灵"}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"我很喜欢这儿的战争氛围，这让我想起了年轻的时候。", "我不能传送你们去危险的地方，如果你们因此在那里受到伤害，我会感到愧疚。", "不听老兵言，吃亏在眼前。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
	msg = "    #COLORCOLOR_GREENG#我是个能守住秘密的人，我从来不跟人说我曾经名动天下……。哈哈，请问客官想要去哪里？#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@anquan *01*【安全区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各大城市的安全区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@digong *01*【危险区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到探险区域#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700015##OFFSET<X:0,Y:-1># <@shangdian *01*【商店传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各地的交易区域#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#24 *01*「老兵商店」   > \n \n"
	--	msg = msg.."#IMAGE1902700015# <@chengbao *01*【城堡传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到神歌城城堡#COLOREND#\n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*「离开」>\n"

	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
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
	
	local mapname = {"龙城", "巫山城", "东临城", "新手村", "武器店", "服装店", "首饰店", "药店", "书店"}
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 123, 300, 1, "mvtx", "龙城".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "巫山城".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "东临城".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "新手村".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "武器店".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(npc, 128, 300, 1, "mvtx", "服装店".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "首饰店".."#"..x.."#"..y)
		elseif map_key_name == mapname[8] then
			lualib:AddTimerEx(npc, 130, 300, 1, "mvtx", "药店".."#"..x.."#"..y)
		elseif map_key_name == mapname[9] then
			lualib:AddTimerEx(npc, 131, 300, 1, "mvtx", "书店".."#"..x.."#"..y)
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

	local canshu = {"龙城", "巫山城", "东临城", "新手村", "武器店", "服装店", "首饰店", "药店", "书店", "神歌城"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

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


function anquan(npc,player)
	msg = "#COLORCOLOR_GOLD#我可以将你免费传送到附近的城市#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#234#222#3 *01*龙城>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#237#305#3 *01*巫山城>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMove_zhenmo#镇魔城#226#174#3 *01*镇魔城>\n \n \n"
	--msg = msg.."<@MapMoveXYA#巫山城#194#679#3 *01*辟岭村>\n \n"
		msg = msg.."                                                #OFFSET<X:0,Y:-7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n \n"
	return msg
end

function shangdian(npc,player)
	msg = "#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#333#283#3 *01*铁匠铺> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购武器的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#301#307#3 *01*裁缝铺> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购铠甲的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#344#354#3 *01*首饰铺> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购首饰的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#324#320#3 *01*杂货铺> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售收购各种卷类物品#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#320#260#3 *01*药材铺> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购各类红蓝药品#COLOREND#\n"
	--msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#15#26#3 *01*书  店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购各职业技能书#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#东临城#360#302#3 *01*仓  库> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#存放各类物品的地方\n \n"
	msg = msg.."                                              #COLOREND##OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"	
	return msg
end


function digong(npc,player)
	msg = "#COLORCOLOR_GOLD#传送到危险地区需要缴纳金币，40级以下缴纳1500，40级及以上缴纳15000，你要去哪里冒险？#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#东临城#94#97#1 *01*天魔石窟> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级45-55级探险#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#海底入口#46#48#1 *01*海角密境> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级50-60级探险#COLOREND#\n"
	msg = msg.."\n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019# #OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#巫山城#22#94#1 *01*废弃矿洞>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级20-25级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#绝路岭#18#54#1 *01*绝路城> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级25-35级探险#COLOREND#<@main *01*「返回」>\n\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#33#50#1 *01*妖山暗穴>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级25-35级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#龙城#209#198#1 *01*天荒阵> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30-40级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#520#25#1 *01*天荒邪庙>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级35-45级探险#COLOREND#<@main *01*「返回」>\n"
	return msg
end

function chengbao(npc,player)
	msg = "#COLORCOLOR_GOLD#传送到城堡需要缴纳金币，40级以下缴纳1500，40级及以上缴纳15000，你要去哪个城堡？#COLOREND#\n \n"
	msg = msg.."<@shenge *01*神歌城>\n \n"
	msg = msg.."<@main *01*「返回」>\n \n"
	return msg
end
function shenge(npc,player)
	msg = "#COLORCOLOR_GOLD#请选择您想前往神歌城的准确地点#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#╔---------------------╦---------------------╗#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#50#103#10 *01*神歌城左上>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#470#70#10 *01*神歌城右上>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┆\n"
	msg = msg.."#COLORCOLOR_BLUE#╚---------------------╩---------------------╝#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#╔---------------------╦---------------------╗#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#112#635#10 *01*神歌城左下>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#408#617#10 *01*神歌城右下>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┆\n"
	msg = msg.."#COLORCOLOR_BLUE#╚---------------------╩---------------------╝#COLOREND#   <@main *01*「返回」>\n"

	return msg
end



function MapMoveXYB(npc, player, map_key_name, x, y, r)
	if map_key_name == "天魔石窟" and x == "94" and	y == "97" then
		local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
		if lualib:Level(player) < 40 then
			return "你还未达到40级，无法进入天魔石窟！"
		end
	elseif map_key_name == "海底入口" then
		local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
		if haidi_Open < 20 then
			return "海角秘境还未被勇士开启，当大陆出现".. 20 .."位47级的勇士时，海角秘境的探险之路将会开启！"
		end
	end
	
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
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
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "巫山城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
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
	
	return msg
end


function likai(npc,player)
	return ""
end


---3002接
function QuestAccept3002(npc,player)
    msg = "如今东临城初建，妖魔频频来袭，人类正处于危难之际，为了能使人类在此地更快地站稳脚跟，请前去天魔石窟进行探查，并消灭10只天魔奴仆和10只天魔守卫吧。\n \n"
	msg = msg.."<@Accept3002 *01* 我这就去探查天魔石窟！>\n"
	return msg
end


function Accept3002(npc, player)
    if lualib:AcceptQuest(player, 3002) == true then
        return "天魔石窟十分凶险，请务必小心！"
    else
        return "任务接取失败"
    end
end

---3002交
function QuestAccomplish3002(npc, player)
    msg = "有没有探察到什么有用的消息？\n \n"
    msg = msg.."<@Accomplish3002 *01* 我已消灭妖魔，特来复命！>\n"
    return msg
end

function Accomplish3002(npc, player)
    if lualib:AccomplishQuest(player, 3002, 0) == true then
        msg = "唉，从你探明的情况来看，妖魔蠢蠢欲动，大举集结，正准备对人类不利，这可如何是好？\n \n"
		msg = msg.."<@QuestAccept3003 *01*如果还有什么需要我做的，尽管吩咐>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---3003接
function QuestAccept3003(npc,player)
    msg = "勇士，自从你上次探查了天魔石窟，妖魔又对我们发起了几次进攻，其中新增了一种妖魔叫天魔妖道，掌握着一种神秘的力量，威力非常，你去天魔石窟二层一探虚实，消灭10只天魔妖道，探个究竟吧！\n \n"
	msg = msg.."<@Accept3003 *01* 我这就去！>\n"
	return msg
end


function Accept3003(npc, player)
    if lualib:AcceptQuest(player, 3003) == true then
        return "天魔石窟沿途阻碍重重，可别大意了！"
    else
        return "任务接取失败"
    end
end

-------3003交
function QuestAccomplish3003(npc, player)
    if lualib:AccomplishQuest(player, 3003, 0) == true then
        msg = "你从天魔妖道身上找到的这些碎片，孤仔细研究，倒似是一种祭坛碎片，他们到底想做什么呢？\n \n"
		msg = msg.."<@QuestAccept3004 *01*真是奇怪呀！>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---3004接
function QuestAccept3004(npc,player)
    msg = "勇士，最近这段时间来，孤一直在研究那祭坛碎片，并将它复原了出来，你可否前往天魔石窟三层，消灭10只天魔先锋，将它们的首级取来，我也好作个试验。\n \n"
	msg = msg.."<@Accept3004 *01* 好吧！>\n"
	return msg
end


function Accept3004(npc, player)
    if lualib:AcceptQuest(player, 3004) == true then
        return "天魔先锋可是难缠的角色，可别大意了！"
    else
        return "任务接取失败"
    end
end

-------3004交
function QuestAccomplish3004(npc, player)
    if lualib:AccomplishQuest(player, 3004, 0) == true then
        msg = "你果然取来了天魔先锋的首级，孤一直担心你的安危，这下再好不过了！\n \n"
		msg = msg.."<@QuestAccept3005 *01*多谢关心！>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---3005接
function QuestAccept3005(npc,player)
    msg = "上次你取回天魔石窟的首级，孤在祭坛上使用之后，发觉祭坛中会散发出一种妖魔怨气，你可否前往天魔石窟四层，消灭10只天魔怨灵，将它们的魔核取来。\n \n"
	msg = msg.."<@Accept3005 *01* 小事一桩！>\n"
	return msg
end


function Accept3005(npc, player)
    if lualib:AcceptQuest(player, 3005) == true then
        return "天魔石窟中危险重重，妖魔横行，越是深入越加危险，勇士，你千万要小心呀！"
    else
        return "任务接取失败"
    end
end

-------3005交
function QuestAccomplish3005(npc, player)
    msg = "不好！这祭坛原来是用来召唤天魔神的，只要用妖魔血祭，再用妖魔怨气作引，就能跨越时空，从魔界招来天魔神。天魔神十分强大可怕，勇士，你一定要尽你可能，阻止他们召唤出天魔神。\n \n"
    msg = msg.."<@Accomplish3005 *01* 如何阻止？>\n"
    return msg
end

function Accomplish3005(npc, player)
    if lualib:AccomplishQuest(player, 3005, 0) == true then
        msg = "只有你们继续强大起来，将妖魔彻底消灭，方能解此危机，唉……\n \n"
		msg = msg.."<@leave *01*我会强大起来的！>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end
