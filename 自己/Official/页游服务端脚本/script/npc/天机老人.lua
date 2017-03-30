local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")
require("system/领取经验")
gQuestMap =
{
   {1014, "", "QuestAccomplish1014","", "*01*完成任务: 去巫山城"},
   {1015, "QuestAccept1015", "QuestAccomplish1015","*01*任务: 了解套装", "*01*完成任务: 了解套装"},
   {1017, "QuestAccept1017", "","01*【精炼任务】: 精炼", ""},
   {2001, "QuestAccept2001", "QuestAccomplish2001","*01*【主线任务】: 前往镇压将军冢", "*01*完成任务: 镇压将军冢"},
   {2002, "QuestAccept2002", "QuestAccomplish2002","*01*【主线任务】: 消除废弃矿洞怨气", "*01*完成任务: 消除废弃矿洞怨气"},
   {1022, "", "QuestAccomplish1022","", "*01*完成任务: 向天机老人报告"},
   {1023, "QuestAccept1023", "","01*任务: 封魔阵", ""},
   {1027, "", "QuestAccomplish1027","", "*01*完成任务: 向天机老人告别"},
   {2005, "QuestAccept2005", "QuestAccomplish2005","*01*任务: 清剿绝路城牛魔", "*01*完成任务: 清剿绝路城牛魔"},
   {2006, "", "QuestAccomplish2006","", "*01*完成任务: 清剿黑面牛魔"},
   {2007, "", "QuestAccomplish2007","", "*01*完成任务: 清剿红面牛魔"},
   {2008, "", "QuestAccomplish2008","", "*01*完成任务: 清剿牛魔守卫"},
   {2009, "QuestAccept2009", "QuestAccomplish2009","*01*任务: 清剿妖山暗穴", "*01*完成任务: 清剿妖山暗穴"},
   {2010, "", "QuestAccomplish2010","", "*01*完成任务: 清剿尸奴"},
   {2011, "", "QuestAccomplish2011","", "*01*完成任务: 清剿鬼面监工"},
   {2012, "", "QuestAccomplish2012","", "*01*完成任务: 清剿妖面监工"},
   {2013, "", "QuestAccomplish2013","", "*01*完成任务: 清剿掘铲尸奴"},
   {2014, "QuestAccept2014", "QuestAccomplish2014","*01*任务: 清剿天荒阵", "*01*完成任务: 清剿天荒阵"},
   {2015, "", "QuestAccomplish2015","", "*01*完成任务: 清剿巨蛾"},
   {2016, "", "QuestAccomplish2016","", "*01*完成任务: 清剿蓝兽"},
   {2017, "", "QuestAccomplish2017","", "*01*完成任务: 清剿沙石魔"},
   {2018, "", "QuestAccomplish2018","", "*01*完成任务: 清剿散兵"},
   {2019, "QuestAccept2019", "QuestAccomplish2019","*01*任务: 清剿天荒邪庙", "*01*完成任务: 清剿天荒邪庙"},
   {2020, "", "QuestAccomplish2020","", "*01*完成任务: 清剿天原猛士"},
   {2021, "", "QuestAccomplish2021","", "*01*完成任务: 清剿夜行僧"},
   {2022, "", "QuestAccomplish2022","", "*01*完成任务: 清剿天原勇士"},
   {2023, "", "QuestAccomplish2023","", "*01*完成任务: 清剿鬼面武者"},
   {2024, "", "QuestAccomplish2024","", "*01*完成任务: 清剿天原死士"}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"我不是传说，但常跟我说话的少年，都成了传说！", "痛苦的是，毁灭让我们失去了过去！幸运的是我们拥有现在……以及未来！", "龙城没有退路，没有怜悯，没有乞求，只有战！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 230000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function leave(npc, player)
    return ""
end

function key(npc, player)
    local require_count = 10
    local require_item = "密匙残块"
    local award_item = "地下城密匙"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "道具不足，需要"..require_count.."个"..require_item.."！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    if not lualib:Player_DestroyItem(player, require_item, 10, "扣物品：天机老人「兑换」地下城密匙", "天机老人") then
        return "「兑换」失败！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "给物品：天机老人「兑换」地下城密匙", "天机老人") then
        return "「兑换」失败！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    return "地下城密匙「兑换」成功！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function award(npc, player)
    local player_var = "award_mrqdlb_var"
    local item_name = "每日礼包"
    local cur_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, player_var)

    if cur_days == days then
        return "你今天已经领取过礼包，请明天再来！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    elseif cur_days < days then
        return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    local require_times = 300
    if lualib:Player_GetTimeProp(player, lua_role_today_online) < require_times then
        return "你在线时间未到5分钟，请稍侯再来领取礼包！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:Player_GetBagFree(player) < 1 then
        return "对不起，你的背包已经满了，请清理背包后再领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    lualib:Player_SetCustomVarInt(player, player_var, cur_days)

    if not lualib:Player_GiveSingleItem(player, item_name, 1, "给物品：天机老人领取每日礼包", "天机老人") then
        return "领取失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    --if not lualib:Player_AddGold(player, level * 1000, true, "加金币：天机老人领取每日礼包", "天机老人") then
    --    return "领取金币失败！\n \n<@main *01*「返回」>"
    --end

    --[[if not lualib:Player_AddExp(player, level *level *level /5, "加经验：天机老人领取每日礼包", "天机老人") then
        return "领取经验失败！\n \n<@main *01*「返回」>"
    end]]

    return "领取每日礼包成功，只要你坚持，我每天都可以给你一个礼包哦\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

local task_level =
{
    "#COLORCOLOR_WHITE#（白）#COLOREND#",
    "#COLORCOLOR_GREENG#（绿）#COLOREND#",
    "#COLORCOLOR_BLUE#（蓝）#COLOREND#",
    "#COLORCOLOR_PURPLE#（紫）#COLOREND#",
    "#COLORCOLOR_GOLD#（金）#COLOREND#"
}

local task_var =
{
    "custom_var_ss_task_days",
    "custom_var_ss_task_count",
    10,
	"custom_var_ss_task_cur",
	"custom_var_ss_accom_cur"
}

local refresh_item =
{
    ["元宝"] = {1, 100},
    ["循环魔咒"] = {2, 1},
}

local ring_t =
{
	10, 11, 12, 13, 14, 15, 16, 17, 18, 20
}

function main(npc, player)
	return accept_task(npc, player)
end

function accept_task(npc, player)
    local msg = "#COLORCOLOR_ORANGE#任务依次共有5种品阶：#COLOREND#白色、#COLORCOLOR_GREENG#绿色、#COLOREND##COLORCOLOR_BLUE#蓝色、#COLOREND##COLORCOLOR_PURPLE#紫色、#COLOREND##COLORCOLOR_GOLD#金色#COLOREND#\n \n"
    msg = msg.."品阶越高，任务奖励经验就越多，刷新任务可以提高任务的品阶\n"
    --msg = msg.."#COLORCOLOR_PURPLE#（每次刷新任务需要消耗100元宝或者15个循环魔咒）#COLOREND#\n \n"
    msg = msg.."#COLORCOLOR_PURPLE#（每次刷新任务需要消耗1个循环魔咒）#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n \n"
    msg = msg.."#IMAGE<ID:1902700016>#<@accept *01*[领取新的任务]>　　#IMAGE<ID:1902700016>#<@accomplish *01*[提交完成任务]>　　#IMAGE<ID:1902700017>#<@pingjiejieshao *01*[了解任务品阶]>\n"
	msg = msg.."#IMAGE<ID:1902700016>#<@days_task *01*[一键完成今日所有悬赏]>"
		for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016# <@"..v[3].." "..v[5]..">\n"
            end
        end
    end
    
    return msg
end


function pingjiejieshao(npc, player)
    local msg = "经验的高低和您的等级相关，等级越高，基础经验就越多。而“白”#COLORCOLOR_GREENG#“绿”#COLOREND##COLORCOLOR_BLUE#“蓝”#COLOREND##COLORCOLOR_PURPLE#“紫”#COLOREND##COLORCOLOR_GOLD#“金”#COLOREND#分别代表在基础经验上的倍数。\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#╔━╦━━━╦━━━╦━━━╦━━━╦━━━╦━━━╗#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#┃#COLOREND#等#COLORCOLOR_GRAY#┃#COLOREND# #COLORCOLOR_ORANGE#基础#COLOREND# #COLORCOLOR_GRAY#┃#COLOREND# 白色 #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND# #COLORCOLOR_GREENG#绿色#COLOREND# #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND# #COLORCOLOR_BLUE#蓝色#COLOREND# #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND# #COLORCOLOR_PURPLE#紫色#COLOREND# #OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND# #COLORCOLOR_GOLD#金色#COLOREND# #OFFSET<X:0,Y:0>##COLORCOLOR_GRAY#┃#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#┃#COLOREND#级#COLORCOLOR_GRAY#┃#COLOREND# #COLORCOLOR_ORANGE#经验#COLOREND# #COLORCOLOR_GRAY#┃#COLOREND#(1 倍)#OFFSET<X:0,Y:0>##COLORCOLOR_GRAY#┃#COLOREND#(2 倍)#OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND#(3 倍)#OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND#(5 倍)#OFFSET<X:1,Y:0>##COLORCOLOR_GRAY#┃#COLOREND#(7 倍)#OFFSET<X:0,Y:0>##COLORCOLOR_GRAY#┃#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GRAY#╚━╩━━━╩━━━╩━━━╩━━━╩━━━╩━━━╝#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n"
    msg = msg.."                                                   #OFFSET<X:0,Y:7>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
    return msg
end

local task_t =
{
    {
        {10001, 20, "讨伐绝路谷", "前往绝路谷杀死10个恶魔先锋后后回来找我", "奖励经验：", "奖励金币：", 200},
        {20001, 20, "讨伐绝路谷", "前往绝路谷杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30001, 20, "讨伐绝路谷", "前往绝路谷杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40001, 20, "讨伐绝路谷", "前往绝路谷杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50001, 20, "讨伐绝路谷", "前往绝路谷杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
    {
        {10002, 20, "讨伐绝路岭", "前往绝路岭杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20002, 20, "讨伐绝路岭", "前往绝路岭杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30002, 20, "讨伐绝路岭", "前往绝路岭杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40002, 20, "讨伐绝路岭", "前往绝路岭杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50002, 20, "讨伐绝路岭", "前往绝路岭杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10003, 25, "讨伐将军冢", "前往将军冢杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20003, 25, "讨伐将军冢", "前往将军冢杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30003, 25, "讨伐将军冢", "前往将军冢杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40003, 25, "讨伐将军冢", "前往将军冢杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50003, 25, "讨伐将军冢", "前往将军冢杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10004, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20004, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30004, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40004, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50004, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10005, 30, "讨伐绝路城", "前往绝路城杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20005, 30, "讨伐绝路城", "前往绝路城杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30005, 30, "讨伐绝路城", "前往绝路城杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40005, 30, "讨伐绝路城", "前往绝路城杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50005, 30, "讨伐绝路城", "前往绝路城杀死10个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10006, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20006, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30006, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40006, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50006, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10007, 35, "讨伐天荒阵", "前往天荒阵杀死20个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20007, 35, "讨伐天荒阵", "前往天荒阵杀死20个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30007, 35, "讨伐天荒阵", "前往天荒阵杀死20个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40007, 35, "讨伐天荒阵", "前往天荒阵杀死20个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50007, 35, "讨伐天荒阵", "前往天荒阵杀死20个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10008, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {20008, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {30008, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {40008, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200},
        {50008, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个恶魔先锋后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	    {
        {10009, 20, "讨伐绝路谷", "前往绝路谷杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20009, 20, "讨伐绝路谷", "前往绝路谷杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30009, 20, "讨伐绝路谷", "前往绝路谷杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40009, 20, "讨伐绝路谷", "前往绝路谷杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50009, 20, "讨伐绝路谷", "前往绝路谷杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
    {
        {10010, 20, "讨伐绝路岭", "前往绝路岭杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20010, 20, "讨伐绝路岭", "前往绝路岭杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30010, 20, "讨伐绝路岭", "前往绝路岭杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40010, 20, "讨伐绝路岭", "前往绝路岭杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50010, 20, "讨伐绝路岭", "前往绝路岭杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10011, 25, "讨伐将军冢", "前往将军冢杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20011, 25, "讨伐将军冢", "前往将军冢杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30011, 25, "讨伐将军冢", "前往将军冢杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40011, 25, "讨伐将军冢", "前往将军冢杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50011, 25, "讨伐将军冢", "前往将军冢杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10012, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20012, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30012, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40012, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50012, 25, "讨伐废弃矿洞", "前往废弃矿洞杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10013, 30, "讨伐绝路城", "前往绝路城杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20013, 30, "讨伐绝路城", "前往绝路城杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30013, 30, "讨伐绝路城", "前往绝路城杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40013, 30, "讨伐绝路城", "前往绝路城杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50013, 30, "讨伐绝路城", "前往绝路城杀死10个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10014, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20014, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30014, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40014, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50014, 30, "讨伐妖山暗穴", "前往妖山暗穴杀死15个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10015, 35, "讨伐天荒阵", "前往天荒阵杀死20个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20015, 35, "讨伐天荒阵", "前往天荒阵杀死20个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30015, 35, "讨伐天荒阵", "前往天荒阵杀死20个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40015, 35, "讨伐天荒阵", "前往天荒阵杀死20个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50015, 35, "讨伐天荒阵", "前往天荒阵杀死20个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
	{
        {10016, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {20016, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {30016, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {40016, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个怪物后回来找我", "奖励经验：", "奖励金币：", 200},
        {50016, 35, "讨伐天荒邪庙", "前往天荒邪庙杀死25个怪物后回来找我", "奖励经验：", "奖励金币：", 200}
    },
}

color_t =
{
	1, 2, 3, 5, 7
}
local gold_rates = {3500, 6500, 8500, 9500, 10000}
function accept(npc, player)
    local level = lualib:Player_GetIntProp(player,  lua_role_level)

    local temp_t = {}
    for k, v in pairs(task_t) do
        local temp = {k, v[1]}
        if (level >= v[1][2] and level <= v[1][7]) then table.insert(temp_t, temp) end
    end

    local rnd = lualib:GenRandom(1, #temp_t)
    if temp_t[rnd] == nil then return "角色到达20级才可以接悬赏任务！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    for _, v in pairs(task_t) do
        for _, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
				return "您已经有悬赏任务了，请完成后再来领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
			end
        end
    end

    local all_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, task_var[1])
	local cur_ring = lualib:Player_GetCustomVarInt(player, task_var[2])
    if days == all_days then
        if cur_ring >= task_var[3] then
            return "每日只能领取"..task_var[3].."次悬赏任务！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
        end
    elseif days > all_days then
        return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    else
        lualib:Player_SetCustomVarInt(player, task_var[2], 0)
        cur_ring = 0
    end

	local cur_task = lualib:Player_GetCustomVarInt(player, task_var[4])
	local msg
	if cur_task ~= 0 then
		local cur_index, cur_sub_index
		for k, v in pairs(task_t) do
			for _k, _v in pairs(v) do
				if _v[1] == cur_task then
					msg = "#IMAGE1902700016##OFFSET<X:0,Y:-2>#<@task#"..k.."#".._k.."#"..cur_ring.." *01*["..task_t[k][_k][3].."]>\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
				end
			end
		end
	else
		local cur_index = 0
		local rnd_sub = lualib:GenRandom(1, 10000)
		for i = 1, #gold_rates do
			if rnd_sub < gold_rates[i] then 
				cur_index = i
				break
			end
		end

		
		msg = "#IMAGE1902700016##OFFSET<X:0,Y:-2>#<@task#"..temp_t[rnd][1].."#"..cur_index.."#"..cur_ring.." *01*["..temp_t[rnd][2][3].."]>\n \n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
		
	end

    return msg
end

function task(npc, player, index, subindex, ring)
    index = tonumber(index)
    subindex = tonumber(subindex)
	ring = tonumber(ring)

	lualib:Player_SetCustomVarInt(player, task_var[4], task_t[index][subindex][1])
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local exp = math.floor(color_t[subindex] * level * level * level * ring_t[ring + 1] / 10)
	local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * subindex)

    local msg = "                     #COLORCOLOR_PURPLE#【"..(ring + 1).."环】#COLOREND##COLORCOLOR_RED#"..task_t[index][subindex][3]..task_level[subindex].."#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#任务描述:#COLORCOLOREND#\n    #COLORCOLOR_GOLD#"..task_t[index][subindex][4].."#COLOREND#\n"
    msg = msg.."#COLORCOLOR_RED#任务奖励:#COLORCOLOREND#\n    #COLORCOLOR_GOLD#"..task_t[index][subindex][5]..exp.."#COLOREND#    #COLORCOLOR_GOLD#"..task_t[index][subindex][6]..gold.."#COLOREND#\n"
--    msg = msg.."#COLORCOLOR_RED#任务说明:#COLORCOLOREND##COLORCOLOR_GOLD#"..task_t[index][subindex][6].."#COLOREND#\n"
    msg = msg.."------------------------------------------------------------"
    --msg = msg.."        #OFFSET<X:0,Y:-4>##IMAGE1902700032#<@refresh#1#"..index.."#"..subindex.."#"..ring.." *01*「元宝刷新」             >#IMAGE1902700037#<@refresh#2#"..index.."#"..subindex.."#"..ring.." *01*「魔咒刷新」>\n"
    msg = msg.."  #OFFSET<X:0,Y:1>##IMAGE1902700016##OFFSET<X:2,Y:-1>#<@accept_quest#"..task_t[index][subindex][1].."#"..index.."#"..subindex.." *01*「领取任务」>                #OFFSET<X:0,Y:1>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@refresh#2#"..index.."#"..subindex.."#"..ring.." *01*「刷新任务」>\n \n                                               #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2># <@main *01*「返回首页」>"
    --msg = msg.."            --------------------------------------------"
    return msg
end

function refresh(npc, player, refresh_type, index, subindex, ring)
    index = tonumber(index)
    refresh_type = tonumber(refresh_type)
    subindex = tonumber(subindex)
	ring = tonumber(ring)

	if subindex == #task_level then return "你的任务已经刷新到最高等级了！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end

    if refresh_type == refresh_item["元宝"][1] then
        if not lualib:Player_IsIngotEnough(player, refresh_item["元宝"][2], false) then
            return "你的元宝不足"..refresh_item["元宝"][2].."！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
        end
    elseif refresh_type == refresh_item["循环魔咒"][1] then
        if lualib:Player_GetItemCount(player, "循环魔咒") < refresh_item["循环魔咒"][2] then
            return "你的循环魔咒数量不够"..refresh_item["循环魔咒"][2].."个！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
        end
    else
        return "未知错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
    end

    if refresh_type == refresh_item["元宝"][1] then
        if not lualib:Player_SubIngot(player, refresh_item["元宝"][2], false, "扣元宝：天机老人悬赏任务", "天机老人") then
            return "扣除元宝失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
        end
    elseif refresh_type == refresh_item["循环魔咒"][1] then
        if not lualib:Player_DestroyItem(player, "循环魔咒", refresh_item["循环魔咒"][2], "删物品：天机老人悬赏任务", "天机老人") then
            return "上缴循环魔咒失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
        end
    end


    return task(npc, player, tostring(index), tostring(lualib:GenRandom(subindex, #task_t[index])), tostring(ring))
end


function accept_quest(npc, player, id, index, subindex)
    id = tonumber(id)
    index = tonumber(index)
    subindex = tonumber(subindex)

    if not lualib:AcceptQuest(player, id) then
        return "任务"..task_t[index][subindex][3]..task_level[subindex].."领取失败，任务接取达到上限，请先完成已接任务再领取！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
    end

    lualib:Player_SetCustomVarInt(player, task_var[2], lualib:Player_GetCustomVarInt(player, task_var[2]) + 1)
    lualib:Player_SetCustomVarInt(player, task_var[1], lualib:GetAllDays(0))
	lualib:Player_SetCustomVarInt(player, task_var[4], 0)
	lualib:Player_SetCustomVarInt(player, task_var[5], subindex)
	lualib:JoinCamp(player, 2, 0)
	if subindex > 3 then
			local name = lualib:Name(player)
			lualib:SysMsg_SendBroadcastColor("玩家#COLORCOLOR_BROWN#["..name.."] #COLORCOLOR_YELLOW#在天机老人处领取了#COLORCOLOR_GOLD#["..task_level[subindex].."#COLORCOLOR_GOLD#] #COLORCOLOR_YELLOW#色悬赏任务！", "", 1, 12)
	end
    return "任务"..task_t[index][subindex][3]..task_level[subindex].."领取成功！\n \n \n #IMAGE<ID:1902700016>#<@accomplish *01*[用循环魔咒免打怪提交完成任务]>\n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
end








function accomplish(npc, player)
	if lualib:Player_GetCustomVarInt(player, task_var[2]) == 0 then
		lualib:Player_SetCustomVarInt(player, task_var[2], 1)
	end
	local cur_ring = lualib:Player_GetCustomVarInt(player, task_var[2])
    for k, v in pairs(task_t) do
        for _k, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
                return accomplish_info(npc, player, k, _k, _k, cur_ring)
            end
        end
    end

	return "你没有领取悬赏任务！\n \n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
end

function accomplish_info(npc, player, index, sub_index, real_index, ring)
	local cur_index = lualib:Player_GetCustomVarInt(player, task_var[5])
	if cur_index ~= 0 then sub_index = cur_index end
	
	if sub_index == nil  then
		sub_index = 1
	end
	
	
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
    --经验=颜色系数*等级^3/10*环系数
    --金币=（130*等级^2-5000*等级+70000）/300*20*颜色系数
	local exp = math.floor(color_t[sub_index] * level * level * level * ring_t[ring] / 10)
	local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * sub_index)
	local msg = ""
	
	
	if not lualib:CanAccomplishQuest(player, task_t[index][real_index][1]) then 
		msg = msg.."#COLORCOLOR_RED#未完成杀怪要求，多消耗一个循环魔咒仍可完成任务#COLOREND#\n \n当前任务：#COLORCOLOR_PURPLE#【"..(ring).."环】#COLOREND#"..task_t[index][sub_index][3]..task_level[sub_index].."，完成该任务可获得：\n"
		msg = msg.."经验："..exp.."            金币："..gold.."\n"
		
		msg = msg.."\n \n#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#1".." *01*「直接领奖」>需1个循环魔咒        #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#2".." *01*「二倍奖励」>需2个循环魔咒\n"
		msg = msg.."#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#3".." *01*「三倍奖励」>需3个循环魔咒        #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#4".." *01*「四倍奖励」>需4个循环魔咒"
	else
		msg = msg.."#COLORCOLOR_GREENG#已达杀怪要求，多消耗循环魔咒可获多倍奖励#COLOREND#\n \n当前任务：#COLORCOLOR_PURPLE#【"..(ring).."环】#COLOREND#"..task_t[index][sub_index][3]..task_level[sub_index].."，完成该任务可获得：\n"
		msg = msg.."经验："..exp.."            金币："..gold.."\n"
		
		msg = msg.."\n \n#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#1".." *01*「完成任务」>                     #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#2".." *01*「二倍奖励」>需1个循环魔咒\n"
		msg = msg.."#IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#3".." *01*「三倍奖励」>需2个循环魔咒        #IMAGE1902700016#<@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.."#4".." *01*「四倍奖励」>需3个循环魔咒"
	end
	--msg = msg.."\n \n \n \n#IMAGE1902700016# <@accomplish_complete#"..task_t[index][real_index][1].."#"..index.."#"..sub_index.."#"..ring.." *01*「完成任务」>"
	return msg
end

function refresh_accomplish(npc, player, refresh_type, index, sub_index, real_index, ring)
	refresh_type = tonumber(refresh_type)
	index = tonumber(index)
	sub_index = tonumber(sub_index)
	real_index = tonumber(real_index)
	ring = tonumber(ring)

	if refresh_type == refresh_item["元宝"][1] then
        if not lualib:Player_SubIngot(player, refresh_item["元宝"][2], false, "扣元宝：天机老人悬赏任务", "天机老人") then
            return "您的元宝不足，无法刷新！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
        end
    elseif refresh_type == refresh_item["循环魔咒"][1] then
        if not lualib:Player_DestroyItem(player, "循环魔咒", refresh_item["循环魔咒"][2], "删物品：天机老人悬赏任务", "天机老人") then
            return "您的循环魔咒数量不足，无法刷新！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
        end
    end

	local rnd = lualib:GenRandom(sub_index, #task_t[index])
	lualib:Player_SetCustomVarInt(player, task_var[5], rnd)
	return accomplish_info(npc, player, index, rnd, real_index, ring)
end

function accomplish_complete(npc, player, id, index, sub_index, ring, exp_pct)
	local id = tonumber(id)
	local index = tonumber(index)
	local sub_index = tonumber(sub_index)
	local ring = tonumber(ring)
	local exp_pct = tonumber(exp_pct)
	
	if not lualib:CanAccomplishQuest(player, id) then
		if not lualib:DelItem(player, "循环魔咒", exp_pct , 2, "删物品：天机老人悬赏任务", "天机老人") then
			return "您的循环魔咒数量不足，无法完成！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
		end
		lualib:DropQuest(player, id)
	else
		if exp_pct > 1 then
			if not lualib:DelItem(player, "循环魔咒", exp_pct - 1 , 2, "删物品：天机老人悬赏任务", "天机老人") then
				return "您的循环魔咒数量不足，无法完成！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
			end
		end

		lualib:DropQuest(player, id)
--		if not lualib:CanAccomplishQuest(player, id) then return "任务"..task_t[index][sub_index][3]..task_level[sub_index].."还未完成！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end
--		if not lualib:AccomplishQuest(player, id, 0) then return "任务"..task_t[index][sub_index][3]..task_level[sub_index].."提交失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end
	end

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	local exp = math.floor(color_t[sub_index] * level * level * level * ring_t[ring] / 10) * exp_pct
	local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * sub_index) * exp_pct
	if not lualib:Player_AddExp(player, exp, "加经验：天机老人悬赏任务奖励", "天机老人" ) then return "加经验失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end
	if not lualib:Player_AddGold(player, gold, false, "加金币：天机老人悬赏任务奖励", "天机老人") then return "加金币失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end
	lualib:OnGloryTrigger(player, lua_glory_trigger_taofa, "", 0, "悬赏任务", "")
	lualib:SetInt(player, "60011_q", 1)
	return "任务"..task_t[index][sub_index][3]..task_level[sub_index].."提交成功，获得经验："..exp.."，金币："..gold.."！\n \n \n #IMAGE<ID:1902700016>#<@accept *01*[领取新的任务]> \n \n                                               #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>"
end


function lingquexp(npc, player)
	 local msg = "天机难测，命途由人，年轻人，多和我对话对你是有帮助的哦！\n"
    msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@online_exp *01*  在线经验>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#  │　│#COLOREND#<@offline_exp *01*  离线经验>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#  │　#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"


	return msg
end

--离线经验-offline_exp

function offline_exp(npc, player)
	local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的离线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#㈠总离线时间：#COLOREND##COLORCOLOR_ORANGE#你有"..day.."天"..hour.."小时"..minute.."分钟"..second.."秒的离线经验时间！#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#㈡总领取时间：#COLOREND##COLORCOLOR_ORANGE#你可以领取"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#小时的离线经验！#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
     msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	--msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗#COLOREND#\n"
    --msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@exp_award#2#"..math.floor(seconds / 3600).." *01*【金币领取】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@main *01*【返回首页】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	--msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@exp_award#1#"..math.floor(seconds / 3600).." *01*【普通领取】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@exp_award#2#"..math.floor(seconds / 3600).." *01*【金币领取】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@main *01*【返回首页】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"

	return msg
end

function exp_award(npc, player, index, hours)
	index = tonumber(index)
	hours = tonumber(hours)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "你的等级不够"..require_level.."级，无法领取！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 12 / 1000)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验！确定要领取么？\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] * 6 / 100), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..golds.."#COLOREND#金币！确定要领取么？\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 10), (hours * 10)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..ingots.."#COLOREND#元宝！确定要领取么？\n \n \n \n \n"
	else
		return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_award#"..exps.."#"..golds.."#"..ingots.."#"..hours.." *01*确定>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>"
	return msg
end

function add_exp_award(npc, player, exps, golds, ingots, hours)
	exps = tonumber(exps)
	golds = tonumber(golds)
	ingots = tonumber(ingots)
	hours = tonumber(hours)

	if not lualib:Player_IsGoldEnough(player, golds, false) then return "你的金币不足"..golds.."！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "你的元宝不足"..ingots.."！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>" end

	if not lualib:Player_SubGold(player, golds, false, "扣金币：天机老人离线经验", "天机老人") then return "扣除金币出错！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>" end
	if not lualib:Player_SubIngot(player, ingots, false, "扣元宝：天机老人离线经验", "天机老人") then return "扣除元宝出错！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@offline_exp *01*「返回」>" end

	lualib:Player_SetCustomVarInt(player, "player_total_offline_times", lualib:Player_GetCustomVarInt(player, "player_total_offline_times") - hours * 3600)

	if not lualib:Player_AddExp(player, exps, "加经验：天机老人离线经验", "天机老人") then return "奖励经验出错！\n \n \n \n \n \n#IMAGE1902700019#<@offline_exp *01*「返回」>" end
	lingqujingyan_xianshi(player) --领取经验图标是否显示
	return "你已获得"..exps.."经验！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
end

--在线经验-online_exp

function online_exp(npc, player)
	--local seconds = lualib:Player_GetCustomVarInt(player, "player_total_offline_times")
	local seconds;
	local current_time = lualib:GetTime()
	local last_login_time = lualib:LoginTime(player)
	local last_award_time = lualib:Player_GetCustomVarInt(player, "last_award_time")

	if last_award_time > last_login_time then
	    seconds = current_time - last_award_time
	else
	    seconds = current_time - last_login_time
	end

	local day = math.floor(seconds / 3600 / 24)
	local hour = math.floor((seconds - day * 24 * 3600) / 3600)
	local minute = math.floor((seconds - math.floor(seconds / 3600) * 3600) / 60)
	local second = math.floor(seconds - math.floor(seconds / 60) * 60)

	if seconds < 3600 then
		return "你有"..minute.."分钟"..second.."秒的在线经验时间，不足#COLORCOLOR_RED#1小时#COLOREND#无法领取！\n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@lingquexp *01*「返回」>"
	end

	local msg = "#OFFSET<X:0,Y:5>#  #COLORCOLOR_RED#㈠总在线时间：#COLOREND##COLORCOLOR_ORANGE#你有"..day.."天"..hour.."小时"..minute.."分钟"..second.."秒的在线经验时间！#COLOREND##OFFSET<X:0,Y:-5>#\n"
	msg = msg.."#OFFSET<X:0,Y:10>#  #COLORCOLOR_RED#㈡总领取时间：#COLOREND##COLORCOLOR_ORANGE#你可以领取"..math.floor(seconds / 3600).."#COLORCOLOR_ORANGE#小时的在线经验！#COLOREND##OFFSET<X:0,Y:-10>#\n \n"
    msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	--msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗#COLOREND#\n"
	--msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@exp_awardonline#2#"..math.floor(seconds / 3600).." *01*【金币领取】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@main *01*【返回首页】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	--msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝#COLOREND#\n"
    msg = msg.."　#COLORCOLOR_GRAY#╔──────╗　╔──────╗　╔──────╗#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#│#COLOREND#<@exp_awardonline#1#"..math.floor(seconds / 3600).." *01*【普通领取】>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@exp_awardonline#2#"..math.floor(seconds / 3600).." *01*【金币领取】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│　│#COLOREND#<@main *01*【返回首页】>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#│#COLOREND#\n"
	msg = msg.."　#COLORCOLOR_GRAY#╚──────╝　╚──────╝　╚──────╝#COLOREND#\n"
     msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"

	return msg
end

function exp_awardonline(npc, player, index, hours)
	index = tonumber(index)
	hours = tonumber(hours)

	local require_level = 15

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < require_level then return "你的等级不够"..require_level.."级，无法领取！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>" end

	local exps, golds, ingots, msg = 0, 0, 0, ""
	if index == 1 then
		exps = math.floor(hours * level_gold_exp_t[level][2] * 3 / 100)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验！确定要领取么？\n \n"
	elseif index == 2 then
		exps, golds = math.floor(hours * level_gold_exp_t[level][2] / 10), math.floor(hours * level_gold_exp_t[level][1] * 3 /80)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..golds.."#COLOREND#金币！确定要领取么？\n \n \n \n \n"
	elseif index == 3 then
		exps, ingots = math.floor(hours * level_gold_exp_t[level][2] / 5), (hours * 10)
		msg = msg.."你将获取#COLORCOLOR_RED#"..exps.."#COLOREND#经验，同时将花费#COLORCOLOR_GOLD#"..ingots.."#COLOREND#元宝！确定要领取么？\n \n \n \n \n"
	else
		return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>"
	end

	msg = msg.."#OFFSET<X:0,Y:-2>##IMAGE1902700033##OFFSET<X:0,Y:-1>#<@add_exp_awardonline#"..exps.."#"..golds.."#"..ingots.."#"..hours.." *01*「确定」>\n \n#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>"
	return msg
end


function add_exp_awardonline(npc, player, exps, golds, ingots, hours)
	exps = tonumber(exps)
	golds = tonumber(golds)
	ingots = tonumber(ingots)
	hours = tonumber(hours)

	if not lualib:Player_IsGoldEnough(player, golds, false) then return "你的金币不足"..golds.."！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>" end
	if not lualib:Player_IsIngotEnough(player, ingots, false) then return "你的元宝不足"..ingots.."！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>" end

	if not lualib:Player_SubGold(player, golds, false, "扣金币：天机老人在线经验", "天机老人") then return "扣除金币出错！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>" end
	if not lualib:Player_SubIngot(player, ingots, false, "扣元宝：天机老人在线经验", "天机老人") then return "扣除元宝出错！\n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>" end

	--lualib:Player_SetCustomVarInt(player, "player_total_offline_times", lualib:Player_GetCustomVarInt(player, "player_total_offline_times") - hours * 3600)

	if not lualib:Player_AddExp(player, exps, "加经验：天机老人在线经验", "天机老人") then return "奖励经验出错！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@online_exp *01*「返回」>" end
	lualib:Player_SetCustomVarInt(player, "last_award_time", lualib:GetTime())
    lualib:OnGloryTrigger(player, lua_glory_trigger_offline_exp, "", exps, "离线经验", "")
	lingqujingyan_xianshi(player) --领取经验图标是否显示
	return "你已获得"..exps.."经验！\n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回首页」>"
end


-------1014交
function QuestAccomplish1014(npc, player)
    msg = "来得正好，昨夜星辰突变，孤观天卜卦，洞悉天机方知[生死之轮图]遗失天界，致以怪物横生，你那村子里那些家禽正是受到这些妖气的影响都变异了。\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1014 *01* 解开原因了！>\n"
    return msg
end

function Accomplish1014(npc, player)
    if lualib:AccomplishQuest(player, 1014, 0) == true then
        msg = "你知道吗，天藏大陆存在一种神奇的装备，集齐之后就能发挥强大的力量。\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1015 *01* 好的，接取任务：了解套装>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

--------1015接
function QuestAccept1015(npc,player)
    msg = "但是这种装备可遇不可求，很多都被强大的妖魔所控制。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1015 *01* 我愿随你前往龙城>\n"
	return msg
end

function Accept1015(npc, player)
    if lualib:AcceptQuest(player, 1015) == true then
		msg = "点击#COLORCOLOR_GREENG# #NPCLINK<STR:天机老人,NPCID:25001>##COLOREND#完成任务\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccomplish1015 *01* 完成任务>\n"
        return msg
    else
        return "任务接取失败"
    end
end

-------1015交
function QuestAccomplish1015(npc, player)
    msg = "如果你想得到强大的力量，去收集套装吧，他会带给你意想不到的力量！\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1015 *01* 谢谢你告诉我这些！>\n"
    return msg
end

function Accomplish1015(npc, player)
    if lualib:AccomplishQuest(player, 1015, 0) == true then
        msg = "你一定要好好提升能力，这样才能抵御怪物的入侵，去找装备大师了解装备精炼！\n \n"
		msg = msg.."#IMAGE1902700017#<@QuestAccept1017 *01* 知道了，接取任务：精炼>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

--[[
--------1016接
function QuestAccept1016(npc,player)
    msg = "要提升实力，最好的方法就是打造属于自己的装备，这一点你倒是可以去装备大师那了解详细情况\n \n"
	msg = msg.."<@Accept1016 *01* 去找装备大师>\n"
	return msg
end

function Accept1016(npc, player)
    if lualib:AcceptQuest(player, 1016) == true then
        return "去装备大师那了解装备的打造"
    else
        return "任务接取失败"
    end
end
]]--

--------1017接
function QuestAccept1017(npc,player)
    msg = "在你得到好装备后，若想将装备再提升一个档次，可以去装备大师那里提升装备的属性\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1017 *01* 去找装备大师>\n"
	return msg
end

function Accept1017(npc, player)
    if lualib:AcceptQuest(player, 1017) == true then
        return "去找#COLORCOLOR_GREENG# #NPCLINK<STR:装备大师,NPCID:1004>##COLOREND#了解精炼详情。"
    else
        return "任务接取失败"
    end
end


--------3001接

function QuestAccept3001(npc,player)
    msg = "想要保卫家园，就得变的更强，你是否愿意接受挑战？\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3001a *01* 我要变强>\n"
	return msg
end

function Accept3001a(npc,player)
    msg = "好的，既然你有这样的觉悟，那你就去龙城找试炼教头，他会告诉你怎么做的\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3001b *01* 好的，我这就去>\n"
	return msg
end

function Accept3001b(npc, player)
    if lualib:AcceptQuest(player, 3001) == true then
        return "去龙城找#COLORCOLOR_GREENG# #NPCLINK<STR:试炼教头,NPCID:30006>##COLOREND#"
    else
        return "任务接取失败"
    end
end
--------3003接

function QuestAccept3003(npc,player)
    msg = "何童天出现了裂缝，小妖携带着大量的宝物从裂缝中逃到三重天秘洞中，随之招来了许多妖魔。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3003a *01* 有宝物？我想去看看>\n"
	return msg
end

function Accept3003a(npc,player)
    msg = "你可以去龙城寻找何童天小妖\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3003b *01* 好的，我这就去>\n"
	return msg
end

function Accept3003b(npc, player)
    if lualib:AcceptQuest(player, 3003) == true then
        return "去龙城找何童天小妖"
    else
        return "任务接取失败"
    end
end

--------3005接
function QuestAccept3005(npc,player)
    msg = "消失多年的恶魔大陆的漂流岛又慢慢出现了，这预示着危机即将降临到我们头上！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3005a *01* 有这么严重吗？>\n"
	return msg
end

function Accept3005a(npc,player)
    msg = "小伙子，看来你一点都不担心啊，你去找龙城的通灵师了解下情况\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3005b *01* 好的，交给我吧>\n"
	return msg
end

function Accept3005b(npc, player)
    if lualib:AcceptQuest(player, 3005) == true then
        return "去龙城找通灵师"
    else
        return "任务接取失败"
    end
end

--------3007接
function QuestAccept3007(npc,player)
    msg = "神州大陆定期会举办比武大赛，正是你们年轻人崭露头角，扬名立万的好机会。你去找武馆教练了解情况吧\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3007 *01* 我想参加>\n"
	return msg
end


function Accept3007(npc, player)
    if lualib:AcceptQuest(player, 3007) == true then
        return "去巫山城找武馆教练了解天下第一战"
    else
        return "任务接取失败"
    end
end

--------3008接
function QuestAccept3008(npc,player)
    msg = "想要突破吗，参与更具挑战性的战斗吗？去龙城找克星挑战吧\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept3008 *01* 我这就去>\n"
	return msg
end


function Accept3008(npc, player)
    if lualib:AcceptQuest(player, 3008) == true then
        return "去龙城找克星挑战"
    else
        return "任务接取失败"
    end
end

-------2001接
function QuestAccept2001(npc,player)
    msg = "一代新人胜旧人，此话一点不假，当年弈人将军统领十万兵马，用众将士的生命捍卫边疆，用躯体铸成墓冢，将妖怪前锋大军埋葬起来！这才给了人们一个喘息的机会，这就是将军冢的由来……\n \n"
	msg = msg.."#IMAGE1902700017#<@j2001a *01*将军冢原来是用先烈们的躯体铸成，用来掩埋妖怪先锋大军！ >\n"
	return msg
end


function j2001a(npc,player)
    msg = "你可知孤与你讲这故事的原因吗？\n \n"
	msg = msg.."#IMAGE1902700017#<@j2001b *01*不知道，请前辈赐教 >\n"
	return msg
end

function j2001b(npc,player)
    msg = "现如今，而龙城又四面楚歌，将军冢内的妖怪似乎想逃出来，而你又缺乏与怪物作战的经验，当务之急，得去将军冢镇压住那些想出逃的20只骷髅！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2001 *01*好！去将军冢杀20只骷髅 >\n"
	return msg
end





function Accept2001(npc, player)
    if lualib:AcceptQuest(player, 2001) == true then
        return "去#COLORCOLOR_GREENG##LINK<MAP:将军冢1,POSX:128,POSY:39,STR:将军冢>##COLOREND#杀20只任意骷髅！"
    else
        return "任务接取失败"
    end
end

-------2001交
function QuestAccomplish2001(npc, player)
    msg = "幸亏你去的及时，现在将军冢得以平息。但是废弃矿洞那边也出现了同样的异状……\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2001 *01* 交给我吧>\n"
    return msg
end

function Accomplish2001(npc, player)
    if lualib:AccomplishQuest(player, 2001, 0) == true then
        msg = "做的不错，但是你还是得多加锻炼，你再去废弃矿洞杀20只僵尸。\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept2002 *01*没问题，我这就去>\n"
		return msg
    else
        msg = "任务失败，你杀了20只骷髅了吗？\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------2002接
function QuestAccept2002(npc,player)
    msg = "废弃矿洞本是一片天然的矿洞，人们从那里挖掘矿石用于冶炼，然而在一个月黑风高的晚上，魔人突然从矿洞底部钻了出来，并且投放了大量的瘟疫，将矿洞里的人全部感染。\n \n"
	msg = msg.."#IMAGE1902700017#<@j2002a *01*瘟疫感染了废弃矿洞的人？ >\n"
	return msg
end


function j2002a(npc,player)
    msg = "嗯，那些可怜的人们被感染后，并没有死亡，而是沦为了魔人的傀儡，丧失了自主意识，变成了行尸走肉。他们的灵魂充满了各种怨气和悲愤，这种悲鸣声已经严重影响到了活人们的神智。若不趁早消除这种悲鸣，活人们都会失控！你速去废弃矿洞平息20只僵尸的怨气吧！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2002 *01*去废弃矿洞平息20只僵尸的怨气 >\n"
	return msg
end





function Accept2002(npc, player)
    if lualib:AcceptQuest(player, 2002) == true then
        return "去#COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:22,POSY:94,STR:废弃矿洞>##COLOREND#杀20只任意僵尸！"
    else
        return "任务接取失败"
    end
end

-------2002交
function QuestAccomplish2002(npc, player)
    msg = "真是无量功德，废弃矿洞的怨气居然让你化解了。\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2002 *01* 小意思>\n"
    return msg
end

function Accomplish2002(npc, player)
    if lualib:AccomplishQuest(player, 2002, 0) == true then
        msg = "最近封魔阵的妖灵似乎有所异动，你赶紧去找龙城的封魔阵引路使者了解情况！\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept1023 *01*好的，我这就去>\n"
		return msg
    else
        msg = "任务失败，你杀了20只僵尸了吗？\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end


----1022交
function QuestAccomplish1022(npc, player)
    msg = "恩，不错不错，看来你已有所成长。\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1022 *01* 我知道了>\n"
    return msg
end


function Accomplish1022(npc, player)
    if lualib:AccomplishQuest(player, 1022, 0) == true then
        msg = "对了，麻烦你去将军冢一趟，最近骷髅王又蠢蠢欲动，你帮我去教训一下他的手下。\n \n"
		msg = msg.."#IMAGE1902700017#<@Accept2001 *01* 好的>"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*恩，知道了，我稍侯就去>\n"
		return msg
    end
end

-------1023接
function QuestAccept1023(npc,player)
    msg = "那些封印的妖灵似乎有所异动，你赶紧去找龙城的封魔阵引路使者了解情况！\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept1023 *01* 好的>\n"
	return msg
end


function Accept1023(npc, player)
    if lualib:AcceptQuest(player, 1023) == true then
		msg = "去龙城找封魔阵引路人\n \n"
		msg = msg.."#IMAGE1902700017#<@MapMoveXYB#龙城#238#238#1 *01*马上去找封魔阵引路人> \n"
        return msg
    else
        return "任务接取失败"
    end
end


----1027交
function QuestAccomplish1027(npc, player)
    msg = "能在有生之年看到像你这样的年轻人，实在太令人高兴了，以后这个世界就靠你了。\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish1027 *01* 哪里哪里>\n"
    return msg
end


function Accomplish1027(npc, player)
    if lualib:AccomplishQuest(player, 1027, 0) == true then
        msg = "对了，多参加活动，里面有丰厚的奖励，还有地宫的妖魔也蠢蠢欲动，还有。。。。\n \n"
		msg = msg.."#IMAGE1902700017#<@accept_task *01* 我知道了,以后这世界就看我的吧！>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*恩，知道了，我稍侯就去>\n"
		return msg
    end
end


---2005接
function QuestAccept2005(npc,player)
    msg = "最近听说绝路城遭到牛魔大军的进攻，去绝路城帮助人民抵御妖魔吧。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2005 *01* 接受任务>\n"
	return msg
end


function Accept2005(npc, player)
    if lualib:AcceptQuest(player, 2005) == true then
        return "绝路城现在十分危险，请务必小心！"
    else
        return "到26级再来找我吧"
    end
end


---2005交
function QuestAccomplish2005(npc, player)
    msg = "你已经消灭绝路城的牛魔了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2005 *01* 我已消灭牛魔，特来复命！>\n"
    return msg
end

function Accomplish2005(npc, player)
    if lualib:AccomplishQuest(player, 2005, 0) == true then
        msg = "做的好，这下我们应该能够把绝路城夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---2006交
function QuestAccomplish2006(npc, player)
    msg = "你已经消灭绝路城的黑面牛魔了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2006 *01* 我已消灭牛魔，特来复命！>\n"
    return msg
end

function Accomplish2006(npc, player)
    if lualib:AccomplishQuest(player, 2006, 0) == true then
        msg = "做的好，这下我们应该能够把绝路城夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---2007交
function QuestAccomplish2007(npc, player)
    msg = "你已经消灭绝路城的红面牛魔了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2007 *01* 我已消灭牛魔，特来复命！>\n"
    return msg
end

function Accomplish2007(npc, player)
    if lualib:AccomplishQuest(player, 2007, 0) == true then
        msg = "做的好，这下我们应该能够把绝路城夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---2008交
function QuestAccomplish2008(npc, player)
    msg = "你已经消灭绝路城的牛魔守卫了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2008 *01* 我已消灭牛魔，特来复命！>\n"
    return msg
end

function Accomplish2008(npc, player)
    if lualib:AccomplishQuest(player, 2008, 0) == true then
        msg = "做的好，这下我们应该能够把绝路城夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2009接
function QuestAccept2009(npc,player)
    msg = "最近听说妖山暗穴出现了大批怪物，去妖山暗穴清剿怪物吧。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2009 *01* 接受任务>\n"
	return msg
end


function Accept2009(npc, player)
    if lualib:AcceptQuest(player, 2009) == true then
        return "妖山暗穴现在十分危险，请务必小心！"
    else
        return "到29级再来找我吧"
    end
end


---2009交
function QuestAccomplish2009(npc, player)
    msg = "你已经消灭妖山暗穴的怪物了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2009 *01* 我已消灭怪物，特来复命！>\n"
    return msg
end

function Accomplish2009(npc, player)
    if lualib:AccomplishQuest(player, 2009, 0) == true then
        msg = "做的好，这下妖山暗穴应该安全了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---2010交
function QuestAccomplish2010(npc, player)
    msg = "你已经消灭妖山暗穴的尸奴了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2010 *01* 我已消灭尸奴，特来复命！>\n"
    return msg
end

function Accomplish2010(npc, player)
    if lualib:AccomplishQuest(player, 2010, 0) == true then
        msg = "做的好，这下妖山暗穴应该安全了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败尸奴了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2011交
function QuestAccomplish2011(npc, player)
    msg = "你已经消灭妖山暗穴的鬼面监工了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2011 *01* 我已消灭鬼面监工，特来复命！>\n"
    return msg
end

function Accomplish2011(npc, player)
    if lualib:AccomplishQuest(player, 2011, 0) == true then
        msg = "做的好，这下妖山暗穴应该安全了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败鬼面监工了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2012交
function QuestAccomplish2012(npc, player)
    msg = "你已经消灭妖山暗穴的妖面监工了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2012 *01* 我已消灭妖面监工，特来复命！>\n"
    return msg
end

function Accomplish2012(npc, player)
    if lualib:AccomplishQuest(player, 2012, 0) == true then
        msg = "做的好，这下妖山暗穴应该安全了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败妖面监工了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2013交
function QuestAccomplish2013(npc, player)
    msg = "你已经消灭妖山暗穴的掘铲尸奴了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2013 *01* 我已消灭掘铲尸奴，特来复命！>\n"
    return msg
end

function Accomplish2013(npc, player)
    if lualib:AccomplishQuest(player, 2013, 0) == true then
        msg = "做的好，这下妖山暗穴应该安全了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败掘铲尸奴了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2014接
function QuestAccept2014(npc,player)
    msg = "最近听说天荒阵遭到怪物大军的进攻，去天荒阵清剿怪物吧。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2014 *01* 接受任务>\n"
	return msg
end


function Accept2014(npc, player)
    if lualib:AcceptQuest(player, 2014) == true then
        return "天荒阵现在十分危险，请务必小心！"
    else
        return "到32级再来找我吧"
    end
end


---2014交
function QuestAccomplish2014(npc, player)
    msg = "你已经消灭天荒阵的怪物了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2014 *01* 我已消灭怪物，特来复命！>\n"
    return msg
end

function Accomplish2014(npc, player)
    if lualib:AccomplishQuest(player, 2014, 0) == true then
        msg = "做的好，这下我们应该能够把天荒阵夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2015交
function QuestAccomplish2015(npc, player)
    msg = "你已经消灭天荒阵的巨蛾了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2015 *01* 我已消灭巨蛾，特来复命！>\n"
    return msg
end

function Accomplish2015(npc, player)
    if lualib:AccomplishQuest(player, 2015, 0) == true then
        msg = "做的好，这下我们应该能够把天荒阵夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败巨蛾了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2016交
function QuestAccomplish2016(npc, player)
    msg = "你已经消灭天荒阵的蓝兽了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2016 *01* 我已消灭蓝兽，特来复命！>\n"
    return msg
end

function Accomplish2016(npc, player)
    if lualib:AccomplishQuest(player, 2016, 0) == true then
        msg = "做的好，这下我们应该能够把天荒阵夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败蓝兽了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2017交
function QuestAccomplish2017(npc, player)
    msg = "你已经消灭天荒阵的沙石魔了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2017 *01* 我已消灭沙石魔，特来复命！>\n"
    return msg
end

function Accomplish2017(npc, player)
    if lualib:AccomplishQuest(player, 2017, 0) == true then
        msg = "做的好，这下我们应该能够把天荒阵夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败沙石魔了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2018交
function QuestAccomplish2018(npc, player)
    msg = "你已经消灭天荒阵的散兵了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2018 *01* 我已消灭散兵，特来复命！>\n"
    return msg
end

function Accomplish2018(npc, player)
    if lualib:AccomplishQuest(player, 2018, 0) == true then
        msg = "做的好，这下我们应该能够把天荒阵夺回来了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败散兵了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2019接
function QuestAccept2019(npc,player)
    msg = "最近听说天荒邪庙出现大群邪教徒，去天荒邪庙清剿这些邪教徒吧。\n \n"
	msg = msg.."#IMAGE1902700017#<@Accept2019 *01* 接受任务>\n"
	return msg
end


function Accept2019(npc, player)
    if lualib:AcceptQuest(player, 2019) == true then
        return "天荒邪庙现在十分危险，请务必小心！"
    else
        return "到35级再来找我吧"
    end
end


---2019交
function QuestAccomplish2019(npc, player)
    msg = "你已经消灭天荒邪庙的邪教徒了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2019 *01* 我已消灭邪教徒，特来复命！>\n"
    return msg
end

function Accomplish2019(npc, player)
    if lualib:AccomplishQuest(player, 2019, 0) == true then
        msg = "做的好，这下百姓应该不会再受到邪教的侵扰了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败怪物了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end

---2020交
function QuestAccomplish2020(npc, player)
    msg = "你已经消灭天荒邪庙的天原猛士了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2020 *01* 我已消灭天原猛士，特来复命！>\n"
    return msg
end

function Accomplish2020(npc, player)
    if lualib:AccomplishQuest(player, 2020, 0) == true then
        msg = "做的好，这下百姓应该不会再受到邪教的侵扰了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败天原猛士了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2021交
function QuestAccomplish2021(npc, player)
    msg = "你已经消灭天荒邪庙的夜行僧了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2021 *01* 我已消灭夜行僧，特来复命！>\n"
    return msg
end

function Accomplish2021(npc, player)
    if lualib:AccomplishQuest(player, 2021, 0) == true then
        msg = "做的好，这下百姓应该不会再受到邪教的侵扰了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败夜行僧了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end



---2022交
function QuestAccomplish2022(npc, player)
    msg = "你已经消灭天荒邪庙的天原勇士了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2022 *01* 我已消灭天原勇士，特来复命！>\n"
    return msg
end

function Accomplish2022(npc, player)
    if lualib:AccomplishQuest(player, 2022, 0) == true then
        msg = "做的好，这下百姓应该不会再受到邪教的侵扰了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败天原勇士了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2023交
function QuestAccomplish2023(npc, player)
    msg = "你已经消灭天荒邪庙的鬼面武者了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2023 *01* 我已消灭鬼面武者，特来复命！>\n"
    return msg
end

function Accomplish2023(npc, player)
    if lualib:AccomplishQuest(player, 2023, 0) == true then
        msg = "做的好，这下百姓应该不会再受到邪教的侵扰了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败鬼面武者了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end


---2024交
function QuestAccomplish2024(npc, player)
    msg = "你已经消灭天荒邪庙的天原死士了？\n \n"
    msg = msg.."#IMAGE1902700017#<@Accomplish2024 *01* 我已消灭天原死士，特来复命！>\n"
    return msg
end

function Accomplish2024(npc, player)
    if lualib:AccomplishQuest(player, 2024, 0) == true then
        msg = "做的好，这下百姓应该不会再受到邪教的侵扰了！\n \n"
		msg = msg.."#IMAGE1902700017#<@leave *01*太好了>\n"
		return msg
    else
        msg = "任务失败，你击败天原死士了吗？\n \n"
		msg = msg.."<@leave *01*我知道了>\n"
		return msg
    end
end



---传送

function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	gold = 0
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费消耗", "天桑村传送") then return "你的金币不足，不能传送！" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	return msg
end

--累积签到

function qiandao(npc, player)
	local msg = ""
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_q *01*[签到]>"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_j *01*[领奖]>"
	
    return msg
end

function qiandao_q(npc, player)
	local msg = ""
	local qiandao_day = lualib:GetDayInt(player, "qiandao_day")
	local qiandao_ci = lualib:GetInt(player, "qiandao_ci")
	if qiandao_day >= 1 then
		return "你今日已经签过到了！"
	else
		lualib:SetDayInt(player, "qiandao_day", qiandao_day + 1)
		lualib:SetInt(player, "qiandao_ci", qiandao_ci + 1)
		local xzcishu = qiandao_ci + 1
		return "签过成功！你已经累积签到"..xzcishu.."天了，加油！"
	end
    return msg
end

function qiandao_j(npc, player)
	local msg = ""
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#3 *01*[登陆3天奖励]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#6 *01*[登陆6天奖励]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#9 *01*[登陆9天奖励]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#11 *01*[登陆11天奖励]>\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##IMAGE<ID:1902700017>##OFFSET<X:0,Y:-2># <@qiandao_jl#15 *01*[登陆15天奖励]>\n"
	
    return msg
end

local qiandao_item =
{
		["3"]  =  {"循环魔咒", 5},
		["6"]  =  {"循环魔咒", 5},
		["9"]  =  {"释灵珠", 3},
		["11"] =  {"定位石", 1},
		["15"] =  {"逍遥游(100次)", 1}
	
}


function qiandao_jl(npc, player, num)
	local msg = ""
	local qiandao_ci = lualib:GetInt(player, "qiandao_ci")

	if qiandao_ci == tonumber(num) then
		
		for k, v in pairs(qiandao_item) do
			if qiandao_ci == tonumber(k) then
				local qdlj_bl = lualib:GetInt(player, "qdlj_bl"..num)
				if qdlj_bl >= 1 then
					return "你已经领取过这个奖励了！"
				else
					lualib:SetInt(player, "qdlj_bl"..num, qdlj_bl + 1)
					if not lualib:AddItem(player, v[1], v[2], true, "累积签到", player) then
						return "奖励领取失败，请联系客服人工领取！"
					end
				end
			end
		end
		
	else
		return "你签到的天数不足"..num.."天，无法领取！请先签到！"
	
	end
	
	
	
    return msg
end



function days_task(npc, player)
	local task_Color_xs =
	{
		"白色",
		"绿色",
		"蓝色",
		"紫色",
		"金色"
	}
	
    local all_days = lualib:GetAllDays(0)
    local days = lualib:Player_GetCustomVarInt(player, task_var[1])
	local cur_ring = lualib:Player_GetCustomVarInt(player, task_var[2])
    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    local temp_t = {}
    for k, v in pairs(task_t) do
        local temp = {k, v[1]}
        if (level >= v[1][2] and level <= v[1][7]) then table.insert(temp_t, temp) end
    end
	
    local rnd = lualib:GenRandom(1, #temp_t)
    if temp_t[rnd] == nil then return "角色到达20级才可以接悬赏任务！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>" end

    for _, v in pairs(task_t) do
        for _, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
				cur_ring = cur_ring - 1
			end
        end
    end
	

    if days == all_days then
        if cur_ring >= task_var[3] then
            return "你今天的任务已全部完成！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
        end
    elseif days > all_days then
        return "系统错误！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    else
        lualib:Player_SetCustomVarInt(player, task_var[2], 0)
        cur_ring = 0
    end
	
	local msg = "您今天还有#COLORCOLOR_RED#"..task_var[3] - cur_ring.."环#COLOREND#悬赏任务未完成，请选择品质完成！\n \n"
	for i = 1, #task_Color_xs do
		msg = msg.."<@days_task_ex#"..i.."#"..cur_ring.." *01*"..task_Color_xs[i]..">"
		msg = msg.."     "
	end
	--msg = msg.."#IMAGE1902700017#<@leave *01*离开>\n"
	return msg
end


function days_task_ex(npc, player, task_lv, ring)
	local ring = tonumber(ring)
	local task_lv = tonumber(task_lv)
	
	local req_mz_count = (task_var[3] - ring) * task_lv 
	local msg = "您今天还有"..task_var[3] - ring.."任务未完成，一键完成需要消耗一定循环魔咒，循环魔咒不足时每扣#COLORCOLOR_RED#10万金币代替#COLOREND#1个魔咒。循环魔咒和金币都不足则无法完成。\n"
	
	local itemNum = lualib:ItemCountByKey(player, "循环魔咒", true, false, false, 2)
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#1 *01*「一倍完成」> -- 需要".. req_mz_count * 1 .."魔咒\n"
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#2 *01*「二倍完成」> -- 需要".. req_mz_count * 2 .."魔咒\n"
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#3 *01*「三倍完成」> -- 需要".. req_mz_count * 3 .."魔咒\n"
	msg = msg.."<@accomplish_xs_task#"..task_lv.."#"..ring.."#4 *01*「四倍完成」> -- 需要".. req_mz_count * 4 .."魔咒\n"
	return msg
end



function accomplish_xs_task(npc, player, task_lv, ring, pow)
	local msg = ""
	local task_lv = tonumber(task_lv)
	local ring = tonumber(ring)
	local pow = tonumber(pow)
	local req_mz_count = (task_var[3] - ring) * task_lv * pow
	local itemNum = lualib:ItemCountByKey(player, "循环魔咒", true, false, false, 2)
	
	print(req_mz_count)
	local subGold = 0
	if req_mz_count > itemNum then
		subGold = (req_mz_count - itemNum) * 100000
		print("subGold:"..subGold)
		if not lualib:Player_IsGoldEnough(player, subGold, false) then
			return "你的循环魔咒与金币不足，无法完成！"
		end
		if itemNum > 0 then
			if not lualib:DelItem(player, "循环魔咒", itemNum, 2, "一键完成当日悬赏", player) then
				return "扣除道具失败"
			end		
		end
		
		if not lualib:Player_SubGold(player, subGold, false, "一键完成当日悬赏", player) then
			return "扣除金币失败"
		end
	else
		if not lualib:DelItem(player, "循环魔咒", req_mz_count, 2, "一键完成当日悬赏", player) then
			return "扣除道具失败!"
		end
	end
	for i = ring + 1, task_var[3] do
		local level = lualib:Player_GetIntProp(player,  lua_role_level)
		local exp = math.floor(color_t[task_lv] * level * level * level * ring_t[i] / 10) * pow
		local gold = math.floor(((130 * level * level - 5000 * level + 70000) / 300) * 2 * task_lv) * pow
		if not lualib:Player_AddExp(player, exp, "加经验：天机老人悬赏任务奖励", "天机老人" ) then return "加经验失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end
		if not lualib:Player_AddGold(player, gold, false, "加金币：天机老人悬赏任务奖励", "天机老人") then return "加金币失败！\n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@accept_task *01*「返回」>" end
		lualib:OnGloryTrigger(player, lua_glory_trigger_taofa, "", 0, "悬赏任务", "")
	end
	
	for _, v in pairs(task_t) do
        for _, _v in pairs(v) do
            if lualib:HasQuest(player, _v[1]) then
				lualib:DropQuest(player, _v[1])
				break
			end
        end
    end
	lualib:Player_SetCustomVarInt(player, task_var[2], task_var[3])
    lualib:Player_SetCustomVarInt(player, task_var[1], lualib:GetAllDays(0))
	return msg
end