local talk_t = {"我的职责就是将你们传送到你想要去的地方。", "作为一个老兵，我有必要给你一个建议：生命比你想要的胜利更重要！", "如果你觉得我站在这儿很风光，那你就错了。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 200000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
	local msg = "    #COLORCOLOR_GREENG#想当年我也曾手持利剑除妖荡魔，可惜膝盖中了一箭……。言归正传，请问客官想要去哪里？#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@anquan *01*【安全区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各大城市的安全区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@digong *01*【危险区域】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到探险区域#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shangdian *01*【商店传送】> #COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 传送您到各地的交易区域#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:10,Y:-1>#<@OpenShop#24 *01*[老兵商店]   >#COLORCOLOR_RED#→→→→#COLOREND##COLORCOLOR_BLUE# 珍贵物品出售#COLOREND#\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*「离开」>\n"
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
	lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end

	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"龙城", "巫山城", "东临城", "巫山城", "武器店", "服装店", "首饰店", "药店", "书店", "神歌城"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end

function anquan(npc,player)
local 	msg = "#COLORCOLOR_GOLD#我可以将你免费传送到附近的城市#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#巫山城#239#304#3 *01*【巫山城】>\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#龙城#234#222#3 *01*【 龙城 】>\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#东临城#330#300#3 *01*【东临城】>\n \n \n"
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#巫山城#496#687#3 *01*天桑村>          "
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#巫山城#194#679#3 *01*辟岭村>\n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function shangdian(npc,player)
local  	msg = "#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#镇魔城#188#191#3 *01*武器店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购铠甲的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#镇魔城服装店#14#24#3 *01*服装店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购铠甲的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#镇魔城首饰店#14#26#3 *01*首饰店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购首饰的地方#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#镇魔城#231#164#3 *01*杂货店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售收购各种卷类物品#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#镇魔城药店#14#23#3 *01*药  店> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#出售和收购各类红蓝药品#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYA#镇魔城#211#167#3 *01*仓  库> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#存放各类物品的地方#COLOREND#\n \n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end


function digong(npc,player)
local	msg = "#COLORCOLOR_GOLD#传送到危险地区需要缴纳金币，40级以下交纳1500,40级以上缴纳15000，你要去哪里冒险？#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#镇魔城#34#30#1 *01*镇魔禁地> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级20-60级探险#COLOREND#\n \n \n \n \n \n"
	msg = msg.."\n                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#33#50#1 *01*妖山暗穴>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级25-35级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND# <@MapMoveXYB#龙城#209#198#1 *01*天荒阵> #COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级30-40级探险#COLOREND#\n"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#【#COLOREND#<@MapMoveXYB#龙城#520#25#1 *01*天荒邪庙>#COLORCOLOR_GOLD#】#COLOREND##COLORCOLOR_RED#  →→→→#COLOREND#  #COLORCOLOR_BLUE#适合等级35-45级探险#COLOREND#<@main *01*「返回」>\n"
	return msg
end

function chengbao(npc,player)
local 	msg = "#COLORCOLOR_GOLD#传送到城堡需要缴纳金币，40级以下交纳1500,40级以上缴纳15000，你要去哪个城堡？#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shenge *01*神歌城>\n \n \n \n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n \n"
	return msg
end
function shenge(npc,player)

	if lualib:HasBuff(player,"摆摊") then
	lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end

local 	msg = "#COLORCOLOR_GOLD#请选择您想前往神歌城的准确地点#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#╔---------------------╦---------------------╗#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#50#103#10 *01*神歌城左上>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#470#70#10 *01*神歌城右上>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┆\n"
	msg = msg.."#COLORCOLOR_BLUE#╚---------------------╩---------------------╝#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#╔---------------------╦---------------------╗#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#112#635#10 *01*神歌城左下>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#┆   #COLORCOLOR_RED#■#COLOREND#<@MapMovecb#神歌城#408#617#10 *01*神歌城右下>#COLORCOLOR_RED#■#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┆\n"
	msg = msg.."#COLORCOLOR_BLUE#╚---------------------╩---------------------╝#COLOREND#\n"
	msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
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
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "镇魔城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
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

function MapMovecb(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	
	
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "镇魔城老兵") then return "你的金币不足，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
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
