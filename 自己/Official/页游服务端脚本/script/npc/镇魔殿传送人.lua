local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")

require_gold = 10000

local talk_t = {"每次镇魔殿开放的时候，都会有成群的怪物涌出来。", "夹杂在怪物群中的BOSS是最大的威胁。", "镇魔殿一天只可进入三次，经验超高，所以大家要珍惜哦！"}
  
function on_create(npc)
	lualib:AddTimer(npc, 1, 180000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "　　神战期间，死灵神更开辟了恶魔大陆入侵天藏大陆的位面通道。为了封印这些位面通道，天藏大陆在付出巨大代价后，建立了镇魔殿。\n#COLORCOLOR_GREENG#  小提示：30级以上可每日挑战3次镇魔殿可获得大量经验和极珍装备！#COLORCOLOR_RED#等级越高，经验越多！#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-2>#   #IMAGE<ID:1902700018>#<@jump *01*「前往镇魔殿」>   #IMAGE<ID:1902700017>#<@info *01*「活动介绍」>   #IMAGE<ID:1902700017>#<@info1 *01*「活动奖励>」\n"
	msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"

	return msg
end

function jump(npc, player)
    local msg = "进入镇魔殿需要#COLORCOLOR_YELLOW#"..require_gold.."#COLOREND#金币，你准备好了吗？\n"
           msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	   msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#参与的玩家必须等级大于等于30。若没组队，可单人进入！若组队了，需要队长带队进入！\n"
	   msg = msg.."　　　　　队伍人数越多，获得经验奖励加成越高！\n"
           msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	if lualib:Player_HasDgnTicket(player, "镇魔殿") then
		msg = msg.."#IMAGE<ID:1902700018>#<@jump_member *01*「继续挑战>」\n"
		--msg = msg .. "您已经挑战过镇魔殿，不能继续挑战 \n"
	else
		msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump_leader#2 *01*「单人前往镇魔殿」>\n"
		msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump_leader#1 *01*「组队前往镇魔殿」>\n"
		msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@miaosha *01*「秒杀镇魔殿」(无需战斗直接获得经验)>\n \n"
	end
    return msg
end

function miaosha(npc, player)
	local msg = "没时间或者不愿去打那么多怪？你可以开启镇魔殿内奇门机关秒杀怪物，无需战斗直接获得奖励！每次需要缴纳金币用于机关维护，也可以使用元宝替代金币缴费。#COLORCOLOR_RED#无论你单人、组队或者秒杀镇魔殿，都会减少每日的入场机会#COLOREND#\n \n"
	msg = msg.."正常经验：#IMAGE<ID:1902700037>#<@addexp#1#1 *01*10万金币秒杀>    或  #IMAGE<ID:1902700037>#<@addexp#2#1 *01*200元宝秒杀>\n"
	msg = msg.."双倍经验：#IMAGE<ID:1902700037>#<@addexp#1#2 *01*20万金币秒杀>    或  #IMAGE<ID:1902700037>#<@addexp#2#2 *01*400元宝秒杀>\n"
	msg = msg.."三倍经验：#IMAGE<ID:1902700037>#<@addexp#1#3 *01*40万金币秒杀>    或  #IMAGE<ID:1902700037>#<@addexp#2#3 *01*600元宝秒杀>\n"
	msg = msg.."四倍经验：#IMAGE<ID:1902700037>#<@addexp#1#4 *01*80万金币秒杀>    或  #IMAGE<ID:1902700037>#<@addexp#2#4 *01*800元宝秒杀>\n"
	return msg
end

function addexp(npc, player, types, exp_power)
	if lualib:Player_GetIntProp(player,  lua_role_level) < 28 then
		return "您的等级过低，请28级再来！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end

	if not lualib:VerifyCampCount(player, 4) then
		return "您今天已经进入过3次镇魔殿了！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end
	
	local req_t = {
						{100000, 200000, 400000, 800000},
						{200, 400, 600, 800},
					}
	local types = tonumber(types)
	local exp_power = tonumber(exp_power)
	local player_level = lualib:Level(player)
	--经验公式自己写
	local exps = player_level * player_level * player_level * player_level * ( 60 / player_level ) * exp_power
	
	if types == 1 then
		if not lualib:Player_IsGoldEnough(player, req_t[types][exp_power], false) then
			return "你没有"..req_t[types][exp_power].."金币，无法完成！"
		end
		
		if not lualib:Player_SubGold(player, req_t[types][exp_power], false, "秒杀镇魔", player) then
			return "扣除金币失败！"
		end
	          lualib:Player_AddExp(player, exps, "秒杀镇魔", player)
                  process_horse_add_exp(player, exps)
	elseif types == 2 then
		if not lualib:Player_IsIngotEnough(player, req_t[types][exp_power], false) then
			return "你没有"..req_t[types][exp_power].."元宝，无法完成！"
		end
		
		if not lualib:Player_SubIngot(player, req_t[types][exp_power], false, "秒杀镇魔", player) then
			return "扣除元宝失败！"
		end
	          lualib:Player_AddExp(player, exps, "秒杀镇魔", player)
	          process_horse_add_exp(player, exps)
	end
	



	lualib:JoinCamp(player, 4, 0)
	return "秒杀成功！恭喜您在对抗妖魔的道路上获得更多成长！\n \n \n \n#IMAGE<ID:1902700018>#<@jump *01*「继续前往镇魔殿」> "
end

function jump_member(npc, player)
	local members = lualib:Player_GetTeamList(player)
	if members == nil then return "你已经离队了！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>" end

	local dgn = lualib:Player_GetDgnByTicket(player, "镇魔殿")
	if dgn == "" then return "镇魔殿已关闭！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>" end

	local team_guid = lualib:Map_GetCustomVarStr(dgn, "team_guid")
	if team_guid == "" then return "你没有进入镇魔殿的记录！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>" end

	--if team_guid ~= lualib:Player_GetTeamGuid(player) then return "抱歉，你已经更换过队伍了！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>" end
	--lualib:JoinCamp(player, 4, 0)
    if lualib:Player_EnterDgn(player, "镇魔殿", 62, 67, 15) == false then return "进入地图失败！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>"end
	
    return ""
end

function jump_leader(npc, player, types)
	if  types == "1" then 
		if lualib:Player_HasTeam(player) == false then 
			return "你没有组队，无法组队进入！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" 
		end
		
		if not lualib:Player_IsTeamLeader(player) then return "你不是队长！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
		local members = lualib:Player_GetTeamList(player)
		if members == nil then return "队伍成员为空！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

		local team_guid = lualib:Player_GetTeamGuid(player)
		if team_guid == "" then return "获取队伍信息出错！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

		local require_distance = 20
		for _, v in pairs(members) do
			local distance = lualib:Distance(v, npc)
			if distance > require_distance then
				if player == v then
					return "您的距离过远！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				else
					return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】的距离过远！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				end
			end
		end

		local require_level = 28
		for _, v in pairs(members) do
			local level = lualib:Player_GetIntProp(v,  lua_role_level)
			if level < require_level then
				if player == v then
					return "您的等级过低，请28级再来！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				else
					return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】的等级过低！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				end
			end
		end

		for _, v in pairs(members) do
			if lualib:Player_HasDgnTicket(v, "镇魔殿") then
				return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】已经进入过其它队伍的副本！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
		
		for _, v in pairs(members) do
			if not lualib:VerifyCampCount(v, 4) then
				if v == player then 
					return "您今天已经进入过3次镇魔殿了！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				else
					return "队友【"..lualib:Player_GetStrProp(v, lua_role_user_name).."】今天已经进入过镇魔殿了\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				end
			end
		end

	  
		if not lualib:Player_IsGoldEnough(player, require_gold, false) then
			return "您的金币不足"..require_gold.."！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end

		if not lualib:Player_SubGold(player, require_gold, false, "扣金币：镇魔殿传送费", "镇魔殿传送人") then
			return "扣除金币失败！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end

		local dgn = lualib:Map_CreateDgn("镇魔殿", false, 1800)
		if dgn == "" then
			lualib:Error("副本：镇魔殿创建失败！")
			return
		end
		lualib:Debug("副本：镇魔殿创建成功！")

		for _, v in pairs(members) do
			lualib:Map_SetCustomVarStr(dgn, "team_guid", team_guid)
			lualib:Player_SetCustomVarInt(v, "zmdfb_enter_days", lualib:GetAllDays(0))
			lualib:Player_SetCustomVarInt(v, "zmdfb_var_award", 0)
			if lualib:Player_SetDgnTicket(v, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
			lualib:JoinCamp(v, 4, 0)
			if lualib:Player_EnterDgn(v, "镇魔殿", 52, 65, 15) == false then return "进入地图失败！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"end
			if lualib:HasSkill(v, "乾坤一掷", false) == false then 
				if not lualib:AddSkill(v, "乾坤一掷") == true then
					lualib:Error("进入镇魔殿学习乾坤一掷技能失败！")
				end
				if not lualib:AddItem(v, "技能石（大）", 1, true, "第一次进入镇魔殿赠送技能石道具", v) == true then
					lualib:Error("进入镇魔殿给予技能石道具失败！")
				end
			end
		end
	elseif types == "2" then
		if lualib:Player_HasTeam(player) == true then 
			return "你已组队，无法单人模式进入！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" 
		end
		
		if lualib:Player_GetIntProp(player,  lua_role_level) < 28 then
			return "您的等级过低，请28级再来！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		if not lualib:VerifyCampCount(player, 4) then
			return "您今天已经进入过3次镇魔殿了！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		if not lualib:Player_IsGoldEnough(player, require_gold, false) then
			return "您的金币不足"..require_gold.."！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		if not lualib:Player_SubGold(player, require_gold, false, "扣金币：镇魔殿传送费", "镇魔殿传送人") then
			return "扣除金币失败！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		local dgn = lualib:Map_CreateDgn("镇魔殿", false, 1800)
		if dgn == "" then
			lualib:Error("副本：镇魔殿创建失败！")
			return
		end
		lualib:Debug("副本：镇魔殿创建成功！")

		lualib:Map_SetCustomVarStr(dgn, "team_guid", "1")
		lualib:Player_SetCustomVarInt(player, "zmdfb_enter_days", lualib:GetAllDays(0))
		lualib:Player_SetCustomVarInt(player, "zmdfb_var_award", 0)
		if lualib:Player_SetDgnTicket(player, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end
		lualib:JoinCamp(player, 4, 0)
		if lualib:Player_EnterDgn(player, "镇魔殿", 52, 65, 15) == false then return "进入地图失败！\n \n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"end
		if lualib:HasSkill(player, "乾坤一掷", false) == false then 
			if not lualib:AddSkill(player, "乾坤一掷") == true then
				lualib:Error("进入镇魔殿学习乾坤一掷技能失败！")
			end
			if not lualib:AddItem(player, "技能石（大）", 1, true, "第一次进入镇魔殿赠送技能石道具", player) == true then
				lualib:Error("进入镇魔殿给予技能石道具失败！")
			end
		end
	end
    return ""
end

function info(npc, player)
	local 	msg = "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	   msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#参与的玩家必须等级大于等于28，并且需要组队，由\n"
	   msg = msg.."　　　　　队长申请进入镇魔殿\n"
           msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_RED#活动介绍：#COLOREND#镇魔殿中一共刷新三波怪物，消灭一波怪物的BOSS后可以领取一个天魔宝匣\n"
           msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
           msg = msg.."#IMAGE<ID:1902700038>##OFFSET<X:0,Y:-1>#<@main *01*「上一页」>　　　　　　　　　　　　　　　#OFFSET<X:0,Y:1>#<@infoa *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>#\n"

	return msg
end


function infoa(npc, player)
	local 	msg = "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_RED#地图限制：#COLOREND#活动时间为30分钟，每个角色每天只能进三次镇魔殿\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_RED#地图掉落：#COLOREND#祝福神水、灵石碎块、封魔印、30到40级的装备包括\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>#　　　　　各种套装\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_RED#天魔宝匣：#COLOREND#使用宝匣可以获得一件30级以上高级装备或者高级物\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>#　　　　　品,有概率获得【极品】、【珍品】武器\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"

	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	return msg
end

function info1(npc, player)
	local 	msg = "#COLORCOLOR_RED#天魔宝匣#COLOREND#：开启天魔宝匣必定获得各种高级装备和物品，并且还有概率获得稀有的【极品】、【珍品】武器\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."　　　#COLORCOLOR_RED#【极品】30级武器#COLOREND#：审判(极)、忘机(极)、囚龙(极)\n"
	msg = msg.."　　　#COLORCOLOR_RED#【极品】35级武器#COLOREND#：十杀(极)、龙渊(极)、天瀑(极)\n"
	msg = msg.."　　　#COLORCOLOR_RED#【珍品】30级武器#COLOREND#：审判(珍)、忘机(珍)、囚龙(珍)\n"
	msg = msg.."　　　#COLORCOLOR_RED#【珍品】35级武器#COLOREND#：十杀(珍)、龙渊(珍)、天瀑(珍)\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
           msg = msg.."　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end

function leave(npc, player)
    return ""
end