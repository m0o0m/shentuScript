local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--[[ʹ�õ��ߴ�����Ʒʾ��]]
function main(player_guid, item_guid)
	local item_array_man   = {"������", "������", "���Ѵ�����", "���̽��" , "99��õ�廨", "����ֿ�", "�����̵�", "����ҩ��", "��Сҩ��", "�����û���(10��)", "�������"}
	local item_array_woman = {"������", "������", "���Ѵ�����", "���̽��" , "99��õ�廨", "����ֿ�", "�����̵�", "����ҩ��", "��Сҩ��", "�����û���(10��)", "�������"}
	local item_count = {1, 1, 1, 5, 1 ,1 ,1, 1, 1, 1, 10}
    local ewai_item = 
    {
        ["�л����"] =        {{"������(δ����)", 1}, {"������3��", 1}}, --����֮��
        ["265g���"] =        {{"����(δ����)", 1}, {"������2��", 1}}, --��Ӱ֮��
        ["07073���"] =       {{"��Ӱ(δ����)", 1}, {"������2��", 1}}, --��Ӱ֮��
        ["������Ϸ�����"] =  {{"��Ѫ(δ����)", 1}, {"������2��", 1}}, --��Ӱ֮��
    }
    
    

    local item_key = lualib:KeyName(item_guid)

    if ewai_item[item_key] ~= "" and ewai_item[item_key] ~= nil then
        for i = 1, #ewai_item[item_key] do
            table.insert(item_array_man, ewai_item[item_key][i][1])
            table.insert(item_array_woman, ewai_item[item_key][i][1])
            table.insert(item_count, ewai_item[item_key][i][2])
        end
    elseif item_key == "QQȺ���" then
        item_array_man   = {"1.5���������" ,"ѭ��ħ��"  ,"��ң��(50��)" ,"�������(50��)" ,"ʱ֮ɳ��"}
        item_array_woman = {"1.5���������" ,"ѭ��ħ��"  ,"��ң��(50��)" ,"�������(50��)" ,"ʱ֮ɳ��"}
        item_count = {5, 5, 1 ,1 ,1}
    elseif item_key == "QQǩ������" then
        item_array_man   = {"1.5���������" , "��ң��(100��)", "�������(500��)", "1000��Ԫ��", "С����"}
        item_array_woman = {"1.5���������" , "��ң��(100��)", "�������(500��)", "1000��Ԫ��", "С����"}
        item_count = {3, 1, 1 ,1 ,1}
    elseif item_key == "�᳤���" then
        item_array_man = {"�Ž�"}
        item_array_woman = {"�Ž�"}
        item_count = {1}
    else
        lualib:SysPromptMsg(player_guid, "ϵͳ����")
        return false
    end

    local request_slots = #item_array_man
    if ewai_item[item_key] ~= "" then
        request_slots = #item_array_man + 4
    end
	--[[�жϰ����ո���]]
	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player_guid, "�����ռ䲻������Ҫ"..request_slots.."�����ӣ�")
	    return false
	end

	--[[�����Ʒ������]]
	--�����
	--local item_id = item_array[math.random(10)]
	local role_gender = lualib:Player_GetIntProp(player_guid,  lua_role_gender)  --��ȡ�Ա�
		if role_gender == 1 then
			for element in pairs(item_array_man) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_man[element], item_count[element], "����Ʒ��VIP���", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		else
			for element in pairs(item_array_woman) do
				local result = lualib:Player_GiveItemBind(player_guid, item_array_woman[element], item_count[element], "����Ʒ��VIP���", player_guid)
				if result == false then
				    lualib:SysMsg_SendTriggerMsg(player_guid, "��ӵ���ʧ�ܣ�")
					return false
				end
			end
		end




	return true
end
