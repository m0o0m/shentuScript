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
	local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID") 
	--if lualib:HasTimer( dgn_guid , 5466231 ) then lualib:DisableTimer( dgn_guid , 5466231 ) end

	lualib:AddTimerEx(dgn_guid,5466231,10000,120,"on_timepre","")
	lualib:Map_BatchGenMonster(sMapID, "ҹϮ��ɽ�ǹ���", 5, false)
	local treasure = {}
	lualib:SetStr("", "ҹϮ��ɽ������", json.encode(treasure))
	lualib:SetInt("","ҹϮ��ɽ���л���Ӫ����",0)

	return ""
end

function on_timepre()
	--local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	local playerList = lualib:GetStr("", "ҹϮ��ɽ������")
	local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID") 
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][1] ~= "" then 
				local map_guid = lualib:MapGuid(playerList[j][3])
				if dgn_guid == map_guid then
					local score = lualib:GetDayInt(playerList[j][3],"ҹϮ��ɽ�ǻ���")+5
					lualib:SetDayInt(playerList[j][3],"ҹϮ��ɽ�ǻ���",score)
					local times = lualib:GetDayInt(playerList[j][3],"ҹϮ��ɽ�ǲ���ʱ��")+10
					lualib:SetDayInt(playerList[j][3],"ҹϮ��ɽ�ǲ���ʱ��",times)           --��������  ����ʱ�� ��λ��
					playerList[j][2] = score
					playerList[j][6] = times
					playerList[j][7] = lualib:GetDayInt(playerList[j][3],"ҹϮ��ɽ���Ƿ�����")                      --��������  ��ɱ   
					playerList[j][8] = lualib:GetDayInt(playerList[j][3],"ҹϮ��ɽ��ɱ����")                     --��������  ɱ����                
				end
			end
		end
	end
	lualib:SetStr("", "ҹϮ��ɽ������", json.encode(playerList))  
	on_time()
	
end

function on_time()
	
	
	--local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	
	local tab = {} 
	local score_tab ={}
	local playerList = lualib:GetStr("", "ҹϮ��ɽ������")      --û������
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][3] ~= "" then 
				tab[j] = {}
				tab[j][1] = playerList[j][1]
				local score = tonumber(lualib:GetDayInt(playerList[j][3],"ҹϮ��ɽ�ǻ���"))
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
	
	
	lualib:SetStr("", "ҹϮ��ɽ����Ӫ����", json.encode(tab))    --�����
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime =  lualib:GetInt("","ҹϮ��ɽ�ǿ���ʱ��")
	local lasttime = newTime - opentime
	local cishu = lualib:GetInt("","ҹϮ��ɽ���л���Ӫ����")
	local cishu1 = cishu*300
	if lasttime+5 >= cishu1  then
		lualib:SetInt("", "ҹϮ��ɽ�ǵ���ʱ",5)
		lualib:AddTimerEx("",54662311,1000,7,"camp","")
	end
	
	local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID")
	local a,b = 1,1
	for  j = 1,#tab do
		local map_guid = lualib:MapGuid(tab[j][3])
		if dgn_guid == map_guid then
			lualib:ShowFormWithContent(tab[j][3], "�ű���", "YXWSC_in.RankChange("..serialize(tab)..")")
		end
	end
	--return ""
end

function camp()
	
	local times = tonumber(lualib:GetInt("", "ҹϮ��ɽ�ǵ���ʱ"))
	lualib:SetInt("", "ҹϮ��ɽ�ǵ���ʱ",times-1)
	local playerList = lualib:GetStr("", "ҹϮ��ɽ������")
	local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID")
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][1] ~= "" then 
				local map_guid = lualib:MapGuid(playerList[j][3])
				if dgn_guid == map_guid then
					lualib:ShowFormWithContent(playerList[j][3], "�ű���", "YXWSC_in.msgtip(\""..times.."������·�����Ӫ\")")
				end
			end
		end
	end
	local a,b= 1,1
	if times == 0 then
		lualib:DisableTimer("",54662311)
		local cishu = lualib:GetInt("","ҹϮ��ɽ���л���Ӫ����")+1
		lualib:SetInt("","ҹϮ��ɽ���л���Ӫ����",cishu)
		--local List = lualib:Map_GetMapPlayers(dgn_guid, false)
		
		local List = lualib:GetStr("", "ҹϮ��ɽ����Ӫ����") 
		if #List > 0 then 
			List = json.decode(List)
			for j=1,#List do
				if List[j][3] ~= "" then
					local map_guid = lualib:MapGuid(List[j][3])
					if dgn_guid == map_guid then
						if a == 1 then
							if  b == 1 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								b = 2
							elseif  b == 2 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								b = 3
							elseif  b == 3 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								b = 4
							elseif  b == 4 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								a = 2
								b = 1
							end
						elseif a == 2 then
							if  b == 1 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								b = 2
							elseif  b == 2 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",1)
								lualib:SetCamp(List[j][3], 1)  
								lualib:Player_SetNameColor(List[j][3], "BLUE")
								b = 3
							elseif  b == 3 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",2)
								lualib:SetCamp(List[j][3], 2)  
								lualib:Player_SetNameColor(List[j][3], "RED")
								b = 4
							elseif  b == 4 then
								lualib:SetDayInt(List[j][3],"ҹϮ��ɽ����Ӫ",1)
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
	lualib:ShowFormWithContent(killer, "�ű���", "YXWSC_in.msgtip(\"��ɱ"..monster_name.."���5�����\")")
	local score = lualib:GetDayInt(killer,"ҹϮ��ɽ�ǻ���")
	lualib:SetDayInt(killer,"ҹϮ��ɽ�ǻ���",score+5)
	on_time()
	if lualib:HasTimer(killer,1234456) then 
		lualib:AddTimerEx(killer,1234457,10000,1,"shua_guai",killer.."#"..score)
	else
		lualib:AddTimerEx(killer,1234456,10000,1,"shua_guai",killer.."#"..score)
	end
	return true
end

function shua_guai(player,score)
	
	local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID")
	lualib:Map_BatchGenMonster(dgn_guid, "ҹϮ��ɽ�ǹ���", 1, false)
	--return ""
end

function on_pre_player_die(player, killer)
	

	--lualib:SysPromptMsg(killer,"��ɱ����".. lualib:Name(player) .."")
	--lualib:SysPromptMsg(player,"�㱻".. lualib:Name(killer) .."ɱ����")
	
	--[[
	local num =lualib:Hp(player, true)
	lualib:SetHp(player, num/2, false)
	num = tonumber(math.random(1,4))
	local tab = {{96,51},{41,55},{33,114},{99,116}}
	lualib:Player_EnterDgn(player , "ҹϮ��ɽ��" , 	tab[num][1] ,tab[num][2] , 3)--]]
	
	local player_name = lualib:Name(player)
	local killer_name = lualib:Name(killer)
	
	local num = lualib:GetDayInt(player,"ҹϮ��ɽ����������")+1
	lualib:SetDayInt(player,"ҹϮ��ɽ����������",num)
	lualib:SetDayInt(player,"ҹϮ��ɽ���Ƿ�����",1)                      --��������  ��ɱ 
	lualib:SetDayInt(killer,"ҹϮ��ɽ����������",0)
	local kill = lualib:GetDayInt(killer,"ҹϮ��ɽ��ɱ����")+1
	lualib:SetDayInt(killer,"ҹϮ��ɽ��ɱ����",kill)              --��������  ɱ��ʮ��

	for i=1,5 do  
		if lualib:HasBuff(killer,"ҹϮ��ɽ��"..i) then          --��ɱ��buff
			lualib:DelBuff(killer, "ҹϮ��ɽ��"..i) 
		end
		if lualib:HasBuff(player,"ҹϮ��ɽ��"..i) then 
			lualib:DelBuff(player, "ҹϮ��ɽ��"..i) 
		end
	end
	if num > 2  then 
		if num > 7 then 
			num = 7
		end
		local buff = "ҹϮ��ɽ��"..(num-2)
		lualib:AddBuff(player, buff, 1200)   
	end
		
	local int = tonumber(lualib:GetDayInt(killer,"ҹϮ��ɽ��ɱ�˴���"))+1      --ɱ������   ����ն  ����
 	lualib:SetDayInt(killer,"ҹϮ��ɽ��ɱ�˴���",int)
	lualib:SetDayInt(player,"ҹϮ��ɽ��ɱ�˴���",0)
	if int >= 3 then 
		if int >= 7 then 
			int = 7
		end
		local dgn_guid = lualib:GetStr("","ҹϮ��ɽ��GUID")
		local playerList = lualib:Map_GetMapPlayers(dgn_guid, false)
		for i=1 ,#playerList do
			lualib:ShowFormWithContent(playerList[i], "�ű���", "YXWSC_in.kill(\""..killer_name.."\",\""..int.."\")")
		end
	end
	
	local nowTime = lualib:Str2Time(lualib:Now())
	local jg = nowTime-lualib:GetDayInt(killer,player) 
	if jg < 30 then 
		lualib:ShowFormWithContent(killer, "�ű���", "YXWSC_in.msgtip(\"30���ڻ�ɱ��ɱͬһĿ�겻�ܻ�û���\")")
	else
		lualib:ShowFormWithContent(killer, "�ű���", "YXWSC_in.msgtip(\"��ɱ"..player_name.."���10�����\")")
		local score = lualib:GetDayInt(killer,"ҹϮ��ɽ�ǻ���")
		lualib:SetDayInt(killer,"ҹϮ��ɽ�ǻ���",score+10)
	end
	
	lualib:SetDayInt(killer,player,nowTime)	
	
	local score = lualib:GetDayInt(player,"ҹϮ��ɽ�ǻ���")
	score = math.floor(score/2)
	lualib:SetDayInt(player,"ҹϮ��ɽ�ǻ���",score)
	
	on_time()
	
	return true

end

function on_enter_map(player) 
	
	local hero = lualib:GetCurrentHero(player)    --ɾ��Ӣ��
	if "" ~= hero then
		if lualib:DestroyDummy(hero) then
			lualib:SetInt(player, "HeroRelive", 1)
		end
	end
	
	lualib:Player_ChangeAttackMode(player,6)
	
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime =  lualib:GetInt("","ҹϮ��ɽ�ǿ���ʱ��")
	local lasttime = 1200 - (newTime - opentime)
	
	lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.Taskitem(5)")
	lualib:ShowFormWithContent(player, "form�ļ���", "YXWSC_in#".. lasttime)
	lualib:DelayCall(player, 300, "on_time", "")
	
   --[[ local player_zy = lualib:GetDayInt(player,"ҹϮ��ɽ���Ƿ����")
	if player_zy == 0 then 
		local treasure = lualib:GetStr("", "ҹϮ��ɽ������")
		if #treasure ~= 0 then 
			treasure = json.decode(treasure)
		else
			treasure = {}
		end
		treasure[#treasure+1] = player
		lualib:SetStr("", "ҹϮ��ɽ������", json.encode(treasure))
	end--]]
	
	local a = 0
	local treasure = lualib:GetStr("", "ҹϮ��ɽ������")
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
		treasure[#treasure][2] = lualib:GetDayInt(player,"ҹϮ��ɽ�ǻ���")
		treasure[#treasure][3] = player
		treasure[#treasure][4] = lualib:Level(player)
		treasure[#treasure][5] = lualib:Job(player)
		treasure[#treasure][6] = lualib:GetDayInt(player,"ҹϮ��ɽ�ǲ���ʱ��")    --��������  ����ʱ��  
		treasure[#treasure][7] = lualib:GetDayInt(player,"ҹϮ��ɽ���Ƿ�����")                      --��������  ��ɱ   
		treasure[#treasure][8] = lualib:GetDayInt(player,"ҹϮ��ɽ��ɱ����")     --��������  ɱ����  

		lualib:SetStr("", "ҹϮ��ɽ������", json.encode(treasure))
	end
	
	lualib:SetDayInt(player,"ҹϮ��ɽ���Ƿ����",1)
	local mapguid = lualib:GetStr("","ҹϮ��ɽ��GUID")
	local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	local zy1,zy2 = 0,0
    if #playerList ~= 0 then 
		for i=1,#playerList do
			local zy=lualib:GetDayInt(playerList[i],"ҹϮ��ɽ����Ӫ")
			if zy == 1 then
				zy1	=zy1+1
			elseif zy == 2 then
				zy2	=zy2+1
			end
		end
	end
	if zy2 >= zy1 then 
		lualib:SetDayInt(player,"ҹϮ��ɽ����Ӫ",1) 
		lualib:SetCamp(player, 1)  
		lualib:Player_SetNameColor(player, "BLUE")
	else
		lualib:SetDayInt(player,"ҹϮ��ɽ����Ӫ",2)
		lualib:SetCamp(player, 2)  
		lualib:Player_SetNameColor(player, "RED")
	end
	
	return ""
end

function on_leave_map(player)
	
	lualib:ShowFormWithContent(player, "�ű���", "YXWSC_in.CloseDlg()")
	local strTime = lualib:Now() 
	lualib:SetInt(player,"ҹϮ��ɽ�Ǽ��",lualib:Str2Time(strTime))
	lualib:SetDayInt(player,"ҹϮ��ɽ����Ӫ",0)
	lualib:Player_SetNameColor(player, "")
	for i=1,5 do  
		if lualib:HasBuff(player,"ҹϮ��ɽ��"..i) then 
			lualib:DelBuff(player, "ҹϮ��ɽ��"..i) 
		end
	end
	
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --�뿪��ͼ����  �˾�Ȼ���ڵ�ͼ�� orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)
	
	return ""
	
end

function DelayFunc(player)
	HeroRelive(player)
end
