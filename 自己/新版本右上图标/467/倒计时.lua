--这个脚本的作用是：可以调用到system目录下的脚本，而不用叫客户端去调用form目录下的脚本，
--玩家登陆调用的脚本和form表单脚本合二为一；
--不要玩家登陆时直接调用form下的脚本函数，客户端回来调用form下脚本函数也是一样的，也是合二为一
--不过可以限制玩家可以调用的函数，
--不过觉得最好功能脚本还是放到form下好一点，万一有多个按钮要调用form的话就鸡鸡了，就又要两个脚本了

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")
-- require("system/自动打怪")
require("system/充值礼包")

lualib:SetFormAllowFunc({"main",});

-- local all_timecount = 
-- {
--     ["在线礼包"] = { 
--             complete = function(player)
--                 show_my_online_gift(player)            
--             end,
--             uncomplete = function(player)
--                 show_my_online_gift(player)            
--             end,
--     },
--     ["充值礼包"] = { 
--             complete = function(player)
--                 show_my_first_bill_gift(player)            
--             end,
--             uncomplete = function(player)
--                 show_my_first_bill_gift(player)            
--             end,
--     },
-- 	["自动打怪"] = { 
-- 		    complete = function(player)
--                 guaji(player)            
--             end,
--             uncomplete = function(player)
--                 guaji(player)            
--             end,
--     },	
-- }

-- function main(player, notify)
--     local time = lualib:GetInt(player, notify.."倒计时")
--     if all_timecount[notify] ~= nil then
--         if time > lualib:GetTime() then
--             lualib:Print("倒计时未完成：玩家提交倒计时"..notify);
--             all_timecount[notify].uncomplete(player)
--         else
--             lualib:Print("倒计时完成：玩家提交倒计时"..notify);
--             all_timecount[notify].complete(player)
--         end
--     end
--     return ""
-- end


local all_timecount = 
{
    ["在线礼包"] = show_my_online_gift,  --函数就是变量，直接赋值就可以,那个time变量没有作用,各个功能各自自己处理
    ["充值礼包"] = show_my_first_bill_gift,

}

function main(player, notify)
    all_timecount.notify(player)
    return ""
end