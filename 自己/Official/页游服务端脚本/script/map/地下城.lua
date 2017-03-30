local monster_table =
{
    {"��������",     25},
}

function on_map_create(map)
    lualib:Debug("���³ǵ�ͼ�����ص���")
    if not lualib:AddTimer(map, 1, 1000, -1, "on_timer_gen_monster") then
        lualib:Error("���³ǵ�ͼˢ�ֶ�ʱ�����ʧ�ܣ�")
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
            lualib:Error(monster_table[i][1].."ˢ��ʧ�ܣ�")
        else
            lualib:Debug(monster_table[i][1].."ˢ�³ɹ���")
        end
    end
    
    lualib:Map_SetCustomVarInt(map, dgn_var, cur_count + 1)
end