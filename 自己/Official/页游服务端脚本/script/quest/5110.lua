
		
function on_accept(player, quest_id)
	local map = lualib:MapGuid(player)
    local X = lualib:X(player)
    local Y = lualib:Y(player)
	local monster = lualib:Map_GenSingleMonster(map, X, Y, 3, 5, "魔法指导员",false)
	lualib:AddBuff(monster, "武斗场火麟法袍女", 0)
	lualib:SysMsg_SendTriggerMsg(player, "魔法指导员出现在你身边，请于两分钟内击杀！若魔法指导员消失，请放弃任务重接！")
	return true
end