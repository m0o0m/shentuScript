function main(npc,player)
	msg = "\n  ���ǲ���սʤ�� \n"
	lualib:AddTrigger(npc, lua_trigger_destroy, "on_destory")
	return msg
end

function on_destory()
	lualib:SysMsg_SendBroadcastMsg("on_destory","")
	local mapGuid = lualib:Map_GetMapGuid("����")
	lualib:Map_GenMonster(mapGuid, 350, 189, 10, 4, "��������", 1, false)
	return ""
end