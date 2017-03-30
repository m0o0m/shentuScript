local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/¹¥³ÇÕ½Íæ·¨")

function on_map_create(strMap)
	--CCastle:Init(strMap);
end