local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[ʹ�õ��ߴ�����Ʒʾ��]]
function main(player_guid, item_guid)

local request_slots = 1
	local item_array_man   = {"ף����ˮ"}
	local item_array_woman = {"ף����ˮ"}
	local item_count = {100}

	--[[�жϰ����ո���]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ1�����ӣ�")
	    return false
	end

	--[[�����Ʒ������]]
	--�����
	--local item_id = item_array[math.random(10)]
	local role_gender = lualib:Player_GetIntProp(player_guid,  lua_role_gender)  --��ȡ�Ա�
		if role_gender == 1 then
			for element in pairs(item_array_man) do
				local result = lualib:Player_GiveItemUnbind(player_guid, item_array_man[element], item_count[element], "����Ʒ��ף�������", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		else
			for element in pairs(item_array_woman) do
				local result = lualib:Player_GiveItemUnbind(player_guid, item_array_woman[element], item_count[element], "����Ʒ��ף�������", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
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
