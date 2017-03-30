function main(npc,player)
		
	local state = lualib:GetDBNum("SBKApplyState")
		
	lualib:ShowFormWithContent(player, "form文件表单", "SBKAttack_c#" .. state)

	return ""
end