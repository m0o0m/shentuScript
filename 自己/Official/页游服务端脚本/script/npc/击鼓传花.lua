local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local over_time_tb = {{6900, 5}, {7020, 3}, {7080, 2}, {7140, 1}}
local on_time_tb = {{7320, 3}, {7380, 2}, {7440, 1}}
local mail_tb = {}
function on_create(npc)
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
	lualib:Map_SetCustomVarInt(map, "jigu_time", 0)
	lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 1)
	lualib:AddTimer(npc, 833, 60000, -1, "jigu_timer")
	lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
end

function jigu_timer(npc, timer_id)
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")
	jigu_time = jigu_time + 60
	lualib:Map_SetCustomVarInt(map, "jigu_time", jigu_time)

	for k, v in pairs(over_time_tb) do
		if jigu_time == v[1] then
			lualib:SysMsg_SendBroadcastColor("本总轮【击鼓传花】活动将在"..v[2].."分钟后结束，请注意活动时间！", "", 1, 12)
		end
	end

	if jigu_time == 7200 then
		lualib:SysMsg_SendBroadcastColor("本总轮【击鼓传花】活动已经结束！下一总轮活动将在5分钟后开启，总轮时间为2小时！", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 0)
	end
	
	for k, v in pairs(on_time_tb) do
		if jigu_time == v[1] then
			lualib:SysMsg_SendBroadcastColor("下一总轮【击鼓传花】活动将在"..v[2].."分钟后开启，总轮时间为2小时！", "", 1, 12)
		end
	end
	
	if jigu_time == 7500 then
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动正式开启！大家可到龙城[传花使者]处进行抢花，最终获胜者可获得大量金币！", "", 1, 12)
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "")
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_time", 0)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 1)
		lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
	end
	
end

function jigu_xiaohuodong_timer(map, timer_id)
	local Mailname = "击鼓传花系统"
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	local player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local jigu_xiaohuodong_time = lualib:Map_GetCustomVarInt(map, "jigu_xiaohuodong_time")
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")
	local jigu_zong_jiangjin_2 = 0
	if jigu_zong_jiangjin < 1000000 then
		jigu_zong_jiangjin_2 = jigu_zong_jiangjin / 2
	else
		jigu_zong_jiangjin_2 = jigu_zong_jiangjin * 0.8
	end
	
	if jigu_kaishi_jc == 0 and player_name ~= "" then
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动大奖被玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#幸运获得，奖励为金币#COLORCOLOR_BROWN#["..jigu_zong_jiangjin_2.."]#COLORCOLOR_YELLOW#个。", "", 1, 12)
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动大奖已经通过邮件方式发送到玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#的邮箱中，请注意查收！。", "", 1, 12)
		lualib:Mail(Mailname, player_name, "恭喜您获得击鼓传花活动大奖，奖金规则如下：\n \n奖池总奖金在100万金币以下，奖金为总奖金的50%.\n奖池总奖金在100万金币以上，奖金为总奖金的80%.\n \n本轮活动奖池总奖金为【"..jigu_zong_jiangjin.."个金币】，您的奖励为【"..jigu_zong_jiangjin_2.."个金币】！！！\n \n本轮奖金通过本邮件发送完毕！！！", jigu_zong_jiangjin_2, 0, mail_tb)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:DisableTimer(map, timer_id)
	elseif jigu_kaishi_jc == 0 and player_name == "" then
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动结束，本轮大奖得主空缺。", "", 1, 12)
		lualib:DisableTimer(map, timer_id)
	end
	
	
	if jigu_xiaohuodong_time == 90 then
		lualib:SysMsg_SendBroadcastColor("鲜花当前在玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#手中，30秒后他就可以领取大奖了，目前奖池总奖金为金币#COLORCOLOR_BROWN#["..jigu_zong_jiangjin.."]#COLORCOLOR_YELLOW#个！", "", 1, 12)
	elseif jigu_xiaohuodong_time == 80 then
		lualib:SysMsg_SendBroadcastColor("鲜花当前在玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#手中，20秒后他就可以领取大奖了，目前奖池总奖金为金币#COLORCOLOR_BROWN#["..jigu_zong_jiangjin.."]#COLORCOLOR_YELLOW#个！", "", 1, 12)
	elseif jigu_xiaohuodong_time == 70 then
		lualib:SysMsg_SendBroadcastColor("鲜花当前在玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#手中，10秒后他就可以领取大奖了，目前奖池总奖金为金币#COLORCOLOR_BROWN#["..jigu_zong_jiangjin.."]#COLORCOLOR_YELLOW#个！", "", 1, 12)
	elseif jigu_xiaohuodong_time == 60 and jigu_time < 7140 then
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动大奖被玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#幸运获得，奖励为金币#COLORCOLOR_BROWN#["..jigu_zong_jiangjin_2.."]#COLORCOLOR_YELLOW#个。", "", 1, 12)
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动大奖已经通过邮件方式发送到玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#的邮箱中，请注意查收！。", "", 1, 12)
		lualib:Mail(Mailname, player_name, "恭喜您获得击鼓传花活动大奖，奖金规则如下：\n \n奖池总奖金在100万金币以下，奖金为总奖金的50%.\n奖池总奖金在100万金币以上，奖金为总奖金的80%.\n \n本轮活动奖池总奖金为【"..jigu_zong_jiangjin.."个金币】，您的奖励为【"..jigu_zong_jiangjin_2.."个金币】！！！\n \n本轮奖金通过本邮件发送完毕！！！", jigu_zong_jiangjin_2, 0, mail_tb)
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动结束，下次活动在1分钟后开启！", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc", 0)
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "")
	elseif jigu_xiaohuodong_time == 60 and jigu_time >= 7140 then
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动大奖被玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#幸运获得，奖励为金币#COLORCOLOR_BROWN#["..jigu_zong_jiangjin_2.."]#COLORCOLOR_YELLOW#个。", "", 1, 12)
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动大奖已经通过邮件方式发送到玩家#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#的邮箱中，请注意查收！。", "", 1, 12)
		lualib:Mail(Mailname, player_name, "恭喜您获得击鼓传花活动大奖，奖金规则如下：\n \n奖池总奖金在100万金币以下，奖金为总奖金的50%.\n奖池总奖金在100万金币以上，奖金为总奖金的80%.\n \n本轮活动奖池总奖金为【"..jigu_zong_jiangjin.."个金币】，您的奖励为【"..jigu_zong_jiangjin_2.."个金币】！！！\n \n本轮奖金通过本邮件发送完毕！！！", jigu_zong_jiangjin_2, 0, mail_tb)
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动结束，本总轮活动将在1分钟内结束，请大家注意系统提示！", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc", 0)
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "")
		lualib:DisableTimer(map, timer_id)
	elseif jigu_xiaohuodong_time == 0 then
		lualib:SysMsg_SendBroadcastColor("本轮【击鼓传花】活动正式开启！速度抢花了！！！", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc", 1)
		lualib:DisableTimer(map, timer_id)
	end
	jigu_xiaohuodong_time = jigu_xiaohuodong_time - 1
	lualib:Map_SetCustomVarInt(map, "jigu_xiaohuodong_time", jigu_xiaohuodong_time)
end


function main(npc, player)
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")
    local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>#击鼓传花，斗智斗勇，看看谁是最后的大赢家！是你吗？\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:7>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang *01*「我要抢花」  > #OFFSET<X:0,Y:1>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@zidongqiang *01*「自动抢花」  > #IMAGE<ID:1902700017>#<@guize *01*「活动规则」>\n"	
	return msg
end

function kaishiqiang(npc, player)
	local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	local jigu_player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
    local msg = " #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#当前红花获得者为：#COLOREND#"..jigu_player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#奖池总奖金总数为：[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]个金币#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.." 提示：抢一次需要金币10万！！！\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang1 *01*「我要抢花」>                                  #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
    return msg
end

function kaishiqiang1(npc, player)
	local msg = ""
	local yb = 100000
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")

	local jigu_yuan_player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name) 
	
	
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")

	if jigu_kaishi_jc == 0 then
		return "本轮击鼓抢花活动还没开始或已经结束，请注意系统提示！\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>#<@main *01*「返回首页」>"
	end
	
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	if jigu_kaishi_xiaohuodong_jc == 0 then
		msg = msg.."本轮活动将在一分钟内开启，目前系统关闭中！！！\n \n"
		msg = msg.."请注意系统提示！\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
		return msg
	end

	if player_name == jigu_yuan_player_name then
		lualib:SysMsg_SendWarnMsg(player, "你已经是鲜花拥有者，请不要重复抢夺鲜花！")
		msg = msg.." #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#当前红花获得者为：#COLOREND#"..player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#奖池总奖金总数为：[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]个金币#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.." 提示：抢一次需要金币10万！！！\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang1 *01*「我要抢花」>                                  #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
		return msg
	end
		
	if not lualib:Player_IsGoldEnough(player, yb, false) then
		return "金币不足！请充值后在来抢花！\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end
		
	if not lualib:Player_SubGold(player, yb, false, "扣金币：击鼓抢花", player) then
		return "扣除金币失败！\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
	
	jigu_zong_jiangjin = jigu_zong_jiangjin + yb
	lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", jigu_zong_jiangjin)
	
	lualib:Map_SetCustomVarStr(map, "jigu_player_name", player_name)
	
	lualib:Map_SetCustomVarInt(map, "jigu_xiaohuodong_time", 90)
	lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
	lualib:SetInt(player, "jigu_zdy_time", 0)

		msg = msg.." #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#当前红花获得者为：#COLOREND#"..player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#奖池总奖金总数为：[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]个金币#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.." 提示：抢一次需要金币10万个！！！\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang1 *01*「我要抢花」>                                  #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end

function guize(npc, player)
		local msg = ""
		msg = msg.." #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."1:活动时间为全天，一个总轮为2小时。总轮2小时内不限制活动次数，可以是一次，也可以无数次。\n"
		msg = msg.."3:每抢一次花需要消耗10万金币，并累积计入总奖池。\n"
		msg = msg.."4:玩家持有鲜花后的30秒内无人抢走鲜花，可直接赢得本轮大奖。\n"
		msg = msg.."5:每总轮活动结束，只要最后持有鲜花，就能获得大奖。\n"
        msg = msg.."#OFFSET<X:0,Y:-7>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#COLORCOLOR_RED#奖金规则：奖池总奖金在100万金币以下，获奖者将获得总奖金的50%.奖池总奖金在100万金币以上，获奖者将获得总奖金的80%。#COLOREND#\n"
		msg = msg.."                                              #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main      *01*「返回」>\n"
	return msg
end	

			

function zidongqiang(npc, player)
	local msg = ""
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_player_zidingyi = lualib:Player_GetCustomVarInt(player, "jigu_player_zidingyi")
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name) 
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	local jigu_player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	
		msg = msg.." #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#当前红花获得者为：#COLOREND#"..jigu_player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#奖池总奖金总数为：[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]个金币#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
		msg = msg.." 提示：抢一次需要金币10万！！！\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@zidongqiang2 *01*「开始自动抢花」>   #OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@zanting *01*「暂停自动抢花」>   #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end

function zidongqiang2(npc, player)
	local yb = 100000
	local msg = ""
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	local jigu_player = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	
	if jigu_kaishi_xiaohuodong_jc == 0 then
		msg = msg.."本轮活动将在一分钟内开启，目前系统关闭中！！！\n \n"
		msg = msg.."请注意系统提示！\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
		return msg
	end
	if jigu_kaishi_jc == 0 then
		return "本轮击鼓抢花活动还没开始或已经结束，请注意系统提示！\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
	
	if not lualib:Player_IsGoldEnough(player, yb, false) then
		return "自动抢每次需要金币10万，您金币不足！请充值后在来抢花！\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	end
	
	if jigu_player == "" then
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "数据读取中")
	end

	lualib:SetInt(player, "jigu_zdy_time", 25)
	lualib:AddTimerEx(player, 1001, 1000, -1, "jigu_zidingyi_time", npc)
		return ""
end
	

function jigu_zidingyi_time(player, timer_id, npc)
	local msg = ""
	local yb = 100000
	local map_key_name = "龙城"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	local jigu_player = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local jigu_zdy_time = lualib:GetInt(player, "jigu_zdy_time")
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	if jigu_kaishi_xiaohuodong_jc == 0 then
		msg = msg.."本轮活动将在一分钟内开启，目前系统关闭中！！！\n \n"
		msg = msg.."自动抢花已经自动停止！！！\n \n"
		msg = msg.."请注意系统提示！\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
		lualib:NPCTalkEx(npc, player, msg)
		lualib:DisableTimer(player, 1001)
		return true
	end
	
	if jigu_kaishi_jc == 0 then
		msg = msg.."本总轮活动已经结束，目前系统关闭中！！！\n \n"
		msg = msg.."自动抢花已经自动停止！！！\n \n"
		msg = msg.."请注意系统提示！\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
		lualib:NPCTalkEx(npc, player, msg)
		lualib:DisableTimer(player, 1001)
		return true
	end
	
	if not lualib:Player_IsGoldEnough(player, yb, false) then
		lualib:DisableTimer(player, 1001)
		lualib:NPCTalkEx(npc, player, "自动抢每次需要金币10万，您金币不足了！请充值后在来抢花！\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return true
	end
	
	if player_name ~= jigu_player and jigu_zdy_time < 25 then
		jigu_zdy_time = jigu_zdy_time + 1
		lualib:SetInt(player, "jigu_zdy_time", jigu_zdy_time)
	end
	
	if player_name ~= jigu_player and jigu_zdy_time > 24 then
		if jigu_player ~= "" then
			local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
			
			if not lualib:Player_SubGold(player, yb, false, "扣金币：击鼓抢花", player) then
				lualib:DisableTimer(player, 1001)
				lualib:NPCTalkEx(npc, player, "扣除金币失败！\n \n \n \n \n \n#IMAGE<ID:1902700019>#<@main *01*「返回」>")
				return true
			end
				
			jigu_zong_jiangjin = jigu_zong_jiangjin + yb
			lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", jigu_zong_jiangjin)
			
			lualib:Map_SetCustomVarStr(map, "jigu_player_name", player_name)
			
			lualib:Map_SetCustomVarInt(map, "jigu_xiaohuodong_time", 90)
			lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
			lualib:SetInt(player, "jigu_zdy_time", 0)
			
			msg = msg.." #COLORCOLOR_RED#㊣#COLOREND##COLORCOLOR_GOLD#===================欢迎光临击鼓传花==================#COLOREND##COLORCOLOR_RED#㊣#COLOREND#\n"
			msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
			msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#当前红花获得者为：#COLOREND#"..player_name.."\n"
			msg = msg.."#COLORCOLOR_RED#奖池总奖金总数为：[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]金币#COLOREND#\n"
			msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
			msg = msg.." 提示：抢一次需要金币10万！！！\n \n"
			msg = msg.."#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@zanting *01*「暂停自动抢花」>                          #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end
	end
	return true
end


function zanting(npc, player)
	lualib:DisableTimer(player, 1001)
	return ""
end