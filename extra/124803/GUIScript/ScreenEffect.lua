function BeginFlower(_ImageIDStr)
	local _ImageID = tonumber(_ImageIDStr)
	if _ImageID ~= 0 then
		return UI:Lua_BeginFlower(_ImageID)
	else
		return false
	end
end
