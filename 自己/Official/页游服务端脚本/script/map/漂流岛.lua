
function on_map_create(map)
    lualib:Print("Ư������ͼ�����ص���")
    if not lualib:AddTimer(map, 1, 1740000, 1, "on_timer_close") then
        lualib:Print("Ư�������ر�֪ͨ��ʱ��ʧ�ܣ�")
        return
    end
    lualib:Print("Ư�������ر�֪ͨ��ʱ���ɹ���")

    local monster_table = {{"��ħ�ػ���", 60}}
    for i = 1, table.getn(monster_table) do
        lualib:Map_BatchGenMonster(map, monster_table[i][1], monster_table[i][2], true)
    end
    lualib:Print("Ư���������ˢ�֣�")

    local npc_table = {{"��ħ֮ϻ", 1}}
    for i = 1, table.getn(monster_table) do
        for j = 1, npc_table[i][2] do
            lualib:Map_GenNpcRnd(map, npc_table[i][1])
        end
    end
    lualib:Print("Ư���������ˢ��ħ֮ϻ��")
    return
end

function on_map_destroy()
    return
end

function on_timer_close(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "ͨ��ʦ���������ˣ�����1���ӽ���Ѵ�Ҵ�Ư��������ȥ��")
	lualib:SysMsg_SendBroadcastColor("ͨ��ʦ���������ˣ�����1���ӽ���Ѵ�Ҵ�Ư��������ȥ��", "", 1, 12)
end
