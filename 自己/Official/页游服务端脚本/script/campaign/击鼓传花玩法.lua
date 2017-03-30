--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    --[[if times == 0 then
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 1)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 400)
		lualib:Map_SetCustomVarStr(map, "jigu_player", "")
		lualib:Map_SetCustomVarInt(map, "jigu_lunshu", 0)

		lualib:IO_SetCustomVarInt("jigu_lunshu1", 0)
		lualib:IO_SetCustomVarInt("jigu_lunshu2", 0)
		lualib:IO_SetCustomVarInt("jigu_lunshu3", 0)
		
		lualib:IO_SetCustomVarInt("jigu_zong_jiangjin1", 0)
		lualib:IO_SetCustomVarInt("jigu_zong_jiangjin2", 0)
		lualib:IO_SetCustomVarInt("jigu_zong_jiangjin3", 0)
		
		lualib:IO_SetCustomVarStr("lingqu_tishi1", "未领")
		lualib:IO_SetCustomVarStr("lingqu_tishi2", "未领")
		lualib:IO_SetCustomVarStr("lingqu_tishi3", "未领")
		
		lualib:IO_SetCustomVarStr("jigu_player1", "")
		lualib:IO_SetCustomVarStr("jigu_player2", "")
		lualib:IO_SetCustomVarStr("jigu_player3", "")
		
        --lualib:SysMsg_SendTopMsg(1, "[击鼓传花]活动正式开启，最终花落谁家，要看谁是最终拥有鲜花的人哦！")
        --lualib:SysMsg_SendBroadcastMsg("[击鼓传花]活动正式开启，最终花落谁家，要看谁是最终拥有鲜花的人哦！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动正式开启，最终花落谁家，要看谁是最终拥有鲜花的人哦！", 15000)
    elseif times == 30000 then
       -- lualib:SysMsg_SendTopMsg(1, "[击鼓传花]活动还有30秒开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！")
       -- lualib:SysMsg_SendBroadcastMsg("[击鼓传花]活动还有30秒开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动还有30秒开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", 15000)
    else
        --lualib:SysMsg_SendTopMsg(1, "[击鼓传花]活动还有"..math.floor(times / 60000).."分钟开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！")
        --lualib:SysMsg_SendBroadcastMsg("[击鼓传花]活动还有"..math.floor(times / 60000).."分钟开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", "系统通知")  
		lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动还有"..math.floor(times / 60000).."分钟开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", 15000)
	end]]--
end

jieshu_tiemr_table = {{1850000, 50}, {1840000, 40}, {1830000, 30}, {1820000, 20}, {1810000, 10}, {950000, 50}, {940000, 40}, {930000, 30}, {920000, 20}, {910000, 10}, {50000, 50}, {40000, 40}, {30000, 30}, {20000, 20}, {10000, 10}}
jieshu_tiemr_table1 = {{1560000, 1}, {1620000, 2}, {1680000, 3}, {1740000, 4}}
jieshu_tiemr_table2 = {{660000, 1}, {720000, 2}, {780000, 3}, {840000, 4}}

function on_end_decl(id, map, times)
	--[[local player_name = lualib:Map_GetCustomVarStr(map, "jigu_player")
	local player_name1 = lualib:IO_GetCustomVarStr("jigu_player1")
	local player_name2 = lualib:IO_GetCustomVarStr("jigu_player2")
	local player_name3 = lualib:IO_GetCustomVarStr("jigu_player3")
	
	local jigu_lunshu = lualib:Map_GetCustomVarInt(map, "jigu_lunshu")
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	jigu_zong_jiangjin = jigu_zong_jiangjin / 2
    times = tonumber(times)
	
	for k, v in pairs(jieshu_tiemr_table) do
		if times == v[1] and jigu_kaishi_jc == 1 then
		lualib:Error(""..v[1])
			--lualib:SysMsg_SendTopMsg(1, "本轮[击鼓传花]活动还有["..v[2].."]秒结束。目前活动鲜花在【"..player_name.."】手中，想要大奖的玩家赶紧抢花啦！")
			--lualib:SysMsg_SendBroadcastMsg("本轮[击鼓传花]活动还有["..v[2].."]秒结束。目前活动鲜花在【"..player_name.."】手中，想要大奖的玩家赶紧抢花啦！", "系统通知")
			lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "本轮[击鼓传花]活动还有["..v[2].."]秒结束。目前活动鲜花在【"..player_name.."】手中，想要大奖的玩家赶紧抢花啦！", 15000)
		end
	end
	
	for i, p in pairs(jieshu_tiemr_table1) do
	lualib:Error(""..p[1])
		if times == p[1] then
			--lualib:SysMsg_SendTopMsg(1, "[击鼓传花]活动上一轮获奖玩家为【"..player_name1.."】，下一轮活动在["..p[2].."]分钟后开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！")
			--lualib:SysMsg_SendBroadcastMsg("[击鼓传花]活动上一轮获奖玩家为【"..player_name1.."】，下一轮活动在["..p[2].."]分钟后开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", "系统通知")
			lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动上一轮获奖玩家为【"..player_name1.."】，下一轮活动在["..p[2].."]分钟后开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", 15000)
		end
	end
	
	for a, b in pairs(jieshu_tiemr_table2) do
		if times == b[1] then
			--lualib:SysMsg_SendTopMsg(1, "[击鼓传花]活动上一轮获奖玩家为【"..player_name2.."】，下一轮活动在["..b[2].."]分钟后开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！")
			--lualib:SysMsg_SendBroadcastMsg("[击鼓传花]活动上一轮获奖玩家为【"..player_name2.."】，下一轮活动在["..b[2].."]分钟后开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", "系统通知")
			lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动上一轮获奖玩家为【"..player_name2.."】，下一轮活动在["..b[2].."]分钟后开启。英雄们请速到龙城击鼓传花NPC做好参加活动的准备！", 15000)
		end
	end
		
		if times == 1860000 or  times == 960000 or times == 60000 then
			lualib:Map_SetCustomVarInt(map, "jigu_jieshuqian_tingzhi", 1)
		elseif times == 1500000 or times == 600000 then
			lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 1)
			lualib:Map_SetCustomVarStr(map, "jigu_player", "")
			lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 400)
			--lualib:SysMsg_SendTopMsg(1, "[击鼓传花]活动正式开启，最终花落谁家，要看谁是最终拥有鲜花的人哦！")
			--lualib:SysMsg_SendBroadcastMsg("[击鼓传花]活动正式开启，最终花落谁家，要看谁是最终拥有鲜花的人哦！", "系统通知")
			lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动正式开启，最终花落谁家，要看谁是最终拥有鲜花的人哦！", 15000)
		elseif times == 1800000 or times == 900000 or times == 0 then
			lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 0)
			lualib:Map_SetCustomVarInt(map, "jigu_jieshuqian_tingzhi", 0)
			
			if jigu_lunshu == 2 then
				jigu_lunshu = jigu_lunshu + 1
				lualib:Map_SetCustomVarInt(map, "jigu_lunshu", jigu_lunshu)
				lualib:IO_SetCustomVarInt("jigu_lunshu3", jigu_lunshu)
				lualib:IO_SetCustomVarInt("jigu_zong_jiangjin3", jigu_zong_jiangjin)
				lualib:IO_SetCustomVarStr("jigu_player3", player_name)
				--lualib:SysMsg_SendTopMsg(1, "活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！")
				--lualib:SysMsg_SendBroadcastMsg("活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！", "系统通知")
				lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "[击鼓传花]活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！", 15000)
			end
			
			if jigu_lunshu == 1 then
				jigu_lunshu = jigu_lunshu + 1
				lualib:Map_SetCustomVarInt(map, "jigu_lunshu", jigu_lunshu)
				lualib:IO_SetCustomVarInt("jigu_lunshu2", jigu_lunshu)
				lualib:IO_SetCustomVarInt("jigu_zong_jiangjin2", jigu_zong_jiangjin)
				lualib:IO_SetCustomVarStr("jigu_player2", player_name)
				--lualib:SysMsg_SendTopMsg(1, "活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！")
				--lualib:SysMsg_SendBroadcastMsg("活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！", "系统通知")
				lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！", 15000)
			end
			
			if jigu_lunshu == 0 then
				jigu_lunshu = jigu_lunshu + 1
				lualib:Map_SetCustomVarInt(map, "jigu_lunshu", jigu_lunshu)
				
				lualib:IO_SetCustomVarInt("jigu_lunshu1", jigu_lunshu)
				lualib:IO_SetCustomVarInt("jigu_zong_jiangjin1", jigu_zong_jiangjin)
				lualib:IO_SetCustomVarStr("jigu_player1", player_name)
				--lualib:SysMsg_SendTopMsg(1, "活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！")
				--lualib:SysMsg_SendBroadcastMsg("活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！", "系统通知")
				lualib:SysMsg_SendBoardMsg("0", "[击鼓传花]", "活动结束了，恭喜【"..player_name.."】由于他的不懈努力，最终赢得大奖，奖金为元宝["..jigu_zong_jiangjin.."]个，没有获奖的玩家下次加油了！", 15000)
			end

		end]]--
end
----传送到龙城击鼓传花使者旁
function on_start(id, map)
end

function Goto(id,player,map)
	 local x = 245
	 local y = 232
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

