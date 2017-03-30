local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")

function main(player, item)
	lualib:AddTrigger(player, lua_trigger_pre_equip, "medal_equip")
	return true
end

function medal_equip(player, item)--根据亲密度的高低，装备对应的勋章
	local keyname = lualib:KeyName(item)
	
	local xz_table = {
						["同心勋章一级"] = {1, 3},
						["同心勋章二级"] = {1000, 5},
						["同心勋章三级"] = {2000, 7},
						["同心勋章四级"] = {3000, 9},
						["同心勋章五级"] = {4500, 12},
						["同心勋章六级"] = {6000, 15},
					}
					
	local a = false
	for k, _ in pairs(xz_table) do
		if keyname == k then
			a = true
		end
	end				
					
	if a == true then
		local intimacy = lualib:Player_GetCustomVarInt(player, "intimacy")
		if intimacy >= xz_table[keyname][1] then
			lualib:AddBuffEx(player, "同心连理", 0, xz_table[keyname][2])
			return true
		else
			lualib:SysMsg_SendWarnMsg(player, "你的亲密度太低，无法装备这个【同心勋章】！\n你当前的亲密度："..intimacy.."")
			return false
		end
	else
		return true
	end	
end