local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)
    local key_name = lualib:KeyName(item)
	local PlayerLevel = lualib:Player_GetIntProp(player,  lua_role_level)
    local amount = lualib:Item_GetAmount(player, item)
	lualib:Item_Destroy(player, item, "ʹ�þ��鵤", "���鵤С")
	if key_name == "���鵤С" then
        if lualib:Player_AddExp(player, 3000000 * amount, "ʹ�þ��鵤", "���鵤С") == false  then
            lualib:Print("���鵤ʹ��ʧ��")
            return false
        else
            lualib:Print("���鵤ʹ�óɹ�")
            return true
        end
    elseif key_name == "���鵤��" then
        --addexp = (PlayerLevel^3)*2
		if lualib:Player_AddExp(player, 6000000 * amount, "ʹ�����;��鵤", "���鵤��") == false then
            lualib:Print("���;��鵤ʹ��ʧ��")
            return false
        else
            lualib:Print("���;��鵤ʹ�óɹ�")
            return true
        end
    elseif key_name == "���鵤��" then
        if lualib:Player_AddExp(player, 10000000 * amount, "ʹ�ô��;��鵤", "���鵤��") == false then
            lualib:Print("���ʹ��ʧ��")
            return false
        else
            lualib:Print("���ʹ�óɹ�")
            return true
        end
    end


end


function on_create(item)
--	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
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
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end