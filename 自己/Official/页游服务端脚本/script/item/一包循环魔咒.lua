local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
    local bagfree_req = 1
    local bagfree = lualib:Player_GetBagFree(player)
    local award_item = "ѭ��ħ��"
    local award_count = 20
    if bagfree < bagfree_req then
        lualib:SysMsg_SendTriggerMsg(player, "�����ռ䲻������Ҫ1�����ӣ�")
        return false
    end
    
    if lualib:Item_Destroy(player, item, "��һ��ѭ��ħ��", player) == false then
        lualib:SysMsg_SendTriggerMsg(player, "ɾ��Ʒʧ��!")
        return false
    end
    
    if lualib:AddItem(player, award_item, award_count, false, "��һ��ѭ��ħ��", player) == false then
        lualib:SysMsg_SendTriggerMsg(player, "����Ʒʧ��!")
        return false
    end

	return true
end
