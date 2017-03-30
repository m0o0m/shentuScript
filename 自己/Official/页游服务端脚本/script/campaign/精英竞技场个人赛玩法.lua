local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
--require("form/个人竞技场表单")

local shijiankongzhi = {
	--单位：毫秒
	[1]=180000,		--比赛入场开始后多少毫秒正式开始比赛
	[2]=1080000,	--群雄逐鹿比赛开始以后多久结束
	[3]=480000,		--除群雄逐鹿外其它比赛开始以后多久结束
	[4]=600000,		--比赛结束后多少毫秒发放奖励
}

--入场公告
local ruchanggonggao = {
	[4200000] = {lua_jyjjc_timer1,"baominggonggao",600000,6,"精英竞技场报名开始，想要参加的玩家请到龙城NPC竞技场报名官[226,219]处报名，20:00时结束报名！"}, --回调函数，定时器毫秒数，定时器执行次数，公告内容
	[600000] = {lua_jyjjc_timer2,"baominggonggao",30000,20,"精英竞技场将于M分S秒后开始，详情请龙城NPC竞技场报名官[226,219]查看！"},
	[180000] = {lua_jyjjc_timer3,"baominggonggao",10000,17,"精英竞技场将于M分S秒后开始，请玩家做好准备！"},
	[10000] = {lua_jyjjc_timer4,"baominggonggao",1000,9,"精英竞技场还有S秒开始，请玩家准备！"}
}

--结束公告
local jieshugonggao = {
	[600000] = {lua_jyjjc_timer5,"jieshuxuangao",60000,5,"本次精英竞技场冠军：A，亚军：B，季军：C，请在21:20时注意查收邮件领取奖品。"}, --回调函数，定时器毫秒数，定时器执行次数，公告内容
}

--比赛入场触发
local ruchangchhufa = {
	[2] = {"精英竞技场-群雄逐鹿"}, --群雄逐鹿赛入场
	[3] = {"精英竞技场-16进8"}, --个人赛16进8入场
	[4] = {"精英竞技场-8进4"}, --个人赛8进4入场
	[5] = {"精英竞技场-4进2"}, --个人赛4进2入场
	[6] = {"精英竞技场-冠亚军赛","精英竞技场-季军赛"} --个人赛决赛开始
}

--各场比赛的场地数
local changdishu = {
	["精英竞技场-群雄逐鹿"] = 8,
	["精英竞技场-16进8"] = 8,
	["精英竞技场-8进4"] = 4,
	["精英竞技场-4进2"] = 2,
	["精英竞技场-季军赛"] = 1,
	["精英竞技场-冠亚军赛"] = 1,
}

chongfugoggao = 0 --重复公告的类型
chongfugoggao1 = 0 --重复公告的类型
	
------------------开始宣告--------------
function on_start_decl(id, map, times) --活动id，地图标识符，传入秒数
    times = tonumber(times)
	if ruchanggonggao[times] == nil then
		return
	end
	
	chongfugoggao = times
	if times ~= 4200000 then
		if lualib:GetInt("0","jyjjc_jieduan") == 0 then --如果比赛中止停止执行脚本
			return
		end
		
		local Time2Str = lualib:Time2Str("%Y-%m-%d",lualib:GetAllTime()) --获得当前的年月日时间
		local Time = lualib:Str2Time(Time2Str.." 20:10:00") - lualib:GetAllTime() --获得比赛开始时间的秒数
		local msg = ruchanggonggao[times][5]
		local minute = math.floor(Time / 60)
		local second = math.floor(Time - math.floor(Time / 60) * 60)
		msg = string.gsub(msg,"M",minute)
		msg = string.gsub(msg,"S",second)
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", msg, 15000)
		
		if times == 180000 then
			leitairuchang(2) --执行活动入场函数
		end
	else
		if times == 4200000 then
			--创建休息间副本
			local dgn = lualib:Map_CreateDgn("精英竞技场-休息间", true, 4200)
			if dgn == "" then
				lualib:Error("副本：精英竞技场-休息间创建失败！")
				return
			else
				lualib:SetStr("0","jyjjc_xiuxijian",dgn) --比赛地图标识符记录
			end
		
			ltsqingli() --清理个人竞技场数据
			lualib:SetInt("0","jyjjc_jieduan",1) --精英竞技场阶段改变为1，可以进行报名
		end
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", ruchanggonggao[times][5], 15000) --执行人标识符，公告标题，公告内容，超时消失
	end
	
	if not lualib:AddTimer("",ruchanggonggao[times][1], ruchanggonggao[times][3], ruchanggonggao[times][4], ruchanggonggao[times][2]) then
		lualib:Error("精英竞技场报名公告定时器生成失败！")
	end
end

------------------报名宣告--------------
function baominggonggao(guid, timer_id)
	if ruchanggonggao[chongfugoggao] == nil then
		return
	end
	
	if chongfugoggao ~= 4200000 then
		local Time2Str = lualib:Time2Str("%Y-%m-%d",lualib:GetAllTime()) --获得当前的年月日时间
		local Time = lualib:Str2Time(Time2Str.." 20:10:00") - lualib:GetAllTime() --获得比赛开始时间的秒数
		local msg = ruchanggonggao[chongfugoggao][5]
		local minute = math.floor(Time / 60)
		local second = math.floor(Time - math.floor(Time / 60) * 60)
		msg = string.gsub(msg,"M",minute)
		msg = string.gsub(msg,"S",second)
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", msg, 15000)
	else
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", ruchanggonggao[chongfugoggao][5], 15000) --执行人标识符，公告标题，公告内容，超时消失
	end
end

------------------结束宣告--------------
function on_end_decl(id, map, times)
	if lualib:GetInt("0","jyjjc_jieduan") == 0 then --如果比赛中止停止执行脚本
		return
	end
	
	--如果是结束公告定时器
	if jieshugonggao[times] ~= nil then
		chongfugoggao1 = times
		local msg = jieshugonggao[times][5]
		if lualib:GetStr("0","jyjjc_mingzi1") == "" then
			return
		end

		if lualib:GetStr("0","jyjjc_mingzi1") ~= "" then
			msg = string.gsub(msg,"A",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi1"))) --改为个人赛冠军名字
		end
		
		if lualib:GetStr("0","jyjjc_mingzi2") ~= "" then
			msg = string.gsub(msg,"B",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi2"))) --改为个人赛亚军名字
		else
			msg = string.gsub(msg,"亚军：B，","") --改为个人赛亚军名字
		end
		
		if lualib:GetStr("0","jyjjc_mingzi3") ~= "" then
			msg = string.gsub(msg,"C",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi3"))) --改为个人赛季军名字
		else
			msg = string.gsub(msg,"季军：C，","") --改为个人赛季军名字
		end
		
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", msg, 15000)
		if not lualib:AddTimer("",jieshugonggao[times][1], jieshugonggao[times][3], jieshugonggao[times][4], jieshugonggao[times][2]) then
			lualib:Error("精英竞技场结束公告定时器生成失败！")
		end
		return
	end
end

------------------结束宣告1------------------
function jieshuxuangao(guid, timer_id)
	local msg = jieshugonggao[chongfugoggao1][5]
	
	if lualib:GetStr("0","jyjjc_mingzi1") == "" then
		return
	end
	
	if lualib:GetStr("0","jyjjc_mingzi1") ~= "" then
		msg = string.gsub(msg,"A",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi1"))) --改为个人赛冠军名字
	end
	
	if lualib:GetStr("0","jyjjc_mingzi2") ~= "" then
		msg = string.gsub(msg,"B",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi2"))) --改为个人赛亚军名字
	else
		msg = string.gsub(msg,"亚军：B，","") --改为个人赛亚军名字
	end
	
	if lualib:GetStr("0","jyjjc_mingzi3") ~= "" then
		msg = string.gsub(msg,"C",lualib:KeyName(lualib:GetStr("0","jyjjc_mingzi3"))) --改为个人赛季军名字
	else
		msg = string.gsub(msg,"季军：C，","") --改为个人赛季军名字
	end

	lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", msg, 15000)
end

------------------活动面板传送------------------
function Goto(id,player,map)
	 local x = 226
	 local y = 220
	 local r = 3
	 local map_key_name = "龙城"
	local gold = 1500
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要1500金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end

------------------精英竞技场启动入场--------------
function leitairuchang(jieduan)
	local mingzi = ruchangchhufa[jieduan][1]
	local mingzi1 = ""
	
	if ruchangchhufa[jieduan][2] ~= nil then
		mingzi1 = ruchangchhufa[jieduan][2]
	end

	jieduan = tonumber(jieduan)
	lualib:SetInt("0","jyjjc_zhuangkuang",1) --精英竞技场活动状况改为比赛入场
	lualib:SetInt("0","jyjjc_jieduan",jieduan) --改变比赛阶段
	local mingdan = nil
	if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
	else
		mingdan = json.decode(lualib:GetStr("0", "jyjjc_gerenjinji"))
	end
	
	local dgn = ""
	if mingzi == "精英竞技场-群雄逐鹿" and (mingdan == nil or #mingdan < 16 ) then --检测是否有人报名参加比赛
		lualib:SysMsg_SendTopMsg(1, "精英竞技场个人赛由于参赛人数不足16人，比赛自动终止。")
		lualib:SysMsg_SendBroadcastColor("精英竞技场个人赛由于参赛人数不足16人，比赛自动终止。", "", 1, 12)
		lualib:SetInt("0","jyjjc_jieduan",0) --精英竞技场活动阶段改变为0，比赛终止。
		ltsqingli() --清理个人竞技场数据
		return
	end
	
	local fubenshijian = 9999
	local dgn
	
	if mingzi == "精英竞技场-冠亚军赛" then
		dgn = lualib:Map_CreateDgn(mingzi, true, fubenshijian)
		if dgn == "" then
			lualib:Error("副本：精英竞技场场地创建失败！")
			return
		end
		lualib:SetStr("0","jyjjc_ditubiaoshifu1",dgn) --比赛地图标识符记录
	end
	
	if mingzi1 == "精英竞技场-季军赛" then
		dgn = lualib:Map_CreateDgn(mingzi1, true, fubenshijian)
		if dgn == "" then
			lualib:Error("副本：精英竞技场场地创建失败！")
			return
		end
		lualib:SetStr("0","jyjjc_ditubiaoshifu2",dgn) --比赛地图标识符记录
	end
	
	if jieduan < 6 then
		for i=1,changdishu[mingzi] do --创建比赛副本
			dgn = lualib:Map_CreateDgn(mingzi, true, fubenshijian)
			if dgn == "" then
				lualib:Error("副本：精英竞技场场地创建失败！")
				return
			end
			lualib:SetStr("0","jyjjc_ditubiaoshifu"..i,dgn) --比赛地图标识符记录
		end
	end
	
	local msg = ""
	if mingzi == "精英竞技场-群雄逐鹿" then
		msg = "\n                       你的比赛将在3分钟内开始，是否传入比赛场地？\n"
	else
		msg = "\n                       你的比赛将在2分钟内开始，是否传入比赛场地？\n"
	end
	
	msg = msg .. "             进入之后处于无敌定身状态，不可攻击任何玩家，不能使用任何物品！\n"
	msg = msg .. "                     请检查好你的物品以及装备，在时间限制内尽快入场！\n\n"
	msg = msg .. "                                <@leitairuchang1 *01*【是】>            <@guanbi *01*【否】>"
	
	if mingzi == "精英竞技场-冠亚军赛" then
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci1"),msg) --每个参赛玩家弹出对话框
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci2"),msg) --每个参赛玩家弹出对话框
	end
	
	if mingzi1 == "精英竞技场-季军赛" then
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci3"),msg) --每个参赛玩家弹出对话框
		lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci4"),msg) --每个参赛玩家弹出对话
	end
	
	if jieduan < 6 then
		for i=1,#mingdan do
			if lualib:Player_IsOnline(mingdan[i]) == true then
				lualib:NPCTalk(mingdan[i],msg) --每个参赛玩家弹出对话框
			end
		end
	end
	
	if not lualib:AddTimer("",lua_jyjjc_timer6,shijiankongzhi[1],1,"leitaikaishi") then --启动比赛开始定时器，3分钟后执行。
		lualib:Error("精英竞技场比赛开始定时器生成失败2！")
	else
		lualib:Error("精英竞技场比赛开始定时器生成成功2！")
	end
end

function guanbi()
	return ""
end

------------------精英竞技场入场--------------
function leitairuchang1(player,s1)
	if s1 ~= nil then
		player = s1
	end
	
	if lualib:GetInt("0","jyjjc_jieduan") == 0 then --如果比赛中止停止执行脚本
		return "比赛因特殊原因中止，不能再进入！"
	end
	
	if lualib:GetInt("0","jyjjc_zhuangkuang") == 2 then
		return "竞技场已经开始，不能进入。"
	end
	
	if lualib:GetInt("0","jyjjc_zhuangkuang") ~= 1 then
		return "现在还不是进场时间！"
	end
	
	if lualib:GetInt("0","jyjjc_jieduan") == 6 then --检测是否为决赛阶段
		local p1 = 0
		for i=1,4 do
			if lualib:GetStr("0","jyjjc_mingci"..i) == player then --检测是否在决赛阶段参赛名单里
				p1 = 1
				break
			end
		end
		
		if p1 == 0 then
			return "你没有参加比赛的资格！"
		end
	else
		if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") == nil then
			return "你没有参加比赛的资格！"
		end
	end
	
	local Name = ""
	local jinrumap = ""
	local map = ""

	if lualib:KeyName(lualib:GetStr("0","jyjjc_ditubiaoshifu1")) == "精英竞技场-冠亚军赛" then
		if lualib:GetStr("0","jyjjc_mingci1") == player or lualib:GetStr("0","jyjjc_mingci2") == player then
			jinrumap = lualib:GetStr("0","jyjjc_ditubiaoshifu1")
		end
	end
	
	if lualib:KeyName(lualib:GetStr("0","jyjjc_ditubiaoshifu2")) == "精英竞技场-季军赛" then
		if lualib:GetStr("0","jyjjc_mingci3") == player or lualib:GetStr("0","jyjjc_mingci4") == player then
			jinrumap = lualib:GetStr("0","jyjjc_ditubiaoshifu2")
		end
	end

	if lualib:GetInt("0","jyjjc_jieduan") < 6 then --不为决赛阶段！
		--分配场地人数
		local zuishaorenshumap = "" --最少人数地图
		local zuishaorenshu = 0 --最少人数
		for i=1,8 do
			local renshu = 0 --地图当前人数
			local map = lualib:GetStr("0","jyjjc_ditubiaoshifu"..i)
			if lualib:Map_IsDgnExist(map) == true then
				local fanwei = 0
				if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
					fanwei = lualib:Map_GetHeight(map)
				else
					fanwei = lualib:Map_GetWidth(map)
				end
				local zaixianmingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
				
				for k,v in pairs(zaixianmingdan) do
					if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..v.."\"") ~= nil then
						renshu = renshu + 1
					end
				end
				
				if i == 1 then
					zuishaorenshumap = map --记录最少人数地图
					zuishaorenshu = renshu --记录最少人数
				elseif renshu < zuishaorenshu then
					zuishaorenshumap = map --记录最少人数地图
					zuishaorenshu = renshu --记录最少人数
				end
			end
			jinrumap = zuishaorenshumap
		end
	end
	
	local Name = ""
	if jinrumap ~= "" then
		lualib:Player_SetDgnTicket(player,jinrumap) --获得进入比赛场地的资格
		Name = lualib:KeyName(jinrumap) --获取比赛场地的副本名字
		
		if lualib:GetStr(jinrumap,"jyjjc_gerenxinxi1") == "" then
			lualib:SetStr(jinrumap,"jyjjc_gerenxinxi1",player)
		elseif lualib:GetStr(jinrumap,"jyjjc_gerenxinxi2") == "" then
			lualib:SetStr(jinrumap,"jyjjc_gerenxinxi2",player)
		end
	else
		lualib:Error("精英竞技场：进入比赛场地失败！")
		return "进入比赛场地失败！"
	end
	
	if lualib:Player_HasDgnTicket(player, Name) == false then
		return "你没有进入的权利，或者你的比赛还没有开始。"
	end
	
	if string.find(Name,"群雄逐鹿") == nil then
		if lualib:Player_EnterDgn(player, Name, 30, 48, 3) == true then
			return ""
		else
			return "进入比赛场地失败！"
		end
	else
		if lualib:Player_EnterDgn(player, Name, 0, 0, 0) == true then
			return ""
		else
			return "进入比赛场地失败！"
		end
	end
end

------------------精英竞技场比赛开始--------------
function leitaikaishi(guid, timer_id)
	if lualib:GetInt("0","jyjjc_jieduan") == 0 then --如果比赛中止停止执行脚本
		return
	end
	
	lualib:SetInt("0","jyjjc_zhuangkuang",2) --精英竞技场活动状况改为比赛开始
	
	--判断各场地的人数 如果低于或等于晋级人数 则在场玩家直接晋级  并弹等待下场比赛开始的提示框
	for i=1,8 do
		local map = lualib:GetStr("0","jyjjc_ditubiaoshifu"..i)
		if lualib:Map_IsDgnExist(map) == true then
			local fanwei = 0
			if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
				fanwei = lualib:Map_GetHeight(map)
			else
				fanwei = lualib:Map_GetWidth(map)
			end
			local zaixianmingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
			local mingdan = {}
			
			for k,v in pairs(zaixianmingdan) do
				if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..v.."\"") ~= nil then
					mingdan[#mingdan+1] = v
				end
			end
			
			if #mingdan ~= 0 then
				for i2=1,#mingdan do
					lualib:Player_DelBuff(mingdan[i2],"精英竞技场等待") --删除buff
				end
				
				local p1 = 0
				
				if lualib:KeyName(map) == "精英竞技场-冠亚军赛" then
					if #mingdan == 1 then
						local msg =  "\n                               你直接获得了本次比赛的冠军。\n"
						msg = msg .. "                     冠军宝箱将在21：20系统通过邮箱发送给你，到时请注意查收。\n"
						msg = msg .. "\n                                        <@guanbi *01*【关闭窗口】>\n"
							if lualib:GetStr("0","jyjjc_mingci1") == mingdan[1] then
							else
								lualib:SetStr("0","jyjjc_mingci1",mingdan[2]) --记录第1名玩家
								lualib:SetStr("0","jyjjc_mingzi1",lualib:KeyName(mingdan[2])) --记录第1名玩家名字
								lualib:SetStr("0","jyjjc_mingci2",mingdan[1]) --记录第2名玩家
								lualib:SetStr("0","jyjjc_mingzi2",lualib:KeyName(mingdan[1])) --记录第2名玩家名字
							end
						lualib:NPCTalk(mingdan[1],msg)	--提示
						lualib:Map_DestroyDgn(map) --摧毁副本
					end
				elseif lualib:KeyName(map) == "精英竞技场-季军赛" then
					if #mingdan == 1 then
						local msg =  "\n                               你直接获得了本次比赛的季军。\n"
						msg = msg .. "                     季军宝箱将在21：20系统通过邮箱发送给你，到时请注意查收。\n"
						msg = msg .. "\n                                        <@guanbi *01*【关闭窗口】>\n"
						lualib:SetStr("0","jyjjc_mingci3",mingdan[1]) --记录第3名玩家
						lualib:SetStr("0","jyjjc_mingzi3",lualib:KeyName(mingdan[1])) --记录第3名玩家名字
						lualib:NPCTalk(mingdan[1],msg)	--提示
						lualib:Map_DestroyDgn(map) --摧毁副本
					end
				elseif lualib:KeyName(map) == "精英竞技场-4进2" then
					if #mingdan == 1 then
						for i=1,4 do
							if lualib:GetStr("0","jyjjc_mingci"..i) == "" then
								lualib:SetStr("0","jyjjc_mingci"..i,mingdan[1]) --记录第i名玩家
								lualib:SetStr("0","jyjjc_mingzi"..i,lualib:KeyName(mingdan[1])) --记录第i名玩家名字
								break
							end
						end
						local msg =  "\n                                你获得了直接晋级资格。\n"
						msg = msg .. "                 下场比赛将在8分钟后开启，你可以在这段时间内做好备战准备。\n"
						msg = msg .. "\n                                    <@guanbi *01*【关闭窗口】>\n"
						lualib:NPCTalk(mingdan[1],msg)	--提示
						tiqianjinjicaozuo(mingdan[1]) --晋级操作
						lualib:Map_DestroyDgn(map) --摧毁副本
					end
				else
					local p1 = 0
					--根据比赛确定晋级人数
					if lualib:KeyName(map) == "精英竞技场-群雄逐鹿" then
						p1 = 2
					else
						p1 = 1
					end

					if #mingdan <= p1 then
						local msg =  "\n                                你获得了直接晋级资格。\n"
						if lualib:GetInt("0","jyjjc_jieduan") == 2 then
							msg = msg .. "                 下场比赛将在18分钟后开启，你可以在这段时间内做好备战准备。\n"
						else
							msg = msg .. "                 下场比赛将在8分钟后开启，你可以在这段时间内做好备战准备。\n"
						end
						msg = msg .. "\n                                    <@guanbi *01*【关闭窗口】>\n"

						for i1=1,#mingdan do
							lualib:NPCTalk(mingdan[i1],msg)	--直接晋级提示
							tiqianjinjicaozuo(mingdan[i1]) --晋级操作
						end
						lualib:Map_DestroyDgn(map) --摧毁副本
					else
						if lualib:GetInt("0","jyjjc_jieduan") == 2 then
							lualib:SysMsg_SendMapMsg(map, "比赛正式开始！持续18分钟，击败其他玩家可以获得积分，比赛结束后积分最高的两位玩家将获得晋级资格。")
							for i=1,#mingdan do
								lualib:SysMsg_SendCenterMsg(0, "比赛正式开始！持续18分钟，击败其他玩家可以获得积分，比赛结束后积分最高的两位玩家将获得晋级资格。",mingdan[i])
							end
						else
							lualib:SysMsg_SendMapMsg(map, "比赛正式开始！持续8分钟，击败其他玩家可以获得积分，比赛结束后积分最高的玩家将获得晋级资格。")
							for i=1,#mingdan do
								lualib:SysMsg_SendCenterMsg(0, "比赛正式开始！持续8分钟，击败其他玩家可以获得积分，比赛结束后积分最高的两位玩家将获得晋级资格。",mingdan[i])
							end
						end
					end
				end
			end
		end
	end

	--启动比赛结束定时器
	if lualib:GetInt("0","jyjjc_jieduan") == 2 then
		if not lualib:AddTimer("",lua_jyjjc_timer7, shijiankongzhi[2], 1, "leitaijieshu") then
			lualib:Error("精英竞技场结束定时器生成失败1！")
		else
			lualib:Error("精英竞技场结束定时器生成成功1！")
		end
	else
		if not lualib:AddTimer("",lua_jyjjc_timer7, shijiankongzhi[3], 1, "leitaijieshu") then
			lualib:Error("精英竞技场结束定时器生成失败2！")
		else
			lualib:Error("精英竞技场结束定时器生成成功2！")
		end
	end
end

------------------精英竞技场比赛结束--------------
function leitaijieshu(guid, timer_id)
	lualib:SetStr("0","jyjjc_gerenjinji","") --数据清理
	
	if lualib:GetStr("0", "jyjjc_gerentiqianjinji") == "" then
	else
		local tiqianm_table = json.decode(lualib:GetStr("0", "jyjjc_gerentiqianjinji"))
		for k,v in pairs(tiqianm_table) do
			jinjicaozuo(v)
		end
	end

	lualib:SetStr("0","jyjjc_gerentiqianjinji","") --数据清理
	
	local jinjimingdan = {} --晋级名单表
	local weijinjimingdan = {} --未晋级名单表
	local queshaorenshu = 0 --晋级名单缺少的人数
				
	--统计各地图晋级的人数
	for i=1,8 do
		local map = lualib:GetStr("0","jyjjc_ditubiaoshifu"..i)
		if lualib:Map_IsDgnExist(map) == true then
			local fanwei = 0
			if lualib:Map_GetWidth(map) < lualib:Map_GetHeight(map) then
				fanwei = lualib:Map_GetHeight(map)
			else
				fanwei = lualib:Map_GetWidth(map)
			end

			local zaixianmingdan = lualib:Map_GetRegionPlayers(map,0,0,fanwei,false)
			local mingdan = {}
			
			for k,v in pairs(zaixianmingdan) do
				if lualib:HasBuff(v,"精英竞技场观看") == false then
					mingdan[#mingdan+1] = v
				end
			end
			
			if lualib:KeyName(map) == "精英竞技场-4进2" then
				if #mingdan ~= 0 then
					local jinji = {}
					if #mingdan == 1 then
						jinji[1] = mingdan[1]
					elseif #mingdan >= 2 then
						if lualib:GetInt(mingdan[1],"jyjjc_jifen") == lualib:GetInt(mingdan[2],"jyjjc_jifen") then
							if (lualib:Hp(mingdan[1],true) / lualib:Hp(mingdan[1],false) ) < (lualib:Hp(mingdan[2],true) / lualib:Hp(mingdan[2],false) ) then
								jinji[1] = mingdan[2]
								jinji[2] = mingdan[1]
							else
								jinji[1] = mingdan[1]
								jinji[2] = mingdan[2]
							end
						else
							if lualib:GetInt(mingdan[1],"jyjjc_jifen") > lualib:GetInt(mingdan[2],"jyjjc_jifen") then
								jinji[1] = mingdan[1]
								jinji[2] = mingdan[2]
							else
								jinji[1] = mingdan[2]
								jinji[2] = mingdan[1]
							end
						end
						lualib:SysMsg_SendWarnMsg(jinji[2], "你获得了参加季争夺赛的资格！")
						jinjimingdan[#jinjimingdan+1] = jinji[2]
						if lualib:GetStr("0","jyjjc_mingci3") == "" then
							lualib:SetStr("0","jyjjc_mingci3",jinji[2])
							lualib:SetStr("0","jyjjc_mingzi3",lualib:KeyName(jinji[2])) --记录第3名玩家名字
						elseif lualib:GetStr("0","jyjjc_mingci4") == "" then
							lualib:SetStr("0","jyjjc_mingci4",jinji[2])
							lualib:SetStr("0","jyjjc_mingzi4",lualib:KeyName(jinji[2])) --记录第4名玩家名字
						end
					end
					lualib:SysMsg_SendWarnMsg(jinji[1], "你获得了参加冠军争夺赛的资格！")
					jinjimingdan[#jinjimingdan+1] = jinji[1]
					if lualib:GetStr("0","jyjjc_mingci1") == "" then
						lualib:SetStr("0","jyjjc_mingci1",jinji[1])
						lualib:SetStr("0","jyjjc_mingzi1",lualib:KeyName(jinji[1])) --记录第1名玩家名字
					elseif lualib:GetStr("0","jyjjc_mingci2") == "" then
						lualib:SetStr("0","jyjjc_mingci2",jinji[1])
						lualib:SetStr("0","jyjjc_mingzi2",lualib:KeyName(jinji[1])) --记录第2名玩家名字
					end
				end
			elseif lualib:KeyName(map) == "精英竞技场-季军赛" then
				local player = ""
				if #mingdan ~= 0 then
					if #mingdan == 1 then
						player = mingdan[1]
					elseif #mingdan >= 2 then
						if lualib:GetInt(mingdan[1],"jyjjc_jifen") == lualib:GetInt(mingdan[2],"jyjjc_jifen") then
							if (lualib:Hp(mingdan[1],true) / lualib:Hp(mingdan[1],false) ) < (lualib:Hp(mingdan[2],true) / lualib:Hp(mingdan[2],false) ) then
								player = mingdan[2]
							else
								player = mingdan[1]
							end
						else
							if lualib:GetInt(mingdan[1],"jyjjc_jifen") > lualib:GetInt(mingdan[2],"jyjjc_jifen") then
								player = mingdan[1]
							else
								player = mingdan[2]
							end
						end
					end
					
					local msg =  "\n                            恭喜，你获得了本次比赛的季军。\n"
					msg = msg .. "                     季军宝箱将在21：20系统通过邮箱发送给你，到时请注意查收。\n"
					msg = msg .. "\n                                    <@guanbi *01*【关闭窗口】>\n"
					lualib:SetStr("0","jyjjc_mingci3",player) --记录第3名玩家
					lualib:SetStr("0","jyjjc_mingzi3",lualib:KeyName(player)) --记录第1名玩家名字
					lualib:NPCTalk(player,msg)	--提示
				end
			elseif lualib:KeyName(map) == "精英竞技场-冠亚军赛" then
				local player = {}
				if #mingdan ~= 0 then
					if #mingdan > 0 then
						if #mingdan == 1 then
							player[1] = mingdan[1]
						elseif #mingdan >= 2 then
							if lualib:GetInt(mingdan[1],"jyjjc_jifen") == lualib:GetInt(mingdan[2],"jyjjc_jifen") then
								if (lualib:Hp(mingdan[1],true) / lualib:Hp(mingdan[1],false) ) < (lualib:Hp(mingdan[2],true) / lualib:Hp(mingdan[2],false) ) then
									player[1] = mingdan[2]
									player[2] = mingdan[1]
								else
									player[1] = mingdan[1]
									player[2] = mingdan[2]
								end
							else
								if lualib:GetInt(mingdan[1],"jyjjc_jifen") > lualib:GetInt(mingdan[2],"jyjjc_jifen") then
									player[1] = mingdan[1]
									player[2] = mingdan[2]
								else
									player[1] = mingdan[2]
									player[2] = mingdan[1]
								end
							end
						end
					
						if lualib:GetStr("0","jyjjc_mingci1") == player[1] then
						else
							lualib:SetStr("0","jyjjc_mingci1",player[1]) --记录第1名玩家
							lualib:SetStr("0","jyjjc_mingzi1",lualib:KeyName(player[1])) --记录第1名玩家名字
							lualib:SetStr("0","jyjjc_mingci2",player[2]) --记录第2名玩家
							lualib:SetStr("0","jyjjc_mingzi2",lualib:KeyName(player[2])) --记录第2名玩家名字
						end
							
						local msg =  "\n                            恭喜，你获得了本次比赛的冠军。\n"
						msg = msg .. "                     冠军宝箱将在21：20系统通过邮箱发送给你，到时请注意查收。\n"
						msg = msg .. "\n                                    <@guanbi *01*【关闭窗口】>\n"
						lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci1"),msg)	--提示
						msg =  "\n                            恭喜，你获得了本次比赛的亚军。\n"
						msg = msg .. "                     亚军宝箱将在21：20系统通过邮箱发送给你，到时请注意查收。\n"
						msg = msg .. "\n                                    <@guanbi *01*【关闭窗口】>\n"
						lualib:NPCTalk(lualib:GetStr("0","jyjjc_mingci2"),msg)	--提示
					end
				end
			else
				local jinjirenshu = 0
				if lualib:KeyName(map) == "精英竞技场-群雄逐鹿" then
					jinjirenshu = 2
				else
					jinjirenshu = 1
				end
				
				if mingdan == nil then
					--记录缺少晋级的人数，循环结束后根据未晋级玩家排名中取最靠前的玩家晋级
					queshaorenshu = queshaorenshu + jinjirenshu --记录晋级名单缺少的人数
				else
					local paiming = {} --排名table

					if #mingdan > jinjirenshu then --检测地图上人数是否大于需要晋级人数
						paiming[1] = mingdan[1]
						for i=2,#mingdan do
							local i1 = 1
							while i1 ~= nil do
								if i1 > #paiming then
									table.insert(paiming,#paiming+1,mingdan[i]) --插入到排名名单中
									break
								elseif lualib:GetInt(mingdan[i],"jyjjc_jifen") > lualib:GetInt(paiming[i1],"jyjjc_jifen") then --判断积分
									table.insert(paiming,i1,mingdan[i]) --插入到排名名单中
									break
								elseif lualib:GetInt(mingdan[i],"jyjjc_jifen") == lualib:GetInt(paiming[i1],"jyjjc_jifen") then --判断血量
									if (lualib:Hp(mingdan[i],true) / lualib:Hp(mingdan[i],false) ) < (lualib:Hp(paiming[i1],true) / lualib:Hp(paiming[i1],false) ) then
										table.insert(paiming,i1,mingdan[i]) --插入到排名名单中
										break
									end
								end
								i1 = i1 + 1
							end
						end

						for i=1,jinjirenshu do
							jinjimingdan[#jinjimingdan+1] = paiming[i] --该地图排名前2名玩家晋级
						end

						for i=1,jinjirenshu do
							paiming[i] = nil
						end
					elseif #mingdan <= jinjirenshu then
						--剩余一名或两名玩家直接晋级
						for i=1,#mingdan do
							jinjimingdan[#jinjimingdan+1] = mingdan[i]
						end
						queshaorenshu = queshaorenshu + (jinjirenshu - #mingdan)  --记录晋级名单缺少的人数
					end
					
					for k,v in pairs(paiming) do
						weijinjimingdan[#weijinjimingdan+1] = paiming[k] --该地图未晋级的玩家加入到未晋级玩家总名单中
					end
				end
			end
			lualib:Map_DestroyDgn(map) --摧毁副本
		end
	end
	
	--从未晋级的名单中补充人数到晋级名单中
	if queshaorenshu > 0 and #weijinjimingdan > 0 then
		local paiming = {} --排名table
		
		paiming[1] = weijinjimingdan[1]
		for i=2,#weijinjimingdan do
			local i1 = 1
			while i1 ~= nil do
				if i1 > #paiming then
					table.insert(paiming,#paiming+1,weijinjimingdan[i]) --插入到排名名单中
					break
				elseif lualib:GetInt(weijinjimingdan[i],"jyjjc_jifen") > lualib:GetInt(paiming[i1],"jyjjc_jifen") then
					table.insert(paiming,i1,weijinjimingdan[i]) --插入到排名名单中
					break
				elseif lualib:GetInt(weijinjimingdan[i],"jyjjc_jifen") == lualib:GetInt(paiming[i1],"jyjjc_jifen") then
					if (lualib:Hp(weijinjimingdan[i],true) / lualib:Hp(weijinjimingdan[i],false) ) < (lualib:Hp(paiming[i1],true) / lualib:Hp(paiming[i1],false) ) then
						table.insert(paiming,i1,weijinjimingdan[i]) --插入到排名名单中
						break
					end
				end
				i1 = i1 + 1
			end
		end
		
		for i=1,queshaorenshu do
			for k,v in pairs(paiming) do
				jinjimingdan[#jinjimingdan+1] = v --从未晋级的名单中补充人数到晋级名单中
				paiming[k] = nil
				break
			end
		end
		
		weijinjimingdan = paiming --未晋级名单
	end

	for k,v in pairs(jinjimingdan) do
		--晋级玩家弹出提示框
		lualib:SysMsg_SendWarnMsg(v, "恭喜你成功晋级！")
		jinjicaozuo(v) --晋级操作
	end

	for k,v in pairs(weijinjimingdan) do
		--未晋级玩家弹出提示框
		if lualib:Player_IsOnline(weijinjimingdan[k]) == true then
			lualib:NPCTalk(weijinjimingdan[k],"很遗憾，本次比赛你没能晋级，请下次再接再厉。\n\n<@guanbi *01*关闭>")
		end
	end
				
	local jieduan = lualib:GetInt("0","jyjjc_jieduan")+1
	--开启下一场比赛
	if ruchangchhufa[jieduan] ~= nil then
		leitairuchang(jieduan) --执行活动入场函数
	elseif jieduan == 7 then
		if not lualib:AddTimer("",lua_jyjjc_timer8,shijiankongzhi[4],1,"fafangjiangli") then  --启动发放奖励定时器，10分钟后执行。
			lualib:Error("精英竞技场发放奖励定时器生成失败！")
		else
			lualib:Error("精英竞技场发放奖励定时器生成成功！")
		end
	end
end

------------------发放奖励--------------
function fafangjiangli(guid, timer_id)
	if lualib:GetStr("0","jyjjc_mingzi1") ~= "" then
		lualib:Mail("精英竞技场",lualib:GetStr("0","jyjjc_mingzi1"),"祝贺你在本次精英竞技场中获得了冠军，这是给你的奖励，希望你在下次比赛中表现得更好。",0,0,{"竞技场冠军宝箱",1,1})
	end
	
	if lualib:GetStr("0","jyjjc_mingzi2") ~= "" then
		lualib:Mail("精英竞技场",lualib:GetStr("0","jyjjc_mingzi2"),"祝贺你在本次精英竞技场中获得了亚军，这是给你的奖励，希望你在下次比赛中表现得更好。",0,0,{"竞技场亚军宝箱",1,1})
	end
	
	if lualib:GetStr("0","jyjjc_mingzi3") ~= "" then
		lualib:Mail("精英竞技场",lualib:GetStr("0","jyjjc_mingzi3"),"祝贺你在本次精英竞技场中获得了季军，这是给你的奖励，希望你在下次比赛中表现得更好。",0,0,{"竞技场季军宝箱",1,1})
	end
	
	local mingdan = json.decode(lualib:GetStr("0", "jyjjc_geren16"))
	for k,v in pairs(mingdan) do
		if v ~= lualib:GetStr("0","jyjjc_mingzi1") and v ~= lualib:GetStr("0","jyjjc_mingzi2") and v ~= lualib:GetStr("0","jyjjc_mingzi3") then
			lualib:Mail("精英竞技场",v,"祝贺你在本次精英竞技场中进入了16强，这是给你的奖励，希望你在下次比赛中表现得更好。",0,0,{"竞技场16强宝箱",1,1})
		end
	end
	
	ltsqingli() --清理个人竞技场数据
end

------------------晋级后的一些操作--------------
function jinjicaozuo(player)
	if lualib:GetStr("0", "jyjjc_gerenjinji") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_gerenjinji", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_gerenjinji"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_gerenjinji", json.encode(t1_table))
	end
		
	local name = lualib:KeyName(player)
	if lualib:GetStr("0", "jyjjc_geren16") == "" then
		local t2_table = {player}
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	elseif string.find(lualib:GetStr("0", "jyjjc_geren16"),name..",") == nil  then
		local t2_table = json.decode(lualib:GetStr("0", "jyjjc_geren16"))
		t2_table[#t2_table+1] = player
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	end
end

------------------比赛开始后提前晋级的一些操作--------------
function tiqianjinjicaozuo(player)
	if lualib:GetStr("0", "jyjjc_gerentiqianjinji") == "" then
		local t1_table = {player}
		lualib:SetStr("0", "jyjjc_gerentiqianjinji", json.encode(t1_table))
	else
		local t1_table = json.decode(lualib:GetStr("0", "jyjjc_gerentiqianjinji"))
		t1_table[#t1_table+1] = player
		lualib:SetStr("0", "jyjjc_gerentiqianjinji", json.encode(t1_table))
	end

	local name = lualib:KeyName(player)
	if lualib:GetStr("0", "jyjjc_geren16") == "" then
		local t2_table = {player}
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	elseif string.find(lualib:GetStr("0", "jyjjc_geren16"),name..",") == nil  then
		local t2_table = json.decode(lualib:GetStr("0", "jyjjc_geren16"))
		t2_table[#t2_table+1] = player
		lualib:SetStr("0", "jyjjc_geren16", json.encode(t2_table))
	end
end

------------------清理竞技场数据--------------
function ltsqingli()
	lualib:SetInt("0","jyjjc_zhuangkuang",0)
	lualib:SetInt("0","jyjjc_jieduan",0)
	lualib:SetStr("0","jyjjc_ditubiaoshifu1","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu2","")  
	lualib:SetStr("0","jyjjc_ditubiaoshifu3","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu4","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu5","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu6","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu7","")
	lualib:SetStr("0","jyjjc_ditubiaoshifu8","")
	lualib:SetStr("0","jyjjc_mingci1","")
	lualib:SetStr("0","jyjjc_mingci2","")
	lualib:SetStr("0","jyjjc_mingci3","")
	lualib:SetStr("0","jyjjc_mingci4","")
	lualib:SetStr("0","jyjjc_mingzi1","")
	lualib:SetStr("0","jyjjc_mingzi2","")
	lualib:SetStr("0","jyjjc_mingzi3","")
	lualib:SetStr("0","jyjjc_mingzi4","")
	lualib:SetStr("0","jyjjc_gerenjinji","")
	lualib:SetStr("0","jyjjc_geren16","")
	lualib:SetStr("0","jyjjc_gerentiqianjinji","")
end