local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local zhandou = {
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

function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTimerEx(map, 1, 60000, 50, "panding", "")
	lualib:SysMsg_SendMapMsg(map, "战斗时系统会重复判断最新战斗情况，胜利后的请您留在场内等待系统胜负评定！")
	return
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.打赢对手，就能赢得对手的金币！\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.奖金将会通过邮件的形式发送给你!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.想赢谁的金币，就把谁叫进来吧！你行的，你可以的！^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end

function on_map_destroy(map)
	local xinxi = lualib:GetStr(map, "shit")
	local xinxi_tbale = string.split(xinxi,"#")
	if xinxi ~= "" then
		lualib:Debug("试炼场地图销毁！")
		if types == 3 then
				lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[2])*90/100, 0, {})
				lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[3], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[2])*90/100, 0, {})
				for i = 1, #zhandou do
					for j = 1, #zhandou[i] do
						local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
						if value == xinxi then
							lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
							lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
							break
						end
					end
				end	
			elseif types ==11 then
				lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[6])*90/100, 0, {})
				lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[7], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[6])*90/100, 0, {})
				for i = 1, #zhandou do
					for j = 1, #zhandou[i] do
						local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
						if value == xinxi then
							lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
							lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
							break
						end
					end
				end	
			elseif types == 21 then
				lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，本场战斗平局，返回您押注90%的彩金！", tonumber(xinxi_tbale[11])*90/100, 0, {})
				lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[12], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[11])*90/100, 0, {})
				for i = 1, #zhandou do
					for j = 1, #zhandou[i] do
						local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
						if value == xinxi then
							lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
							lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
							break
						end
					end
				end	
			end
		end
	lualib:ClearTrigger(map)	
    return
end

function panding(map, id)
	local xinxi = lualib:GetStr(map, "shit")
	local xinxi_tbale = string.split(xinxi,"#")
	local ybweizhi = table.getn(xinxi_tbale)/2 + 1
	local a = lualib:GetInt(map, map) + 1
	lualib:SetInt(map, map, a)
	local a_renshu = 0
	local b_renshu = 0
	for k, v in pairs(xinxi_tbale) do
		local m_p = lualib:MapGuid(v)
		if map == m_p then
			if k < ybweizhi then
				a_renshu = a_renshu + 1
			elseif k > ybweizhi then
				b_renshu = b_renshu + 1
			end
		end
	end
	
	lualib:SysMsg_SendMapMsg(map, "战斗时系统会重复判断最新战斗情况，胜利后的请您留在场内等待系统胜负评定！")
	
	local types = table.getn(xinxi_tbale)
	--print(types)
	if types == 3 then
		--print(a)
		if a == 10 then
			lualib:AddTimerEx(map, 2, 10000, -1, "jiasu", "")
		end
	elseif types == 11 then
		if a == 20 then
			lualib:AddTimerEx(map, 2, 10000, -1, "jiasu", "")
		end
	elseif types == 21 then
		if a == 30 then
			lualib:AddTimerEx(map, 2, 10000, -1, "jiasu", "")
		end
	end
	
	
	if a_renshu > 0 and b_renshu <= 0 then
		--print(tonumber(xinxi_tbale[2]))
		lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，你赢得了战斗！", tonumber(xinxi_tbale[2])*1.8, 0, {})
		for i = 1, #zhandou do
			for j = 1, #zhandou[i] do
				local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
					break
				end
			end
		end	
		--print("a胜利")
		lualib:Map_DestroyDgn(map)
		return 
	elseif b_renshu > 0 and a_renshu <= 0 then
		if types == 3 then
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[3], "战斗结束，你赢得了战斗！", tonumber(xinxi_tbale[2])*180/100, 0, {})
			for j = 1, #zhandou[1] do
				local value = lualib:IO_GetCustomVarStr(zhandou[1][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[1][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[1][j][1], "")
					break
				end
			end	
		elseif types == 11 then
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[7], "战斗结束，你赢得了战斗！", tonumber(xinxi_tbale[6])*180/100, 0, {})
			for j = 1, #zhandou[2] do
				local value = lualib:IO_GetCustomVarStr(zhandou[2][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[2][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[2][j][1], "")
					break
				end
			end
		elseif types == 21 then
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[12], "战斗结束，你赢得了战斗！", tonumber(xinxi_tbale[11])*180/100, 0, {})
			for j = 1, #zhandou[3] do
				local value = lualib:IO_GetCustomVarStr(zhandou[3][j][2])
				if value == xinxi then
					lualib:IO_SetCustomVarStr(zhandou[3][j][2], "")
					lualib:IO_SetCustomVarStr(zhandou[3][j][1], "")
					break
				end
			end
		end
		--print("b胜利")
		lualib:Map_DestroyDgn(map)
		return
	elseif b_renshu == 0 and a_renshu == 0 then
		if types == 3 then
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[2])*90/100, 0, {})
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[3], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[2])*90/100, 0, {})
			for i = 1, #zhandou do
				for j = 1, #zhandou[i] do
					local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
					if value == xinxi then
						lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
						lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
						break
					end
				end
			end	
		elseif types ==11 then
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[6])*90/100, 0, {})
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[7], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[6])*90/100, 0, {})
			for i = 1, #zhandou do
				for j = 1, #zhandou[i] do
					local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
					if value == xinxi then
						lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
						lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
						break
					end
				end
			end	
		elseif types == 21 then
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[1], "战斗结束，本场战斗平局，返回您押注90%的彩金！", tonumber(xinxi_tbale[11])*90/100, 0, {})
			lualib:MailToPlayer("擂台赛管理员", xinxi_tbale[12], "战斗结束，本场战斗平局，返回您押注90%的彩金", tonumber(xinxi_tbale[11])*90/100, 0, {})
			for i = 1, #zhandou do
				for j = 1, #zhandou[i] do
					local value = lualib:IO_GetCustomVarStr(zhandou[i][j][2])
					if value == xinxi then
						lualib:IO_SetCustomVarStr(zhandou[i][j][2], "")
						lualib:IO_SetCustomVarStr(zhandou[i][j][1], "")
						break
					end
				end
			end	
		end
		lualib:Map_DestroyDgn(map)
		return
	end
	return
end
			
function jiasu(map, id)
	local player_table = lualib:Map_GetRegionPlayers(map, 32, 45, 30, true)
	if  #player_table == 0 then return end
	
	for _, v in pairs(player_table) do
		--print("aaaaa"..v)
		local CostHp = lualib:Hp(v, true) * 0.1
		local Hp = lualib:Hp(v, false) - CostHp
		local CostMp = lualib:Mp(v, true) * 0.1
		local Mp = lualib:Mp(v, false) - CostMp
		
		if Hp > 0 then
			lualib:SetHp(v, Hp, false)
		elseif Hp <= 0 then
			lualib:Kill(v)
		end
		
		if Mp > 0 then
			lualib:SetMp(v, Mp, false)
		end
	end
	return 
end