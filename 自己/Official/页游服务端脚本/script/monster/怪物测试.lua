local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function on_create(monster)
    lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
	return "" 
end	

function on_trigger_post_die(monster, killer)
	
	lualib:SysMsg_SendTopColor(1, "≤‚ ‘", 11, 2)

	local hatelist = lualib:Monster_GetHateList(monster)
	for i=1,#hatelist do 
		lualib:SysPromptMsg(killer,"GUID:"..hatelist[i]["GUID"])
	end
	return "" 
	
end
