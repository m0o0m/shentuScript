local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("form/������Ϣ")
function on_create(item)
	
	lualib:AddTimerEx(item, 1, 500, 1, "sourceset", "")	
end

function sourceset(item)
	local drophost = lualib:ItemDropHost(item)
	if lualib:Monster_IsMonster(drophost) then
		local map = lualib:MapGuid(item)
		local mapname = lualib:Name(map)
		lualib:SetInt(item, "drop", 1)
		local owner = lualib:Monster_GetDropOwner(drophost)
		lualib:SetInt(item, "drop", 1)
		lualib:SetStr(item, "drop1", mapname)
		lualib:SetStr(item, "drop2", lualib:Name(drophost))
		lualib:SetStr(item, "drop3", lualib:Name(owner))
		lualib:SetStr(item, "drop4", lualib:Now())
	else
		local player = lualib:Item_GetRole(item)
		if player ~= "" then
			lualib:SetInt(item, "make", 1)
			lualib:SetStr(item, "make1", "NPC���")
			lualib:SetStr(item, "make2", lualib:Name(player))
			lualib:SetStr(item, "make3", lualib:Now())
			lualib:Item_NotifyUpdate("", item)
		else
			lualib:SetInt(item, "make", 1)
			lualib:SetStr(item, "make1", "�����")
			lualib:SetStr(item, "make2", "ϵͳ����")
			lualib:SetStr(item, "make3", lualib:Now())
		end
	end	
tip(item)
end


function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	local color = "GREENG"
	if item_map_x < 20000 then
		if player_name == "" then
		����ȫ����Ϣ("��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��",color)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"        
		����ȫ����Ϣ("ϵͳ��ʾ:["..item_name.."]������["..item_map_name.."]��["..item_map_x..":"..item_map_y.."]��",color)

		end
	else	
		return
	end
end
