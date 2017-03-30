function on_map_create(map)
    lualib:Print("亡灵禁地地图建创回调！")
    local monster_table =
    {
        {"白骨魔将1",     1}
    }
    for i = 1, #monster_table do
        if not lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], false) then
            lualib:Print(monster_table[i][1].."刷新失败！")
        else
            lualib:Print(monster_table[i][1].."刷新成功！")
        end
    end
end

function on_map_destroy()
end
