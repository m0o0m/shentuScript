local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
	
--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
	local job = lualib:Job(player)
	local skill = {"新手无间地狱", "新手凤凰涅槃", "新手恶魔之怒"}
	lualib:AddSkill(player, skill[job])
	lualib:SysMsg_SendWarnMsg(player, "你已经领悟"..skill[job].."，可以使用100次，请打开技能面板设置！")
    return true
end
