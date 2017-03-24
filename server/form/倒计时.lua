local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")

lualib:SetFormAllowFunc({"main"});

local all_timecount = 
{
    ["�������"] = { 
            complete = function(player)
                show_my_online_gift(player)            
            end,
            uncomplete = function(player)
                show_my_online_gift(player)            
            end,
	},
	["�׳����"] = { 
            complete = function(player)
                lualib:DelayCall(player, 1, "�׳������:first_main", "")
            end,
            uncomplete = function(player)
                lualib:DelayCall(player, 1, "�׳������:first_main", "")
            end,
	},
}

function main(player, notify)
    local time = lualib:GetInt(player, notify.."����ʱ")

    if all_timecount[notify] ~= nil then
        if time > lualib:GetTime() then
            lualib:Print("����ʱδ��ɣ�����ύ����ʱ"..notify);
            all_timecount[notify].uncomplete(player)
        else
            lualib:Print("����ʱ��ɣ�����ύ����ʱ"..notify);
            all_timecount[notify].complete(player)
        end
    end

    return ""
end