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
	local dgn_guid = lualib:GetStr("","ħ������GUID")
	local mon_tab = {{"ħ�����ֻ�Ȫ����",111 , 67,},{"ħ�����ֳ��¶�ħ",76,118,},{"ħ�������������",41,68,},{"ħ�������������",35,171,},{"ħ������ţħ��",111,137,}}
	for i=1,#mon_tab do
		lualib:Map_GenMonster(sMapID, mon_tab[i][2], mon_tab[i][3], 5, 4, mon_tab[i][1], 1, true)
	end
	--if lualib:HasTimer( dgn_guid , 5466231 ) then lualib:DisableTimer( dgn_guid , 5466231 ) end
	--lualib:AddTimerEx(dgn_guid,5466231,10000,120,"on_timepre","") 
	return ""
end


function on_time()
	
	local tab = {} 
	local score_tab ={}
	local playerList = lualib:GetStr("", "ħ����������")      --û������
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][3] ~= "" then 
				tab[j] = {}
				tab[j][1] = playerList[j][1]
				tab[j][2] = playerList[j][2]
				local score = tonumber(lualib:GetDayInt(playerList[j][1],"ħ�����ֻ���"))
				if score == 0 then 
					tab[j][3] = playerList[j][3]
				else 
					tab[j][3] = tonumber(score)
				end
			end
		end
	end
	lualib:SetStr("", "ħ����������", json.encode(playerList))
	for  j = 1,#tab do 
		if j<#tab then 
			for  i = 1,#tab-1 do 
				if tab[i][3] < tab[i+1][3] then 
					local index = tab[i]
					tab[i] = tab[i+1]
					tab[i+1] = index
				end
			end
		end
	end
	
--[[	local str = ""
	for  i = 1,#tab do  
		str = str..":"..tab[i][1]..tab[i][2]..tab[i][3]
	end--]]
	
	local dgn_guid = lualib:GetStr("","ħ������GUID")
	local a,b = 1,1
	for  j = 1,#tab do
		local map_guid = lualib:MapGuid(tab[j][1])
		if dgn_guid == map_guid then
			lualib:ShowFormWithContent(tab[j][1], "�ű���", "DemonInWnd.RankChange("..serialize(tab)..")")
		end
	end 
end 

function on_pre_monster_die(monster, killer)
	
	local score_tab ={50,25,15,10,5}
	local hate_list = lualib:Monster_GetHateList(monster)
	for i=1,5 do
		if i <= #hate_list then
			if hate_list[i]["GUID"] ~= nil then 
				local score = lualib:GetDayInt(hate_list[i]["GUID"],"ħ�����ֻ���")
				lualib:SetDayInt(hate_list[i]["GUID"],"ħ�����ֻ���",score+score_tab[i])
			end
		end
	end
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
			
			
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime = lualib:GetInt("","ħ�����ֿ���ʱ��")
	local lasttime = 900 - (newTime - opentime)
	lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.Taskitem(5)")
	lualib:ShowFormWithContent(player, "form�ļ���", "DemonInWnd#".. lasttime)
	lualib:DelayCall(player, 1000, "on_time", "")
	local a = 0
	local per_tab = lualib:GetStr("", "ħ����������")
	if #per_tab ~= 0 then 
		per_tab = json.decode(per_tab)
		for i=1,#per_tab do 
			if player == per_tab[i][1] then 
				a=1
				break
			end
		end
	else
		per_tab = {}
	end
	local name = lualib:Name(player)
	if a == 0 then
		per_tab[#per_tab+1] = {}
		per_tab[#per_tab][1] = player
		per_tab[#per_tab][2] = name
		per_tab[#per_tab][3] = lualib:GetDayInt(player,"ħ�����ֻ���")
		per_tab[#per_tab][4] = lualib:Level(player)
		per_tab[#per_tab][5] = lualib:Job(player)
		lualib:SetStr("", "ħ����������", json.encode(per_tab))
	end
	
	local s1 = "#COLORCOLOR_BLUE#"..name.."#COLOREND##COLORCOLOR_YELLOW#�����ħ����ҿɴ����ǽ�ħ����Ա������#COLOREND#"
	lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
	return ""
end

function on_pre_player_die(player, killer)
 
	return true
end

function on_leave_map(player)
	
	lualib:ShowFormWithContent(player, "�ű���", "DemonInWnd.CloseDlg()")
	
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --�뿪��ͼ����  �˾�Ȼ���ڵ�ͼ�� orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)
	
	return ""
	
end

function DelayFunc(player)
	HeroRelive(player)
end

