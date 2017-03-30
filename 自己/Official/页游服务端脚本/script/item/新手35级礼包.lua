local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[ʹ�õ��ߴ�����Ʒʾ��]]
function main(player_guid, item_guid)
	local lua_job = lualib:Player_GetIntProp(player_guid,  lua_role_job)  --��ȡְҵ
	local request_slots = 11
	local item_zs = {"���ﻹ�굤", "��Ԫ��", "��ӡ������", "�������ﾭ�鵤", "��ս����", "����", "С����", "���ĵ�", "�޸���ˮ"}
	local item_fs = {"���ﻹ�굤", "��Ԫ��", "��ӡ������", "�������ﾭ�鵤", "�ۻ껤��",  "����", "С����", "���ĵ�", "�޸���ˮ"}
	local item_ds = {"���ﻹ�굤", "��Ԫ��", "��ӡ������", "�������ﾭ�鵤", "���⻤��", "����", "С����", "���ĵ�", "�޸���ˮ"}
	local item_count = {3, 		  5, 			1, 			5, 		            1,  		5,		5,			3,		1}

	--[[�жϰ����ո���]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ11�����ӣ�")
	    return false
	end


		local level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
	if level < 35 then
		return false
	end

	--[[�����Ʒ������]]
	--�����
	--local item_id = item_array[math.random(10)]
		if lua_job == 1 then
			for element in pairs(item_zs) do
				local result = lualib:Player_GiveItemBind(player_guid, item_zs[element], item_count[element], "����Ʒ������31�����", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		else
		if lua_job == 2 then
			for element in pairs(item_fs) do
				local result = lualib:Player_GiveItemBind(player_guid, item_fs[element], item_count[element], "����Ʒ������31�����", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		else
			for element in pairs(item_ds) do
				local result = lualib:Player_GiveItemBind(player_guid, item_ds[element], item_count[element], "����Ʒ������31�����", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		end
	end	
	return true
end
