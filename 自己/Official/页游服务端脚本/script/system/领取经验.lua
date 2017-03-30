local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")
require("system/timecount_def")

function guanbi()
	return ""
end

----------------图标显示----------------
function lingqujingyan_xianshi(player)
	--离线经验计算相关
	local seconds1 = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local hour1 = math.floor(seconds1 / 3600)
	local minute1 = math.floor((seconds1 - math.floor(seconds1 / 3600) * 3600) / 60)
	
	--在线经验计算相关
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")
	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)
	if seconds1 >= 3600 or seconds >= 3600 then
		ShowTimeCount(player, 0, 1903800038, "领取经验")
	else
		ShowTimeCount(player, -1, 1903800038, "领取经验")
	end
end

----------------图标被点击----------------
function lingqujingyan(player)
	lingqujingyan_xianshi(player)
	
	--离线经验计算相关
	local seconds1 = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day1 = math.floor(seconds1 / 3600 / 24)
	local hour1 = math.floor((seconds1 - day1 * 24 * 3600) / 3600)
	local minute1 = math.floor((seconds1 - math.floor(seconds1 / 3600) * 3600) / 60)
	local second1 = math.floor(seconds1 - math.floor(seconds1 / 60) * 60)
	
	
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")

	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)
	
	local msg = "<@online_exp *01*在线经验>  你有"..day.."天"..hour.."小时"..minute.."分钟"..second.."秒的在线经验时间\n\n"
	msg = msg .."<@offline_exp *01*离线经验>  你有"..day1.."天"..hour1.."小时"..minute1.."分钟"..second1.."秒的离线经验时间\n"
	
	lualib:NPCTalk(player, msg)
	return ""
end

---------------------------离线经验领取界面--------------------------------------
function offline_exp(player)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的离线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#㈠总离线时间：#COLOREND##COLORCOLOR_ORANGE#你有"..day.."天"..hour.."小时"..minute.."分钟"..second.."秒的离线经验时间！#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#㈡总领取时间：#COLOREND##COLORCOLOR_ORANGE#你可以领取"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#小时的离线经验！#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
     msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@exp_award#1 *01*【普通领取】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@exp_award#2 *01*【金币领取】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@lingqujingyan *01*【返回首页】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
     msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"

	return msg
end

---------------------------离线经验领取确认--------------------------------------
function exp_award(player, index)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")

	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的离线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>"
	end
	
	index = tonumber(index)
	hours = math.floor(seconds / 3600)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "你的等级不够"..require_level.."级，无法领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 12 / 1000)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验！确定要领取么？\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] * 6 / 100), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..golds.."#COLOREND#金币！确定要领取么？\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 10), (hours * 10)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..ingots.."#COLOREND#元宝！确定要领取么？\n \n \n \n \n"
	else
		return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_award#"..index.." *01*确定>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*返回>"
	return msg
end

--------------------------------离线经验领取判断----------------------------------
function add_exp_award( player, index)
	index = tonumber(index)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")

	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的离线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>"
	end
	
	hours = math.floor(seconds / 3600)
	
	local require_level = 15
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "你的等级不够"..require_level.."级，无法领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>" end
	
	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 12 / 1000)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验！确定要领取么？\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] * 6 / 100), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..golds.."#COLOREND#金币！确定要领取么？\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 10), (hours * 10)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..ingots.."#COLOREND#元宝！确定要领取么？\n \n \n \n \n"
	else
		return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
	end
	
	if not lualib:Player_IsGoldEnough(player, golds, false) then return "你的金币不足"..golds.."！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*返回>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "你的元宝不足"..ingots.."！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*返回>" end

	if not lualib:Player_SubGold(player, golds, false, "扣金币：天机老人离线经验", "天机老人") then return "扣除金币出错！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*返回>" end
	if not lualib:Player_SubIngot(player, ingots, false, "扣元宝：天机老人离线经验", "天机老人") then return "扣除元宝出错！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*返回>" end

	lualib:Player_SetCustomVarInt(player, "player_total_offline_times", lualib:Player_GetCustomVarInt(player, "player_total_offline_times") - hours * 3600)

	if not lualib:Player_AddExp(player, exps, "加经验：天机老人离线经验", "天机老人") then return "奖励经验出错！\n \n \n \n \n \n#IMAGE1902700019#<@offline_exp *01*返回>" end
	lingqujingyan_xianshi(player) --领取经验图标是否显示
	return "你已获得"..exps.."经验！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
end

--------------------------------在线经验领取界面----------------------------------
function online_exp(player)
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")

	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end

	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的在线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#㈠总在线时间：#COLOREND##COLORCOLOR_ORANGE#你有"..day.."天"..hour.."小时"..minute.."分钟"..second.."秒的在线经验时间！#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#㈡总领取时间：#COLOREND##COLORCOLOR_ORANGE#你可以领取"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#小时的在线经验！#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
    msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@exp_awardonline#1# *01*【普通领取】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@exp_awardonline#2 *01*【金币领取】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@lingqujingyan *01*【返回首页】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"

	return msg
end

function exp_awardonline(player, index, hours)
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")

	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end
	
	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的在线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>"
	end
	
	index = tonumber(index)
	hours = math.floor(seconds / 3600)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "你的等级不够"..require_level.."级，无法领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*返回>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 3 / 100)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验！确定要领取么？\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] / 10), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..golds.."#COLOREND#金币！确定要领取么？\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 5), (hours * 10)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..ingots.."#COLOREND#元宝！确定要领取么？\n \n \n \n \n"
	else
		return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_awardonline#"..index.." *01*确定>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*返回>"
	return msg
end


function add_exp_awardonline(player, index)
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")

	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end
	

	if seconds < 3600 then
		local day = math.floor(seconds / 3600 / 24)
		local hour = math.floor((seconds - day * 24 * 3600) / 3600)
		local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
		local second = math.floor(seconds - math.floor(seconds / 60) * 60)
		return "你有"..minute.."分钟"..second.."秒的在线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*「返回首页」>"
	end
	
	index = tonumber(index)
	hours = math.floor(seconds / 3600)

	local require_level = 15
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "你的等级不够"..require_level.."级，无法领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*返回>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 3 / 100)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验！确定要领取么？\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] / 10), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..golds.."#COLOREND#金币！确定要领取么？\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 5), (hours * 10)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..ingots.."#COLOREND#元宝！确定要领取么？\n \n \n \n \n"
	else
		return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
	end
	
	if not lualib:Player_IsGoldEnough(player, golds, false) then return "你的金币不足"..golds.."！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*返回>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "你的元宝不足"..ingots.."！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*返回>" end

	if not lualib:Player_SubGold(player, golds, false, "扣金币：天机老人在线经验", "天机老人") then return "扣除金币出错！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*返回>" end
	if not lualib:Player_SubIngot(player, ingots, false, "扣元宝：天机老人在线经验", "天机老人") then return "扣除元宝出错！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*返回>" end

	if not lualib:Player_AddExp(player, exps, "加经验：天机老人在线经验", "天机老人") then return "奖励经验出错！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*返回>" end
	lualib:Player_SetCustomVarInt(player, "last_award_time", lualib:GetTime())
    lualib:OnGloryTrigger(player, lua_glory_trigger_offline_exp, "", exps, "在线经验", "")
	lingqujingyan_xianshi(player) --领取经验图标是否显示
	return "你已获得"..exps.."经验！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
end