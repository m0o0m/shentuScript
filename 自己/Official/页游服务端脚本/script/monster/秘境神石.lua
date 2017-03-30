local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/秘海封印数据")
require("map/秘海封印")
require("system/logic_def_lua")

function main(monster, player)
    local msg = "你看我干什么？"
    lualib:NPCTalk(player, msg)
    return ""
end

function on_create(monster)
	lualib:AddBuff(monster, "阵眼标记", 0)
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")

end

function on_post_die(monster, killer)
	local mapguid = lualib:MapGuid(monster)
	local TimerId = lualib:GenTimerId(monster)
	lualib:AddTimerEx(monster, TimerId, 3000, 1, "destroy", "")
	for i = 1, 5 do
		lualib:SysMsg_SendMapMsg(mapguid, "由于神石被破坏，副本将于3秒钟后关闭")
	end
	
end

function destroy(monster, tierid)
	local mapguid = lualib:MapGuid(monster)
	local playerguid = lualib:GetStr(mapguid, "playerguid")
	local L_V = lualib:GetInt(playerguid, "L_V")
    local count = lualib:ItemCountByKey(playerguid, "召唤石", true, true, true, 1)
    if L_V < 35 then
        lualib:DelItem(playerguid, "召唤石", count, 1, "初级秘海封印销毁", "初级秘海封印") 
    end

	lualib:Map_DestroyDgn(mapguid)
	
end

