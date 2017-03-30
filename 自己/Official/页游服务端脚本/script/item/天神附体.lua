local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
	
	if lualib:GetInt(player, "autoattack") == 1 then
		lualib:StopAutoRun(player)
		lualib:SetInt(player, "autoattack", 0)

		lualib:SysTriggerMsg(player, "�����뿪�ˣ��ٴε���ɽ����Զ�ս����")
	else
		lualib:StartAutoRun(player, "")
		lualib:SetInt(player, "autoattack", 1)
		lualib:SetStr(player, "map_1", lualib:MapGuid(player))
		lualib:SysTriggerMsg(player, "�������ˣ������ڻ������Լ�����Ѫ����������ս���ţ��ж��ɣ����ˡ����ٴε�������Զ�ս����")
	end
	
	return true
end


function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "["..player_name.."]��Ʒ�����ˣ���"..item_map_name.."["..item_map_x..":"..item_map_y.."]�����һ��".."��"..item_name.."��������"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end

function close(item)
	return ""
end
