local record_file = {"天下第一战士.txt", "天下第一法师.txt", "天下第一道士.txt", "天下第一.txt"}
local record_name = {"天下第一战士", "天下第一法师", "天下第一道士", "天下第一"}

function GSTriggerScript(map_keyname, npc_keyname, type)
	lualib:Debug("天下第一触发脚本回调！")
	
	if not lualib:Map_IsInGS(map_keyname) then return end
	local map = lualib:Map_GetMapGuid(map_keyname)
	if "" == map then return end
	
	local npc = lualib:Map_GetMapNpc(map, npc_keyname)
	if "" == npc then return end
	
	npc_update(npc, tonumber(type))
end

function npc_update(npc, type)
	local texts = lualib:IO_GetFileText(record_file[type])
	if texts == nil then
		lualib:Npc_ChangeName(npc, record_name[type])
	else
		lualib:Npc_ChangeName(npc, texts[1])
	end
end