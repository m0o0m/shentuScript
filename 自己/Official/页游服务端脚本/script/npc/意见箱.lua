local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"你有什么意见就冲着我来吧。", "合理地表达自己的想法，是一件很好的事情。", "我是意见箱，你有意见吗？"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 320000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    msg = "尊敬的玩家，您若在游戏中有什么意见或者BUG，可通过我这里进行提交，工作人员会尽快根据您的意见来做修改，感谢您的参与，有您，神途才会越来越好。\n \n"
	msg = msg.."<@web *01*[我要提意见]>\n"
	msg = msg.."<@web2 *01*[我提交的意见]>\n"
	return msg
end

function web(npc, player)
    local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local svrid = lualib:GetZoneId()
    local msg = "http://www.hzyotoy.com/index.do?mod=playersuggest&act=add&uid="..userid.."&uname="..name.."&sid="..svrid
    lualib:SysMsg_SendWebMsg(player, "神途意见箱", msg, "")
    return ""
end

function web2(npc, player)
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local svrid = lualib:GetZoneId()
	local bid = lualib:GetAgentId()
	local msg = "http://www.hzyotoy.com/index.do?mod=playersuggest&act=mysuggest&uid="..userid.."&sid="..svrid.."&bid="..bid.."&uname="..name
	lualib:SysMsg_SendWebMsg(player, "神途意见箱", msg, "")
	return ""
end
