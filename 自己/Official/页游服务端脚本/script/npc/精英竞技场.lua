local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("campaign/精英竞技场个人赛玩法")
require("npc/荣耀装备兑换")

function main(npc,player)
	if lualib:GetAllDays(0) - lualib:GetInt(player,"jyjjc_chushihua") >= 1 then
		lualib:SetInt(player,"jyjjc_chushihua",lualib:GetAllDays(0)) --记录开启计时的当前天数
		lualib:SetInt(player,"jyjjc_zuduicanjiacishu",0) --今日组队参加次数初始化
	end
	
	local map = lualib:MapGuid(player)
	lualib:RunClientScript(map, "ItemEffect", "texiao", "100000490#228#220#0#0")
    
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#竞技场#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "这是强者收获荣耀的猎场，这是英雄提升实力的天堂！有人说，在这里你将能最痛快地将对手踩在脚下！你，觉得自己够实力吗？\n"
	msg = msg .. "#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#─────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:30,Y:5>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@zuduilei *01*组队竞技场>"
--	msg = msg .. "#OFFSET<X:100,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-1>#<@gerenlei *01*单人竞技场>\n"
	msg = msg .. "#OFFSET<X:100,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@cansaixinxi *01*查看我的参赛信息>\n"
	msg = msg .. "#OFFSET<X:30,Y:5>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@main1 *01*荣耀兑换>"
--	msg = msg .. "#OFFSET<X:60,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*竞技场介绍>\n"
	msg = msg .. "#OFFSET<X:114,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*竞技场介绍>\n"
	msg = msg .. "#OFFSET<X:30,Y:5>##IMAGE1902700034#<@guanbi *01*离开>\n"
	return msg
end

function guanbi()
	return ""
end

---------------------竞技场介绍---------------------
function leitaijieshao(npc,player)	
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#比赛介绍#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n\n"
	msg = msg .. "#COLORCOLOR_BROWN#1.竞技场分为单人竞技场和组队竞技场。#COLOREND#\n"
	--msg = msg .. "#COLORCOLOR_BROWN#2.个人竞技场比赛可获得一些#COLOREND##COLORCOLOR_RED#稀有道具！#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_BROWN#2.#COLORCOLOR_BROWN#组队竞技场可获得#COLOREND##COLORCOLOR_RED#荣耀值#COLOREND##COLORCOLOR_BROWN#，荣耀值达到一定阶段可在NPC处购买荣耀装备！#COLOREND#\n\n"
	--msg = msg .. "#OFFSET<X:0,Y:5>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@gerenguize *01* 单人竞技场详细规则>"
	msg = msg .. "#OFFSET<X:90,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@zuduiguize *01* 组队竞技场详细规则>\n\n"
	msg = msg .. "#IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01* 返回>"
	return msg
end

---------------------个人比赛详细规则------------------------
function gerenguize(npc,player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#单人竞技场#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
    msg = msg .. "#COLORCOLOR_ORANGE#1.报名时间：#COLOREND#19:00~20:00\n"
    msg = msg .. "#COLORCOLOR_ORANGE#2.(20:00~20:10)判断人数以及匹配：#COLOREND#\n报名人数至少要16人才可开启比赛！\n"
	msg = msg .. "#COLORCOLOR_ORANGE#3.(20:10~20:25)群雄逐鹿战:#COLOREND#\n所有报名玩家平均分配到8个场地,每个场地玩家可攻击除自己外的任何玩家,每战胜一个玩家得10积分,每战败一次扣5分,结束时每个场地积分最高的前2名玩家进入16强。\n"
	msg = msg .. "#COLORCOLOR_ORANGE#4.(20:30~20:58)8强、4强争夺战和半决赛:#COLOREND#\n16强玩家平均分配到8个场地进行对抗,积分规则与群雄逐鹿相同,结束时每个场地的积分高者获胜,成为8强。同样的，依次进行4强争夺战(20:40~20:48)以及半决赛(20:50~20:58)\n"
	msg = msg .. "#COLORCOLOR_ORANGE#5.(21:00~21:10)决赛：#COLOREND#\n半决赛中获胜的两位玩家争夺最终的冠军；半决赛中获败的两名玩家进行季军争夺，最终获胜的为季军。\n"
	msg = msg .. "#COLORCOLOR_ORANGE#6.(21:20~21:30)颁奖时间！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:340,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*返回>"
	return msg
end

---------------------组队比赛详细规则------------------------
function zuduiguize(npc,player)
	local msg = "                         #COLORCOLOR_GREENG#组队竞技场#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#1.报名时间:#COLOREND#12:00~14:00、20:00~22:00\n"
    msg = msg .. "#COLORCOLOR_ORANGE#2.报名限制：#COLOREND#玩家等级必须达到40级以上。\n"
	msg = msg .. "#COLORCOLOR_ORANGE#3.报名方式：#COLOREND#玩家可以选择个人报名和组队报名两种方式，系统根据报名的人数自动进行随机匹配对手！\n"
	msg = msg .. "#COLORCOLOR_ORANGE#4.每场比赛持续15分钟！结束后按照当场表现进行评分！#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_ORANGE#5.增加荣耀值：#COLOREND#根据当场评分增加玩家的荣耀值，荣耀值达到一定阶段后可以去NPC：荣耀装备兑换官处购买荣耀装备！\n"
	msg = msg .. "#OFFSET<X:340,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@leitaijieshao *01*返回>"
	return msg
end

---------------------组队竞技场------------------------
function zuduilei(npc,player)
	local msg = ""
	if lualib:GetStr(player,"jyjjc_zuduiditu") ~= "" then
		local map = lualib:GetStr(player,"jyjjc_zuduiditu")
		if lualib:Map_IsDgnExist(map) == true then
			for i=1,2 do
				local mingdan = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
				local p1 = string.find(mingdan,player)
				if p1 ~= nil then
					if lualib:GetAllTime() - lualib:GetInt(map,"jyjjc_chuangjian") < 300 then
						msg = msg .. "你的比赛已经开始，是否进入？<@zuduiruchang *01*进入比赛>\n"
						break
					else
						lualib:SetStr(player,"jyjjc_zuduiditu","") --清理地图标识符
						return "你上次报名参加的比赛已经开始或过期，你需要继续报名参加吗？\n\n<@zuduilei *01*再次报名>\n<@guanbi *01*关闭>"
					end
				end
			end
		else
			lualib:SetStr(player,"jyjjc_zuduiditu","") --清理地图标识符
			return "你上次报名参加的比赛已经开始或过期，你需要继续报名参加吗？\n\n<@zuduilei *01*再次报名>\n<@guanbi *01*关闭>"
		end
	end
	msg = msg .. "\n\n---------------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:50,Y:5>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@zuduibaoming *01*组队报名>"
	msg = msg .. "#OFFSET<X:100,Y:2>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@zuduigerenbaoming *01*个人报名>\n"
    msg = msg .. "---------------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:150,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@zuduiquxiao *01*取消报名>\n"
    msg = msg .. "---------------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:340,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*返回>"
	return msg
end

---------------------组队报名------------------------
function zuduibaoming(npc,player)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()))
	if (shijian["hour"] >= 10 and shijian["hour"] < 16) or (shijian["hour"] >= 19 and shijian["hour"] < 23) then
	else
		return "现在还不是报名时间，报名时间为每日10:00~16:00、19:00~23:00。\n\n<@guanbi *01*关闭>"
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		return "你已经报过名了！\n\n#IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*关闭>"
	end
	
	if lualib:Player_HasTeam(player) == true and lualib:Player_IsTeamLeader(player) == true then
	else
		return "你不是队长，没有组队报名的权限。\n\n<@guanbi *01*关闭>"
	end
	
	local duiwu = lualib:Player_GetTeamList(player)
	
	if #duiwu > 0 and #duiwu <= 5 then
	else
		return "此比赛最多允许5人参加，队伍内成员不得多于5人。\n\n<@guanbi *01*关闭>"
	end

	local p1 = 0
	local p2 = 0
	local p3 = 0 --队伍人数
	
	for k,v in pairs(duiwu) do	--检测是否所有队员都没有报过名
		if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..v.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..v.."\"") ~= nil then
			return "报名失败！你队伍中的队员："..lualib:KeyName(v).."，已经报过名了。不能让他重复报名。\n\n<@guanbi *01*关闭>"
		end
	end
	
	for k,v in pairs(duiwu) do	--检测是否所有队员都是40级以上
	--[[	if lualib:Player_GetIntProp(v,  lua_role_level) >= 35 and lualib:Player_GetIntProp(v,  lua_role_level) <= 44 then
			p1 = p1 + 1
		elseif lualib:Player_GetIntProp(v,  lua_role_level) >= 45 then
			p2 = p2 + 1
		end]]
		if  lualib:Player_GetIntProp(v,  lua_role_level) >= 40 then
			p2 = p2 + 1
		end
	end
	
	local msg = ""
	local msg1 = "" --队伍的信息
	if p1 == #duiwu then
		msg = "diji"
		p3 = #duiwu
	elseif p2 == #duiwu then
		msg = "gaoji"
		p3 = #duiwu
	else
		return "你的队伍中有人等级不符，必须所有队员等级40级以上才行。\n\n<@guanbi *01*关闭>"
	end
	
	for k,v in pairs(duiwu) do	--所有队员执行
		if lualib:GetInt(v, "jyjjc_zuduicanjiacishu") >= 3 then
			return "队伍成员【"..lualib:KeyName(v).."】今日已参加了3次组队赛，不可再进行报名了！\n\n<@guanbi *01*关闭>"
		end
	end
		
	for k,v in pairs(duiwu) do	--所有队员执行		
		if lualib:GetStr("0", "jyjjc_"..msg.."baoming") == "" then
			local t1_table = {v}
			lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
		else
			local t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."baoming"))
			t1_table[#t1_table+1] = v
			lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
		end
	end

	local t1_table = {}
	local i = 0
	for k,v in pairs(duiwu) do	--所有队员执行
		i = i + 1
		if i == 1 then
			if lualib:GetStr("0", "jyjjc_"..msg..p3.."baoming") == "" then
			else
				t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg..p3.."baoming"))
			end
			t1_table[#t1_table+1] = {}
		end
		t1_table[#t1_table][i] = v
		lualib:SetStr("0", "jyjjc_"..msg..p3.."baoming", json.encode(t1_table))
	end
	
	zuduisaipipei(msg) --进行组队赛匹配
	return "报名成功，系统将会为你自动匹配队伍，请耐心等待比赛开始通知\n\n<@guanbi *01*关闭>"
end

---------------------个人报名------------------------
function zuduigerenbaoming(npc,player)
	local shijian = shijianjiexi(lualib:Time2Str("%Y-%m-%d %H:%M:%S",lualib:GetAllTime()))
	if (shijian["hour"] >= 10 and shijian["hour"] < 16) or (shijian["hour"] >= 19 and shijian["hour"] < 23) then
	else
		return "现在还不是报名时间，报名时间为每日10:00~16:00、19:00~23:00。\n\n<@guanbi *01*关闭>"
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		return "你已经报过名了！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:Player_GetIntProp(player,  lua_role_level) < 40 then
		return "40级以上玩家才可以参加此活动。大人打架，小孩不要搞乱！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:GetInt(player, "jyjjc_zuduicanjiacishu") >= 3 then
		return "每日只可参加3次组队赛，今日次数已用完，请明日再来吧\n\n<@guanbi *01*关闭>"
	end
	
--[[	if lualib:Player_GetIntProp(player,  lua_role_level) >= 35 and lualib:Player_GetIntProp(player,  lua_role_level) <= 44 then
		return zuduigerenbaoming1(player,"diji")
	elseif lualib:Player_GetIntProp(player,  lua_role_level) >= 45 then
		return zuduigerenbaoming1(player,"gaoji")
	end]]
	return zuduigerenbaoming1(player,"gaoji")
end

function zuduigerenbaoming1(player,msg)
	if string.find(lualib:GetStr("0", "jyjjc_"..msg.."baoming"),"\""..player.."\"") ~= nil then
		return "你已经报过名了！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:GetStr("0", "jyjjc_"..msg.."baoming") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."baoming"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_"..msg.."baoming", json.encode(t1_table))
	end
	
	
	if lualib:GetStr("0", "jyjjc_"..msg.."1baoming") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."1baoming"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(t1_table))
	end
	
	zuduisaipipei(msg) --进行组队赛匹配
	return "报名成功，系统将会为你自动匹配队伍，请耐心等待比赛开始通知\n\n<@guanbi *01*关闭>"
end

---------------------组队赛取消报名------------------------
function zuduiquxiao(npc,player)
	local msg = ""
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil then
		msg = "diji"
	elseif string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		msg = "gaoji"
	else
		return "你还没有报过名！\n\n<@guanbi *01*关闭>"
	end
	
	for i=1,5 do
		if lualib:GetStr("0", "jyjjc_"..msg..i.."baoming") ~= "" then			
			if string.find(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"),"\""..player.."\"") ~= nil then
				if i == 1 then
					return "你确定要取消报名吗？\n\n<@zuduiquxiao1 *01*确定>  <@guanbi *01*取消>"
				end
				if string.find(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"),"%[\""..player.."\"") ~= nil then
					return "你是队长，你退出报名后整个队伍将会退出报名，是否确定？\n\n<@zuduiquxiao1 *01*确定>  <@guanbi *01*取消>"
				else
					return "你参加了一个队伍，是否确定退出？\n\n<@zuduiquxiao1 *01*确定>  <@guanbi *01*取消>"
				end
			end
		end
	end
	return "你还没有报过名！\n\n<@guanbi *01*关闭>"
end
		
function zuduiquxiao1(npc,player)
	local msg = ""
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil then
		msg = "diji"
	elseif string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		msg = "gaoji"
	else
		return "你还没有报过名！\n\n<@guanbi *01*关闭>"
	end

	for i=1,5 do
		local baomingzifu = lualib:GetStr("0", "jyjjc_"..msg..i.."baoming")
		if baomingzifu ~= "" then			
			if string.find(baomingzifu,"\""..player.."\"") ~= nil then
				if i == 1 then
					local s,p = string.gsub(baomingzifu,"\""..player.."\",","")
					if p == 0 then
						s,p = string.gsub(baomingzifu,",\""..player.."\"","")
						if p == 0 then
							s = ""
						end
					end
					lualib:SetStr("0", "jyjjc_"..msg..i.."baoming",s)
					shanchubaoming(msg,player)
					return "取消报名成功！\n\n<@guanbi *01*取消>"
				end
				
				local p1 = string.find(baomingzifu,"%[\""..player.."\"")
				if p1 ~= nil and p1 >= 0 then
					local p2table = {0}
					while true do
						local p = string.find(baomingzifu,"%[",p2table[#p2table]+1)
						
						if p == nil or p > p1 then
							break
						else
							p2table[#p2table+1] = p
						end
					end
					local duiwutable = json.decode(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"))
					for k,v in pairs(duiwutable[#p2table-2]) do --所有队员执行报名取消函数
						shanchubaoming(msg,v)
					end
					
					table.remove(duiwutable,#p2table-2)
					lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", json.encode(duiwutable))
					if lualib:GetStr("0", "jyjjc_"..msg..i.."baoming") == "{}" then
						lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", "")
					end
					return "队伍取消报名成功！\n\n<@guanbi *01*取消>"
				else
					shanchubaoming(msg,player)
					
					local p1 = string.find(baomingzifu,"%\""..player.."\"")
					
					if p1 ~= nil and p1 >= 0 then
						local p2table = {0}
						while true do
							local p = string.find(baomingzifu,"%[",p2table[#p2table]+1)
							
							if p == nil or p > p1 then
								break
							else
								p2table[#p2table+1] = p
							end
						end
						local duiwutable = json.decode(lualib:GetStr("0", "jyjjc_"..msg..i.."baoming"))
						local duiwutable1
						local duiwutable2 = duiwutable[#p2table-2]
						
						for k,v in pairs(duiwutable2) do
							if v == player then
								table.remove(duiwutable2,k)
								break
							end
						end
						
						if lualib:GetStr("0", "jyjjc_"..msg..i-1 .."baoming") == "" then
							duiwutable1 = duiwutable2
						else
							duiwutable1 = json.decode(lualib:GetStr("0", "jyjjc_"..msg..i-1 .."baoming"))
							duiwutable1[#duiwutable1+1] = duiwutable2
						end
						lualib:SetStr("0", "jyjjc_"..msg..i-1 .."baoming", json.encode(duiwutable1))
						
						table.remove(duiwutable,#p2table-2)
						lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", json.encode(duiwutable))
						if lualib:GetStr("0", "jyjjc_"..msg..i.."baoming") == "{}" then
							lualib:SetStr("0", "jyjjc_"..msg..i.."baoming", "")
						end
						return "取消报名成功！\n\n<@guanbi *01*取消>"
					end
				end
			end
		end
	end
	return "你还没有报过名！\n\n<@guanbi *01*关闭>"
end


function shanchubaoming(msg,player)
	local baomingzifu = lualib:GetStr("0", "jyjjc_"..msg.."baoming")
	if string.find(baomingzifu,"\""..player.."\"") ~= nil then
		local s,p = string.gsub(baomingzifu,"\""..player.."\",","")
		if p == 0 then
			s,p = string.gsub(baomingzifu,",\""..player.."\"","")
			if p == 0 then
				s = ""
			end
		end
		lualib:SetStr("0", "jyjjc_"..msg.."baoming",s)
	end
end

---------------------组队赛匹配------------------------
function zuduisaipipei(msg)
	while true do --匹配出5人队
		if zuduisaipipei1(msg) == false then
			break
		end
	end
	
	while true do
		if lualib:GetStr("0","jyjjc_"..msg.."5baoming") == "" then
			return
		end
		
		local mingdan = json.decode(lualib:GetStr("0","jyjjc_"..msg.."5baoming"))
		
		if #mingdan >= 2 then
			local dgn = lualib:Map_CreateDgn("精英竞技场-组队赛", true, 930)
			if dgn == "" then
				lualib:Error("副本：精英竞技场-组队赛创建失败！")
				return
			end
			lualib:SetStr(dgn,"jyjjc_dengji",msg)--记录比赛等级
			
			for i=1,2 do
				for k,v in pairs(mingdan[i]) do
					lualib:SetStr(v,"jyjjc_zuduiditu",dgn) --给玩家记录比赛场地的地图标识符
					lualib:Player_SetDgnTicket(v,dgn) --获得进入比赛场地的资格
					shanchubaoming(msg,v) --删除个人报名信息
					lualib:SysMsg_SendMsgDlg(v, 1, "你报名的组队竞技场已经匹配完毕，现在就可以入场，点击确定即可入场！#BUTTON0#确定入场#BUTTONEND##BUTTON0#取消#BUTTONEND#", 100, "tanzuduiruchang", "guanbi")
					lualib:SetStr(dgn,"jyjjc_duiwuxinxi"..i,lualib:GetStr(dgn,"jyjjc_duiwuxinxi"..i)..v..",") --记录参赛的队伍信息
				end
			end
			table.remove(mingdan,1) --删除队伍报名信息
			table.remove(mingdan,1) --删除队伍报名信息
			lualib:SetStr("0","jyjjc_"..msg.."5baoming",json.encode(mingdan))
			if lualib:GetStr("0","jyjjc_"..msg.."5baoming") == "" then
				lualib:SetStr("0","jyjjc_"..msg.."5baoming","")
			end
			return
		end
		return
	end
end

---------------------弹框提示入场选择函数----------------------------
function tanzuduiruchang(dlg_id, player, button_id, param)
	if button_id == 0 then
		zuduiruchang("",player)
	end
end

function zuduisaipipei1(msg)
	local pipei,mingdan1,mingdan2 = {},{},{}
	--第1种匹配，4人队+1人队组成一个5人队
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."4baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan1 > 2 and #mingdan2  > 2 then
		mingdan1 = json.decode(mingdan1)
		mingdan2 = json.decode(mingdan2)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		pipei[#pipei+1] = mingdan2[1]
		
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."4baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."4baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."4baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --匹配出的队伍加入5人队
		return true
	end

	
	--第2种匹配，3人队+2人队组成一个5人队
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."3baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."2baoming")
	if #mingdan1  > 2 and #mingdan2  > 2 then
		mingdan1 = json.decode(mingdan1)
		mingdan2 = json.decode(mingdan2)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		
		for k,v in pairs(mingdan2[1]) do
			pipei[#pipei+1] = v 
		end
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."3baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."3baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."3baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."2baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."2baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."2baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --匹配出的队伍加入5人队
		return true
	end
	
	--第3种匹配，3人队+1人队+1人队组成一个5人队
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."3baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan2  > 2 then
		mingdan2 = json.decode(mingdan2)
	end
	
	if #mingdan1  > 2 and type(mingdan2) == "table" and #mingdan2 >= 2 then
		mingdan1 = json.decode(mingdan1)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		
		pipei[#pipei+1] = mingdan2[1]
		pipei[#pipei+1] = mingdan2[2]
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."3baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."3baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."3baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --匹配出的队伍加入5人队
		return true
	end
				
	--第4种匹配，2人队+2人队+1人队组成一个5人队
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."2baoming")
	
	if #mingdan2  > 2 then
		mingdan2 = json.decode(mingdan2)
	end
	if #mingdan1  > 2 and type(mingdan2) == "table" and #mingdan2 >= 2 then
		mingdan1 = json.decode(mingdan1)
		
		pipei[#pipei+1] = mingdan1[1]
		for i=1,2 do
			for k,v in pairs(mingdan2[i]) do
				pipei[#pipei+1] = v
			end
		end
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."2baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."2baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."2baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --匹配出的队伍加入5人队
		return true
	end
		
	--第5种匹配，2人队+1人队+1人队+1人队组成一个5人队
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."2baoming")
	mingdan2 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan2  > 2 then
		mingdan2 = json.decode(mingdan2)
	end
	
	if #mingdan1  > 2 and type(mingdan2) == "table" and #mingdan2 >= 3 then
		mingdan1 = json.decode(mingdan1)
		for k,v in pairs(mingdan1[1]) do
			pipei[#pipei+1] = v 
		end
		
		pipei[#pipei+1] = mingdan2[1]
		pipei[#pipei+1] = mingdan2[2]
		pipei[#pipei+1] = mingdan2[3]
	
		table.remove(mingdan1,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		table.remove(mingdan2,1)
		lualib:SetStr("0", "jyjjc_"..msg.."2baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."2baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."2baoming", "")
		end
		
		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan2))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --匹配出的队伍加入5人队
		return true
	end
		
	--第6种匹配，1人队+1人队+1人队+1人队+1人队组成一个5人队
	mingdan1 = lualib:GetStr("0","jyjjc_"..msg.."1baoming")
	if #mingdan1 > 2 then
		mingdan1 = json.decode(mingdan1)
	end
	
	if type(mingdan2) == "table" and #mingdan1 >= 5 then
		for i=1,5 do
			pipei[#pipei+1] = mingdan1[i]
		end
	
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)
		table.remove(mingdan1,1)

		lualib:SetStr("0", "jyjjc_"..msg.."1baoming", json.encode(mingdan1))
		if lualib:GetStr("0","jyjjc_"..msg.."1baoming") == "{}" then
			lualib:SetStr("0", "jyjjc_"..msg.."1baoming", "")
		end
	
		jiaru5rendui(msg,pipei) --匹配出的队伍加入5人队
		return true
	end

	return false
end

function jiaru5rendui(msg,pipei)
	if lualib:GetStr("0", "jyjjc_"..msg.."5baoming") == "" then
		local mingdan = {pipei}
		lualib:SetStr("0", "jyjjc_"..msg.."5baoming", json.encode(mingdan))
	else
		local mingdan = json.decode(lualib:GetStr("0", "jyjjc_"..msg.."5baoming"))
		mingdan[#mingdan+1] = pipei
		lualib:SetStr("0", "jyjjc_"..msg.."5baoming", json.encode(mingdan))
	end
end

---------------------组队赛入场------------------------
function zuduiruchang(npc,player)
	local msg = ""
	if lualib:GetStr(player,"jyjjc_zuduiditu") ~= "" then
		local map = lualib:GetStr(player,"jyjjc_zuduiditu")
		if lualib:Map_IsDgnExist(map) == true then
			for i=1,2 do
				local mingdan = lualib:GetStr(map,"jyjjc_duiwuxinxi"..i)
				local p1 = string.find(mingdan,player)
				if p1 ~= nil then
					if lualib:Player_HasDgnTicket(player, "精英竞技场-组队赛") == false then
						msg = "你没有进入的权利，或者你的比赛还没有开始。\n\n<@zuduilei *01*重新报名><@guanbi *01*关闭>"
					end
					
					if lualib:GetAllTime() - lualib:GetInt(map,"jyjjc_chuangjian") < 300 then
						msg = "比赛已经开始超过5分钟，不可进场了！\n\n<@zuduilei *01*重新报名><@guanbi *01*关闭>"
					end
					
					if string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi1"),player) ~= nil then
						if lualib:Player_EnterDgn(player, "精英竞技场-组队赛", 45, 31, 3) == true then
							return ""
						else
							msg = "进入比赛场地失败！\n\n<@zuduilei *01*重新报名><@guanbi *01*关闭>"
						end
					elseif string.find(lualib:GetStr(map,"jyjjc_duiwuxinxi2"),player) ~= nil then
						if lualib:Player_EnterDgn(player, "精英竞技场-组队赛", 17, 64, 3) == true then
							return ""
						else
							msg = "进入比赛场地失败！\n\n<@zuduilei *01*重新报名><@guanbi *01*关闭>"
						end
					end
				end
			end
		else
			lualib:SetStr(player,"jyjjc_zuduiditu","") --清理地图标识符
			return "你上次报名参加的比赛已经开始或过期，你需要继续报名参加吗？\n\n<@zuduilei *01*再次报名>\n<@guanbi *01*关闭>"
		end
	else
		return "你的比赛还未开始！请耐心等待！\n\n<@guanbi *01*关闭>"
	end
	
	lualib:SetStr(player,"jyjjc_zuduiditu","") --清理地图标识符
	return msg
end

---------------------个人竞技场------------------------
function gerenlei(npc,player)
	gerensaixianshi(player,1)
	return ""
end

---------------------显示个人赛信息面板------------------------
function gerensaixianshi(player,yeshu)
	local p1 = 0 --玩家自己是否报名
	local p2 = 0 --玩家所在行号
	local s = {"","","","","","","","","",""} --面板中各栏信息
	local mingdan = {}
	if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
	else
		mingdan = json.decode(lualib:GetStr("0","jyjjc_gerenjinji"))
	end
	local zaixianmingdan = {}
	local i1 = 0

	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil  then
		zaixianmingdan[1] = player
		p1 = 1
	end
	
	for k,v in pairs(mingdan) do
		if lualib:Player_IsOnline(v) == true and v ~= player then--判断是否在线
			zaixianmingdan[#zaixianmingdan+1] = v
		end
	end
	
	local zuidaye = math.ceil(#zaixianmingdan/10)
	if zuidaye == 0 then
		zuidaye = 1
	end

	for i=yeshu*10-9,yeshu*10 do
		i1 = i1 + 1
		if zaixianmingdan[i] == nil then
			break
		end

		if lualib:Player_IsOnline(zaixianmingdan[i]) == true then--判断是否在线
			s[i1] = lualib:KeyName(zaixianmingdan[i]) --获取玩家名字
			s[i1] = s[i1]..","..lualib:Player_GetIntProp(zaixianmingdan[i], lua_role_level) --获取玩家等级
			s[i1] = s[i1]..","..lualib:Player_GetIntProp(zaixianmingdan[i],lua_role_job) --获取玩家职业
			local map = lualib:MapGuid(zaixianmingdan[i])
			if string.find(lualib:KeyName(map),"精英竞技场") ~= nil and string.find(lualib:KeyName(map),"组队赛") == nil and string.find(lualib:KeyName(map),"休息间") == nil then
				s[i1] = s[i1]..",".."1"
			else
				s[i1] = s[i1]..",".."0"
			end
		end
	end
	lualib:ShowFormWithContent(player, "个人竞技场表单","#"..yeshu.."#"..zuidaye.."#"..p1.."#"..s[1].."#"..s[2].."#"..s[3].."#"..s[4].."#"..s[5].."#"..s[6].."#"..s[7].."#"..s[8].."#"..s[9].."#"..s[10])
end

job = {}
job[1] = "战士"
job[2] = "法师"
job[3] = "道士"

---------------------查看我的参赛信息------------------------
function cansaixinxi(npc,player)
	local msg = ""
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
	else
		return "\n\n当前没有你的参赛信息。\n\n\n\n#OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-1>#<@main *01*返回>"
	end

	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		lualib:ShowForm(player, "个人竞技场信息表单")
		return ""
	end
	
	if string.find(lualib:GetStr("0", "jyjjc_dijibaoming"),"\""..player.."\"") ~= nil or string.find(lualib:GetStr("0", "jyjjc_gaojibaoming"),"\""..player.."\"") ~= nil then
		msg = msg .. "个人信息："..lualib:KeyName(player).."    "..lualib:Player_GetIntProp(player,lua_role_level).."级"..job[lualib:Player_GetIntProp(player,lua_role_job)].."\n"
		msg = msg .. "你报名了组队竞技场，对手：等待匹配中...\n\n<@zuduiruchang *01*传送比赛场地>"
	end
	
	return msg
end

---------------------前往休息间------------------------
function xiuxijian(npc,player,i)
	i = tonumber(i)
	if i == 0 then
		lualib:Player_SetDgnTicket(player,lualib:GetStr("0","jyjjc_xiuxijian")) --允许进入休息间
		local Name = lualib:KeyName(lualib:GetStr("0","jyjjc_xiuxijian")) --获得休息间的名字
		
		if lualib:Player_HasDgnTicket(player, Name) == false then
			return "你没有进入的权利。\n\n<@guanbi *01*关闭>"
		end
			
		if lualib:Player_EnterDgn(player, Name, 0, 0, 0) == true then
			return ""
		else
			return "进入休息间失败！\n\n<@guanbi *01*关闭>"
		end
	end
end

-------------------------------------------时间解析--------------------------------------------------------
function shijianjiexi(s1)
	local shijian = {}
	local j1,j2,j3,j4

	j1,j2 = string.find(s1,"-",1)
	shijian["year"] = tonumber(string.sub(s1,1,j1-1))
	j3,j4 = string.find(s1,"-",j2+1)
	shijian["month"] = tonumber(string.sub(s1,j2+1,j3-1))
	j5 = string.find(s1," ",j4)
	shijian["day"] = tonumber(string.sub(s1,j4+1,j5-1))
	
	j1,j2 = string.find(s1,":",j5+1)
	shijian["hour"] = tonumber(string.sub(s1,j5+1,j1-1))
	j3,j4 = string.find(s1,":",j2+1)
	shijian["min"] = tonumber(string.sub(s1,j2+1,j3-1))
	shijian["sec"] = tonumber(string.sub(s1,j4+1,#s1))
	return shijian
end