--[[

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

spirit_timer_id = 12345
spirit_limit_max = 300
spirit_recover_per_day = 80
spirit_recover_per_hour = 10

function spirit_on_login(player)
    --�ȼ�����Ļ��������ػ����ظ�
    if lualib:Player_GetIntProp(player,  lua_role_level) < 30 then
        return
    end
    
    lualib:AddTimer(player, spirit_timer_id, 60000, -1, "spirit_recover")
    lualib:Player_SetCustomVarInt(player, "����ϵͳ_�ϴλظ�����ʱ��", 0)
    
    spirit_recover(player, spirit_timer_id)
end

function spirit_recover(player, time_id)
    -- ����ÿСʱ�ظ�һ��
    local online_time = lualib:Player_GetTimeProp(player,  lua_role_online)
    local last_get_time = lualib:Player_GetCustomVarInt(player, "����ϵͳ_�ϴλظ�����ʱ��")
    local spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
    if online_time - last_get_time > 3600 then
        spirit_add(player, spirit_recover_per_hour)
        lualib:Player_SetCustomVarInt(player, "����ϵͳ_�ϴλظ�����ʱ��", online_time)
    end
    
    -- �����������ߣ�ÿ��ظ�һ��
    local last_day = lualib:Player_GetCustomVarInt(player, "����ϵͳ_�ϴδ�ظ�����")
    local cur_day = lualib:GetAllDays(lualib:GetTime())
    
    local offday = cur_day - last_day
    if offday > spirit_limit_max / spirit_recover_per_day + 1 then
        offday = spirit_limit_max / spirit_recover_per_day + 1
    end
    
    if offday > 0 then
        spirit_add(player, offday * spirit_recover_per_day)
        lualib:Player_SetCustomVarInt(player, "����ϵͳ_�ϴδ�ظ�����", cur_day)
    end
end

function spirit_add(player, add_spirit)
    local spirit = lualib:Player_GetCustomVarInt(player, "����ϵͳ_����")
    local new_spirit = spirit + add_spirit
    if new_spirit > 300 then
        new_spirit = 300
    end
    
    lualib:Player_SetCustomVarInt(player, "����ϵͳ_����", new_spirit)
end
]]--