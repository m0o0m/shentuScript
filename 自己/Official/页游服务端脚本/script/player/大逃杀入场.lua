local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_campaign_start(player, dgn)
	--lualib:Debug("千人武斗场入场回调！")
	
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 40 then return end
	
	lualib:SysMsg_SendTriggerMsg(player, "你收到了\"大逃杀入场\"邀请！")
	--[[if not lualib:SysMsg_SendMsgDlg(player, 1, 
							"千人武斗场已经开启，更多装备、道具、经验等着你，你是否参加武斗场活动？#BUTTON0#确定#BUTTONEND##BUTTON1#取消#BUTTONEND#",
							120, "on_button_click", dgn) then
		lualib:Error("千人武斗场入场弹框请求失败！")
	end
	lualib:Debug("千人武斗场入场弹框请求成功！")]]
	
	local msg = "大逃杀入场开始了！\n \n"
	msg = msg.."<@enter#"..dgn.." *01*我要进入>\n"
	msg = msg.."<@leave *01*我很忙>"
	lualib:NPCTalk(player, msg)
end

--[[
function on_button_click(dlg_id, player, btn_id, dgn_id)
	if dlg_id ~= 1 then return end
	if btn_id ~= 0 then return end

	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
        lualib:Error("您不被许可进入地图千人武斗场！")
    end

    if lualib:Player_EnterDgn(player, "武斗场", 0, 0, 0) == false then
        lualib:Error("进入地图千人武斗场失败！")
    end
end
]]

function enter(player, dgn_id)
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		return "您不被许可进入地图大逃杀战场！"
    end

    if lualib:Player_EnterDgn(player, "大逃杀", 0, 0, 0) == false then
		return "您不被许可进入地图千人武斗场！"
    end
	return ""
end

function leave(player)
	return ""
end
