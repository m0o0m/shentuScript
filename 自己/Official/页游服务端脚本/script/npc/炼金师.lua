local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
    local msg = "     ��ֻҪ�ṩ1������ʯ���ҾͿ��԰�����������־�Ԫ�������һ������͸�������ľ���Ŷ��\n \n"
    msg = msg.."<@Refine *01*��������ʯ>\n"
    msg = msg.."<@Get *01*��ȡ��Ʒ>\n"
	msg = msg.."<@Jieshao *01*��������ʯ����>\n"
    return msg
end

function Refine(npc, player)
    local msg = "�㡸ȷ����Ҫ������\n \n"
    msg = msg.."<@Submit *01*��ȷ����>\n"
    msg = msg.."<@main *01*�����ء�>\n"
	return msg
end

function Submit(npc, player)
    local ingot_num = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_num")
    local ingot_times = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_times")
    if ingot_num > 0 then
        --ingot_times = ingot_times + 7200 - lualib:GetTime()
        --local h = math.floor(ingot_times / 3600)
        --local m = math.floor((ingot_times - h * 3600) / 60)
        --local s = ingot_times - h * 3600 - m * 60
        return "��������ʯ���ڴ����У����Ժ�������"
    end

    local count = lualib:Player_GetItemCount(player, "����ʯ")
    if count < 1 then return "������û���ҵ�����ʯ��" end

    if not lualib:Player_DestroyItem(player, "����ʯ", 1, "ɾ��Ʒ������ʦ", player) then return "����ʯ����ʧ�ܣ�������û���ҵ�����ʯ��" end
    if not lualib:Player_SetCustomVarInt(player, "lian_jin_shi_ingot_times", lualib:GetTime()) then return "����ʯ����ʧ�ܣ�@2" end
    if not lualib:Player_SetCustomVarInt(player, "lian_jin_shi_ingot_num", 1) then return "����ʯ����ʧ�ܣ�@3" end
    return "����ʯ��ʼ��������2Сʱ������ȡ"
end

function Get(npc, player)
    local present_table = {{"Ұ�޾�Ԫ", 3},
                           {"���þ�Ԫ", 3},
                           {"��ʬ��Ԫ", 3},
                           {"ţħ��Ԫ", 3},
                           {"������Ԫ", 3},
                           {"���ܾ�Ԫ", 3},
                           {"ħ�˾�Ԫ", 3}}

    local exp_table = {{70, 30},
                       {50, 25},
                       {30, 20},
                       {0, 10}}

    local ingot_num = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_num")
    if ingot_num == 0 then return "û�������¼��" end

    local ingot_times = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_times")
    if lualib:GetTime() - ingot_times < 7200 then
        ingot_times = ingot_times + 7200 - lualib:GetTime()
        local h = math.floor(ingot_times / 3600)
        local m = math.floor((ingot_times - h * 3600) / 60)
        local s = ingot_times - h * 3600 - m * 60
        return "��������ʯ���ڴ����У����Ժ���������ʣ��ʱ�䣺"..h.."��"..m.."��"..s.."��"
    end

    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then return "��ȡ����ʧ�ܣ�" end

    local cur_exp_index = 0
    for i = 1, table.getn(exp_table) do
        if level > exp_table[i][1] then
            cur_exp_index = i
            break
        end
    end

    local exp = lualib:Player_GetExpLimit(player)
    if exp == -1 then return "��ȡ����ʧ�ܣ�" end

    exp = (exp * exp_table[cur_exp_index][2] / 10000 + level * 300) * ingot_num
    if not lualib:Player_AddExp(player, exp, "�Ӿ��飺����ʯ���һ�������", player) then
        return "���辭��ʧ�ܣ�"
    end

    for i = 1, ingot_num do
        local rnd = lualib:GenRandom(1, table.getn(present_table))
        local item = present_table[rnd][1]
        local count = present_table[rnd][2]
	    if not lualib:Player_GiveItemUnbind(player, item, count, "����Ʒ������ʦ", player) then
            return "��ȡ��Ʒʧ�ܣ�"
        end
    end

    if not lualib:Player_SetCustomVarInt(player, "lian_jin_shi_ingot_num", 0) then return "����ʯ����ʧ�ܣ�@4" end
    return "��ȡ�����ɹ���"
end


function Jieshao(npc, player)
    local msg = "�ṩ1����ʯ�󣬵ȴ�2Сʱ�ɵ�����������ȡ���־�Ԫ�ʹ������飡"
    return msg
end
