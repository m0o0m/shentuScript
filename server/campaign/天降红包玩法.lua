--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		local map = lualib:Map_GetMapGuid("天怒之城")
		lualib:GSRunScript("hdtjyb", "")
		lualib:DelayCall(map, 1, "GenRed", "")
		lualib:DelayCall(map, 5*60*1000, "GenRed", "")
		
		
		local str = "[天降红包]活动已开始，大量红包掉落在天怒之城！"
		lualib:SysMsg_SendBroadcastMsg(str, "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[天降红包]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
    else
		local str = "[天降红包]还有"..math.floor(times / 60000).."分钟开启。"
		lualib:SysMsg_SendBroadcastMsg(str, "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[天降红包]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[天降红包]", "本次活动已结束，请期待下次活动开启！", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[天降红包]", "将在"..math.floor(times / 60000).."分钟后结束！", 15000)
    end
end

function Goto(id,player,map)
	local x = 266
	local y = 284
	local r = 8
	local map_key_name = "天怒之城"
	local gold = 1500
	local msg = ""

	
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
		return true
	end
	
	if not lualib:IsEscorterDied(player) then
		lualib:SysTriggerMsg(player,"你有镖车，无法启动传送！")
		return true
	end

	-- if not lualib:Player_IsGoldEnough(player, gold, false) then
		-- msg = msg.."当前传送需要1500金币"
		-- lualib:NPCTalk(player, msg)
		-- return true
    -- end	
	
	-- if not lualib:Player_SubGold(player, gold, false, "扣金币", player) then
		-- msg = msg.."扣除金币失败"
		-- lualib:NPCTalk(player, msg)
		-- return true
    -- end




	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end

function GenRed(npc, player)
	local map = lualib:Map_GetMapGuid("天怒之城")
	lualib:Map_GenItemRnd(map, 165, 134, 8, "红包", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "红包", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "红包", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "红包", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "红包", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "红包", 1, true, 120)
	return
end


function hdtjyb(player, id)

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 45 then 
		return 
	end

	
	local msg = ""
	msg = msg.."　\n"
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　活动提示:\n"	
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　每日活动：#COLORCOLOR_MAGENTA#[天降红包]#COLOREND# 已开始，你是否要参加该活动？\n"	
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　请选择.\n"
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#IMAGE1902700018# <@enter *01*报名参加>　　#IMAGE1902700034# <@leave *01*关闭窗口>\\n"
	msg = msg.."　\n"
	msg = msg.."　\n"
	msg = msg.."#OFFSET<X:-38,Y:-215>##IMAGE<ID:1990705608>#\n"
	lualib:NPCTalk(player, msg)
	return msg
end


function enter(player)
	-- local x = lualib:GenRandom(155,175)
	-- local y = lualib:GenRandom(130,285)
	lualib:Player_MapMoveXY(player, "天怒之城", 165, 134, 10)
	local playername = lualib:KeyName(player)
	lualib:SysMsg_SendBroadcastMsg("〖系统〗勇士『"..playername.."』进入天怒之城寻宝！", "")
	
	return ""
end