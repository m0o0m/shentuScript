function main(player)
	
	local burstharm = lualib:GetInt(player,"burstharm")
	lualib:ShowFormWithContent(player,"�ű���","EditSetText(nil,\"RoleGUI,RoleEquipment,ATTACK_SPEED_Edit\",\"".. burstharm .."\")")
	return ""
end

function Open_Rein(player)
	
	lualib:ShowFormWithContent(player, "form�ļ���", "RoleGUI")
	return ""
end