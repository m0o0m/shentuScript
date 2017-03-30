local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:Print("���������֣�")
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
    end

function on_trigger_post_die(actor, killer)
    lualib:Print("������������")

    local dgn_guid = lualib:Map_CreateDgn("����ڣ����", false, 15 * 60)
    if dgn_guid == "" then
        lualib:Print("����������ڣ���Ҵ���ʧ�ܣ�")
        return
    end
    lualib:Print("����������ڣ���Ҵ����ɹ���")

    local map = lualib:Monster_GetMap(actor)
    if map == "" then
        lualib:Print("ȡ��������������ͼʧ�ܣ�")
        return
    end

    local pos_x = lualib:Monster_GetPosX(actor)
    local pos_y = lualib:Monster_GetPosY(actor)
    if pos_x == -1 or pos_y == -1 then
        lualib:Print("ȡ����������ͼ����ʧ�ܣ�")
        return
    end

    local npc = lualib:Map_GenNpc(map, "���õ��ʹ��", pos_x, pos_y, 5, 1)
    if npc == "" then
        lualib:Print("ˢ��NPC���õ��ʹ��ʧ�ܣ�")
        return
    end
    lualib:Print("ˢ��NPC���õ��ʹ�߳ɹ���")

    if lualib:Npc_SetCustomVar(npc, "custom_var_dgn_guid", dgn_guid) == false then
        lualib:Print("��NPC���õ��ʹ������Զ������ʧ�ܣ�")
        return
    end
end
