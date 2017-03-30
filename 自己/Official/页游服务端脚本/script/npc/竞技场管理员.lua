zhandou = {
					{
						{"1v1Name1", "1v1guid1"},
						{"1v1Name2", "1v1guid2"},
						{"1v1Name3", "1v1guid3"},
						{"1v1Name4", "1v1guid4"},
						{"1v1Name5", "1v1guid5"},
					},
					{
						{"5v5Name1", "5v5guid1"},
						{"5v5Name2", "5v5guid2"},
						{"5v5Name3", "5v5guid3"},
						{"5v5Name4", "5v5guid4"},
						{"5v5Name5", "5v5guid5"},
					},
					{
						{"10v10Name1", "10v10guid1"},
						{"10v10Name2", "10v10guid2"},
						{"10v10Name3", "10v10guid3"},
						{"10v10Name4", "10v10guid4"},
						{"10v10Name5", "10v10guid5"},
					},
				}	

local talk_t = {"战斗使人狂热，使人痴迷，如果你想挑战别人，可以来我这儿。", "如果你对自己的战斗力有信心，可以用金币发起全服挑战。", "一个懦弱的人是无法承受自己的损失的，只有强者才能越战越勇。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end				

	function main(npc, player)
	local msg = "     我是竞技场管理员，你可以在这里发起战斗申请，赢得战斗将能获得对方押注的金币！！！\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@shenqing *01*发起挑战>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700042>##OFFSET<X:0,Y:-2>#<@jieshou *01*对战列表>\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE<ID:1902700017>#<@info *01*活动介绍>\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
	msg = msg.."                                                 #OFFSET<X:0,Y:4>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
	return msg
end


function info(npc, player)
	local msg = [[1. 发起竞技场挑战需要押注10万金币以上。
	2. 发起挑战后全服都可以接受挑战，接受者同样需要缴纳与发起者押注的相同金币数，若接受时对方不在线，则无法接受竞技挑战。
	3. 已经发起竞技或接受竞技的不能同时参加另外一场竞技。
	4. 接受竞技后双方5分钟之内必须进入休息室，场内有5分钟的准备时间。
	5. 战斗开始后系统会不断进行胜负判断，胜利的请留在场内等待胜负判断，胜利者将获得双方押注金币的90%。
	6. 1v1战斗超过10分钟，场内每10秒将减少HP与MP，避免战斗过长。
	7. 战斗申请一个小时内无人挑战，系统将返回发起者全数金币。
	]]
	msg = msg.."\n \n                                                 #OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end


function qingkong(npc, player)
	for i = 1 ,table.getn(zhandou) do
		for j = 1 ,table.getn(zhandou[i]) do
			lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
			lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
		end
	end
	return "清除成功" 
end
	
function leave(npc,player)
	return ""
end


---1vs1战场申请
function shenqing(npc, player)
	local msg = "请选择你所要发起的挑战类型！\n \n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@zhandouleix#1 *01* 1 vs 1 模式>\n"--        #IMAGE<ID:1902700017>#<@zhandouleix#2 *01* 5VS5模式>        #IMAGE<ID:1902700017>#<@zhandouleix#3 *01* 10VS10模式>\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	
	return msg
end

function zhandouleix(npc, player, types)
	local msg = "发起挑战需要缴纳10万金币以上的彩金，挑战发起来，等待其他接受，你确定发起挑战吗？\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@queren#"..types.." *01*确定发起挑战>\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end


function queren(npc, player, types)
	lualib:SysMsg_SendInputDlg(player, 3, "请输入您要押注的彩金", 60, 7, "lurutiaozhan", npc.."#"..types)
	return ""
end



---战斗申请
function lurutiaozhan(id, player, yb, param)
	local params = lualib:StrSplit(param, "#")--分割参数为一个table
	local npc = params[1]
	local types = tonumber(params[2])
	local yb = tonumber(yb)
	local a_Name = lualib:Name(player)
	local msg = ""
	
	--1v1申请
	if types == 1 then
		if yb == nil or  yb < 100000 then
			msg = "你输入不正确或者输入的值小于10万，请重新输入！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		if lualib:Player_IsGoldEnough(player, yb, false) == false then
			msg = "金币不足，你输入的金币为"..yb.."，请重新输入！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "你已经报过名！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		
		local shu = 0
		for i =1 ,table.getn(zhandou[types]) do
			local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
			local liebiao1 = lualib:StrSplit(bianl, "#")
			--print(liebiao1[1])
			if liebiao1[1] == "" then
				if not lualib:Player_SubGold(player, yb, false, "1v1报名", "1v1报名") then 
					return "你的金币不足。\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				end
				lualib:IO_SetCustomVarStr(zhandou[types][i][1], a_Name.."#"..yb)
				lualib:IO_SetCustomVarStr(zhandou[types][i][2], player.."#"..yb)
				--lualib:IO_SetCustomVarStr(zhandou[i][2], "")
				lualib:AddTimerEx(npc, 10 + i, 3600000, 1, "yanshifanhuan", types.."#"..zhandou[types][i][1].."#"..zhandou[types][i][2])
				break 
			else
				shu = shu + 1
			end
		end	
		--print(shu)
		if shu == 5 then
			msg = "报名列表已满，请稍微再来！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	--5v5申请
	elseif types == 2 then
		if yb == nil or  yb < 100000 then
			msg = "你输入不正确或者输入的值小于10万，请重新输入！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		if lualib:Player_IsGoldEnough(player, yb, false) == false then
			msg = "金币不足，你输入的金币为"..yb.."，请重新输入！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		
		local zudui_table = lualib:Player_GetTeamList(player)
		if zudui_table ~= nil then
			local zudui_v = table.getn(zudui_table)
			if Player_IsTeamLeader(player) == true then
				if zudui_v ~= 5 then
					msg = "你的队伍成员不是5人，不能报名。\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
					lualib:NPCTalkEx(npc, player, msg)
					return ""
				end
			else
				msg = "你不是队长，不能申请战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				lualib:NPCTalkEx(npc, player, msg)
				return ""
			end
		else
			msg = "5V5模式必须组好5人才能申请！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "你已经报过名！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		
		local name_tabel5 = ""
		local guid_tabel5 = ""
		for i = 1, table.getn(zudui_table) do
			local nm = lualib:Name(zudui_table[i])
			name_tabel5 = name_tabel5..nm.."#"
			guid_tabel5 = guid_tabel5..zudui_table[i].."#"
		end
		name_tabel5 = name_tabel5..yb
		guid_tabel5 = guid_tabel5..yb
		--print("5v5模式："..name_tabel5)
		--print("5v5模式："..guid_tabel5)
		
		local shu = 0
		for i =1 ,table.getn(zhandou[types]) do
			local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
			local liebiao1 = lualib:StrSplit(bianl, "#")
			--print(liebiao1[1])
			if liebiao1[1] == "" then
				if not lualib:Player_SubGold(player, yb, false, "5v5报名", "5v5报名") then 
					return "你的金币不足。\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				end
				lualib:IO_SetCustomVarStr(zhandou[types][i][1], name_tabel5)
				lualib:IO_SetCustomVarStr(zhandou[types][i][2], name_tabel5)
				--lualib:IO_SetCustomVarStr(zhandou[i][2], "")
				lualib:AddTimerEx(npc, 20 + i, 1000000, 1, "yanshifanhuan", types.."#"..zhandou[types][i][1].."#"..zhandou[types][i][2])
				break 
			else
				shu = shu + 1
			end
		end	
		--print(shu)
		if shu == 5 then
			msg = "报名列表已满，请稍微再来！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	--10v10申请
	elseif types == 3 then
				if yb == nil or  yb < 100000 then
			msg = "你输入不正确或者输入的值小于10万，请重新输入！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	
		if lualib:Player_IsGoldEnough(player, yb, false) == false then
			msg = "金币不足，你输入的金币为"..yb.."，请重新输入！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		
		local zudui_table = lualib:Player_GetTeamList(player)
		if zudui_table ~= nil then
			local zudui_v = table.getn(zudui_table)
			if Player_IsTeamLeader(player) == true then
				if zudui_v ~= 5 then
					msg = "你的队伍成员不是5人，不能报名。\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
					lualib:NPCTalkEx(npc, player, msg)
					return ""
				end
			else
				msg = "你不是队长，不能申请战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				lualib:NPCTalkEx(npc, player, msg)
				return ""
			end
		else
			msg = "10V10模式必须组好10人才能申请！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
		
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "你已经报过名！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		
		local name_tabel5 = ""
		local guid_tabel5 = ""
		for i = 1, table.getn(zudui_table) do
			local nm = lualib:Name(zudui_table[i])
			name_tabel5 = name_tabel5..nm.."#"
			guid_tabel5 = guid_tabel5..zudui_table[i].."#"
		end
		name_tabel5 = name_tabel5..yb
		guid_tabel5 = guid_tabel5..yb
		--print("10v10模式："..name_tabel5)
		--print("10v10模式："..guid_tabel5)
		
		local shu = 0
		for i =1 ,table.getn(zhandou[types]) do
			local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
			local liebiao1 = lualib:StrSplit(bianl, "#")
			--print(liebiao1[1])
			if liebiao1[1] == "" then
				if not lualib:Player_SubGold(player, yb, false, "10v10报名", "10v10报名") then 
					return "你的金币不足。\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
				end
				lualib:IO_SetCustomVarStr(zhandou[types][i][1], name_tabel5)
				lualib:IO_SetCustomVarStr(zhandou[types][i][2], name_tabel5)
				--lualib:IO_SetCustomVarStr(zhandou[i][2], "")
				lualib:AddTimerEx(npc, 30 + i, 1000000, 1, "yanshifanhuan", types.."#"..zhandou[types][i][1].."#"..zhandou[types][i][2])
				break 
			else
				shu = shu + 1
			end
		end	
		--print(shu)
		if shu == 5 then
			msg = "报名列表已满，请稍微再来！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			lualib:NPCTalkEx(npc, player, msg)
			return ""
		end
	end
	
	if types == 1 then 
		msg = "您的战斗竞技申请成功！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		lualib:SysMsg_SendCenterMsg(1, "【"..a_Name.."】在竞技场管理员押注 ["..yb.."金币] 发起1VS1战斗申请，挑战全服！","")
		lualib:SysMsg_SendBoardMsg("0", "竞技场管理员", "【"..a_Name.."】在竞技场管理员押注 ["..yb.."金币] 发起1VS1战斗申请，挑战全服！", 15000)
		lualib:NPCTalkEx(npc, player, msg)
	else
		msg = "您的战斗竞技申请成功！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		lualib:NPCTalkEx(npc, player, msg)
	end
		return ""
end

---接受战斗
function jieshou(npc, player)
	msg = "请选择你所要接受的挑战类型！\n1. 你可以选择战斗进行挑战。\n2. 若你已经参与了竞技，请选择与之相关的战斗进入战斗！\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@yingzhanleix#1 *01* 1 vs 1 模式>\n"--       #IMAGE<ID:1902700017>#<@yingzhanleix#2 *01* 5VS5模式>        #IMAGE<ID:1902700017>#<@yingzhanleix#3 *01* 10VS10模式>\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	
	return msg
end


---信息列表
function yingzhanleix(npc, player, types)
	local types = tonumber(types)
	local liebiaoshumu = 0
	local msg = ""
	for i =1 ,table.getn(zhandou[types]) do
		local bianl = lualib:IO_GetCustomVarStr(zhandou[types][i][2])
		local liebiao1 = lualib:StrSplit(bianl, "#")
		if liebiao1[1] == "" or liebiao1[1] == nil then
			liebiaoshumu = liebiaoshumu + 1
		end
	end
	
	local linshi = 0
	local linshi_b = {}
	if liebiaoshumu == table.getn(zhandou[types]) then
		msg = "当前没有人申请竞技！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		return msg
	else 
		for i = 1, table.getn(zhandou[types]) do
			local jingjixinxi1 = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			if jingjixinxi1 ~= nil and jingjixinxi1 ~= "" then
				linshi = linshi + 1
				local jingjiliebiao = lualib:StrSplit(jingjixinxi1, "#")
				linshi_b[linshi] = jingjiliebiao
			end
		end
	end
	
	msg = "以下就是申请的战斗！\n1. 你可以选择战斗进行挑战。\n2. 若你已经参与了竞技，请选择与之相关的战斗进入战斗！\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	if types == 1 then
		for i = 1, table.getn(linshi_b) do
			--print(linshi_b[i][1])
			if linshi_b[i][3] ~= nil then
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][2].." *01*" ..linshi_b[i][1].."--押注"..linshi_b[i][2].."金币（已被挑战）>"
				msg = msg.."\n"
			else
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][2].." *01*" ..linshi_b[i][1].."--押注"..linshi_b[i][2].."金币>"
				msg = msg.."\n"
			end
		end	
	elseif types == 2 then
		for i = 1, table.getn(linshi_b) do
			--print(linshi_b[i][1])
			if linshi_b[i][7] ~= nil then
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][6].." *01*" ..linshi_b[i][1].."--押注"..linshi_b[i][6].."金币（已被挑战）>"
				msg = msg.."\n"
			else
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][6].." *01*" ..linshi_b[i][1].."--押注"..linshi_b[i][6].."金币>"
				msg = msg.."\n"
			end
		end	
	elseif types == 3 then
		for i = 1, table.getn(linshi_b) do
			--print(linshi_b[i][1])
			if linshi_b[i][7] ~= nil then
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][11].." *01*" ..linshi_b[i][1].."--押注"..linshi_b[i][11].."金币（已被挑战）>"
				msg = msg.."\n"
			else
				msg = msg.."<@xinxi1#"..types.."#"..linshi_b[i][1].."#"..linshi_b[i][11].." *01*" ..linshi_b[i][1].."--押注"..linshi_b[i][11].."金币>"
				msg = msg.."\n"
			end
		end	
	end
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	msg = msg.."                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
	return msg
end



---战斗详细信息
function xinxi1(npc,player,types, name, yb)
	local types = tonumber(types)
	local suozai = 1
	local msg = ""
	if types == 1 then
		for i = 1, table.getn(zhandou[types]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if name == chazhaoname[1] then
				if chazhaoname[3] ~= nil and chazhaoname[3] ~= "" then
					local p_name = lualib:Name(player)
					if p_name ~= chazhaoname[3] and p_name ~= chazhaoname[1] then
						return "战斗已经进行，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
					end
				end
				break
			else
				suozai = suozai + 1
			end
		end
		local guid = lualib:Name2Guid(name)
		--print(guid)
		if guid == "" then
			return "目标不在线，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		if suozai > 5 then 
			msg = "当前没有人发起挑战！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			return msg
		else
			local zhandoujieshao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
			local zhandoujieshao2 = string.split(zhandoujieshao, "#")
			if zhandoujieshao2[3] ~= nil then
				msg = "竞技已经开始，请相关尽快进入场内！\n \n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@jinru#"..zhandou[types][suozai][2].." *01*进入场内>\n"
				return msg
			else
				msg = "【"..zhandoujieshao2[1].."】发起挑战，押注的彩金为"..zhandoujieshao2[2].."，迎战需要缴纳发起者同样的彩金，赢得战斗的话会获得双方押注的彩金总和的90%，你确定迎战吗？\n \n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@kaishi#"..types.."#"..name.."#"..suozai.."#"..yb.." *01*确定挑战>\n \n"
				msg = msg.."\n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
				return msg
			end
		end	
	elseif types == 2 then
		for i = 1, table.getn(zhandou[types]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if name == chazhaoname[1] then
				if chazhaoname[7] ~= nil and chazhaoname[7] ~= "" then
					local p_name = lualib:Name(player)
					if p_name ~= chazhaoname[7] and p_name ~= chazhaoname[1] then
						return "战斗已经进行，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
					end
				end
				break
			else
				suozai = suozai + 1
			end
		end
		local guid = lualib:Name2Guid(name)
		--print(guid)
		if guid == "" then
			return "目标不在线，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		if suozai > 5 then 
			msg = "当前没有人发起挑战！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			return msg
		else
			local zhandoujieshao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
			local zhandoujieshao2 = string.split(zhandoujieshao, "#")
			if zhandoujieshao2[7] ~= nil then
				msg = "竞技已经开始，请相关尽快进入场内！\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@jinru#"..zhandou[types][suozai][2].." *01*进入场内>\n"
				return msg
			else
				msg = "【"..zhandoujieshao2[1].."】发起挑战，押注的彩金为"..zhandoujieshao2[7].."，迎战需要缴纳发起者同样的彩金，赢得战斗的话会获得双方押注的彩金总和的90%，你确定迎战吗？\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@kaishi#"..types.."#"..name.."#"..suozai.."#"..yb.." *01*确定挑战>\n"
				msg = msg.."\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
				return msg
			end
		end	
	elseif types == 3 then
		for i = 1, table.getn(zhandou[types]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][i][1])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if name == chazhaoname[1] then
				if chazhaoname[11] ~= nil and chazhaoname[11] ~= "" then
					local p_name = lualib:Name(player)
					if p_name ~= chazhaoname[11] and p_name ~= chazhaoname[1] then
						return "战斗已经进行，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
					end
				end
				break
			else
				suozai = suozai + 1
			end
		end
		local guid = lualib:Name2Guid(name)
		--print(guid)
		if guid == "" then
			return "目标不在线，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		
		if suozai > 5 then 
			msg = "当前没有人发起挑战！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			return msg
		else
			local zhandoujieshao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
			local zhandoujieshao2 = string.split(zhandoujieshao, "#")
			if zhandoujieshao2[11] ~= nil then
				msg = "竞技已经开始，请相关尽快进入场内！\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#>#<@jinru#"..zhandou[types][suozai][2].." *01*进入场内>\n"
				return msg
			else
				msg = "【"..zhandoujieshao2[1].."】发起挑战，押注的彩金为"..zhandoujieshao2[11].."，迎战需要缴纳发起者同样的彩金，赢得战斗的话会获得双方押注的彩金总和的90%，你确定迎战吗？\n"
				msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@kaishi#"..types.."#"..name.."#"..suozai.."#"..yb.." *01*确定挑战>\n"
				msg = msg.."\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>\n"
				return msg
			end
		end	
	end
end

--迎战
function kaishi(npc, player, types, name, suozai, yb)
	local types = tonumber(types)
	local suozai = tonumber(suozai)
	local b_name = lualib:Name(player)
	local msg = ""
	
	---1v1迎战
	if types == 1 then
		for i = 1, table.getn(zhandou[types][suozai]) do
			local chazhao = lualib:IO_GetCustomVarStr(zhandou[types][suozai][i])
			local chazhaoname = lualib:StrSplit(chazhao, "#")
			if chazhaoname[3] ~= nil and chazhaoname[3] ~= "" then
				return "战斗已经进行，请选择其他战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
			end
		end
		
		local a = lualib:IO_GetCustomVarStr(zhandou[types][suozai][1])
		local b = lualib:IO_GetCustomVarStr(zhandou[types][suozai][2])
		for i =1 ,table.getn(zhandou) do
			for j =1, table.getn(zhandou[i]) do
				local liebiao1 = lualib:StrSplit(lualib:IO_GetCustomVarStr(zhandou[i][j][2]), "#")
				for l =1, table.getn(liebiao1) do
					if liebiao1[l] == player then
						msg = "你已经报过名或者已经协助其他参与战斗！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
						lualib:NPCTalkEx(npc, player, msg)
						return ""
					end
				end
			end
		end
		local a = a.."#"..b_name
		local b = b.."#"..player
		local yb = tonumber(yb)
		if not lualib:Player_IsGoldEnough(player, yb, false) then
			return "你的金币不足"..yb.."，不能挑战！\n \n \n \n \n \n \n                                               #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
		end
		if lualib:Player_SubGold(player, yb, false, "1v1挑战", player) == false then
			return "扣除金币失败"
		end
		
		lualib:IO_SetCustomVarStr(zhandou[types][suozai][1], a)
		lualib:IO_SetCustomVarStr(zhandou[types][suozai][2], b)
	--向发起发送邮件
		local tips_player = lualib:StrSplit(a, "#")
		lualib:SendMail("竞技场管理员",tips_player[1], tips_player[3].."接受了您发起的战斗竞技，请尽快回龙场寻找竞技场管理员入场！")
		lualib:SysMsg_SendCenterMsg(1, "【"..b_name.."】在竞技场管理员接受【"..tips_player[1].."】1VS1战斗竞技！","")
		lualib:SysMsg_SendBoardMsg("0", "竞技场管理员", "【"..b_name.."】在竞技场管理员接受【"..tips_player[1].."】1VS1战斗竞技！", 15000)
	---创建副本	
		dgn1 = lualib:Map_CreateDgn("休息室", true, 720)
		if dgn1 == "" then
			lualib:Error("副本：休息室创建失败！")
		else
			lualib:SetStr(dgn1, "shit", b)
			lualib:SetStr(npc, b, dgn1)
			--lualib:IO_SetCustomVarStr(dgn1, b)
			lualib:Map_GenNpc(dgn1, "巫山城药材商",31, 44, 1, 4)
			lualib:Error("副本：休息室创建成功！")
		end
		return "成功挑战，重新点击NPC进入场地，场内可以买药品等消耗品！ \n \n#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@jinru#"..zhandou[types][suozai][2].." *01*进入场内>\n \n#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「关闭」>\n"
	elseif types == 2 then
		return "5v5暂未开放"
	elseif types == 3 then
		return "10v10暂未开放"
	end
end


---延迟返还
function yanshifanhuan(npc, id, types, v_name, v_guid)
	local a = lualib:StrSplit(lualib:IO_GetCustomVarStr(v_name), "#")
	local b = lualib:StrSplit(lualib:IO_GetCustomVarStr(v_guid), "#")
	local types = tonumber(types)
	if types == 1 then
		if a[3] == nil and b[3] == nil then
			lualib:Mail("竞技场管理员", a[1], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(a[2]), 0, {})
		end
	elseif types == 2 then
		if a[7] == nil and b[7] == nil then
			lualib:Mail("竞技场管理员", a[1], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(a[6]), 0, {})
		end
	elseif types == 3 then 
		if a[12] == nil and b[12] == nil then
			lualib:Mail("竞技场管理员", a[1], "你所申请的竞技挑战已过期，系统返还您的金币！", tonumber(a[11]), 0, {})
		end
	end
	lualib:IO_SetCustomVarStr(v_name, "")
	lualib:IO_SetCustomVarStr(v_guid, "")
	
	return ""
end



---进入场内1v1
function jinru(npc, player, bianlian)
	local bianlian = lualib:IO_GetCustomVarStr(bianlian)
	--print(bianlian)
	local p_guid_table = lualib:StrSplit(bianlian, "#")
	for i = 1, table.getn(p_guid_table) do
		if player == p_guid_table[i] then
			local chuansongweizhi = lualib:GetStr(npc, bianlian)
			local KeyNa = lualib:KeyName(chuansongweizhi)
			--print(chuansongweizhi, KeyNa)
			lualib:Player_SetDgnTicket(player, chuansongweizhi)
			if not lualib:Player_EnterDgn(player, KeyNa, 31, 44,5) then return "传送失败！" end
			break
		end
	end
	
	
	return ""
end