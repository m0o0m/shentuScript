local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/³äÖµÀñ°ü")

function main(player)
    get_first_bill_gift(player)
    return ""
end
