local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)

local pos = {{240,173},{222,82},{138,60},{61,83},{39,173},{90,252},{187,252}}
function on_map_create(map)
	
	local time_id = lualib:GenTimerId(map)
	lualib:AddTimer(map,time_id,1000,35*60*1000,"timefuc")
	lualib:AddTrigger(map , lua_trigger_monster_pre_die , "on_post_pre_die")
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map")
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_leave_map")
	if lualib:Map_GenNpc(map, "�������npc", 143, 157, 0, 4) == "" then
					--lualib:SysMsg_SendBroadcastColor( "�������npc1" , "" , 1, 0)
		return ""
	end
	local rantab = {1,2,3,4,5,6}
	for i = 6 , 4 , -1 do 
		local ran = lualib:GenRandom(1, i) 
		local index = rantab[ran]
		lualib:Map_GenMonster(map, pos[index][1], pos[index][2], 3, 4, "��ħ����ţħ��", 1, true)
		table.remove(rantab,ran)
	end	
end

function on_post_pre_die(monster, killer)
	
	local mt_keyname = lualib:KeyName(monster)
    local mt_type = lualib:Monster_Type(mt_keyname)
	if mt_type == 4 then
		local droptab = {
			["��ħ����ţħ��"] =  50,
			["��ħ������ħ����"] = 72,
			["��ħ�������ħ"] = 102,
			["��ħ�������ĺ���"] = 102,
			["��ħ����������ħ"] = 200,
		
		}
		local x = lualib:X(monster)
		local y = lualib:Y(monster)
		local map = lualib:MapGuid(monster)
		if droptab[mt_keyname] == nil then
			return true
		end
 		local num = droptab[mt_keyname] 
		--lualib:SysPromptMsg(killer,"x="..x.."y="..y.."mapname=".. tostring(lualib:KeyName(map)) )
		for i = 1 , num do 
			lualib:Map_GenItemRnd(map, x, y, 5, "��ħ����",1, true, 0)
		end	
	end
	return true
end

local posm = {{138,146},{233,159},{232,91},{134,50},{73,95},{50,179},{99,258},{184,238}}
function on_enter_map(player)
	--������
	local map = lualib:MapGuid(player)	
	local timenum = lualib:GetInt(map,"timenum")
	local restTime = 35*60-timenum-5
	lualib:ShowFormWithContent(player, "form�ļ���", "DreyerTemple#"..restTime)
	if restTime > 15 * 60 then
		for i = 1 , 8 do 
			lualib:RunClientScript(player, "ItemEffect", "texiao", "100000009#".. posm[i][1] .. "#".. posm[i][2] .. "#0#99999999")
		end
	end	
end

function on_leave_map(player)
	--���������
	lualib:ShowFormWithContent(player,"�ű���","DreyerTemple.CloseFBandOpenTask();")
	for i = 1 , 8 do 
		lualib:ShowFormWithContent(player,"�ű���","CL:DelMagicFromPoint(100000009,".. posm[i][1] .. ",".. posm[i][2]  .. ")")
	end
end


 local ranges = {
	{0, 138, 146, 0, 0},
	{0, 233, 159, 0, 0},
	{0, 232, 91, 0, 0},
	{0, 134, 50, 0, 0},
	{0, 73, 95, 0, 0},
	{0, 50, 179, 0, 0},
	{0, 99, 258, 0, 0},
	{0, 184, 238, 0, 0},	
	} 
local pos = {{240,173},{222,82},{138,60},{61,83},{39,173},{90,252},{187,252}}	
local timeGenMonster = {
	{5*60,"��ħ������ħ����"},
	{10*60,{"��ħ�������ħ","��ħ�������ĺ���"}},
	{15*60,"��ħ����������ħ"},
	}
function timefuc(map,time_id)
	local players = {}
	local timenum = lualib:GetInt(map,"timenum")
	if timenum < 1500 then
		for i= 1 ,#ranges do 
			players = lualib:Map_GetRegionPlayersEx(map, ranges[i], true)
			if #players ~= 0 then		
				for k , v in pairs(players) do
					lualib:Map_JumpRnd(map, v)
				end
			end	
		end
	end	
	for i = 1 , #timeGenMonster do 
		if timenum == timeGenMonster[i][1] then
		--	lualib:SysMsg_SendBroadcastColor( "timeGenMonster" , "" , 1, 0)
			local rantab = {1,2,3,4,5,6,7}
			for j = 7 , 5 , -1 do 
				local ran = lualib:GenRandom(1, j) 
				local index = rantab[ran]
				if i == 2 then
					local rang = lualib:GenRandom(1, 2) 
					lualib:Map_GenMonster(map, pos[index][1], pos[index][2], 3, 4, timeGenMonster[i][2][rang], 1, false)
				else
					lualib:Map_GenMonster(map, pos[index][1], pos[index][2], 3, 4, timeGenMonster[i][2], 1, false)
					if i == 3 then
						break
					end
				end	
				table.remove(rantab,ran)
			end	
			break
		end
	end	
	--����ʱ���
	if timenum == 1320 then
		local playerList = lualib:Map_GetMapPlayers(map, true)
		if #playerList ~= 0 then 
			for i = 1 , #playerList do
				lualib:ShowFormWithContent(playerList[i], "form�ļ���", "xldb_timeUI")
			end	
		end		
	end
	
	if timenum == 1500 then
		local playerList = lualib:Map_GetMapPlayers(map, true)
		if #playerList ~= 0 then 
			for i = 1 , #playerList do
				lualib:Player_MapMoveXY(playerList[i],"", 143, 157, 5)
				lualib:ShowFormWithContent(playerList[i],"�ű���","CL:DelMagicFromPoint(100000009,152,149)")
			end	
		end		
		
	end
	lualib:SetInt(map,"timenum",lualib:GetInt(map,"timenum") + 1)
	return ""
	
end

function on_map_destroy(map)
	--lualib:SetInt(map, "gumu_jieshu", 1)
	lualib:SetStr("", "��ħ����GUID", "")
	lualib:SetInt(map, "timenum", 0)
	
end
