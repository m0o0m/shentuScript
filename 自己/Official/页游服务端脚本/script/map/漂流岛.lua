
function on_map_create(map)
    lualib:Print("漂流岛地图建创回调！")
    if not lualib:AddTimer(map, 1, 1740000, 1, "on_timer_close") then
        lualib:Print("漂流岛：关闭通知定时器失败！")
        return
    end
    lualib:Print("漂流岛：关闭通知定时器成功！")

    local monster_table = {{"恶魔守护者", 60}}
    for i = 1, table.getn(monster_table) do
        lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], true)
    end
    lualib:Print("漂流岛：随机刷怪！")

    local npc_table = {{"恶魔之匣", 1}}
    for i = 1, table.getn(monster_table) do
        for j = 1, npc_table[i][2] do
            lualib:Map_GenNpcRnd(map, npc_table[i][1])
        end
    end
    lualib:Print("漂流岛：随机刷恶魔之匣！")
    return
end

function on_map_destroy()
    return
end

function on_timer_close(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "通灵师法力不足了，还有1分钟将会把大家从漂流岛传回去！")
	lualib:SysMsg_SendBroadcastColor("通灵师法力不足了，还有1分钟将会把大家从漂流岛传回去！", "", 1, 12)
end
