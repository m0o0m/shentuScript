local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_map_create(map_guid)
    lualib:Print("��Ĺ����ͼ�����ص���")

lualib:AddTrigger(map_guid,  lua_trigger_post_die, "On_Trigger_Role_Die")
    lualib:AddTrigger(map_guid,  lua_trigger_pre_process_pk, "On_Trigger_Role_PK")

    if not lualib:AddTimer(map_guid, 1, 1000, 1, "On_Timer_Monster_born") then
        lualib:Print("��Ĺ���ˢ�ֶ�ʱ�����ʧ��@1��")
        return ""
    end

    return ""
end

function on_map_destroy()
    return ""
end

function On_Timer_Monster_born(map_guid, timer_id)
    local monster_table = {
	                        {{"������1", 20}, {"������2", 20}, {"������3", 20}},
                           	{{"������1", 20}, {"������2", 20}, {"������3", 20}},
	                        {{"������4", 20}, {"������4", 20}, {"������5", 20}},
	                        {{"������6", 20}, {"������6", 20}, {"������7", 20}},
	                        {{"������6", 20}, {"������6", 20}, {"����ħ��", 1}, {"������7", 20}}
                          }

    local pos_table = {
                        {{28, 35, 8}, {28, 95, 8}, {80, 95, 8}, {75, 35, 8}},
                        {{52, 64, 8}}
                      }

    if not lualib:Map_IsDgnExist(map_guid) then
        lualib:Print("��Ĺ����ͼ�����ڣ�")
        return ""
    end

    --������������еĹ�
    if not lualib:Map_ClearDgnMonster(map_guid) then
        lualib:Print("��Ĺ���:���������еĹ���ʧ�ܣ�")
        return ""
    end

    --��ʼ�ڸ�����ˢ��
    for i = 1, table.getn(monster_table[timer_id]) do
        if timer_id == 5 then
            lualib:Map_GenMonster(map_guid, pos_table[2][1][1],
                                            pos_table[2][1][2],
                                            pos_table[2][1][3],
                                            lualib:GenRandom(0, 7),
                                            monster_table[timer_id][i][1],
                                            monster_table[timer_id][i][2], false)
        else
            lualib:Map_GenMonster(map_guid, pos_table[1][lualib:GenRandom(1, 4)][1],
                                            pos_table[1][lualib:GenRandom(1, 4)][2],
                                            pos_table[1][lualib:GenRandom(1, 4)][3],
                                            lualib:GenRandom(0, 7),
                                            monster_table[timer_id][i][1],
                                            monster_table[timer_id][i][2], false)
        end
    end

    --�����һ������ˢ�µĶ�ʱ��
    if timer_id == 5 then return "" end
    if not lualib:AddTimer(map_guid, timer_id + 1, 15 * 60 * 1000, 1, "On_Timer_Monster_born") then
        lualib:Print("��Ĺ���ˢ�ֶ�ʱ�����ʧ��@2��")
        return ""
    end

    return ""
end

--��ͼ���н�ɫ����ʱ����
function On_Trigger_Role_Die(actor_guid, killer_guid)
    --���ɱ������ң�����������лṱ�׶�
    if lualib:Player_IsPlayer(killer_guid) then
        if not lualib:Player_ReCalGuildCtrb(killer_guid, 1) then
            lualib:Print("����ɫ����лṱ�׶�ʧ�ܣ�")
            return ""
        end
    end
    return ""
end

--PK����PKֵ
function trigger_pre_process_pk(killer_guid, victim_guid)
    return false
end
