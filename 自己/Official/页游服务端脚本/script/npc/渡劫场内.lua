local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local exp = 250000

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#渡劫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	local time_cha = times - StartServerTime_int
	--[[
	if time_cha < 170000 then 	--(2天) 
		msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#开区前两天还没这么多亡灵，请2天后再来吧~\n"
		return msg
	end
	
	
	
	msg = msg .. "妖魔乱世横行，我辈英雄牺牲无数，悲唱挽歌，化为亡灵不散，需各位高人超度以重生……\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##COLORCOLOR_GREENG#1.活动期间内,每诵经一次，可获得#COLOREND##COLORCOLOR_YELLOW#25W经验#COLOREND##COLORCOLOR_GREENG#！并召唤出一只亡灵随机刷在地图内！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#2.每超度(打死)一只亡灵，便可获得亡灵的海量经验！亡灵的经验为#COLOREND##COLORCOLOR_YELLOW#50W#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#3.亡灵一旦得到超度，诵经者会额外获得系统赠送的一部分经验！！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_RED#4.每人每日召唤数量有限制：40级以下[30只];40~49级[60只];50~59级[120只];60~65级[240只]！#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#渡劫#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@dujie *01*[我要诵经]>\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	msg = msg .. ""
	return msg
	]]--
end

function dujie(npc, player)
	local lv = lualib:Level(player)
	
	if lv < 40 then
		lualib:SetInt(player, "dujiecishu", 30)
	elseif lv >= 40 and lv < 50 then
		lualib:SetInt(player, "dujiecishu", 60)
	elseif lv >= 50 and lv < 60 then
		lualib:SetInt(player, "dujiecishu", 120)
	elseif lv >= 60 and lv <= 65 then
		lualib:SetInt(player, "dujiecishu", 240)	
	end
	
	local dujie_cishu = lualib:GetInt(player, "dujiecishu")
	local mapGuid = lualib:Map_GetMapGuid("龙城")
	local player_mongen = lualib:GetDayInt(player, "player_mongen")
	if lualib:GetInt(mapGuid, "dujieTime") == 1 then
		if player_mongen < dujie_cishu then
			lualib:SysMsg_SendInputDlg(player, 1, "每诵经一只亡灵需要10万金币,请输入你所要超渡的亡灵数目", 45, 14, "EnterHot", npc)
		else
			return "本次活动你能超渡的亡灵已达上限！"
		end
		
	else
		return "活动还未开始！"
	end
	return ""
end

function EnterHot(id, player, num, npc)
	local mapGuid = lualib:Map_GetMapGuid("龙城")
	local monster_num = lualib:GetInt(mapGuid, "dujie_num")
	local num = tonumber(num)
    local lv = lualib:Level(player)
	local dujie_cishu = lualib:GetInt(player, "dujiecishu")
    local player_mongen = lualib:GetDayInt(player, "player_mongen")
	
	if num == nil or num == "" then
		msg = "你的输入错误，请输入正整数！"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	elseif type(num) == "number" then
		if num % 1 ~= 0 or num < 1 then
			msg = "你的输入错误，请输入正整数！"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end
	end
	
	local msg = ""
	if monster_num + num > 100 then
		msg = "场内怪物已达上限100只，请先超渡现有亡灵后再召唤！"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
    
    if num + player_mongen > dujie_cishu then
        local other_dujiecishu = dujie_cishu - player_mongen
        msg = "你今日还能超度的亡灵数量不足！\n今日还可超度"..other_dujiecishu.."个亡灵！"
        lualib:NPCTalkEx(npc, player, msg)
		return true
    end

    
	local subIngot = num * 100000
	
	if not lualib:Player_IsGoldEnough(player, subIngot, false) then 
		msg = "你的金币不足"..subIngot..",无法超渡亡灵！"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if not lualib:Player_SubGold(player, subIngot, false, "渡劫", player) then
		msg = "金币扣除失败!"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	local Error_num = 0
	
	local mon_gen_room ={
							{256, 280, 222, 254},
							{180, 220, 151, 190},
						}
	for i = 1, num do
		local rand_room = math.random(1, 2)
		local monsterGuid = ""
		
		--这里可能会死循环
		while monsterGuid == "" do
			monsterGuid = lualib:Map_GenSingleMonster(mapGuid, math.random(mon_gen_room[rand_room][1], mon_gen_room[rand_room][2]), math.random(mon_gen_room[rand_room][3], mon_gen_room[rand_room][4]), 3, 4, "被超渡的亡灵", false)
		end
		if monsterGuid == "" then
			Error_num = Error_num + 1
		else
			--语法有问题
			--test_num = test_num + 1
			lualib:SetStr(monsterGuid, "dujie_player", player)
		end
	end
	lualib:SetInt(mapGuid, "dujie_num", monster_num + num - Error_num)
	local player_mongen = lualib:GetDayInt(player, "player_mongen")
	lualib:SetDayInt(player, "player_mongen", player_mongen + num)
	
	--设置经验
	
	if lualib:Player_AddExp(player, exp * num, "渡劫亡灵", player) == false then
		lualib:SysTriggerMsg(player, "渡劫亡灵经验获取出现异常")
	end
	--[[
	msg = "超渡亡灵成功，你获得了#COLORCOLOR_YELLOW#".. exp * num .."经验，#COLORCOLOR_RED#[待亡灵被人击杀后，你将获得#COLORCOLOR_YELLOW#更多经验！#COLORCOLOR_RED#活动期间请不要下线!]"
	lualib:NPCTalkEx(npc, player, msg)
	
	local playername = lualib:Name(player)
	
	lualib:SysMsg_SendCenterMsg(1, "["..playername.."]大发慈悲,诵经召唤了"..num.."只被超渡的亡灵在[龙城250.254],超渡(打败)亡灵可获得超高经验！", "")
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..playername.."]#COLORCOLOR_YELLOW#大发慈悲,诵经召唤了"..num.."只被超渡的亡灵在#COLORCOLOR_RED#[龙城250.254]#COLORCOLOR_YELLOW#，超渡(打败)亡灵可获得#COLORCOLOR_RED#超高经验！", "", 1, 12)
	]]--
	return true
end


function guanbi(npc, player)
	
	
	return ""
end