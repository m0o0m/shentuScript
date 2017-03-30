exp_table={ ["坐骑经验丹"] = 5000, 
            ["中型坐骑经验丹"] = 25000, 
            ["大型坐骑经验丹"] = 50000, 
            ["超级坐骑经验丹"] = 250000}

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")

function main(player, item)
    local horse = lualib:Item_GetBySite(player,  lua_site_mount)
    if horse == "" then
		lualib:SysMsg_SendTriggerMsg(player, "没有装备坐骑")
        return false
    end
    
    if lualib:Item_GetDurability(player, horse) == 0 then
		lualib:SysMsg_SendTriggerMsg(player, "当前坐骑已经死亡,请先使用[坐骑还魂丹]复活")
        return false
    end

    if get_horse_level(player, horse) >= 50 then
		lualib:SysMsg_SendTriggerMsg(player, "当前坐骑已经达到满级！")
        return false
    end
    --加坐骑经验值
    --local exp_add = 100000
    local exp_add = exp_table[lualib:KeyName(item)]
    process_horse_add_exp(player, exp_add)
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
    
    return true
end
