local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {3003, "", "QuestAccomplish3003","", "*01*完成任务: 第三重天秘洞(支线)"},
   {3004, "QuestAccept3004", "QuestAccomplish3004","01*任务: 秘洞探险(支线)", "*01*完成任务: 秘洞探险(支线)"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"我是何童天小妖里最帅的，所以我到你们人类世界来见识见识。", "告诉你一个公开的秘密，第三重天秘洞里有很多妖盗，身上携有大量宝物，有很多人去争夺哦。", "你可以用符文来我这儿换异空间的宝物哦。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
       local a = 0
	local msg = "#COLORCOLOR_BROWN#────────────#COLOREND##COLORCOLOR_SKYBLUE#三重天秘洞#COLOREND##COLORCOLOR_BROWN#───────────#COLOREND#\n"
     msg = msg.."    #OFFSET<X:0,Y:3>#三重天秘洞里，藏有很多从第三重天逃出来的妖盗，它们携有大量宝物哦！夺得怪物和宝箱里的#COLORCOLOR_GREENG#符文#COLOREND#，可兑换#COLORCOLOR_GREENG#特殊装备#COLOREND#！有#COLORCOLOR_RED#暴击、魔法躲避#COLOREND#等超级属性……\n \n"
     msg = msg.."#OFFSET<X:0,Y:-18>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>#　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@enter_dgn *01*进入秘洞寻宝>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@shop *01*进入符文商店>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@info *01*查看活动介绍>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"

	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">　　　　　#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-1>#<@leave *01*「离开」>\n"
                a = 1
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">　　　　　#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-1>#<@leave *01*「离开」>\n"
                a = 1
            end
        end
    end

        if a ~= 1 then

	msg = msg.."#OFFSET<X:0,Y:0>#　　　　　　　　　　　　　　　　　　　　　　#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@leave *01*「离开」>\n"
    end
    return msg
end

function enter(npc, player)
	local msg = "#COLORCOLOR_BROWN#────────────#COLOREND##COLORCOLOR_SKYBLUE#三重天秘洞#COLOREND##COLORCOLOR_BROWN#───────────#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:10>#进入三重天秘洞需要一颗#COLORCOLOR_GOLD#「三重天引路石」#COLOREND#，据说三重天引路石可从#COLORCOLOR_SKYBLUE#[绝路谷]#COLOREND#的怪物身上获得！「确定」进去吗？\n \n"
     msg = msg.."#OFFSET<X:0,Y:-11>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."         #IMAGE<ID:1902700018>#<@enter_dgn *01*「进入」>                 #IMAGE<ID:1902700019>#<@main *01*「返回」>\n \n"

	return msg
end




function enter_dgn(npc, player)
    local gold = 0
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if map == "" then return "获取地图信息失败！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    --local now_time = lualib:GetTime()
    --local begin_tick = lualib:Map_GetCustomVarInt(map, "scheduled_dsctmd_begin_tick")
    --if (begin_tick == 0) or (now_time - begin_tick > (33 * 60)) then return "第三重天秘洞还没打开，请留意系统公告！\n \n<@main *01*「返回」>" end

    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_dsctmdfb_dgn_guid")
	lualib:Error(dgn)
    if dgn == "" then return "地图还未准备好！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local player_count = lualib:Map_GetPlayerCount(dgn, false)
    if player_count == -1 then return "地图不存在！\n \n \n \n \n \n#IMAGE1902700019#<@main *01*「返回」>" end

    if player_count >= 500 then return "第三重天秘洞已经人满为患，你来晚了，请稍后再来吧。\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local player_level = lualib:Player_GetIntProp(player,  lua_role_level)
    if player_level == -1 then return "未知的角色等级！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    if player_level < 20 then return "角色等级不足！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    if not lualib:Player_IsGoldEnough(player, gold, false) then return "您的金币不足5000！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    local require_item = "三重天引路石"
   --[[ if lualib:Player_GetItemCount(player, require_item) < 0 then
        return "进入三重天秘洞需要"..require_item.."！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
   end

    if not lualib:Player_DestroyItem(player, require_item, 0, "扣道具：何童天小妖传送消耗", "何童天小妖") then
        return "上缴物品"..require_item.."失败！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
   end]]

	if not lualib:Player_SubGold(player, gold, false, "扣金币：从何童天小妖处进入第三重天秘洞", player) then return "扣除金币失败！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end
	
    if lualib:Player_SetDgnTicket(player, dgn) == false then return "您不被许可进入地图！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end	
	lualib:JoinCamp(player, 13, 0)
	
    if lualib:Player_EnterDgn(player, "第三重天秘洞", 0, 0, 0) == false then return "进入地图失败！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"end
	
    return ""
end

function leave(npc, player)
    return ""
end

local item_table = {
                    {{"神力护腕", 1}, {"符文", 300}, {"→→「物防3-3」「魔防3-3」「背包负重+200」", 1}},
                    {{"回神勋章", 1}, {"符文", 400}, {"→→「物防3-3」「魔防3-3」「生命值回复+10」", 1}},
                    {{"回灵勋章", 1}, {"符文", 400}, {"→→「物防3-3」「魔防3-3」「魔法值回复+10」", 1}},
                    {{"技巧戒指", 1}, {"符文", 300}, {"→→「物攻3-3」「魔攻3-3」「道术3-3腕力+5」", 1}},
                    {{"躲避项链", 1}, {"符文", 500}, {"→→「物攻3-3」「魔攻3-3」「道术3-3魔法躲避+5", 1}},
                    {{"暴力戒指", 1}, {"符文", 500}, {"→→「物攻3-3」「魔攻3-3」「道术3-3暴击率+4」", 1}}
                   }

function shop(npc, player)
    local msg = "只要你有足够的符文，就可以从我这里「购买」很多神奇的物品哦！我这里的宝物，可都是清明何童天的顶级宝物喔~\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    for i = 1, 3 do
        msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@exchange#"..i.." *01*"..item_table[i][1][1]..">"..item_table[i][3][1].."\n"
    end
    msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:-10>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-1>#<@main *01*「上一页」>　　　　　　　　　　　　    　#OFFSET<X:0,Y:-1>#<@shopb *01*「下一页」>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>#"
    return msg
end

function shopb(npc, player)
    local msg = "只要你有足够的符文，就可以从我这里「购买」很多神奇的物品哦！我这里的宝物，可都是清明何童天的顶级宝物喔~\n"
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n"
    for i = 4, table.getn(item_table) do
        msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@exchange#"..i.." *01*"..item_table[i][1][1]..">"..item_table[i][3][1].."\n"
    end
    msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:-10>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-1>#<@shop *01*「上一页」>　　　　　　　　　　　　    　#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>#OFFSET<X:0,Y:2>#"
    return msg
end




function exchange(npc, player, index)
    local msg = "「购买」"..item_table[tonumber(index)][1][1].."需要"..item_table[tonumber(index)][2][2].."个"..item_table[tonumber(index)][2][1].."，「确定」要「购买」吗？\n \n  \n  \n  \n"
    msg = msg.." #OFFSET<X:0,Y:-10>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@exchange_#"..index.." *01*「购买」>\n \n \n"
    msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-12>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@shop *01*「返回」>\n"
    return msg
end

function exchange_(npc, player, index)
    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, 2 do
        name_table[i] = item_table[tonumber(index)][i][1]
        count_table[i] = item_table[tonumber(index)][i][2]
        bind_table[i] = 0
        if i == 1 then
            opr_table[i] = 0
        else
            opr_table[i] = 1
        end
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：何童天小妖", player) then
        lualib:SysMsg_SendWarnMsg(player, "装备「购买」失败，材料不足或背包已满！")
        return "装备「购买」失败，材料不足或背包已满！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
    end

    lualib:SysMsg_SendTriggerMsg(player, "获得物品："..item_table[tonumber(index)][1][1].."！")
    return "物品「购买」成功！\n \n \n \n \n \n \n　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
end

function info(npc, player)
       local msg = "#COLORCOLOR_RED#开启时间：#COLOREND#每天15:00、16:30、22:00、23:30开启副本，请留意系统公告！\n"
        msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#活动介绍：#COLOREND#在第三重天的秘洞里，藏有很多从第三重天——[清明何童天]逃出来的妖盗，它们携有大量宝物哦！消灭它们，宝物便是你的了啦！记住哦，人越多，出现的妖盗就越多！\n"
        msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_RED#进入条件：#COLOREND#小妖我可以帮助你进入三重天秘洞夺宝，但是第三重天极其神秘，需要有一颗#COLORCOLOR_GOLD#三重天引路石#COLOREND#才能指引方向，据说三重天引路石可从#COLORCOLOR_GOLD#绝路谷#COLOREND#的怪物身上获取到！\n"
	msg = msg.."                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
	return msg
end






---3003交
function QuestAccomplish3003(npc, player)
    msg = "原来是天机老人引荐…我还以为来抢我财宝的\n \n"
    msg = msg.."<@Accomplish3003 *01* 我是来帮你的驱逐怪物的>\n"
    return msg
end

function Accomplish3003(npc, player)
    if lualib:AccomplishQuest(player, 3003, 0) == true then
        msg = "秘洞内来了很多妖魔，你帮我赶走他们吧！\n \n"
		msg = msg.."<@QuestAccept3004 *01* 接取任务：秘洞探险(支线)>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

----3004接
function QuestAccept3004(npc,player)
    msg = "秘洞里来了很多妖魔，我很害怕…你能不能帮赶走这些妖怪\n \n"
	msg = msg.."<@Accept3004a *01* 额..有好处吗？>\n"
	return msg
end

function Accept3004a(npc,player)
    msg = "妖魔抢了我很多宝物，打败怪物那些宝物都归你，怎么样？\n \n"
	msg = msg.."<@Accept3004b *01* 好吧，那我就帮帮你吧（心想：真小气，难道还你吗？）>\n"
	return msg
end

function Accept3004b(npc, player)
    if lualib:AcceptQuest(player, 3004) == true then
		msg = "谢谢你帮忙，这下我可以安心了！\n \n"
		msg = msg.."<@enter *01*进入第三重天秘洞寻宝>\n"
        return msg
    else
        return "任务接取失败"
    end
end

----3004交
function QuestAccomplish3004(npc, player)
    msg = "谢谢你帮我赶走妖怪！\n \n"
    msg = msg.."<@Accomplish3004a *01* 那你怎么感谢我？>\n"
    return msg
end

function Accomplish3004a(npc, player)
    msg = "你别想打我财宝的主意，不过你击败妖道获得的符文可以拿来我这换取特殊装备！\n \n"
    msg = msg.."<@Accomplish3004b *01* 好吧 好吧>\n"
    return msg
end

function Accomplish3004b(npc, player)
    if lualib:AccomplishQuest(player, 3004, 0) == true then
        msg = "可以拿符文跟我「兑换」极品装备！\n \n"
		msg = msg.."<@shop *01* 进入符文商店>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end
