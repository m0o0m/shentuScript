
function Position(player,kname)

	local map_guid = lualib:MapGuid(player)
	local npc_guid = lualib:Map_GetMapNpc(map_guid,kname) 
	local x = lualib:X(npc_guid) 
    local y = lualib:Y(npc_guid)
	lualib:ShowFormWithContent(player,"½Å±¾±íµ¥","BigMapWindow.setEdit("..x..","..y..")") 
	return ""
	
end