--任务成功接取回调
--quest_id 任务id
function on_accept(player, quest_id)
	lualib:AddBuff(player, "传送中", 0)
	lualib:AddTimerEx(player, 1, 200, 1, "chuansong", "")
	lualib:SysPromptMsg(player, "由于路途较远，我2秒之后将你传送到目的地！以后你可以使用逍遥游自己传送到想去的地方。")
	return	true
end

function chuansong(player)
	lualib:Player_MapMoveXY(player, "巫山城", 233, 291, 5)
	lualib:SysPromptMsg(player, "传送成功！")
	lualib:DisableTimer(player, 1)
    return true
end