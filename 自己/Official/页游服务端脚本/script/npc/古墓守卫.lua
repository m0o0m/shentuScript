local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"金带血，银带尸，古墓中的宝藏，可都是带着血腥气的哦！", "从盗墓贼身上夺取的宝藏是合法的。", "得到古墓里的宝藏并不难，你信吗？反正我信了。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#古墓夺宝#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　　在古墓里有一只盗墓贼，击败盗墓贼后必定会掉落一个#COLORCOLOR_GOLD#「神秘宝盒」#COLOREND#，谁拿着#COLORCOLOR_GOLD#神秘宝盒#COLOREND#就能#COLORCOLOR_GOLD#每几秒获得#COLOREND##COLORCOLOR_GREENG#[大量元宝]#COLOREND#！但在活动中被击败，离开地图或者下线，宝盒必定掉落，成功保护10分钟后可开启宝盒，将获得一份神秘宝物的超级奖励哦！\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>#　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@jump *01*「进入挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@info *01*「活动介绍」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@leave *01*「我不敢去」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		
	return msg
end

function jump(npc, player)
    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_gmfb_dgn_guid")
    if dgn == "" then return "古墓尚未开放，请留意系统公告！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end


    local require_level = 20
    local level = lualib:Player_GetIntProp(player, lua_role_level)
    if level < require_level then return "您的等级过低！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then return "您的金币不足"..require_gold.."！\\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：古墓传送费", "古墓守卫") then
        return "扣除金币失败！"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#" end
	lualib:JoinCamp(player, 8, 0)
    if lualib:Player_EnterDgn(player, "古墓", 0, 0, 0) == false then return "进入地图失败！\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#"end
	
	
    return ""
end

function leave(npc, player)
    return ""
end



function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#古墓夺宝#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#开启时间：#COLOREND#每周二、四、六　17:00~17:30　21:30~22:00 开启活动\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#活动介绍：#COLOREND#在古墓里有一只盗墓贼，击败盗墓贼后必定会掉落一个#COLORCOLOR_GOLD#「神秘宝盒」#COLOREND#，谁拿着神秘宝盒就能#COLORCOLOR_GOLD#每几秒获得#COLOREND##COLORCOLOR_GREENG#[大量元宝]#COLOREND#！但在活动中被击败，离开地图或者下线，宝盒必定掉落，成功保护10分钟后可开启宝盒，将获得一份神秘宝物的超级奖励哦！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.." #OFFSET<X:0,Y:-8>#                                                #IMAGE<ID:1902700019>#<@main *01*「返回」>\n"

	return msg
end
