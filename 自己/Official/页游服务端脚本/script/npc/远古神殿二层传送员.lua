
function main(npc, player)
	local itemcounts = lualib:ItemCount(player, "玛雅卷轴")
	lualib:ShowFormWithContent(player, "form文件表单", "mayaTemple2#"..itemcounts)
	return ""	
end
