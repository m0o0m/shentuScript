function on_create(monster)
    lualib:SysMsg_SendBroadcastMsg("�������񴴽��ɹ�","")
	lualib:AddTrigger(monster, lua_trigger_monster_post_die, "on_die")
end

function on_die()
	lualib:SysMsg_SendBroadcastMsg("on_die","")
	lualib:SetDBNum("SBKHongGongState", 1)
	local mapGuid = lualib:Map_GetMapGuid("����")
	if lualib:Map_GenNpc(mapGuid, "����������", 350, 189, 10, 4) then
		lualib:SysMsg_SendBroadcastMsg("ˢ����������ɹ�","")
	end
end