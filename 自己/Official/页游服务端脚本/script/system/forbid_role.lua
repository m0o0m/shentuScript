local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function check_forbid_role(player)
	local envir_path = "forbid_login.txt"
	
	if not lualib:IO_FileExists(envir_path) then return end
	
	local text_content = lualib:IO_GetFileText(envir_path)
	if text_content == nil then return end

	local ip = lualib:Player_GetStrProp(player,  lua_role_ip)
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	local account = lualib:Player_GetStrProp(player,  lua_role_account_name)
	
	for _, v in pairs(text_content) do
		local sub_t = lualib:StrSplit(v, "#")
		if (sub_t ~= nil) and (table.getn(sub_t) == 2) then
			local is_kick = false
			if sub_t[1] == "0" then
				if sub_t[2] == name then is_kick = true end
			elseif sub_t[1] == "1" then
				if sub_t[2] == ip then is_kick = true end
			elseif sub_t[1] == "2" then
				if sub_t[2] == account then is_kick = true end
			end
			if is_kick then 
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")
				lualib:SysPromptMsg(player, "因为违反了游戏规则，您的角色已被封停，请与管理员联系!!")

				lualib:Player_Kick(player) 
			end
		end
	end
end
