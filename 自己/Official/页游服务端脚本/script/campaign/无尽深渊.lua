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
		local str = ""
		local a = lualib:Now()
		local start = string.find(a, " ") + 1
		local ending = string.find(a, ":") - 1
		local b = string.sub(a,start, ending)
		if tonumber(b) == 10 or tonumber(b) == 9 then
			str = "无尽深渊   10:00 - 10:15"
		elseif tonumber(b) == 13 or tonumber(b) == 14 then
			str = "无尽深渊   14:00 - 14:15"
		elseif tonumber(b) == 21 or tonumber(b) == 22 then
			str = "无尽深渊   22:00 - 22:15"
		end
		lualib:SetDBStr("nowActivityName", str)
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway",1)
		lualib:SetInt("","无尽深渊开启",1)
		lualib:AddTimer("",963963,8100000,1,"cleanMap")
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#无尽深渊已开启，请从巫山城NPC进入。#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic8", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#无尽深渊还有"..math.floor(times / 60000).."分钟开始，到时请从巫山城处NPC进入。#COLOREND#", 11, 2)
	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		lualib:SetInt("","无尽深渊开启",0)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#无尽深渊已关闭。#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#无尽深渊仅剩"..math.floor(times / 60000).."分钟关闭。#COLOREND#", 11, 2)
	end 
	return ""
end



function enter(player, dgn_id)
	--lualib:SysMsg_SendBroadcastMsg("测试enter", "消息")
	return ""
end


function cleanMap(player)
	--lualib:SysMsg_SendTopColor(1, "cleanMap", 11, 2)
	local map = {"神威狱一层","神威狱二层","神威狱三层","神威狱四层","神威狱五层","神威狱六层","神威狱七层","神威狱八层","神威狱九层","神威狱十层","神威狱十一层","神威狱十二层","神威狱十三层"}			
	for i=1,#map do 
		local mapguid = lualib:Map_GetMapGuid(map[i])
		local playerList = lualib:Map_GetMapPlayers(mapguid, true)
		if #playerList > 0 then 
			for j=1,#playerList do 
				lualib:Player_NpcMove(playerList[j], "神威狱传送员", 5)
			end
		end
	end
	lualib:DisableTimer("",963963)    
	return ""
end

function leave(player)
	--lualib:SysMsg_SendBroadcastMsg("测试leave", "消息")
	return ""
end

function Goto(id,player,map)
	
	local level = lualib:Level(player)
	local vip_lv = lualib:GetVipLevel(player)
	if level > 79 or (vip_lv >0 and level > 49 ) then
		lualib:Player_NpcMove(player, "神威狱传送员", 5)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"脚本表单",str)
		lualib:ShowFormWithContent(player,"form文件表单","EndlessUI")
	else 
		lualib:ShowFormWithContent(player,"脚本表单","Campaign.msg(\"vip玩家50级即可进入\")" )
	end
	return ""
end



