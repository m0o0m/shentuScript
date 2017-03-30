local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function EnterMap(player)
	
	local start = lualib:GetInt("","魔族入侵开启")
	if start == 1 then
		local  level = lualib:Level(player)
		if level >= 80 then
			
			local dgn_guid = lualib:GetStr("","魔族入侵GUID")
			lualib:Player_SetDgnTicket(player, dgn_guid)
			lualib:Map_JumpRnd(dgn_guid, player)
			lualib:ShowFormWithContent(player,"脚本表单","DemonWnd.closeWnd();")
		else 
			lualib:ShowFormWithContent(player,"脚本表单"," DemonWnd.msg(\"等级不足\");")
		end
	else
		lualib:ShowFormWithContent(player,"脚本表单","DemonWnd.msg(\"很抱歉，活动暂未开启\");")
	end
	return ""
	
end

function Back(player)
	
	--lualib:SetInt("","魔族入侵开启",0)
	
	local map_guid = lualib:MapGuid(player)
	local map_KeyName = lualib:KeyName(map_guid)
	if map_KeyName ~= "魔族入侵" then 
		return ""
	end
	local int = lualib:GetDayInt(player,"魔族入侵前五")
	if int == 1 then 
		local dgn_guid = lualib:GetStr("","魔族入侵奖励GUID")
		lualib:Player_SetDgnTicket(player, dgn_guid)
		lualib:Map_JumpRnd(dgn_guid, player)
	else
		lualib:Player_MapMoveXY(player,"土城", 106, 124, 3)
	end
	
	return ""
	
end

function Time_Out(player,int,ranker)

	local tab = lualib:GetStr("", "魔族入侵人数")      --没有排序
	if #tab > 0 then 
		tab = json.decode(tab)
		for j=1,#tab do 
			if tab[j][1] ~= "" then 
				local score = tonumber(lualib:GetDayInt(tab[j][1],"魔族入侵积分"))
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
			lualib:SetDayInt(tab[i][1],"魔族入侵前五",1)
		end
	end
	lualib:ShowFormWithContent(player,"form文件表单","Demon_RankWnd#"..serialize(tab).."#"..int.."#"..ranker)
	return ""
	
end