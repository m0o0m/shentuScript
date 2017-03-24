function main(npc, player)
	lualib:DelayCall(player, 1, "时装锻造表单:show", lualib:KeyName(npc))
	return ""
end