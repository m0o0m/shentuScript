local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map)
    lualib:Print("���������ض���ͼ�����ص���")
    if not lualib:AddTimer(map, 10001, 30000, 1, "on_timer_monster_born") then
        lualib:Print("���������ض���һ����ˢ�¶�ʱ�����ʧ�ܣ�")
        return
    end
    lualib:Print("���������ض���һ����ˢ�¶�ʱ����ӳɹ���")

    lualib:AddTrigger(map,  lua_trigger_post_die, "on_trigger_monster_die")
end

function on_map_destroy()

end

function on_timer_monster_born(map, timer_id)

    local player_count = lualib:Map_GetPlayerCount(map, false)
    if player_count == -1 then
        lualib:Print("��ͼ�����ڣ�����ϵͳGM��" )
        return
    end

    local monster_num = math.ceil(player_count / 3)
    if monster_num == 0 then monster_num = 1 end
    lualib:Print("���������ض�ˢ��������"..monster_num.."��")

    if not lualib:Map_GenMonster(map, 52, 65, 16, lualib:GenRandom(0, 7), "����������", monster_num, false) then
        lualib:Print("���������ض�ˢ��ʧ�ܣ�")
        return
    end
    lualib:Print("���������ض�ˢ�ֳɹ���")

    if timer_id == 10007 then
        lualib:SysMsg_SendTopMsg(1, "�����������ħ�����˴����ߣ���ͯ��С����Ϊ���£�����3���Ӻ�ر��ض���")
		lualib:SysMsg_SendBroadcastColor("�����������ħ�����˴����ߣ���ͯ��С����Ϊ���£�����3���Ӻ�ر��ض���", "", 1, 12)
    else
        timer_id = timer_id + 1
        if not lualib:AddTimer(map, timer_id, 180000, 1, "on_timer_monster_born") then
            lualib:Print("���������ض�ˢ�¶�ʱ�����ʧ�ܣ�")
            return
        end
        lualib:Print("���������ض�ˢ�¶�ʱ����ӳɹ���")
    end
end

function on_trigger_monster_die(actor, killer)
    if lualib:Monster_IsMonster(actor) and lualib:Monster_GetKeyName(actor) == "����������" then
        local x = lualib:Monster_GetPosX(actor)
        local y = lualib:Monster_GetPosY(actor)
        local map = lualib:Monster_GetMap(actor)
        if x == -1 or y == -1 or map == "" then
            lualib:Print("ȡ�ù�������ʧ�ܣ�")
            return
        end

        if not lualib:Map_GenNpc(map, "�����챦��", x, y, 3, lualib:GenRandom(0, 7)) then
            lualib:Print("�����챦��ˢ��ʧ�ܣ�")
        end
        lualib:Print("�����챦��ˢ�³ɹ���")
    end
end
