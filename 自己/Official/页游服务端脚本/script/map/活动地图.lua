local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/双蛋欢乐送")

function on_map_create(map)
	meifenchufa() --执行圣诞元旦活动生成脚本
	lualib:AddTrigger("0",  lua_trigger_login, "huodong_denglu")
end

function huodong_denglu(player)
	huanlesong_xianshi(player) --显示双蛋欢乐送图标
end