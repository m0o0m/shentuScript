local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function main(player, item)
    local key_name = lualib:KeyName(item)
	local lingli = lualib:GetInt(player,"linglizhi") 
	--lualib:SysPromptMsg(player, "".. lingli)       --输出测试
	local amount = lualib:Item_GetAmount(player, item)
	if key_name == "灵石精华大" then
		lualib:Item_SetAmount(player, item, amount - 1)
	else
		lualib:Item_Destroy(player, item, "使用经验丹", "经验丹小")
	end
	
	if key_name == "灵石精华小" then
		lingli = lingli + 1 * amount
        if lualib:SetInt(player,"linglizhi", lingli) == false  then
			lualib:SysTipsMsg(player,"灵石精华小使用失败")
            return false
        else
			lualib:SysTipsMsg(player,"魂力增加".. 1 * amount)
            return true
        end
    elseif key_name == "灵石精华中" then
        lingli = lingli + 20 * amount
		if lualib:SetInt(player,"linglizhi",lingli) == false  then
           lualib:SysTipsMsg(player,"灵石精华大使用失败")
           return false
        else
			lualib:SysTipsMsg(player,"灵力增加"..  20 * amount)
            return true
        end
    elseif key_name == "灵石精华大" then
		lingli = lingli + 200
        if lualib:SetInt(player,"linglizhi",lingli) == false  then
           lualib:SysTipsMsg(player,"灵石精华大使用失败")
           return false
        else
			lualib:SysTipsMsg(player,"魂力增加200")
            return true
        end
    end


end
