function on_create(monster)
    lualib:SysMsg_SendBroadcastMsg("城主雕像创建成功","")
	lualib:AddTrigger(monster, lua_trigger_monster_post_die, "on_die")
end

function on_die()
	lualib:SysMsg_SendBroadcastMsg("on_die","")
	lualib:SetDBNum("SBKHongGongState", 1)
	local mapGuid = lualib:Map_GetMapGuid("神歌城")
	if lualib:Map_GenNpc(mapGuid, "神歌城主雕像", 350, 189, 10, 4) then
		lualib:SysMsg_SendBroadcastMsg("刷神歌城主雕像成功","")
	end
end