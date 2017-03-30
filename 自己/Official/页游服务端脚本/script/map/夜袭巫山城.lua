local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/MarsWnd_s")


function on_map_create( sMapID )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID , lua_trigger_leave_map , "on_leave_map")
	lualib:AddTrigger(sMapID , lua_trigger_monster_pre_die , "on_pre_monster_die")
	lualib:AddTrigger(sMapID , lua_trigger_player_pre_die , "on_pre_player_die")
	local dgn_guid = lualib:GetStr("","夜袭巫山城GUID") 
	--if lualib:HasTimer( dgn_guid , 5466231 ) then lualib:DisableTimer( dgn_guid , 5466231 ) end

	lualib:AddTimerEx(dgn_guid,5466231,10000,120,"on_timepre","")
	lualib:Map_BatchGenMonster(sMapID, "夜袭巫山城怪物", 5, false)
	local treasure = {}
	lualib:SetStr("", "夜袭巫山城人数", json.encode(treasure))
	lualib:SetInt("","夜袭巫山城切换阵营次数",0)

	return ""
end

function on_timepre()
	--local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	local playerList = lualib:GetStr("", "夜袭巫山城人数")
	local dgn_guid = lualib:GetStr("","夜袭巫山城GUID") 
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][1] ~= "" then 
				local map_guid = lualib:MapGuid(playerList[j][3])
				if dgn_guid == map_guid then
					local score = lualib:GetDayInt(playerList[j][3],"夜袭巫山城积分")+5
					lualib:SetDayInt(playerList[j][3],"夜袭巫山城积分",score)
					local times = lualib:GetDayInt(playerList[j][3],"夜袭巫山城参与时间")+10
					lualib:SetDayInt(playerList[j][3],"夜袭巫山城参与时间",times)           --奖励部分  参与时间 单位秒
					playerList[j][2] = score
					playerList[j][6] = times
					playerList[j][7] = lualib:GetDayInt(playerList[j][3],"夜袭巫山城是否死亡")                      --奖励部分  被杀   
					playerList[j][8] = lualib:GetDayInt(playerList[j][3],"夜袭巫山城杀人数")                     --奖励部分  杀人数                
				end
			end
		end
	end
	lualib:SetStr("", "夜袭巫山城人数", json.encode(playerList))  
	on_time()
	
end

function on_time()
	
	
	--local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	
	local tab = {} 
	local score_tab ={}
	local playerList = lualib:GetStr("", "夜袭巫山城人数")      --没有排序
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][3] ~= "" then 
				tab[j] = {}
				tab[j][1] = playerList[j][1]
				local score = tonumber(lualib:GetDayInt(playerList[j][3],"夜袭巫山城积分"))
				if score == 0 then 
					tab[j][2] = playerList[j][2]
				else 
					tab[j][2] = tonumber(score)
				end
				tab[j][3] = playerList[j][3]
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
	
	local str = ""
	for  i = 1,#tab do  
		str = str..":"..tab[i][1]..tab[i][2]..tab[i][3]
	end
	
	
	lualib:SetStr("", "夜袭巫山城阵营人数", json.encode(tab))    --排序过
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime =  lualib:GetInt("","夜袭巫山城开启时间")
	local lasttime = newTime - opentime
	local cishu = lualib:GetInt("","夜袭巫山城切换阵营次数")
	local cishu1 = cishu*300
	if lasttime+5 >= cishu1  then
		lualib:SetInt("", "夜袭巫山城倒计时",5)
		lualib:AddTimerEx("",54662311,1000,7,"camp","")
	end
	
	local dgn_guid = lualib:GetStr("","夜袭巫山城GUID")
	local a,b = 1,1
	for  j = 1,#tab do
		local map_guid = lualib:MapGuid(tab[j][3])
		if dgn_guid == map_guid then
			lualib:ShowFormWithContent(tab[j][3], "脚本表单", "YXWSC_in.RankChange("..serialize(tab)..")")
		end
	end
	--return ""
end

function camp()
	
	local times = tonumber(lualib:GetInt("", "夜袭巫山城倒计时"))
	lualib:SetInt("", "夜袭巫山城倒计时",times-1)
	local playerList = lualib:GetStr("", "夜袭巫山城人数")
	local dgn_guid = lualib:GetStr("","夜袭巫山城GUID")
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][1] ~= "" then 
				local map_guid = lualib:MapGuid(playerList[j][3])
				if dgn_guid == map_guid then
					lualib:ShowFormWithContent(playerList[j][3], "脚本表单", "YXWSC_in.msgtip(\""..times.."秒后重新分配阵营\")")
				end
			end
		end
	end
	local a,b= 1,1
	if times == 0 then
		lualib:DisableTimer("",54662311)
		local cishu = lualib:GetInt("","夜袭巫山城切换阵营次数")+1
		lualib:SetInt("","夜袭巫山城切换阵营次数",cishu)
		--local List = lualib:Map_GetMapPlayers(dgn_guid, false)
		
		local List = lualib:GetStr("", "夜袭巫山城阵营人数") 
		if #List > 0 then 
			List = json.decode(List)
			for j=1,#List do
				if List[j][3] ~= "" then
					local map_guid = lualib:MapGuid(List[j][3])
					if dgn_guid == map_guid then
						if a == 1 then
							if  b == 1 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								b = 2
							elseif  b == 2 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								b = 3
							elseif  b == 3 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								b = 4
							elseif  b == 4 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								a = 2
								b = 1
							end
						elseif a == 2 then
							if  b == 1 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								b = 2
							elseif  b == 2 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								b = 3
							elseif  b == 3 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								b = 4
							elseif  b == 4 then
								lualib:SetDayInt(List[j][3],"夜袭巫山城阵营",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								a = 1
								b = 1
							end
						end
					end
				end
			end
		end
	end
end

function on_pre_monster_die(monster, killer)

	local monster_name = lualib:Name(monster)
	lualib:ShowFormWithContent(killer, "脚本表单", "YXWSC_in.msgtip(\"击杀"..monster_name.."获得5点积分\")")
	local score = lualib:GetDayInt(killer,"夜袭巫山城积分")
	lualib:SetDayInt(killer,"夜袭巫山城积分",score+5)
	on_time()
	if lualib:HasTimer(killer,1234456) then 
		lualib:AddTimerEx(killer,1234457,10000,1,"shua_guai",killer.."#"..score)
	else
		lualib:AddTimerEx(killer,1234456,10000,1,"shua_guai",killer.."#"..score)
	end
	return true
end

function shua_guai(player,score)
	
	local dgn_guid = lualib:GetStr("","夜袭巫山城GUID")
	lualib:Map_BatchGenMonster(dgn_guid, "夜袭巫山城怪物", 1, false)
	--return ""
end

function on_pre_player_die(player, killer)
	

	--lualib:SysPromptMsg(killer,"你杀死了".. lualib:Name(player) .."")
	--lualib:SysPromptMsg(player,"你被".. lualib:Name(killer) .."杀死了")
	
	--[[
	local num =lualib:Hp(player, true)
	lualib:SetHp(player, num/2, false)
	num = tonumber(math.random(1,4))
	local tab = {{96,51},{41,55},{33,114},{99,116}}
	lualib:Player_EnterDgn(player , "夜袭巫山城" , 	tab[num][1] ,tab[num][2] , 3)--]]
	
	local player_name = lualib:Name(player)
	local killer_name = lualib:Name(killer)
	
	local num = lualib:GetDayInt(player,"夜袭巫山城死亡次数")+1
	lualib:SetDayInt(player,"夜袭巫山城死亡次数",num)
	lualib:SetDayInt(player,"夜袭巫山城是否死亡",1)                      --奖励部分  被杀 
	lualib:SetDayInt(killer,"夜袭巫山城死亡次数",0)
	local kill = lualib:GetDayInt(killer,"夜袭巫山城杀人数")+1
	lualib:SetDayInt(killer,"夜袭巫山城杀人数",kill)              --奖励部分  杀满十人

	for i=1,5 do  
		if lualib:HasBuff(killer,"夜袭巫山城"..i) then          --被杀加buff
			lualib:DelBuff(killer, "夜袭巫山城"..i) 
		end
		if lualib:HasBuff(player,"夜袭巫山城"..i) then 
			lualib:DelBuff(player, "夜袭巫山城"..i) 
		end
	end
	if num > 2  then 
		if num > 7 then 
			num = 7
		end
		local buff = "夜袭巫山城"..(num-2)
		lualib:AddBuff(player, buff, 1200)   
	end
		
	local int = tonumber(lualib:GetDayInt(killer,"夜袭巫山城杀人次数"))+1      --杀人如麻   六连斩  超神
 	lualib:SetDayInt(killer,"夜袭巫山城杀人次数",int)
	lualib:SetDayInt(player,"夜袭巫山城杀人次数",0)
	if int >= 3 then 
		if int >= 7 then 
			int = 7
		end
		local dgn_guid = lualib:GetStr("","夜袭巫山城GUID")
		local playerList = lualib:Map_GetMapPlayers(dgn_guid, false)
		for i=1 ,#playerList do
			lualib:ShowFormWithContent(playerList[i], "脚本表单", "YXWSC_in.kill(\""..killer_name.."\",\""..int.."\")")
		end
	end
	
	local nowTime = lualib:Str2Time(lualib:Now())
	local jg = nowTime-lualib:GetDayInt(killer,player) 
	if jg < 30 then 
		lualib:ShowFormWithContent(killer, "脚本表单", "YXWSC_in.msgtip(\"30秒内击杀击杀同一目标不能获得积分\")")
	else
		lualib:ShowFormWithContent(killer, "脚本表单", "YXWSC_in.msgtip(\"击杀"..player_name.."获得10点积分\")")
		local score = lualib:GetDayInt(killer,"夜袭巫山城积分")
		lualib:SetDayInt(killer,"夜袭巫山城积分",score+10)
	end
	
	lualib:SetDayInt(killer,player,nowTime)	
	
	local score = lualib:GetDayInt(player,"夜袭巫山城积分")
	score = math.floor(score/2)
	lualib:SetDayInt(player,"夜袭巫山城积分",score)
	
	on_time()
	
	return true

end

function on_enter_map(player) 
	
	local hero = lualib:GetCurrentHero(player)    --删除英雄
	if "" ~= hero then
		if lualib:DestroyDummy(hero) then
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
	
	lualib:Player_ChangeAttackMode(player,6)
	
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime =  lualib:GetInt("","夜袭巫山城开启时间")
	local lasttime = 1200 - (newTime - opentime)
	
	lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(5)")
	lualib:ShowFormWithContent(player, "form文件表单", "YXWSC_in#".. lasttime)
	lualib:DelayCall(player, 300, "on_time", "")
	
   --[[ local player_zy = lualib:GetDayInt(player,"夜袭巫山城是否进入")
	if player_zy == 0 then 
		local treasure = lualib:GetStr("", "夜袭巫山城人数")
		if #treasure ~= 0 then 
			treasure = json.decode(treasure)
		else
			treasure = {}
		end
		treasure[#treasure+1] = player
		lualib:SetStr("", "夜袭巫山城人数", json.encode(treasure))
	end--]]
	
	local a = 0
	local treasure = lualib:GetStr("", "夜袭巫山城人数")
	if #treasure ~= 0 then 
		treasure = json.decode(treasure)
		for i=1,#treasure do 
			if player == treasure[i][3] then 
				a=1
				break
			end
		end
	else
		treasure = {}
	end
	if a == 0 then
		treasure[#treasure+1] = {}
		treasure[#treasure][1] = lualib:Name(player)
		treasure[#treasure][2] = lualib:GetDayInt(player,"夜袭巫山城积分")
		treasure[#treasure][3] = player
		treasure[#treasure][4] = lualib:Level(player)
		treasure[#treasure][5] = lualib:Job(player)
		treasure[#treasure][6] = lualib:GetDayInt(player,"夜袭巫山城参与时间")    --奖励部分  参与时间  
		treasure[#treasure][7] = lualib:GetDayInt(player,"夜袭巫山城是否死亡")                      --奖励部分  被杀   
		treasure[#treasure][8] = lualib:GetDayInt(player,"夜袭巫山城杀人数")     --奖励部分  杀人数  

		lualib:SetStr("", "夜袭巫山城人数", json.encode(treasure))
	end
	
	lualib:SetDayInt(player,"夜袭巫山城是否进入",1)
	local mapguid = lualib:GetStr("","夜袭巫山城GUID")
	local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	local zy1,zy2 = 0,0
    if #playerList ~= 0 then 
		for i=1,#playerList do
			local zy=lualib:GetDayInt(playerList[i],"夜袭巫山城阵营")
			if zy == 1 then
				zy1	=zy1+1
			elseif zy == 2 then
				zy2	=zy2+1
			end
		end
	end
	if zy2 >= zy1 then 
		lualib:SetDayInt(player,"夜袭巫山城阵营",1) 
		lualib:SetCamp(player, 1)  
		lualib:Player_SetNameColor(player, "BLUE")
	else
		lualib:SetDayInt(player,"夜袭巫山城阵营",2)
		lualib:SetCamp(player, 2)  
		lualib:Player_SetNameColor(player, "RED")
	end
	
	return ""
end

function on_leave_map(player)
	
	lualib:ShowFormWithContent(player, "脚本表单", "YXWSC_in.CloseDlg()")
	local strTime = lualib:Now() 
	lualib:SetInt(player,"夜袭巫山城间隔",lualib:Str2Time(strTime))
	lualib:SetDayInt(player,"夜袭巫山城阵营",0)
	lualib:Player_SetNameColor(player, "")
	for i=1,5 do  
		if lualib:HasBuff(player,"夜袭巫山城"..i) then 
			lualib:DelBuff(player, "夜袭巫山城"..i) 
		end
	end
	
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --离开地图触发  人居然还在地图内 orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)
	
	return ""
	
end

function DelayFunc(player)
	HeroRelive(player)
end
