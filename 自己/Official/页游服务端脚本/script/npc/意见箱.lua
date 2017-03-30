local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"����ʲô����ͳ��������ɡ�", "����ر���Լ����뷨����һ���ܺõ����顣", "��������䣬���������"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 320000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    msg = "�𾴵���ң���������Ϸ����ʲô�������BUG����ͨ������������ύ��������Ա�ᾡ�����������������޸ģ���л���Ĳ��룬��������;�Ż�Խ��Խ�á�\n \n"
	msg = msg.."<@web *01*[��Ҫ�����]>\n"
	msg = msg.."<@web2 *01*[���ύ�����]>\n"
	return msg
end

function web(npc, player)
    local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local svrid = lualib:GetZoneId()
    local msg = "http://www.hzyotoy.com/index.do?mod=playersuggest&act=add&uid="..userid.."&uname="..name.."&sid="..svrid
    lualib:SysMsg_SendWebMsg(player, "��;�����", msg, "")
    return ""
end

function web2(npc, player)
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local svrid = lualib:GetZoneId()
	local bid = lualib:GetAgentId()
	local msg = "http://www.hzyotoy.com/index.do?mod=playersuggest&act=mysuggest&uid="..userid.."&sid="..svrid.."&bid="..bid.."&uname="..name
	lualib:SysMsg_SendWebMsg(player, "��;�����", msg, "")
	return ""
end
