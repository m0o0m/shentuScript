local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

--[[
��ʦ��
ʦ��������
1.	���ڵ���35����
2.	��ǰͽ������δ�ﵽ���ޡ�������Ϊ5����


ͽ��������
1.	���ڵ���1����С�ڵ���35����
2.	��û��ʦ����


��ɫA��δ����ʦ�����ͽ�ɫB��δ����ͽ�ܣ���NPC��ʦͽ����Ա������ͽ�ܵ��NPCѡ���ʦ---���������---����Ҫʦ��������---ȷ����


�����ʦ�������ң�����ȷ�Ͽ����Ƿ�Ը����XXXΪͽ�ܣ����ͬ�⣬���ʦ�ɹ���ʦͽ������NPC������һ����Χ��������ܾ���ظ����󷽣�XXX�ܾ�����İ�ʦ����
--]]

function main(player, master_name)
    local LIMIT_LEVEL = 45
    if lualib:Player_GetCustomVarStr(player, "master_guid") ~= "" then
        return "���Ѿ���ʦ���ˡ�"
    end
    
    if lualib:Player_GetIntProp(player,  lua_role_level) >= LIMIT_LEVEL then
        return "���Ѿ����˰�ʦ�ĵȼ���"
    end
    
    local master_guid = lualib:Player_GetGuid(master_name)
    if master_guid == "" then
        return "�ף���û����"..master_name.."�����ﰡ��"
    end

    if lualib:Player_GetIntProp(master_guid,  lua_role_level) < LIMIT_LEVEL then
        return "�Է��ȼ�����"..LIMIT_LEVEL
    end
    
    local app_t = {}
    local apprentices = lualib:Player_GetCustomVarStr(player, "apprentices")
    if apprentices == "" then
        apprentices = serialize(app_t)
        lualib:Player_SetCustomVarStr(player, "apprentices", apprentices)
    else
        app_t = deserialize(apprentices)
    end
    
    local count = 0
    for k, v in pairs(app_t) do
        count = count + 1
    end
    
    if count >= 5 then
        return "ʦ��ͽ��������"
    end

    lualib:Player_SetCustomVarStr(player, "��ʦ����", master_name)
    
    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
    lualib:ShowFormWithContent(master_name, "ʦͽ��", player_name)
    
    return ""
end
