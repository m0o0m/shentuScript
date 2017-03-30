local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[ʹ�õ��ߴ�����Ʒʾ��]]
function main(player_guid, item_guid)

local request_slots = 7
	local item_array_man   = {"1.5���������", "С����", "ף����ˮ", "��ӡ������" ,"��Ԫ��", "����ӡ", "���ﾭ�鵤"}
	local item_array_woman = {"1.5���������", "С����", "ף����ˮ", "��ӡ������" ,"��Ԫ��", "����ӡ", "���ﾭ�鵤"}
    --1.5���������*5��С����*10��ף����ˮ*2����ӡ������*2����Ԫ��*20������ӡ*2�����ﾭ�鵤*10
	local item_count = {5, 10, 2, 2, 20, 2, 10}

	--[[�жϰ����ո���]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ5�����ӣ�")
	    return false
	end

	--[[�����Ʒ������]]
	--�����
	--local item_id = item_array[math.random(10)]
	local role_gender = lualib:Player_GetIntProp(player_guid,  lua_role_gender)  --��ȡ�Ա�
		if role_gender == 1 then
			for element in pairs(item_array_man) do
				local result = lualib:Player_GiveItemUnbind(player_guid, item_array_man[element], item_count[element], "����Ʒ�����������", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		else
			for element in pairs(item_array_woman) do
				local result = lualib:Player_GiveItemUnbind(player_guid, item_array_woman[element], item_count[element], "����Ʒ�����������", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		end




	return true
end

