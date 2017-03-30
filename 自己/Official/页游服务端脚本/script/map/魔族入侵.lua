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
	local dgn_guid = lualib:GetStr("","魔族入侵GUID")
	local mon_tab = {{"魔族入侵黄泉教主",111 , 67,},{"魔族入侵赤月恶魔",76,118,},{"魔族入侵祖玛教主",41,68,},{"魔族入侵沃玛教主",35,171,},{"魔族入侵牛魔王",111,137,}}
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
	local playerList = lualib:GetStr("", "魔族入侵人数")      --没有排序
	if #playerList > 0 then 
		playerList = json.decode(playerList)
		for j=1,#playerList do 
			if playerList[j][3] ~= "" then 
				tab[j] = {}
				tab[j][1] = playerList[j][1]
				tab[j][2] = playerList[j][2]
				local score = tonumber(lualib:GetDayInt(playerList[j][1],"魔族入侵积分"))
				if score == 0 then 
					tab[j][3] = playerList[j][3]
				else 
					tab[j][3] = tonumber(score)
				end
			end
		end
	end
	lualib:SetStr("", "魔族入侵人数", json.encode(playerList))
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
	
	local dgn_guid = lualib:GetStr("","魔族入侵GUID")
	local a,b = 1,1
	for  j = 1,#tab do
		local map_guid = lualib:MapGuid(tab[j][1])
		if dgn_guid == map_guid then
			lualib:ShowFormWithContent(tab[j][1], "脚本表单", "DemonInWnd.RankChange("..serialize(tab)..")")
		end
	end 
end 

function on_pre_monster_die(monster, killer)
	
	local score_tab ={50,25,15,10,5}
	local hate_list = lualib:Monster_GetHateList(monster)
	for i=1,5 do
		if i <= #hate_list then
			if hate_list[i]["GUID"] ~= nil then 
				local score = lualib:GetDayInt(hate_list[i]["GUID"],"魔族入侵积分")
				lualib:SetDayInt(hate_list[i]["GUID"],"魔族入侵积分",score+score_tab[i])
			end
		end
	end
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
			
			
	local newTime = lualib:Str2Time(lualib:Now())
	local opentime = lualib:GetInt("","魔族入侵开启时间")
	local lasttime = 900 - (newTime - opentime)
	lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(5)")
	lualib:ShowFormWithContent(player, "form文件表单", "DemonInWnd#".. lasttime)
	lualib:DelayCall(player, 1000, "on_time", "")
	local a = 0
	local per_tab = lualib:GetStr("", "魔族入侵人数")
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
		per_tab[#per_tab][3] = lualib:GetDayInt(player,"魔族入侵积分")
		per_tab[#per_tab][4] = lualib:Level(player)
		per_tab[#per_tab][5] = lualib:Job(player)
		lualib:SetStr("", "魔族入侵人数", json.encode(per_tab))
	end
	
	local s1 = "#COLORCOLOR_BLUE#"..name.."#COLOREND##COLORCOLOR_YELLOW#进入禁魔神殿，玩家可从龙城禁魔神殿传送员处进入#COLOREND#"
	lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
	return ""
end

function on_pre_player_die(player, killer)
 
	return true
end

function on_leave_map(player)
	
	lualib:ShowFormWithContent(player, "脚本表单", "DemonInWnd.CloseDlg()")
	
	if lualib:GetInt(player, "HeroRelive") ~= 0 then       
		lualib:DelayCall(player, 300, "DelayFunc", "")  --离开地图触发  人居然还在地图内 orz..
	end
	lualib:SetInt(player, "HeroRelive", 0)
	
	return ""
	
end

function DelayFunc(player)
	HeroRelive(player)
end

