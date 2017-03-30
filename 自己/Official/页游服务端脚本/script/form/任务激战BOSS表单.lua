local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("form/ChallengeBOSS")
function OpenWin(player,param)
	openChallengeBoss(player,param)
end