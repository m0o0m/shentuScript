local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")

local online_gift = 
{
    {
        time = 1,
        gift =  {"灵元珠"},
        count = {1},
        bind =  {1}
    },
    {
        time = 3,
        gift =  {"朱果", "坐骑口粮"},
        count = {1, 			1},
        bind =  {1,			1}
    },
    {
        time = 10,
        gift =  {"循环魔咒",	"套索"},
        count = {1,				1},
        bind =  {1,				1}
    },
    {
        time = 30,
        gift =  {"释灵珠",	"坐骑经验丹"},
        count = {1,				10},
        bind =  {1,				1}
    },
    {
        time = 60,
        gift =  {"开光印",	"1.5倍经验卷轴", "逍遥游(10次)"},
        count = {1,			1,                  1},
        bind =  {1,			1,                  1}
    },
    {
        time = 120,
        gift =  {"循环魔咒", "释灵珠", "小喇叭", "定位石(2次)", "灵元珠"},
        count = {2,			1,			1,			1,       10},
        bind =  {1,			1,			1,			1,       1}
    },	
}

--玩家登录时候调用
function online_gift_login(player)
    local cur_level = lualib:GetInt(player, "online_gift_level");

    -- 所有在线礼包都领了
    if cur_level >= table.getn(online_gift) then
        return
    end

    local has_online_gift = lualib:GetInt(player, "has_online_gift");
    -- 如果上个礼包未领，直接领取
    if has_online_gift ~= 0 and has_online_gift < lualib:GetTime() then
        ShowTimeCount(player, 0, "1903800062", "在线礼包")
        return
    end

    -- 启动下个礼包计时
    cur_level = cur_level + 1
    lualib:SetInt(player, "has_online_gift", lualib:GetTime() + online_gift[cur_level].time * 60)
    ShowTimeCount(player, online_gift[cur_level].time * 60, "1903800062", "在线礼包")
end

--玩家退出时候调用
function online_gift_logout(player)
    local has_online_gift = lualib:GetInt(player, "has_online_gift");
    -- 如果未到领取时间，清除该变量
    if has_online_gift > lualib:GetTime() then
        lualib:SetInt(player, "has_online_gift", 0);
        return
    end
end

--玩家领取奖品
function get_online_gift(player)
    local cur_level = lualib:GetInt(player, "online_gift_level")

    -- 所有在线礼包都领了
    if cur_level >= table.getn(online_gift) then
        return
    end

    local has_online_gift = lualib:GetInt(player, "has_online_gift")
    -- 如果没有礼包可领，或未到领取时间
    if has_online_gift == 0 then
        return 
    elseif has_online_gift > lualib:GetTime() then
        lualib:SysMsg_SendWarnMsg(player, "未到领取时间！")
        ShowTimeCount(player, has_online_gift - lualib:GetTime(), "1903800062", "在线礼包")        
        return
    end

    cur_level = cur_level + 1
    local opr_table = {}
    for i = 1, table.getn(online_gift[cur_level].gift) do
        opr_table[i] = 0
    end
    if not lualib:Player_ItemRequest(player, online_gift[cur_level].gift,
                                      online_gift[cur_level].count, online_gift[cur_level].bind, opr_table, "事务操作：在线礼包", player) then
        lualib:SysMsg_SendWarnMsg(player, "背包已满！")
        ShowTimeCount(player, 0, "1903800062", "在线礼包")
        return false
    end

    lualib:SetInt(player, "online_gift_level", cur_level)
    lualib:SetInt(player, "has_online_gift", 0)

    cur_level = cur_level + 1
    if online_gift[cur_level] ~= nil then
        lualib:SetInt(player, "has_online_gift", lualib:GetTime() + online_gift[cur_level].time * 60)
        ShowTimeCount(player, online_gift[cur_level].time * 60, "1903800062", "在线礼包")
    end
end

function show_my_online_gift(player)
    local cur_level = lualib:GetInt(player, "online_gift_level")

    -- 所有在线礼包都领了
    if cur_level >= table.getn(online_gift) then
        return
    end

    cur_level = cur_level + 1
    local content = ""
    local max = table.getn(online_gift[cur_level].gift)
    for j = 1, max do
        content = content..online_gift[cur_level].gift[j].."["..online_gift[cur_level].count[j].."]"..online_gift[cur_level].bind[j]..","
    end

    lualib:Print("发送在线礼包表单");
    lualib:ShowFormWithContent(player, "在线礼包表单", content)
end

function show_online_gift_count(player)
    local has_online_gift = lualib:GetInt(player, "has_online_gift")
    -- 如果没有礼包可领，或未到领取时间
    if has_online_gift == 0 then
        return 
    elseif has_online_gift >= lualib:GetTime() then
        ShowTimeCount(player, has_online_gift - lualib:GetTime(), "1903800062", "在线礼包")        
        return
    end
end