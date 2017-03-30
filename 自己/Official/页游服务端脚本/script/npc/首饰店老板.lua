function main(npc,player) 
	msg = "\n    蕴藉天地之能，显各自神通。谁可曾料到小小的东西能有这样惊天动地的力量。\n "
	lualib:SetStr(player,"_tc_","RED")
	lualib:NotifyVar(player,"_tc_")
	return msg
end
