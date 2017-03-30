local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
    local msg = "    ��ӭ�μӹ���ȺӢ��᣿���ǵ��������������ͼ��ҪС�ģ���Ϊ�ڹ�����PK�ǲ�������PKֵ��\n \n"
    msg = msg.."<@Jump *01*���ͽ�ս��>\n"
    msg = msg.."<@Submit *01*���ǻ᳤���ύȺӢ��>\n"
    return msg
end

function Submit(npc, player)
    local msg = "���Ƿ�Ҫ�����л��Ա�μӹ���ȺӢ��᣿\n \n"
    msg = msg.."<@SubmitEx *01*ȷ���ύ>\n \n \n"
    msg = msg.."<@Leave *01*���뿪��>\n"
    return msg
end

function Leave(npc, player)
    return ""
end

function Jump(npc, player)
    local guild = lualib:Player_GetGuidProp(player,  lua_role_guild_id)
    if guild == "" then return "��û���лᣡ" end

    if lualib:Npc_GetCustomVar(npc, guild) ~= "1" then
        return "�����л�û������μӱ��δ�ᣡ"
    end

    local dgn_guid = lualib:Npc_GetCustomVar(npc, "custom_var_dgn_guid")
    if dgn_guid == "" then
        return "��ͼ��δ���ţ�"
    end

    if lualib:Player_SetDgnTicket(player, dgn_guid) == false then
        return "��������ɽ����ͼ��"
    end

    if lualib:Player_EnterDgn(player, "��Ĺ���", 0, 0, 0) == false then
        return "�����ͼʧ�ܣ�"
    end

    return ""
end


function SubmitEx(npc, player)
    local guild = lualib:Player_GetGuidProp(player,  lua_role_guild_id)
    if guild == "" then return "��û���лᣡ" end

    if not lualib:Player_IsGuildLeader(player) then 
        return "�������л�᳤��" 
    end

    if lualib:Npc_GetCustomVar(npc, guild) == "1" then
        return "�����л��Ѿ�������ˣ�"
    end

    if lualib:Player_GetItemCount(player, "ȺӢ��") < 1 then 
        return "��û��ȺӢ����" 
    end

    if not lualib:Player_DestroyItem(player, "ȺӢ��", 1, "ɾ��Ʒ��������ʹ��", player) then 
        return "��û��Я��ȺӢ����" 
    end
    
    if not lualib:Npc_SetCustomVar(npc, guild, "1") then
        return "Npc�����ڣ�"
    end

    return "�ύ�ɹ���"
end
