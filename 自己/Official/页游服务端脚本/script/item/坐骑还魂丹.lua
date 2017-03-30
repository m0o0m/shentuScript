local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(player, item)
    local horse = lualib:Item_GetBySite(player, lua_site_mount)
    if horse == "" then
		lualib:SysMsg_SendTriggerMsg(player, "û��װ������")
        return false
    end
    
    --�����˵�����������;ã���������^_^  12-05-21
    if lualib:Item_GetDurability(player, horse) ~= 0 then
		lualib:SysMsg_SendTriggerMsg(player, "�������û��������")
        return false
    end
    
    --�;ó�ʼ����
    local durability = 1000
    lualib:Item_SetDurability(player, horse, durability)
    lualib:SysMsg_SendTriggerMsg(player, "����ɹ���")
    local amount = lualib:Item_GetAmount(player, item)
    lualib:Item_SetAmount(player, item, amount - 1)
    return true
end