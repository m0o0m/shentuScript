local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

--[[
�Զ�������б�
master_name:                ʦ������
��������:                   string

apprentices:                ͽ���б�,��ͨ��get_apprentices����һ��lua_table,�ڲ��洢Ϊ[guid->name]ӳ���
��������:                   string

last_master_name:           ��ʦʱ��ʦ������
��������:                   string

shengwang:                  ����
��������:                   int

chushi:                     ��ʦ����
��������:                   int

master_reward_count:        ʦ��ʣ�ཱ������
��������:                   int

apprentice_reward:          ͽ���ϴ���ȡ�Ľ����ȼ�
��������:                   int

--]]

--��ȡͽ���б� lua_table[guid->name]
function get_apprentices(player)
    local app_t = {}
    local apprentices = lualib:Player_GetCustomVarStr(player, "apprentices")
    if apprentices ~= "" then
        app_t = deserialize(apprentices)
    end

    return app_t
end

--���ͽ��
function add_apprentice(player, apprentice_guid, apprentice_name)
    local app_t = {}
    local apprentices = lualib:Player_GetCustomVarStr(player, "apprentices")
    if apprentices ~= "" then
        app_t = deserialize(apprentices)
    end

    app_t[apprentice_guid] = apprentice_name

    local app_s = serialize(app_t)
    lualib:Player_SetCustomVarStr(player, "apprentices", app_s)
end

--�Ƿ���ͽ��
function has_apprentice(player, apprentice)
    local app_t = get_apprentices(player)

    for k, v in pairs(app_t) do
        if k == apprentice then
            return true
        end
    end

    return false
end

--ɾ��ͽ��
function remove_apprentice(player, apprentice)
    local app_t = get_apprentices(player)
    app_t[apprentice] = nil

    local app_s = serialize(app_t)
    lualib:Player_SetCustomVarStr(player, "apprentices", app_s)
end

--��ȡͽ������
function get_apprentice_num(player)
    local app_t = {}
    local apprentices = lualib:Player_GetCustomVarStr(player, "apprentices")
    if apprentices ~= "" then
        app_t = deserialize(apprentices)
    end

    local count = 0
    for k, v in pairs(app_t) do
        count = count + 1
    end

    return count
end

--��ȡʦ������
function get_master_name(player)
    local master_name = lualib:Player_GetCustomVarStr(player, "master_name")
    return master_name
end

--����ʦ������
function set_master_name(player, master_name)
    lualib:Player_SetCustomVarStr(player, "master_name", master_name)
    lualib:Player_NotifyCustomParam(player, "master_name")
end

--��ȡ��ʦʱ��ʦ������
function get_last_master_name(player)
    local last_master_name = lualib:Player_GetCustomVarStr(player, "last_master_name")
    return last_master_name
end

--���ó�ʦʱ��ʦ������
function set_last_master_name(player, last_master_name)
    lualib:Player_SetCustomVarStr(player, "last_master_name", last_master_name)
end

--֪ͨʦͽ��Ϣ
function notify_master_custom_param(player)
    lualib:Player_NotifyCustomParam(player, "master_name")
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--��ȡ����
function get_shengwang(player)
    local shengwang = lualib:Player_GetCustomVarInt(player, "shengwang")
    return shengwang
end

--��������
function set_shengwang(player, shengwang)
    lualib:Player_SetCustomVarInt(player, "shengwang", shengwang)
    lualib:Player_NotifyCustomParam(player, "shengwang")
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--��ȡ��ʦ����
function get_chushi(player)
    local chushi = lualib:Player_GetCustomVarInt(player, "chushi")
    return chushi
end

--���ó�ʦ����
function set_chushi(player, chushi)
    lualib:Player_SetCustomVarInt(player, "chushi", chushi)
    lualib:Player_NotifyCustomParam(player, "chushi")
end

--��ȡʦ����������
function get_master_reward_count(player)
    local master_reward_count = lualib:Player_GetCustomVarInt(player, "master_reward_count")
    return master_reward_count
end

--����ʦ����������
function set_master_reward_count(player, master_reward_count)
    lualib:Player_SetCustomVarInt(player, "master_reward_count", master_reward_count)
    lualib:Player_NotifyCustomParam(player, "master_reward_count")
end

--��ȡͽ���ϴ���ȡ�Ľ����ȼ�
function get_apprentice_reward(player)
    local apprentice_reward = lualib:Player_GetCustomVarInt(player, "apprentice_reward")
    return apprentice_reward
end

--����ͽ���ϴ���ȡ�Ľ����ȼ�
function set_apprentice_reward(player, apprentice_reward)
    lualib:Player_SetCustomVarInt(player, "apprentice_reward", apprentice_reward)
    lualib:Player_NotifyCustomParam(player, "apprentice_reward")
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--ͽ����������
function process_apprentice_level_up(apprentice, level)
    local master_name = get_master_name(apprentice)
    if master_name == "" then
        return
    end

    local apprentice_name = lualib:Player_GetStrProp(apprentice,  lua_role_user_name)
    lualib:ScriptFuncToPlayer(master_name, "master", "master_reward_with_apprentice_level_up", apprentice.."#"..apprentice_name.."#"..level.."#"..master_name)

    if tostring(level) == "52" then
        local s = "#COLORCOLOR_BROWN#["..apprentice_name.."] #COLORCOLOR_YELLOW#��#COLORCOLOR_BROWN#["..master_name.."] #COLORCOLOR_YELLOW#�ĸ�����Բ����ʦ����Ϊһ������һ������"
		lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
        set_master_name(apprentice, "")
        set_last_master_name(apprentice, master_name)
        lualib:ScriptFuncToPlayer(master_name, "master", "master_reward_with_apprentice_chushi", apprentice.."#"..apprentice_name.."#"..level.."#"..master_name)
    end
end

--ͽ������ʦ���Ľ���
function master_reward_with_apprentice_level_up(player, apprentice, apprentice_name, level, master_name_when_level_up)
    local master = player
    local master_name = lualib:Player_GetStrProp(master,  lua_role_user_name)
    if master_name ~= master_name_when_level_up then
        return
    end

	local lua_shengwang = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 13, 15, 17, 19, 21, 23, 25, 28, 31, 34, 37, 40}
    local shengwang_addtion = lua_shengwang[tonumber(level)]
    local shengwang = get_shengwang(master)
    set_shengwang(master, shengwang + shengwang_addtion)
	
	if shengwang_addtion > 0 then
		local s = "���ͽ��"..apprentice_name.."�Ѵﵽ"..level.."������������"..shengwang_addtion.."����ֵ��"
		lualib:SysMsg_SendTriggerMsg(master, s)
		lualib:SendMail(apprentice_name, master_name, s)
	end
end

--ͽ�ܳ�ʦʦ���Ľ���
function master_reward_with_apprentice_chushi(player, apprentice, apprentice_name, level, master_name_when_level_up)
    local master = player
    local master_name = lualib:Player_GetStrProp(master,  lua_role_user_name)
    if master_name ~= master_name_when_level_up then
        return
    end

    remove_apprentice(master, apprentice)

    local chushi_addtion = 1
    local chushi = get_chushi(master)
    set_chushi(master, chushi + chushi_addtion)

    local master_reward_count = get_master_reward_count(master)
    set_master_reward_count(master, master_reward_count + 1)

    local s = "��ʾ�����ͽ��"..apprentice_name.."����Ľ̵���Բ����ʦ�������ʦͽ����Ա��ȡ��ʦ������"
    lualib:SysMsg_SendTriggerMsg(master, s)
    lualib:SendMail(apprentice_name, master_name, s)
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--ʦͽ��¼����
function process_master_apprentice_login(player)
    local master_name = get_master_name(player)
    if master_name ~= "" then
        process_apprentice_login(player)
    else
        if get_apprentice_num(player) > 0 then
            process_master_login(player)
        end
    end
end

--ͽ�ܵ�¼����
function process_apprentice_login(player)
    local apprentice = player
    local apprentice_name = lualib:Player_GetStrProp(apprentice,  lua_role_user_name)
    local master_name = get_master_name(player)

    local apprentice_map_name = lualib:Map_GetMapName(lualib:Player_GetGuidProp(apprentice,  lua_role_current_map_id))
    local apprentice_x = lualib:Player_GetPosX(apprentice)
    local apprentice_y = lualib:Player_GetPosY(apprentice)

    local master = lualib:Name2Guid(master_name)
    if master ~= "" then
        local s = "���ߣ�".."���ͽ��"..apprentice_name.."��"..apprentice_map_name..",����"..apprentice_x..","..apprentice_y
        lualib:SysMsg_SendTriggerMsg(master, s)
        lualib:Player_RunScript(master, "apprentice_login_send_to_master", apprentice.."#"..apprentice_name)
    end
end

function apprentice_login_send_to_master(master, apprentice, apprentice_name)
    if not has_apprentice(master, apprentice) then
        return
    end

    local master_name = lualib:Player_GetStrProp(master,  lua_role_user_name)
    local master_map_name = lualib:Map_GetMapName(lualib:Player_GetGuidProp(master,  lua_role_current_map_id))
    local master_x = lualib:Player_GetPosX(master)
    local master_y = lualib:Player_GetPosY(master)

    local s = "���ߣ�".."���ʦ��"..master_name.."��"..master_map_name..",����"..master_x..","..master_y
    lualib:SysMsg_SendTriggerMsg(apprentice, s)
end

--ʦ����¼����
function process_master_login(player)
    local master = player
    local master_name = lualib:Player_GetStrProp(master,  lua_role_user_name)

    local app_t = get_apprentices(player)
    for k, v in pairs(app_t) do
        lualib:Player_RunScript(k, "master_login_send_to_apprentice", master.."#"..master_name)
    end
end

function master_login_send_to_apprentice(apprentice, master, master_name)
    process_apprentice_login(apprentice)
end

------------------------------------------------------------------------------
------------------------------------------------------------------------------
--ʦͽ�ǳ�����
function process_master_apprentice_logout(player)
    local master_name = get_master_name(player)
    if master_name ~= "" then
        process_apprentice_logout(player)
    else
        if get_apprentice_num(player) > 0 then
            process_master_logout(player)
        end
    end
end

--ͽ�ܵǳ�����
function process_apprentice_logout(player)
    local apprentice = player
    local apprentice_name = lualib:Player_GetStrProp(apprentice,  lua_role_user_name)
    local master_name = get_master_name(player)

    local apprentice_map_name = lualib:Map_GetMapName(lualib:Player_GetGuidProp(apprentice,  lua_role_current_map_id))
    local apprentice_x = lualib:Player_GetPosX(apprentice)
    local apprentice_y = lualib:Player_GetPosY(apprentice)

    local master = lualib:Player_GetGuid(master_name)
    if master ~= "" then
        local s = "���ߣ�".."���ͽ��"..apprentice_name.."��"..apprentice_map_name..",����"..apprentice_x..","..apprentice_y
        lualib:SysMsg_SendTriggerMsg(master, s)
        lualib:Player_RunScript(master, "apprentice_logout_send_to_master", apprentice.."#"..apprentice_name)
    end
end

function apprentice_logout_send_to_master(master, apprentice, apprentice_name)
    if not has_apprentice(master, apprentice) then
        return
    end

    local master_name = lualib:Player_GetStrProp(master,  lua_role_user_name)
    local master_map_name = lualib:Map_GetMapName(lualib:Player_GetGuidProp(master,  lua_role_current_map_id))
    local master_x = lualib:Player_GetPosX(master)
    local master_y = lualib:Player_GetPosY(master)

    local s = "���ߣ�".."���ʦ��"..master_name.."��"..master_map_name..",����"..master_x..","..master_y
    lualib:SysMsg_SendTriggerMsg(apprentice, s)
end

--ʦ���ǳ�����
function process_master_logout(player)
    local master = player
    local master_name = lualib:Player_GetStrProp(master,  lua_role_user_name)

    local app_t = get_apprentices(player)
    for k, v in pairs(app_t) do
        lualib:Player_RunScript(k, "master_logout_send_to_apprentice", master.."#"..master_name)
    end
end

function master_logout_send_to_apprentice(apprentice, master, master_name)
    process_apprentice_logout(apprentice)
end


