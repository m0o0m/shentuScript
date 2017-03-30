local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local npc_guid = "";
function main(npc, player)
	npc_guid = npc;
	local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	if player_name == "" then return "�����ˣ�����ϵGM@1��" end

    local msg = player_name.."��������ǰ�Ŀ���Զ���������������ر���Ŷ����\n \n"
	msg = msg.."<@ExchangeItem *01*�������ر���>\n"
	msg = msg.."<@Lever *01*̫���ţ��ֶ���>\n"
    return msg
end

function ExchangeItem(npc, player)
	--������
	if lualib:ProgressBarStart(player, 5000, "����", "progress_complete", "progress_abort", "����������") == false then
		return "�����ˣ�����ϵGM@2��"
	end

	return ""
end

function Lever(npc, player)
	return ""
end

function progress_complete(player, params)		--�������ɹ�
	local request_slots = 4
	local item_array = {"�Ž�", "�ֿ�����1", "�ֿ�����2","��������1"}

	if lualib:Player_GetBagFree(player_guid) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ4�����ӣ�")
	    return "�����ռ䲻������Ҫ4�����ӣ�"
	end

	for element in pairs(item_array) do
		local result = lualib:Player_GiveItemBind(player, item_array[element], 1, "����Ʒ������", player)
		if result == false then
			lualib:SysMsg_SendTriggerMsg(player, "��ȡ��Ʒ"..item_array[element].."ʧ�ܣ�")
			return "��ȡ��Ʒ"..item_array[element].."ʧ�ܣ�"
		end
	end

	lualib:Npc_Remove(npc_guid)
	return "��Ʒ����ɹ���"
end

function progress_abort(player, params)   --������ʧ��
end
