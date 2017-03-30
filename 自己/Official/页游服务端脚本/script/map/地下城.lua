local monster_table =
{
    {"练宝宝怪",     25},
}

function on_map_create(map)
    lualib:Debug("地下城地图建创回调！")
    if not lualib:AddTimer(map, 1, 1000, -1, "on_timer_gen_monster") then
        lualib:Error("地下城地图刷怪定时器添加失败！")
    end 
end

function on_map_destroy(map)
end

function on_timer_gen_monster(map, timer_id)
    if lualib:Map_GetMonsterCount(map, monster_table[1][1], true, true) == 0 then gen_monster(map) end 
end

function gen_monster(map)
    local max_count = 4
    local dgn_var = "dxc_gen_monster_count"
    local cur_count = lualib:Map_GetCustomVarInt(map, dgn_var)
    if cur_count >= max_count then
        lualib:Map_DestroyDgn(map)
    end

    for i = 1, #monster_table do
        if not lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], false) then
            lualib:Error(monster_table[i][1].."刷新失败！")
        else
            lualib:Debug(monster_table[i][1].."刷新成功！")
        end
    end
    
    lualib:Map_SetCustomVarInt(map, dgn_var, cur_count + 1)
end