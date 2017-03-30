function main(player)
	
	local burstharm = lualib:GetInt(player,"burstharm")
	lualib:ShowFormWithContent(player,"脚本表单","EditSetText(nil,\"RoleGUI,RoleEquipment,ATTACK_SPEED_Edit\",\"".. burstharm .."\")")
	return ""
end

function Open_Rein(player)
	
	lualib:ShowFormWithContent(player, "form文件表单", "RoleGUI")
	return ""
end