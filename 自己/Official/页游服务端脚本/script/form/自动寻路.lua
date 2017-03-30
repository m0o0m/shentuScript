local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)


function xunlu(player,isauto)
	local msg = ""
	if isauto == nil or isauto == "" then
		if lualib:GetInt(player, "autorun") == 1 then
			lualib:SetInt(player, "autorun", 0)
		else
			lualib:SetInt(player, "autorun", 1)
		end
	else
		isauto = tonumber(isauto)
		if isauto == 1 then
			lualib:SetInt(player, "autorun", 1)
			if not lualib:HasBuff(player,"自动寻路") then
				lualib:AddBuff(player, "自动寻路", 0)
			end		
		elseif isauto == 0 then
			lualib:SetInt(player, "autorun", 0)
			if lualib:HasBuff(player,"自动寻路") then
				lualib:DelBuff(player, "自动寻路")
			end
		end
	end
	return ""
end