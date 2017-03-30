local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/ActivityDegree_s")

function EnterMap(player)
	
	local start = lualib:GetInt("","夜袭巫山城开启")
	if start == 1 then
		local newTime = lualib:Str2Time(lualib:Now())
		local oldTime =lualib:GetInt(player,"夜袭巫山城间隔")
		if newTime-oldTime > 30 then
			local level = lualib:Level(player)
			if level > 49 then
				local dgn_guid = lualib:GetStr("","夜袭巫山城GUID")
				lualib:Player_SetDgnTicket(player, dgn_guid)
				lualib:Player_MapMove(player, "夜袭巫山城")
				---------------------每日活跃度记录参加夜袭巫山城次数-------------------
				local count = lualib:GetDayInt(player, "activityDgr_yxwsc")
				if 0 == count then
					lualib:SetDayInt(player, "activityDgr_yxwsc", 1)
					lualib:SetDayInt(player, "totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 15)
					ActivityDegree_setFlag(player)
				end
				---------------------每日活跃度记录参加夜袭巫山城次数END----------------
				local num = tonumber(math.random(1,4))
				local tab = {{40,104},{58,85},{73,100},{55,118}}
				lualib:Player_EnterDgn(player , "夜袭巫山城" , 	tab[num][1] ,tab[num][2] , 5)
				lualib:ShowFormWithContent(player,"脚本表单","NightWnd.closeWnd();")
			else 
				lualib:ShowFormWithContent(player,"脚本表单"," NightWnd.msg(\"等级不足\");")
			end
		else
			local num = 30-(newTime-oldTime)
			lualib:ShowFormWithContent(player,"脚本表单"," NightWnd.msg(\""..num.."s后可进入\");")
			
		end
	else
		lualib:ShowFormWithContent(player,"脚本表单","NightWnd.msg(\"很抱歉，活动暂未开启\");")
	end
	return ""
	
end

function Back(player)
	lualib:SetInt("","夜袭巫山城开启",0)
	lualib:Player_NpcMove(player, "土城夜战比奇城", 5)

	return ""
	
end

function Time_Out(player,int,ranker)
	local tab = {}
	--local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	local tab = lualib:GetStr("", "夜袭巫山城人数")      --没有排序
	if #tab > 0 then 
		tab = json.decode(tab)
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
	end 
	
	lualib:ShowFormWithContent(player,"form文件表单","Night_RankWnd#"..serialize(tab).."#"..int.."#"..ranker)
	return ""
	
end