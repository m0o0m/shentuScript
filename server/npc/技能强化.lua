function main(npc, player)
	lualib:DelayCall(player, 1, "技能升级表单:show", lualib:KeyName(npc))
	return ""
end