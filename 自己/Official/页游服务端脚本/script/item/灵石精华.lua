local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)
    local key_name = lualib:KeyName(item)
	local lingli = lualib:GetInt(player,"linglizhi") 
	--lualib:SysPromptMsg(player, "".. lingli)       --�������
	local amount = lualib:Item_GetAmount(player, item)
	if key_name == "��ʯ������" then
		lualib:Item_SetAmount(player, item, amount - 1)
	else
		lualib:Item_Destroy(player, item, "ʹ�þ��鵤", "���鵤С")
	end
	
	if key_name == "��ʯ����С" then
		lingli = lingli + 1 * amount
        if lualib:SetInt(player,"linglizhi", lingli) == false  then
			lualib:SysTipsMsg(player,"��ʯ����Сʹ��ʧ��")
            return false
        else
			lualib:SysTipsMsg(player,"��������".. 1 * amount)
            return true
        end
    elseif key_name == "��ʯ������" then
        lingli = lingli + 20 * amount
		if lualib:SetInt(player,"linglizhi",lingli) == false  then
           lualib:SysTipsMsg(player,"��ʯ������ʹ��ʧ��")
           return false
        else
			lualib:SysTipsMsg(player,"��������"..  20 * amount)
            return true
        end
    elseif key_name == "��ʯ������" then
		lingli = lingli + 200
        if lualib:SetInt(player,"linglizhi",lingli) == false  then
           lualib:SysTipsMsg(player,"��ʯ������ʹ��ʧ��")
           return false
        else
			lualib:SysTipsMsg(player,"��������200")
            return true
        end
    end


end
