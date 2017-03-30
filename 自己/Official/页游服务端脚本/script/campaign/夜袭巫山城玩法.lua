local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
	return ""
end

function on_start_decl(id, map, times)
	
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "群英争霸   21:25 - 21:45")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		
		lualib:SetInt("","夜袭巫山城开启",1)
		local dgn_guid = lualib:Map_CreateDgn("夜袭巫山城" , true, 25*60)  
		lualib:SetStr("","夜袭巫山城GUID",""..dgn_guid)
		lualib:SetInt("","夜袭巫山城开启时间",lualib:Str2Time( lualib:Now()))
		lualib:AddTimer("",963963,1200000,1,"cleanMap")
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#群英争霸活动已开启，请从龙城群英争霸NPC处进入。#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic6", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#群英争霸活动还有"..math.floor(times / 60000).."分钟开始，到时请从龙城群英争霸NPC处进入。#COLOREND#", 11, 2)
	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		
		lualib:SetInt("","夜袭巫山城开启",0)
		Time_Out() 
		local dgn_guid = lualib:GetStr("","夜袭巫山城GUID")
		lualib:DisableTimer(dgn_guid,5466231)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#群英争霸活动已结束。#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#群英争霸活动将在"..math.floor(times / 60000).."分钟后结束。#COLOREND#", 11, 2)
	end 
	return ""
end



function Time_Out()    --发奖啦
	
	
	local tab = {}
	local playerList = lualib:GetStr("", "夜袭巫山城人数")   -- {1  name   2  积分  3  player_guid  4  等级    5  职业    6   参与时间   7  被杀   8  杀人次数}
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][1] ~= "" then
				local times = playerList[j][6] 
				if times >= 300 then
					lualib:Mail("群英争霸活动", playerList[j][1], "感谢您参与本次活动，这是您的参与5分钟奖励，请查收。", 0, 0, {"魂珠碎片小" , 9 , 1,"BOSS积分精魄" , 3 , 1 ,"成就令牌" , 1 , 1  } )
					--lualib:MailToPlayer("夜袭巫山城活动",playerList[j][3],"感谢您参与夜袭巫山城活动，这是您的参与5分钟奖励，请查收。",0,0,{"魂珠碎片小" , 9 , 1,"BOSS积分精魄" , 3 , 1 ,"成就令牌" , 1 , 1  } )
				end
			
				local index = playerList[j][7] 
				if index == 1 then
					lualib:Mail("群英争霸活动", playerList[j][1], "感谢您参与本次活动，这是您的被杀1次奖励，请查收。", 0, 0, {"魂珠碎片小",3,1,"BOSS积分精魄",1,1})
					--lualib:MailToPlayer("夜袭巫山城活动", playerList[j][3],"感谢您参与夜袭巫山城活动，这是您的被杀1次奖励，请查收。",0,0,{"魂珠碎片小",3,1,"BOSS积分精魄",1,1})
				end
				index = playerList[j][8] 
				if index >= 10 then
					--lualib:MailToPlayer("夜袭巫山城活动", playerList[j][3],"感谢您参与夜袭巫山城活动，这是您的击杀10人奖励，请查收。",0,0,{"魂珠碎片小" , 6 , 1,"BOSS积分精魄" , 3 , 1 ,"成就令牌" , 1 , 1  } )
					lualib:Mail("群英争霸活动", playerList[j][1], "感谢您参与本次活动，这是您的击杀10人奖励，请查收。", 0, 0, {"魂珠碎片小" , 6 , 1,"BOSS积分精魄" , 3 , 1 ,"成就令牌" , 1 , 1  } )
				end 
				tab[j] = {}
				tab[j][1] = playerList[j][1]
				tab[j][2] = playerList[j][2]
			end
		end
	end
	
	for  j = 1,#tab do 
		if j<#tab then 
			for  i = 1,#tab-1 do 
				if tab[i][2] < tab[i+1][2] then 
					local index = tab[i]
					tab[i] = tab[i+1]
					tab[i+1] = index
				end
			end
		end
	end
	local jl_tab = {{12,4,2},
					{10,3,2},
					{9,3,2},
					{8,3,1},
					{7,2,1},
					{5,2,1},
					{5,2,1},
					{5,1,1},
					{5,1,1},
					{5,1,1}}
	for  j = 1,#tab do 
		if j<11 then 
			lualib:Mail("群英争霸活动", tab[j][1], "感谢您参与本次活动，您在本次活动中排名第"..j.."名，这是您的排名奖励，请查收。", 0, 0, {"魂珠碎片小" , jl_tab[j][1] , 1,"BOSS积分精魄" , jl_tab[j][2] , 1 ,"成就令牌" , jl_tab[j][3] , 1  } )
				
		--	lualib:MailToPlayer("夜袭巫山城活动", tab[j][1],"感谢您参与夜袭巫山城活动，您在本次活动中排名第"..j.."名，这是您的排名奖励，请查收。",0,0,{"魂珠碎片小" , jl_tab[j][1] , 1,"BOSS积分精魄" , jl_tab[j][2] , 1 ,"成就令牌" , jl_tab[j][3] , 1  } )
		end
	end 
	return ""
	
end

function enter(player, dgn_id)
	return ""
end

function cleanMap(player)
	lualib:SetInt("","夜袭巫山城开启",0)
	lualib:DisableTimer("",963963)    
	return ""
end

function leave(player)
	return ""
end

function Goto(id,player,map)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	local level = lualib:Level(player)
	if level > 49 then
		lualib:Player_NpcMove(player, "土城夜战比奇城", 5)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"脚本表单",str)
		lualib:ShowFormWithContent(player,"form文件表单","NightWnd")
	else 
		lualib:ShowFormWithContent(player,"脚本表单","Campaign.msg(\"等级不足\")" )
	end
	return ""
end


