function main(npc, player)
	lualib:DelayCall(player, 1, "地图模板表单:show", lualib:KeyName(npc))
	return ""
end