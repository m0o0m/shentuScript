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
		local str = ""
		local a = lualib:Now()
		local start = string.find(a, " ") + 1
		local ending = string.find(a, ":") - 1
		local b = string.sub(a,start, ending)
		if tonumber(b) == 10 or tonumber(b) == 9 then
			str = "�޾���Ԩ   10:00 - 10:15"
		elseif tonumber(b) == 13 or tonumber(b) == 14 then
			str = "�޾���Ԩ   14:00 - 14:15"
		elseif tonumber(b) == 21 or tonumber(b) == 22 then
			str = "�޾���Ԩ   22:00 - 22:15"
		end
		lualib:SetDBStr("nowActivityName", str)
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway",1)
		lualib:SetInt("","�޾���Ԩ����",1)
		lualib:AddTimer("",963963,8100000,1,"cleanMap")
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#�޾���Ԩ�ѿ����������ɽ��NPC���롣#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic8", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#�޾���Ԩ����"..math.floor(times / 60000).."���ӿ�ʼ����ʱ�����ɽ�Ǵ�NPC���롣#COLOREND#", 11, 2)
	end
	return ""
end

function on_end_decl(id, map, times)
	if tonumber(times) == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
		lualib:SetInt("","�޾���Ԩ����",0)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#�޾���Ԩ�ѹرա�#COLOREND#", 11, 2)
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
	else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#�޾���Ԩ��ʣ"..math.floor(times / 60000).."���ӹرա�#COLOREND#", 11, 2)
	end 
	return ""
end



function enter(player, dgn_id)
	--lualib:SysMsg_SendBroadcastMsg("����enter", "��Ϣ")
	return ""
end


function cleanMap(player)
	--lualib:SysMsg_SendTopColor(1, "cleanMap", 11, 2)
	local map = {"������һ��","����������","����������","�������Ĳ�","���������","����������","�������߲�","�������˲�","�������Ų�","������ʮ��","������ʮһ��","������ʮ����","������ʮ����"}			
	for i=1,#map do 
		local mapguid = lualib:Map_GetMapGuid(map[i])
		local playerList = lualib:Map_GetMapPlayers(mapguid, true)
		if #playerList > 0 then 
			for j=1,#playerList do 
				lualib:Player_NpcMove(playerList[j], "����������Ա", 5)
			end
		end
	end
	lualib:DisableTimer("",963963)    
	return ""
end

function leave(player)
	--lualib:SysMsg_SendBroadcastMsg("����leave", "��Ϣ")
	return ""
end

function Goto(id,player,map)
	
	local level = lualib:Level(player)
	local vip_lv = lualib:GetVipLevel(player)
	if level > 79 or (vip_lv >0 and level > 49 ) then
		lualib:Player_NpcMove(player, "����������Ա", 5)
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"Campaign\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str .."end\n"
		lualib:ShowFormWithContent(player,"�ű���",str)
		lualib:ShowFormWithContent(player,"form�ļ���","EndlessUI")
	else 
		lualib:ShowFormWithContent(player,"�ű���","Campaign.msg(\"vip���50�����ɽ���\")" )
	end
	return ""
end



