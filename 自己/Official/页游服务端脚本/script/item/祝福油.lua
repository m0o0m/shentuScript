local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local luck_table = {}
luck_table[-10] = 10000
luck_table[-9] = 10000
luck_table[-8] = 10000
luck_table[-7] = 10000
luck_table[-6] = 10000
luck_table[-5] = 10000
luck_table[-4] = 10000
luck_table[-3] = 10000
luck_table[-2] = 10000
luck_table[-1] = 10000
luck_table[0] = 10000
luck_table[1] = 9500
luck_table[2] = 7500
luck_table[3] = 5500
luck_table[4] = 3500
luck_table[5] = 2500
luck_table[6] = 1500
luck_table[7] = 500
luck_table[8] = 100
luck_table[9] = 0
luck_table[10] = 0
local luck_broadcast = 5
local invalid_section = 3333

function main(player_guid, item_guid)
    local player_name = lualib:Player_GetStrProp(player_guid,  lua_role_user_name)
    if player_name == "" then return false end

   	local item_guid = lualib:Player_GetEquipGuid(player_guid,  lua_site_weapon)
	if item_guid == "" then
        lualib:SysMsg_SendWarnMsg(player_guid, "��û��װ������������ʹ��ף����ˮ��")
		return false
	end

    local luck_curse = lualib:Equip_GetLuckCurse(player_guid, item_guid)
    if luck_table[luck_curse] == nil then
        lualib:SysMsg_SendWarnMsg(player_guid, "ϵͳ����")
        return false
    end

    if lualib:GenRandom(1, 10000) <= invalid_section then
        lualib:SysMsg_SendTriggerMsg(player_guid, "�������ף��ʧ�ܣ�")
        return true
    end

    if lualib:GenRandom(1, 10000) <= luck_table[luck_curse] then
        luck = luck_curse + 1
        if luck_table[luck] ~= nil then
            if lualib:Equip_SetLuckCurse(player_guid, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player_guid, "��Ʒ�����ڣ�����ʹ��ף����ˮ��")
                return false
            else
                lualib:SysMsg_SendTriggerMsg(player_guid, "���������ף����")
                if luck >= luck_broadcast then
                    lualib:SysMsg_SendCenterMsg(1, "["..player_name.."]".."ʹ��[ף����ˮ]����������������"..luck.."�㣡", "")
					end
            end
        end
    else
        luck = luck_curse - 1
        if luck_table[luck] ~= nil then
            if lualib:Equip_SetLuckCurse(player_guid, item_guid, luck) == false then
                lualib:SysMsg_SendWarnMsg(player_guid, "��Ʒ�����ڣ�����ʹ��ף����ˮ��")
                return false
            else
                lualib:SysMsg_SendTriggerMsg(player_guid, "������������䣡")
            end
        end
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
			--local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			--lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            --local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			--local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			--lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end


