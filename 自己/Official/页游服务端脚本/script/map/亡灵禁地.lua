function on_map_create(map)
    lualib:Print("������ص�ͼ�����ص���")
    local monster_table =
    {
        {"�׹�ħ��1",     1}
    }
    for i = 1, #monster_table do
        if not lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], false) then
            lualib:Print(monster_table[i][1].."ˢ��ʧ�ܣ�")
        else
            lualib:Print(monster_table[i][1].."ˢ�³ɹ���")
        end
    end
end

function on_map_destroy()
end
