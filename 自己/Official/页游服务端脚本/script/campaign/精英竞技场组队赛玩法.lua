local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------

function on_start(id, map)
end

------------------开始宣告--------------
function on_start_decl(id, map, times) --活动id，地图标识符，传入秒数
	local times = tonumber(times)
	if times == 0 then
		ltszuduiqingli() --活动相关数据清理
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", "精英竞技场组队赛现已开始，想要参加的玩家请到龙城NPC竞技场报名官[226,219]处报名，参加比赛即有竞技场积分拿。", 15000)
	end
end

------------------结束宣告--------------
function on_end_decl(id, map, times)
	local times = tonumber(times)
	if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[精英竞技场]", "精英竞技组队赛现已结束，想要参加的玩家只能等待下次活动开启了。", 15000)
	end
end

------------------活动面板传送------------------
function Goto(id,player,map)
	 local x = 240
	 local y = 240
	 local r = 3
	 local map_key_name = "龙城"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."当前传送需要"..gold.."金币"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end

function ltszuduiqingli()
	lualib:SetStr("0", "jyjjc_gaojibaoming","")
	lualib:SetStr("0", "jyjjc_gaoji1baoming","")
	lualib:SetStr("0", "jyjjc_gaoji2baoming","")
	lualib:SetStr("0", "jyjjc_gaoji3baoming","")
	lualib:SetStr("0", "jyjjc_gaoji4baoming","")
	lualib:SetStr("0", "jyjjc_gaoji5baoming","")
	lualib:SetStr("0", "jyjjc_dijibaoming","")
	lualib:SetStr("0", "jyjjc_diji1baoming","")
	lualib:SetStr("0", "jyjjc_diji2baoming","")
	lualib:SetStr("0", "jyjjc_diji3baoming","")
	lualib:SetStr("0", "jyjjc_diji4baoming","")
	lualib:SetStr("0", "jyjjc_diji5baoming","")
end