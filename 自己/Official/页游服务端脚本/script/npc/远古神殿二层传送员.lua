
function main(npc, player)
	local itemcounts = lualib:ItemCount(player, "���ž���")
	lualib:ShowFormWithContent(player, "form�ļ���", "mayaTemple2#"..itemcounts)
	return ""	
end
