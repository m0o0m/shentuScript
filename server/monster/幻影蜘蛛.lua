function on_create(monster)
	--lualib:AddTrigger(map, lua_trigger_post_die, "on_post_die")                          --��ɫ��������	������������ʱ���Զ���ִ�� ע�͵� 
	local times = 2500	
	lualib:AddTimer(monster, 1, times, 50, "on_timer")									   --ֻˢ50ֻ

end

function on_timer(monster, timer_id)
	local servant_k = "����֩��"
	
	local x = lualib:X(monster)
	local y = lualib:Y(monster)
	local map = lualib:MapGuid(monster)	
	
	local servant = lualib:Map_GenSingleMonster(map, x, y, 2, lualib:GenRandom(0, 8), servant_k, false)
	local player_guid = lualib:GetStr(map, "player_guid")
	if player_guid ~= "" then
		lualib:Monster_SetAttackTarget(servant, player_guid)
	end

end

function on_post_die(actor, killer)
    lualib:DisableTimer(actor, 1)
    lualib:ClearTrigger(actor)
end

