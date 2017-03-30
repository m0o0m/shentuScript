local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--------------创建副本时触发------------------
function on_map_create(map)
    lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map") --进入副本回调
    lualib:AddTrigger(map, lua_trigger_kill, "on_trigger_kill") --杀人回调
	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --死亡回调
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map") --离开地图触发
	
	if lualib:KeyName(map) ~= "精英竞技场-群雄逐鹿" then
		lualib:Map_GenNpc(map, "竞技场助手", 37, 40, 0, 4)
		lualib:Map_GenNpc(map, "竞技场助手", 23, 57, 0, 4)
	end
end

--------------进入副本回调------------------
function on_trigger_enter_map(player)
	local map = lualib:MapGuid(player)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#54#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#57#0#0")
	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#42#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#39#0#0")
	
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		lualib:Player_AddBuff(player,"精英竞技场等待",0) --进入以后不可释放技能，不可移动buff
		lualib:SetInt(player,"jyjjc_jifen",0) --清理掉玩家的积分变量
		lualib:SetHp(player,lualib:Hp(player,true), false)--生命值恢复满
		lualib:SetMp(player,lualib:Mp(player,true), false)--魔法值恢复满
		lualib:SysMsg_SendMsgDlg(player, 1, "比赛开始前暂时不可移动，不可攻击，请耐心等待比赛开始。#BUTTON0#确定#BUTTONEND#", 100, "guanbi", "")
	else
		lualib:Player_MapMoveXY(player,map, 30,48, 3)
		lualib:Player_AddBuff(player,"精英竞技场观看",0) --隐身、无敌、不可使用技能、丢弃东西、交易。
	end
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.根据你打到对手的表现情况，会获得相应的荣耀值\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.荣耀值可在NPC[荣耀竞技场]处兑换顶级属性的荣耀装备!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.战斗吧！我最爱勇士了，我爱你^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
end

function guanbi()
	return ""
end

--------------杀人回调------------------
function on_trigger_kill(killer, victim)
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..killer.."\"") ~= nil and string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..victim.."\"") ~= nil then
	else
		return
	end

    if lualib:Player_IsPlayer(victim) == true and lualib:Player_IsPlayer(killer) == true then
        local killername = lualib:Player_GetStrProp(killer, lua_role_user_name)
        local victimname = lualib:Player_GetStrProp(victim, lua_role_user_name)
		lualib:SetInt(killer,"jyjjc_jifen",lualib:GetInt(killer,"jyjjc_jifen")+10) --杀人者加10积分
		lualib:SetInt(victim,"jyjjc_jifen",lualib:GetInt(victim,"jyjjc_jifen")-5) --死亡者减5积分
		lualib:SysMsg_SendWarnMsg(killer, "您已杀死"..victimname.."，无PK惩罚！积分+10，总积分："..lualib:GetInt(killer,"jyjjc_jifen"))
		lualib:SysMsg_SendWarnMsg(victim, "您被"..killername.."杀死，积分-5，总积分："..lualib:GetInt(victim,"jyjjc_jifen"))
    end
end

--------------死亡回调------------------
function on_trigger_player_relive(player)
	lualib:ProgressBarStart(player, 15000, "复活中...", "on_relive_complete", "guanbi", "") --启动复活条
	return false
end

function on_relive_complete(player, param)	
	local map = lualib:MapGuid(player)
	local x,y,z = 0,0,0
	if lualib:KeyName(map) == "精英竞技场-群雄逐鹿" then
		x = math.random(16,59)
		y = math.random(24,71)
		z = 1
	else
		if lualib:GetStr(map,"jyjjc_gerenxinxi1") == player then
			x = 45
			y = 31
			z = 1
		elseif lualib:GetStr(map,"jyjjc_gerenxinxi2") == player then
			x = 17
			y = 64
			z = 1
		end
		
		lualib:Player_AddBuff(player,"精英竞技场准备",0) --复活以后给玩家增加无敌和不能攻击的buff
	end
	lualib:Player_Relive(player,"", x, y, z, 50) --复活
end

--------------离开副本触发------------------
function on_trigger_leave_map(player)
	lualib:Player_DelBuff(player,"精英竞技场观看") --删除buff
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
end