local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/装备引导")

function yindao_chuandai(player,item,weizhi)
    yindao_chuandai_1(player,item,weizhi)
    return ""
end