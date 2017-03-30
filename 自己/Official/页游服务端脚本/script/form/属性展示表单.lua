function SubNum(player)
	local loadnum = lualib:GetInt(player,"loadnum")
	if loadnum > 0 then
		lualib:SetInt(player,"loadnum",loadnum - 1)
	end	
	return ""
end