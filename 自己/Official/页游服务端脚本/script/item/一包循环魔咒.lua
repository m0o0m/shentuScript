local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
    local bagfree_req = 1
    local bagfree = lualib:Player_GetBagFree(player)
    local award_item = "循环魔咒"
    local award_count = 20
    if bagfree < bagfree_req then
        lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要1个格子！")
        return false
    end
    
    if lualib:Item_Destroy(player, item, "打开一包循环魔咒", player) == false then
        lualib:SysMsg_SendTriggerMsg(player, "删物品失败!")
        return false
    end
    
    if lualib:AddItem(player, award_item, award_count, false, "打开一包循环魔咒", player) == false then
        lualib:SysMsg_SendTriggerMsg(player, "给物品失败!")
        return false
    end

	return true
end
