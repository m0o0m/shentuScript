local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function EnterMap(player)
	
	local start = lualib:GetInt("","ħ�����ֿ���")
	if start == 1 then
		local  level = lualib:Level(player)
		if level >= 80 then
			
			local dgn_guid = lualib:GetStr("","ħ������GUID")
			lualib:Player_SetDgnTicket(player, dgn_guid)
			lualib:Map_JumpRnd(dgn_guid, player)
			lualib:ShowFormWithContent(player,"�ű���","DemonWnd.closeWnd();")
		else 
			lualib:ShowFormWithContent(player,"�ű���"," DemonWnd.msg(\"�ȼ�����\");")
		end
	else
		lualib:ShowFormWithContent(player,"�ű���","DemonWnd.msg(\"�ܱ�Ǹ�����δ����\");")
	end
	return ""
	
end

function Back(player)
	
	--lualib:SetInt("","ħ�����ֿ���",0)
	
	local map_guid = lualib:MapGuid(player)
	local map_KeyName = lualib:KeyName(map_guid)
	if map_KeyName ~= "ħ������" then 
		return ""
	end
	local int = lualib:GetDayInt(player,"ħ������ǰ��")
	if int == 1 then 
		local dgn_guid = lualib:GetStr("","ħ�����ֽ���GUID")
		lualib:Player_SetDgnTicket(player, dgn_guid)
		lualib:Map_JumpRnd(dgn_guid, player)
	else
		lualib:Player_MapMoveXY(player,"����", 106, 124, 3)
	end
	
	return ""
	
end

function Time_Out(player,int,ranker)

	local tab = lualib:GetStr("", "ħ����������")      --û������
	if #tab > 0 then 
		tab = json.decode(tab)
		for j=1,#tab do 
			if tab[j][1] ~= "" then 
				local score = tonumber(lualib:GetDayInt(tab[j][1],"ħ�����ֻ���"))
				if score == 0 then 
					
				else
					tab[j][3] = tonumber(score)
				end
			end
		end
	end 
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
	
	for  i = 1,#tab do 
		if tab[i][3] == 0 then break end
		if i < 6 then 
			lualib:SetDayInt(tab[i][1],"ħ������ǰ��",1)
		end
	end
	lualib:ShowFormWithContent(player,"form�ļ���","Demon_RankWnd#"..serialize(tab).."#"..int.."#"..ranker)
	return ""
	
end