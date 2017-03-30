

function on_accept(player, quest_id)
	local map = lualib:Map_GetMapGuid("天荒阵1")
	local monster = lualib:Map_GenSingleMonster(map, 92, 93, 5, 5, "天荒阵守卫1",false)
	lualib:SysMsg_SendTriggerMsg(player, "天荒阵守卫出现在天荒一层入口！请于两分钟内击杀，请注意调整自己的攻击模式！若天荒阵守卫消失，可放弃任务重接！")
	local a = lualib:Camp(player)
	local u = a + 1 	
	lualib:SetCamp(monster, u)
	return true
end










