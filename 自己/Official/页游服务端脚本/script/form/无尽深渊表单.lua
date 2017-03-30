local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function _Transmit(player)
	local _t = {["神威狱一层"]={"神威狱二层",1, 2, 1},
				["神威狱二层"]={"神威狱三层",2, 3, 1},
				["神威狱三层"]={"神威狱四层",3, 5, 1},
				["神威狱四层"]={"神威狱五层",4, 7, 1},
				["神威狱五层"]={"神威狱六层",5, 9, 1},
				["神威狱六层"]={"神威狱七层",6, 12, 1},
				["神威狱七层"]={"神威狱八层",7, 14, 1},
				["神威狱八层"]={"神威狱九层",8, 16, 1},
				["神威狱九层"]={"神威狱十层",9, 18, 1},
				["神威狱十层"]={"神威狱十一层",10, 20, 1},
				["神威狱十一层"]={"神威狱十二层",11, 22, 1},
				["神威狱十二层"]={"神威狱十三层",12, 25, 1},
				["神威狱十三层"]={"巫山城"},
	}  --[1]next layer name;[2]cost item number;[3]reward1;[4]reward2
	local mapGuid = lualib:MapGuid(player)
	local mapKeyName = lualib:KeyName(mapGuid)
	local count = 0
	if mapKeyName ~= "神威狱十三层" then	
		if 	lualib:ItemCount(player, "神威狱通行证") >= _t[mapKeyName][2] then	
			if not (lualib:BagFree(player, true, false, false) >= _t[mapKeyName][3] + _t[mapKeyName][4]) then
				lualib:ShowFormWithContent(player, "脚本表单", "EndlessHell.Alert(\"包裹空间不足\");")
			else   
				if lualib:DelItem(player, "神威狱通行证", _t[mapKeyName][2], 2, "神威狱", "进入神威狱下一层") then
					for i = 1, _t[mapKeyName][3] do
						if lualib:AddItem(player, "灵石精华小", 1, true, "神威狱", "进入神威狱下一层") then
							count = count + 1
						end
					end
					if count == _t[mapKeyName][3] then
						if lualib:AddItem(player, "金砖小", _t[mapKeyName][4], true, "神威狱", "进入神威狱下一层") then
							if lualib:Player_MapMove(player, _t[mapKeyName][1]) then  --transmit next map RANDOM position(x,y)
								lualib:ShowFormWithContent(player, "脚本表单", "EndlessHell.closeWnd();")
							end
						end
					end
				end
			end
		else
			lualib:ShowFormWithContent(player, "脚本表单", "EndlessHell.Alert(\"深渊凭证不足\");")
			--lualib:SysPromptMsg(player, "tickets are not enough!!")
		end
	else
		if lualib:Player_MapMoveXY(player, _t[mapKeyName][1], 164, 188, 3) then   --transmit next map SPECIFIC position(x,y)
			lualib:ShowFormWithContent(player, "脚本表单", "EndlessHell.closeWnd();")
		end
	end
	return ""
end



function EnterMap(player)
	
	local start = lualib:GetInt("","无尽深渊开启")
	if start == 1 then 
		local level = lualib:Level(player)
		local vip_lv = lualib:GetVipLevel(player)
		if level > 79 or (vip_lv >0 and level > 49 ) then
			local time_tab = {0,0,0,2000,2500,2800,3000}  
			
			local StartServerTime = lualib:GetConstVar("StartServerTime")
			local StartServerTime_int = lualib:Str2Time(StartServerTime)  --开服时间（秒）
			local allTime = lualib:GetAllTime()
			local day = math.ceil((allTime - StartServerTime_int)/(24*60*60)) --开服第几天
			
	
			if day > 7 then day = 7 end
			local job = lualib:Job(player)
			local attk = 0
			if job == 2 then 
				attk = lualib:MagAtk(player, true)
			elseif job == 3 then 
				attk=  lualib:TaoAtk(player, true) 
			else
				attk = lualib:PhyAtk(player, true)   
			end
			if attk > time_tab[day] then 
				local name = lualib:Name(player)
				local s1 = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#"..name.."#COLOREND##COLORCOLOR_YELLOW#进入无尽深渊，无尽深渊可从巫山城NPC处进入！#COLOREND#"
				lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)

				lualib:Player_MapMove(player, "神威狱一层")
				lualib:ShowFormWithContent(player,"脚本表单","EndlessUI.closeWnd();")
			else 
				lualib:ShowFormWithContent(player,"脚本表单","EndlessUI.msg(\"攻击力达到"..time_tab[day].."方可进入\");")
			end
		else 
			lualib:ShowFormWithContent(player,"脚本表单","EndlessUI.msg(\"等级不足\");")
		end
		
	else
		lualib:ShowFormWithContent(player,"脚本表单","EndlessUI.msg(\"很抱歉，活动暂未开启\");")
	end
	return ""
	
end



