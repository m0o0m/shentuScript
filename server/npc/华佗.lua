function main(npc, player)
	
	local map = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	if not lualib:GridAttr(map, x, y, 8) then
		lualib:MsgBox(player,"�ǰ�ȫ�����޷���Ѫ��")
		return ""
	end
   
	local hp1 =lualib:Hp(player,true)
	local hp2 =lualib:Hp(player,false)
	local mp1 = lualib:Mp(player,true)
	local mp2 = lualib:Mp(player,false)

	if hp2 == hp1 and mp1 == mp2 then
		lualib:MsgBox(player,"���Ѫ������������Ҫ���ƣ�")
	else
		lualib:SetHp(player, hp1, false)
		lualib:SetMp(player, mp1, false)
		lualib:MsgBox(player, "���Ѿ����������HP��MP������ս���ɣ�")	
	end
	return ""
end