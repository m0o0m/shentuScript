local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main(player, item)
	local mapguid = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	--local keyname = lualib:KeyName(item)  
	local shaizi_keyname = {"һ", "��", "��", "��", "��", "��"}
	
	if lualib:Item_Destroy(player, item, "������", player) == true then
		lualib:Map_GenItemRnd(mapguid, x, y, 2, shaizi_keyname[lualib:GenRandom(1, 6)], 1, false, 3)
	else
		lualib:SysPromptMsg(player, "��Ʒɾ��ʧ��,���������޷�������!")
	end
	


	return true
end
