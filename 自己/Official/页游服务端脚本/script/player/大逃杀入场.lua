local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_campaign_start(player, dgn)
	--lualib:Debug("ǧ���䶷���볡�ص���")
	
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 40 then return end
	
	lualib:SysMsg_SendTriggerMsg(player, "���յ���\"����ɱ�볡\"���룡")
	--[[if not lualib:SysMsg_SendMsgDlg(player, 1, 
							"ǧ���䶷���Ѿ�����������װ�������ߡ���������㣬���Ƿ�μ��䶷�����#BUTTON0#ȷ��#BUTTONEND##BUTTON1#ȡ��#BUTTONEND#",
							120, "on_button_click", dgn) then
		lualib:Error("ǧ���䶷���볡��������ʧ�ܣ�")
	end
	lualib:Debug("ǧ���䶷���볡��������ɹ���")]]
	
	local msg = "����ɱ�볡��ʼ�ˣ�\n \n"
	msg = msg.."<@enter#"..dgn.." *01*��Ҫ����>\n"
	msg = msg.."<@leave *01*�Һ�æ>"
	lualib:NPCTalk(player, msg)
end

--[[
function on_button_click(dlg_id, player, btn_id, dgn_id)
	if dlg_id ~= 1 then return end
	if btn_id ~= 0 then return end

	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
        lualib:Error("��������ɽ����ͼǧ���䶷����")
    end

    if lualib:Player_EnterDgn(player, "�䶷��", 0, 0, 0) == false then
        lualib:Error("�����ͼǧ���䶷��ʧ�ܣ�")
    end
end
]]

function enter(player, dgn_id)
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		return "��������ɽ����ͼ����ɱս����"
    end

    if lualib:Player_EnterDgn(player, "����ɱ", 0, 0, 0) == false then
		return "��������ɽ����ͼǧ���䶷����"
    end
	return ""
end

function leave(player)
	return ""
end
