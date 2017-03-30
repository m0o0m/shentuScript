local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
	return ""
end

function on_start_decl(id, map, times)
	
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "��ħ���   19:25 - 20:00")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway",1)
		--lualib:AddTimer("",963963,1200000,1,"cleanMap")
		lualib:SetInt("","ħ�����ֿ���",1)
		
		local dgn_guid = lualib:Map_CreateDgn("ħ������" , true, 20*60)  
		lualib:SetStr("","ħ������GUID",""..dgn_guid)
		
		dgn_guid = lualib:Map_CreateDgn("ħ�����ֽ���" , true, 40*60)  
		lualib:SetStr("","ħ�����ֽ���GUID",""..dgn_guid)
		lualib:SetInt("","ħ�����ֿ���ʱ��",lualib:Str2Time( lualib:Now())) 
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#��ħ����ѿ������������NPC�����롣#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic1", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#��ħ�������"..math.floor(times / 60000).."���ӿ�ʼ����ʱ�������NPC�����롣#COLOREND#", 11, 2)
	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then 
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		lualib:SetInt("","ħ�����ֿ���",0)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#��ħ���������#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#��ħ�������"..math.floor(times / 60000).."���Ӻ������#COLOREND#", 11, 2)
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
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	local level = lualib:Level(player)
	local reinLevel = lualib:GetInt(player, "reinLevel")
	if level >= 80 then
		lualib:Player_NpcMove(player, "����ħ������", 5)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"�ű���",str)
		lualib:ShowFormWithContent(player,"form�ļ���","DemonWnd")
	else 
		lualib:ShowFormWithContent(player,"�ű���","Campaign.msg(\"�ȼ�����\")" )
	end
	return ""
end


