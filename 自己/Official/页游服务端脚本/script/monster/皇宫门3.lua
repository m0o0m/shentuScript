local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")



function on_create(monster)
	local map = lualib:Map_GetMapGuid("����")
	local npc = lualib:Map_GenNpc(map, "�����赲", 93, 110, 0, 1)
	if npc == "" then
        lualib:Error("ˢ���ǻʹ��Ų�©�赲ʧ�ܣ�")
        return
    end
	lualib:SetStr(monster, "npc1", npc)
	--[[
	npc = lualib:Map_GenNpc(map, "�����赲", 88, 116, 0, 1)
	if npc == "" then
        lualib:Error("ˢ���ǻʹ��Ų�©�赲ʧ�ܣ�")
        return
    end
	lualib:SetStr(monster, "npc2", npc)
	--]]
	lualib:AddTrigger(monster,  lua_trigger_post_die, "on_trigger_post_die")
end

function on_trigger_post_die(actor, killer)
	for i = 1, 1 do 
		local npc = lualib:GetStr(actor, "npc"..i)
		if npc ~= "" then 
			lualib:Npc_Remove(npc)
		end
	end
    lualib:ClearTrigger(actor)
end


