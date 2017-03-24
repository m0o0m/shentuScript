local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/online_gift")

lualib:SetFormAllowFunc({"main"});

function main(player)
    get_online_gift(player)
    return ""
end