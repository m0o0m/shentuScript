local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[ʹ�õ��ߴ�����Ʒʾ��]]
function main(player_guid, item_guid)
	local lua_job = lualib:Player_GetIntProp(player_guid,  lua_role_job)  --��ȡְҵ
	local request_slots = 9
	local item_zs = {"��Ǯ��(10��)", "��Ԫ��", "ף����ˮ", "1.5���������", "�������", "����", "С����", "����35�����"}
	local item_fs = {"��Ǯ��(10��)", "��Ԫ��", "ף����ˮ", "1.5���������", "�������", "����", "С����", "����35�����"}
	local item_ds = {"��Ǯ��(10��)", "��Ԫ��", "ף����ˮ", "1.5���������", "�������", "����", "С����", "����35�����"}
	local item_count = {1, 				2, 		  1, 				1, 			 1,			25,		  5, 			1,		1}

	--[[�жϰ����ո���]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ9�����ӣ�")
	    return false
	end


		local level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
	if level < 30 then
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
