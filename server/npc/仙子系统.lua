function main(npc, player)
	lualib:DelayCall(player, 1, "仙子系统表单:show", lualib:KeyName(npc))
	return ""
end