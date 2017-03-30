local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("map/�غ���ӡ����")
require("map/�غ���ӡ")
require("system/logic_def_lua")

function main(monster, player)
    local msg = "�㿴�Ҹ�ʲô��"
    lualib:NPCTalk(player, msg)
    return ""
end

function on_create(monster)
	lualib:AddBuff(monster, "���۱��", 0)
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")

end

function on_post_die(monster, killer)
	local mapguid = lualib:MapGuid(monster)
	local TimerId = lualib:GenTimerId(monster)
	lualib:AddTimerEx(monster, TimerId, 3000, 1, "destroy", "")
	for i = 1, 5 do
		lualib:SysMsg_SendMapMsg(mapguid, "������ʯ���ƻ�����������3���Ӻ�ر�")
	end
	
end

function destroy(monster, tierid)
	local mapguid = lualib:MapGuid(monster)
	local playerguid = lualib:GetStr(mapguid, "playerguid")
	local L_V = lualib:GetInt(playerguid, "L_V")
    local count = lualib:ItemCountByKey(playerguid, "�ٻ�ʯ", true, true, true, 1)
    if L_V < 35 then
        lualib:DelItem(playerguid, "�ٻ�ʯ", count, 1, "�����غ���ӡ����", "�����غ���ӡ") 
    end

	lualib:Map_DestroyDgn(mapguid)
	
end

