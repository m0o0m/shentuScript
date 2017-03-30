local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"亡灵会说话吗？", "亡灵是邪恶的，它们充满了死亡怨气和对生命的渴望。", "引灵寺里充满了等待轮回的亡灵，它们的体内能凝结灵元珠。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 190000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#引灵寺#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　　#COLORCOLOR_SKYBLUE#引灵寺#COLOREND#是引渡亡灵的神秘空间，但因为未知的原因，等待轮回的亡灵发生了惊人的变故，它们相互纠集肆虐，试图扰乱最后的轮回！\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>#　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@jump *01*「进入挑战」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@info *01*「活动介绍」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@leave *01*「我不敢去」>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#"

	return msg
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#引灵寺#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#进入需要您等级大于等于20级！\n"
--	msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#进入需要您提交一张#COLORCOLOR_GOLD#「引灵寺轮回图」#COLOREND#！\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
--	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_SKYBLUE#引灵寺#COLOREND#乃众生轮回之地，需要一张#COLORCOLOR_GOLD#[引灵寺轮回图]#COLOREND#，才能免受轮回之苦，据说引灵寺轮回图可从#COLORCOLOR_SKYBLUE#[僵尸墓]#COLOREND#的怪物身上获得！「确定」进去吗？\n"
--        msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#"
        msg = msg.."　　　#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jumpex *01*「进入打宝」>                    #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"

    return msg
end



function jumpex(npc, player)

    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_ylsfb_dgn_guid")
    if dgn == "" then return "引灵寺尚未开放，请留意系统公告！\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>" end

    local dgn_times = lualib:Map_GetCustomVarInt(map, "scheduled_ylsfb_dgn_times")
    local player_dgn_times = lualib:Player_GetCustomVarInt(player, "scheduled_ylsfb_dgn_times")
    local dgn_life_times = 1800

    --if player_dgn_times >= dgn_times and player_dgn_times < dgn_times + dgn_life_times then
    --return "您已参加过这一轮活动，请留意下一次开放时间！\n \n<@main *01*「返回」>"
    --end

    local require_level = 20
    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level < require_level then return "您的等级过低！\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "您的金币不足"..require_gold.."！\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>##<@main *01*「返回」>"
    end

--    local require_item = "引灵寺轮回图"
--    if lualib:Player_GetItemCount(player, require_item) < 0 then
--        return "进入引灵寺需要"..require_item.."！\n \n<@main *01*「返回」>"
--    end

--    if not lualib:Player_DestroyItem(player, require_item, 0, "扣道具：引灵尊者传送消耗", "引灵尊者") then
--        return "上缴物品"..require_item.."失败！\n \n<@main *01*「返回」>"
--    end

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：引灵寺传送费", "引灵尊者") then
        return "扣除金币失败！\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
    lualib:Player_SetCustomVarInt(player, "scheduled_ylsfb_dgn_times", lualib:GetAllTime())
	lualib:JoinCamp(player, 10, 0)
    if lualib:Player_EnterDgn(player, "引灵寺", 105, 17, 5) == false then return "进入地图失败！\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"end

	
    return ""
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#引灵寺#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#开启时间：#COLOREND#每天14:00~14~30　20:30~21:00开启，请留意系统公告#COLOREND#\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-4>#等待轮回的亡灵发生了未知变故，并且相互纠集肆虐引灵寺，试图扰乱最后的轮回！\n"
        msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#活动说明：#COLOREND#参与的玩家必须等级大于等于20级才能进入！\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>#<@main *01*「返回」>"

	return msg
end




function leave(npc, player)
    return ""
end
