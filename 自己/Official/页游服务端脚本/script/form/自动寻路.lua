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
			if not lualib:HasBuff(player,"�Զ�Ѱ·") then
				lualib:AddBuff(player, "�Զ�Ѱ·", 0)
			end		
		elseif isauto == 0 then
			lualib:SetInt(player, "autorun", 0)
			if lualib:HasBuff(player,"�Զ�Ѱ·") then
				lualib:DelBuff(player, "�Զ�Ѱ·")
			end
		end
	end
	return ""
end