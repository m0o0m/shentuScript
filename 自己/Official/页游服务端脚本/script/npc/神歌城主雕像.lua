function main(npc,player)
	msg = "\n  我是不可战胜的 \n"
	lualib:AddTrigger(npc, lua_trigger_destroy, "on_destory")
	return msg
end

function on_destory()
	lualib:SysMsg_SendBroadcastMsg("on_destory","")
	local mapGuid = lualib:Map_GetMapGuid("神歌城")
	lualib:Map_GenMonster(mapGuid, 350, 189, 10, 4, "城主雕像", 1, false)
	return ""
end