local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")
require("system/timecount_def")

function guanbi()
	return ""
end

----------------ͼ����ʾ----------------
function lingqujingyan_xianshi(player)
	--���߾���������
	local seconds1 = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local hour1 = math.floor(seconds1 / 3600)
	local minute1 = math.floor((seconds1 - math.floor(seconds1 / 3600) * 3600) / 60)
	
	--���߾���������
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
		ShowTimeCount(player, 0, 1903800038, "��ȡ����")
	else
		ShowTimeCount(player, -1, 1903800038, "��ȡ����")
	end
end

----------------ͼ�걻���----------------
function lingqujingyan(player)
	lingqujingyan_xianshi(player)
	
	--���߾���������
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
	
	local msg = "<@online_exp *01*���߾���>  ����"..day.."��"..hour.."Сʱ"..minute.."����"..second.."������߾���ʱ��\n\n"
	msg = msg .."<@offline_exp *01*���߾���>  ����"..day1.."��"..hour1.."Сʱ"..minute1.."����"..second1.."������߾���ʱ��\n"
	
	lualib:NPCTalk(player, msg)
	return ""
end

---------------------------���߾�����ȡ����--------------------------------------
function offline_exp(player)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#��������ʱ�䣺#COLOREND##COLORCOLOR_ORANGE#����"..day.."��"..hour.."Сʱ"..minute.."����"..second.."������߾���ʱ�䣡#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#������ȡʱ�䣺#COLOREND##COLORCOLOR_ORANGE#�������ȡ"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#Сʱ�����߾��飡#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@exp_award#1 *01*����ͨ��ȡ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@exp_award#2 *01*�������ȡ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@lingqujingyan *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
     msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	return msg
end

---------------------------���߾�����ȡȷ��--------------------------------------
function exp_award(player, index)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")

	if seconds < 3600 then
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>"
	end
	
	index = tonumber(index)
	hours = math.floor(seconds / 3600)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "��ĵȼ�����"..require_level.."�����޷���ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 12 / 1000)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飡ȷ��Ҫ��ȡô��\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] * 6 / 100), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..golds.."#COLOREND#��ң�ȷ��Ҫ��ȡô��\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 10), (hours * 10)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..ingots.."#COLOREND#Ԫ����ȷ��Ҫ��ȡô��\n \n \n \n \n"
	else
		return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_award#"..index.." *01*ȷ��>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*����>"
	return msg
end

--------------------------------���߾�����ȡ�ж�----------------------------------
function add_exp_award( player, index)
	index = tonumber(index)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")

	if seconds < 3600 then
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>"
	end
	
	hours = math.floor(seconds / 3600)
	
	local require_level = 15
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "��ĵȼ�����"..require_level.."�����޷���ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>" end
	
	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 12 / 1000)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飡ȷ��Ҫ��ȡô��\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] * 6 / 100), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..golds.."#COLOREND#��ң�ȷ��Ҫ��ȡô��\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 10), (hours * 10)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..ingots.."#COLOREND#Ԫ����ȷ��Ҫ��ȡô��\n \n \n \n \n"
	else
		return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
	end
	
	if not lualib:Player_IsGoldEnough(player, golds, false) then return "��Ľ�Ҳ���"..golds.."��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*����>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "���Ԫ������"..ingots.."��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*����>" end

	if not lualib:Player_SubGold(player, golds, false, "�۽�ң�����������߾���", "�������") then return "�۳���ҳ���\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*����>" end
	if not lualib:Player_SubIngot(player, ingots, false, "��Ԫ��������������߾���", "�������") then return "�۳�Ԫ������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*����>" end

	lualib:Player_SetCustomVarInt(player, "player_total_offline_times", lualib:Player_GetCustomVarInt(player, "player_total_offline_times") - hours * 3600)

	if not lualib:Player_AddExp(player, exps, "�Ӿ��飺����������߾���", "�������") then return "�����������\n \n \n \n \n \n#IMAGE1902700019#<@offline_exp *01*����>" end
	lingqujingyan_xianshi(player) --��ȡ����ͼ���Ƿ���ʾ
	return "���ѻ��"..exps.."���飡\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
end

--------------------------------���߾�����ȡ����----------------------------------
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
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#��������ʱ�䣺#COLOREND##COLORCOLOR_ORANGE#����"..day.."��"..hour.."Сʱ"..minute.."����"..second.."������߾���ʱ�䣡#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#������ȡʱ�䣺#COLOREND##COLORCOLOR_ORANGE#�������ȡ"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#Сʱ�����߾��飡#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@exp_awardonline#1# *01*����ͨ��ȡ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@exp_awardonline#2 *01*�������ȡ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@lingqujingyan *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

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
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>"
	end
	
	index = tonumber(index)
	hours = math.floor(seconds / 3600)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "��ĵȼ�����"..require_level.."�����޷���ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*����>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 3 / 100)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飡ȷ��Ҫ��ȡô��\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] / 10), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..golds.."#COLOREND#��ң�ȷ��Ҫ��ȡô��\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 5), (hours * 10)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..ingots.."#COLOREND#Ԫ����ȷ��Ҫ��ȡô��\n \n \n \n \n"
	else
		return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_awardonline#"..index.." *01*ȷ��>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*����>"
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
		return "����"..minute.."����"..second.."������߾���ʱ�䣬����#COLORCOLOR_RED#1Сʱ#COLOREND#�޷���ȡ��\n \n \n \n \n \n \n                                                       #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*��������ҳ��>"
	end
	
	index = tonumber(index)
	hours = math.floor(seconds / 3600)

	local require_level = 15
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "��ĵȼ�����"..require_level.."�����޷���ȡ��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingqujingyan *01*����>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 3 / 100)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飡ȷ��Ҫ��ȡô��\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] / 10), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..golds.."#COLOREND#��ң�ȷ��Ҫ��ȡô��\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 5), (hours * 10)
		msg = msg.."�㽫��ȡ#COLORCOLOR_RED#"..exps.."#COLOREND#���飬ͬʱ������#COLORCOLOR_GOLD#"..ingots.."#COLOREND#Ԫ����ȷ��Ҫ��ȡô��\n \n \n \n \n"
	else
		return "ϵͳ����\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
	end
	
	if not lualib:Player_IsGoldEnough(player, golds, false) then return "��Ľ�Ҳ���"..golds.."��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*����>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "���Ԫ������"..ingots.."��\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*����>" end

	if not lualib:Player_SubGold(player, golds, false, "�۽�ң�����������߾���", "�������") then return "�۳���ҳ���\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*����>" end
	if not lualib:Player_SubIngot(player, ingots, false, "��Ԫ��������������߾���", "�������") then return "�۳�Ԫ������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*����>" end

	if not lualib:Player_AddExp(player, exps, "�Ӿ��飺����������߾���", "�������") then return "�����������\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*����>" end
	lualib:Player_SetCustomVarInt(player, "last_award_time", lualib:GetTime())
    lualib:OnGloryTrigger(player, lua_glory_trigger_offline_exp, "", exps, "���߾���", "")
	lingqujingyan_xianshi(player) --��ȡ����ͼ���Ƿ���ʾ
	return "���ѻ��"..exps.."���飡\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@guanbi *01*�ر�>"
end