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
		lualib:SetDBStr("nowActivityName", "禁魔神殿   19:25 - 20:00")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway",1)
		--lualib:AddTimer("",963963,1200000,1,"cleanMap")
		lualib:SetInt("","魔族入侵开启",1)
		
		local dgn_guid = lualib:Map_CreateDgn("魔族入侵" , true, 20*60)  
		lualib:SetStr("","魔族入侵GUID",""..dgn_guid)
		
		dgn_guid = lualib:Map_CreateDgn("魔族入侵奖励" , true, 40*60)  
		lualib:SetStr("","魔族入侵奖励GUID",""..dgn_guid)
		lualib:SetInt("","魔族入侵开启时间",lualib:Str2Time( lualib:Now())) 
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#禁魔神殿活动已开启，请从龙城NPC处进入。#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("玩家活动传送:playerMoveMagic1", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#禁魔神殿活动还有"..math.floor(times / 60000).."分钟开始，到时请从龙城NPC处进入。#COLOREND#", 11, 2)
	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then 
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		lualib:SetInt("","魔族入侵开启",0)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#禁魔神殿活动结束。#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#禁魔神殿活动将在"..math.floor(times / 60000).."分钟后结束。#COLOREND#", 11, 2)
	end 
	return ""
end


function enter(player, dgn_id)
	return ""
end

function cleanMap(player)
	return ""
end

function leave(player)
	return ""
end

function Goto(id,player,map)
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return ""
	end
	local level = lualib:Level(player)
	local reinLevel = lualib:GetInt(player, "reinLevel")
	if level >= 80 then
		lualib:Player_NpcMove(player, "土城魔族入侵", 5)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"脚本表单",str)
		lualib:ShowFormWithContent(player,"form文件表单","DemonWnd")
	else 
		lualib:ShowFormWithContent(player,"脚本表单","Campaign.msg(\"等级不足\")" )
	end
	return ""
end


