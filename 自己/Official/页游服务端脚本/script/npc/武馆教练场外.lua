local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {3007, "", "QuestAccomplish3007","", "*01*完成任务: 天下第一战(支线)"},
   }
gQuestNum = table.getn(gQuestMap)

local talk_t = {"人争一口气，树活一层皮。天下第一，舍你其谁！", "如果你想获得天下第一的称号，就必须参加争霸赛。", "天下争霸，由我开始！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 230000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	msg = "     天机老人说，天机难测，我嘞个去，只要你成为天下第一，你就是神的宠儿，老天也会帮你，快来进入天下第一战场进行比赛吧！\n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
	msg = msg.."#IMAGE<ID:1902700018># <@jump_dgn *01*[进入战场]>\n"
    msg = msg.."#IMAGE<ID:1902700042># <@info *01*[争霸赛时间表]>\n"
    msg = msg.."#IMAGE<ID:1902700031># <@result *01*[领取天下第一争霸赛奖励]>\n \n \n"
	msg = msg.."                                                  #IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
	return msg
end

function jump_dgn(npc, player)
    local gold = 10000
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if map == "" then return "获取地图信息失败！" end

	--[[
    local tick = lualib:Map_GetCustomVarInt(map, "scheduled_txdyzc_begin_tick")
    if (tick == 0) or (lualib:GetTime() - tick > 600) then
        return "天下第一战场还未开放！请留意系统公告！"
    end
	]]
	
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_txdyzc_dgn_guid")
    if dgn == "" then return "天下第一战场入场时间还未开始，请注意入场时间为19：00-19：10\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>" end

    local player_count = lualib:Map_GetPlayerCount(dgn, false)
    if player_count == -1 then return "地图不存在，请联系GM！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>" end
    if player_count >= 250 then return "天下第一战场已经人满为患，请稍后再来吧。\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>" end

    local wday = lualib:GetWeek(0)
    local player_job = lualib:Player_GetIntProp(player,  lua_role_job)
    if (player_job ~= wday) and (wday ~= 4) then
        return "对不起，您的职业无法参加该场职业争霸赛！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
    end

	--[[
    local is_enter = lualib:Map_GetCustomVarInt(dgn, player)
    if is_enter == 1 then return "对不起，您已经参加过该场争霸赛，今日无法进入！" end
	]]
	
	--if not lualib:VerifyCampCount(player, 7) then return "对不起，您已经参加过该场争霸赛，今日无法进入！" end
	
    local player_level = lualib:Player_GetIntProp(player,  lua_role_level)
    if player_level == -1 then return "未知的角色等级！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>" end
    if player_level < 20 then return "对不起，您的等级不足20级，无法进入！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>" end

    if not lualib:Player_IsGoldEnough(player, gold, false) then
        return "对不起，您的金币不足10000，无法进入！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
    end

	if not lualib:Player_SubGold(player, gold, false, "扣金币：武馆教练场外进入天下第一战场花费", "武馆教练场外") then return "扣除金币失败！" end
    if lualib:Player_SetDgnTicket(player, dgn) == false then return "您不被许可进入地图！" end
	lualib:JoinCamp(player, 7, 0)
    if lualib:Player_EnterDgn(player, "天下第一战场", 0, 0, 0) == false then return "进入地图失败！"end
    --lualib:Map_SetCustomVarInt(dgn, player, 1)
    
    return ""
end

function result(npc, player)
    local record_file = {"天下第一战士.txt", "天下第一法师.txt", "天下第一道士.txt", "天下第一.txt"}
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	if name == "" then 
        return "取得玩家信息出错！"
    end

    local result = lualib:Player_GetCustomVarInt(player, "scheduled_txdyzc_result")
    if result == 0 then
        return "您还没有成为冠军，无法领取奖励！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
    end

    if lualib:IO_FileExists(record_file[result]) ==  false then
        return "没有您的奖励记录！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
    end

    local guid = lualib:IO_TextFileGetLine(record_file[result], 2)
	if player ~= guid then 
        return "咦，奇怪了，要奖励的不是你！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
    end

    local item_table = {{"钱袋(20万)", 1}, {"祝福神水", 10}}
    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, table.getn(item_table) do
        name_table[i] = item_table[i][1]
        count_table[i] = item_table[i][2]
        bind_table[i] = 0
        opr_table[i] = 0
    end
    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：武馆教练场外", player) then
        return "领取奖励失败，请确认背包是否有12格空格！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end
    
    lualib:Player_SetCustomVarInt(player, "scheduled_txdyzc_result", 0)
    return "领取成功！\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
end

function info(npc, player)
    return "周一 19：00    战士争霸赛\n周二 19：00    法师争霸赛\n周三 19：00    道士争霸赛\n周四 19：00    全职业争霸赛\n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function leave(npc, player)
    return ""
end


---3007交
function QuestAccomplish3007(npc, player)
    msg = "年轻人，你是想来参加天下第一战的吧。\n \n"
    msg = msg.."<@Accomplish3007a *01* 是的，有什么要求吗？>\n"
    return msg
end

function Accomplish3007a(npc, player)
    msg = "每周一19:00举办战士比赛，周二19:00举办法师比赛，周三19:00举办道士比较，周四19:00举办全职业比赛，到了时间你可以来我这报名参加，了解清楚了吗？\n \n"
    msg = msg.."<@Accomplish3007b *01* 谢谢你，我了解了>\n"
    return msg
end

function Accomplish3007b(npc, player)
    if lualib:AccomplishQuest(player, 3007, 0) == true then
        msg = "来参加天下第一战，展现你的实力吧！\n \n"
		msg = msg.."<@leave *01* 我知道了>\n" 
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@leave *01*我知道了>\n" 
		return msg
    end
end

