function main(npc,player)
		
	local state = lualib:GetDBNum("SBKApplyState")
		
	lualib:ShowFormWithContent(player, "form�ļ���", "SBKAttack_c#" .. state)

	return ""
end