local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[ʹ�õ��ߴ�����Ʒʾ��]]
function main(player_guid, item_guid)

local request_slots = 8
	local item_array_man   = {"��ң��(100��)", "�������(10��)", "��Ԫ��", "С����", "�������", "����", "��Ǯ��(5��)", "����30�����"}
	local item_array_woman = {"��ң��(100��)", "�������(10��)", "��Ԫ��", "С����", "�������", "����", "��Ǯ��(5��)", "����30�����"}
	local item_count = {			1,				 1,				 1,		 1,			 25,		5,		1,				1}

	--[[�жϰ����ո���]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ8�����ӣ�")
	    return false
	end

		local level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
	if level < 25 then
		return false
	end

	--[[�����Ʒ������]]
	--�����
	--local item_id = item_array[math.random(10)]
	local role_gender = lualib:Player_GetIntProp(player_guid,  lua_role_gender)  --��ȡ�Ա�
		if role_gender == 1 then
			for element in pairs(item_array_man) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_man[element], item_count[element], "����Ʒ�����ֿ����(30��)", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		else
			for element in pairs(item_array_woman) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_woman[element], item_count[element], "����Ʒ�����ֿ����(30��)", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		end




	return true
end
