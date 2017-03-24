local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)


-----------------------图标显示-----------------------------
function guaji_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800079, "自动打怪",0,"") --显示目标图标
end

-------------------图标被点击-----------------------
function guaji(player)
	ShowTimeCount2(player, 0, 1903800079, "自动打怪",0,"") --显示目标图标
	local msg = ""
	
	if lualib:GetInt(player, "autoattack") == 1 then
		lualib:StopAutoRun(player)
		lualib:SetInt(player, "autoattack", 0)

		lualib:SysTriggerMsg(player, "天神离开了！再次点击可进入自动战斗！")
	else
		lualib:StartAutoRun(player, "")
		lualib:SetInt(player, "autoattack", 1)
		lualib:SetStr(player, "map_1", lualib:MapGuid(player))
		lualib:SysTriggerMsg(player, "天神来了！他正在挥洒着自己的热血和神力帮你战斗着，感动吧，凡人……再次点击脱离自动战斗！")
	end

	return ""
end

function close(player)
	return ""
end