function main(npc, player)
	
	local map = lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	if not lualib:GridAttr(map, x, y, 8) then
		lualib:MsgBox(player,"非安全区域无法加血。")
		return ""
	end
   
	local hp1 =lualib:Hp(player,true)
	local hp2 =lualib:Hp(player,false)
	local mp1 = lualib:Mp(player,true)
	local mp2 = lualib:Mp(player,false)

	if hp2 == hp1 and mp1 == mp2 then
		lualib:MsgBox(player,"你的血量已满，不需要治疗！")
	else
		lualib:SetHp(player, hp1, false)
		lualib:SetMp(player, mp1, false)
		lualib:MsgBox(player, "我已经补满了你的HP和MP，继续战斗吧！")	
	end
	return ""
end