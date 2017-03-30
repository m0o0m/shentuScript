exp_table={ ["���ﾭ�鵤"] = 5000, 
            ["�������ﾭ�鵤"] = 25000, 
            ["�������ﾭ�鵤"] = 50000, 
            ["�������ﾭ�鵤"] = 250000}

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")

function main(player, item)
    local horse = lualib:Item_GetBySite(player,  lua_site_mount)
    if horse == "" then
		lualib:SysMsg_SendTriggerMsg(player, "û��װ������")
        return false
    end
    
    if lualib:Item_GetDurability(player, horse) == 0 then
		lualib:SysMsg_SendTriggerMsg(player, "��ǰ�����Ѿ�����,����ʹ��[���ﻹ�굤]����")
        return false
    end

    if get_horse_level(player, horse) >= 50 then
		lualib:SysMsg_SendTriggerMsg(player, "��ǰ�����Ѿ��ﵽ������")
        return false
    end
    --�����ﾭ��ֵ
    --local exp_add = 100000
    local exp_add = exp_table[lualib:KeyName(item)]
    process_horse_add_exp(player, exp_add)
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
    
    return true
end
