local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/元宝回收表单")
function main(npc,player)	
		init(player)	--元宝回收
	return	""
end
