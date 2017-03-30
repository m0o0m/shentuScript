--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times_all = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times_all)

	local time_cha = times_all - StartServerTime_int
	
	if time_cha < 86400 * 2 then 	--(2天) 
		lualib:Debug("渡劫活动小于开区2天，所以不开启！")
		return
	end
	
    local times = tonumber(times)
    if times == 0 then
		local mapGuid = lualib:Map_GetMapGuid("龙城")
		lualib:SysMsg_SendBoardMsg("0", "[渡劫]", "[渡劫]已开放！", 15000)
		lualib:SetInt(mapGuid, "dujieTime", 1)
		lualib:GSRunScript("渡劫活动:playerMove", "")
		
		local tiemid =  lualib:GenTimerId("0")
		lualib:AddTimerEx("0", tiemid, 360000, 10, "dujietishi", "")
    else
		lualib:SysMsg_SendBoardMsg("0", "[渡劫](牛逼经验)", "[渡劫]还有"..math.floor(times / 60000).."分钟开启。英雄们请速从龙城NPC[渡劫][250.254]参与！", 15000)
    end
end

function on_end_decl(id, map, times)
    local times = tonumber(times)
    if times == 0 then
		local mapGuid = lualib:Map_GetMapGuid("龙城")
		lualib:SetInt(mapGuid, "dujieTime", 0)
		lualib:SysMsg_SendBoardMsg("0", "[渡劫]", "[渡劫]已关闭！", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[渡劫]", "[渡劫]将在"..math.floor(times / 60000).."分钟后关闭！", 15000)
    end
end

function playerMove(player)
	local level = lualib:Level(player)
	if level < 30 then return end
	--[[
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#渡劫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "渡劫活动开始了，只要诵经或者超度亡灵，都能获得牛逼的海量经验！\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##COLORCOLOR_GREENG#1.活动期间内,每诵经一次，可获得#COLOREND##COLORCOLOR_YELLOW#25W经验#COLOREND##COLORCOLOR_GREENG#！并召唤出一只亡灵随机刷在地图内！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#2.每超度(打死)一只亡灵，便可获得亡灵的海量经验！亡灵的经验为#COLOREND##COLORCOLOR_YELLOW#50W#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#3.亡灵一旦得到超度，诵经者会额外获得系统赠送的一部分经验！！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_RED#4.每日召唤数量有限制：数量为召唤者等级的十位整数，如45级可召唤40只，52级可召唤50只#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#渡劫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@enter *01*进入[渡劫]获得牛逼经验>\n"
	lualib:NPCTalk(player, msg)
	]]--
end

function enter(player, dgn_id)
	lualib:Player_MapMoveXY(player, "龙城", 250, 254, 5)
	return ""
end

function dujietishi(player, timeid)
	lualib:SysMsg_SendBoardMsg("0", "[渡劫]", "渡劫正在进行中，参与可获得超额经验！\n             #UILINK<WND:提交表单,PARAM:小贴士;dujie_cs;player,STR:[立刻参与]#", 5000)
end

function leave(player)
	return ""
end

function Goto(id,player,map)
	 local x = 250
	 local y = 254
	 local r = 3
	 local map_key_name = "龙城"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要"..gold.."金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	
	 if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	 end
end