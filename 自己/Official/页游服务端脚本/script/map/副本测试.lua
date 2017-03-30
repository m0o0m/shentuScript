function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_leave_map") 
end 

function on_enter_map(player)
	lualib:ForceAcceptQuest(player,911)
end

function on_leave_map(player)
	if lualib:CanAccomplishQuest(player, 911) == true then
		lualib:AccomplishQuest(player, 911,0)
		lualib:SysMsg_SendBottomColor(player, "任务完成", 4, 2)
	else
		lualib:DropQuest(player, 911)
		lualib:SysMsg_SendBottomColor(player, "任务失败", 4, 2)
	end
end