function on_create(monster)
	--lualib:AddTrigger(map, lua_trigger_post_die, "on_post_die")                          --角色死亡触发	怪物死亡，定时器自动不执行 注释掉 
	local times = 2500	
	lualib:AddTimer(monster, 1, times, 50, "on_timer")									   --只刷50只

end

function on_timer(monster, timer_id)
	local servant_k = "爆裂蜘蛛"
	
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

