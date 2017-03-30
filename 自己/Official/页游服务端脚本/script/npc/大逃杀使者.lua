local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"在大逃杀内战斗，死亡后无损失，可以尽情地PK，是练习战斗的好场所。", "大逃杀是中低级玩家获得好装备的捷径。", "想要证明你的能力，就来大逃杀展示一下自己吧，还有很不错的奖励哦。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 240000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "    是逃？还是杀？这从来不是弱者的游戏，只要有武器在手，不管是逃还是杀，都可以纵横场内，斩尽不如意！\n    大逃杀内定时刷出装备等你拾取，并且持续增加经验，但你将遭遇其它玩家的争夺！这是只有勇者才能欢呼的战场！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-5>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@enter *01*[参与大逃杀]>\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700042>##OFFSET<X:1,Y:-1>#<@info *01*[活动介绍]>\n \n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."                                                      #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*[离开]>\n"
	return msg
end

function enter(npc, player)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 40 then return "你的等级不符合要求！\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>" end
	
	local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
	local dgn_id = lualib:Map_GetCustomVarStr(map, "scheduled_dtsfb_dgn_guid")
	if dgn_id == "" then return "活动尚未开启，请留意系统公告！\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>" end
	
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		return "您不被许可进入地图大逃杀！\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
    end
	
	lualib:JoinCamp(player, 6, 0)
    if lualib:Player_EnterDgn(player, "大逃杀", 0, 0, 0) == false then
        return "进入地图大逃杀失败！\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
    end
	
	
	return ""
end

function leave(npc, player)
	return ""
end

function info(npc, player)
	return "20-35级玩家可进入大逃杀！场内每隔一段短时间都有经验赠送\n活动开始场内会首先刷出大量药水，几分钟后场内继续刷出包括高级技能书、高级装备在内的各种道具。\n新刷出的任何装备都需要等段一段时间后才能拾取。 \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[返回]>"
end
