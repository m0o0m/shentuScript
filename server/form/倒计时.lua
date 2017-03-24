local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")

lualib:SetFormAllowFunc({"main"});

local all_timecount = 
{
    ["在线礼包"] = { 
            complete = function(player)
                show_my_online_gift(player)            
            end,
            uncomplete = function(player)
                show_my_online_gift(player)            
            end,
	},
	["首充礼包"] = { 
            complete = function(player)
                lualib:DelayCall(player, 1, "首充礼包表单:first_main", "")
            end,
            uncomplete = function(player)
                lualib:DelayCall(player, 1, "首充礼包表单:first_main", "")
            end,
	},
}

function main(player, notify)
    local time = lualib:GetInt(player, notify.."倒计时")

    if all_timecount[notify] ~= nil then
        if time > lualib:GetTime() then
            lualib:Print("倒计时未完成：玩家提交倒计时"..notify);
            all_timecount[notify].uncomplete(player)
        else
            lualib:Print("倒计时完成：玩家提交倒计时"..notify);
            all_timecount[notify].complete(player)
        end
    end

    return ""
end