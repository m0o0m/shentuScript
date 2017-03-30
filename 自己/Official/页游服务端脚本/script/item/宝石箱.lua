 
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(player, item)
	local cry_tab = {"1级物攻宝石","1级魔攻宝石","1级道攻宝石","1级物防宝石","1级魔防宝石","1级生命宝石",}
	local cry = cry_tab[math.random(1,#cry_tab)]
	if cry ~= nil then
		local name = lualib:Name(item)
		--if lualib:DelItem(player, name, 1, 2, "宝石箱", "系统") then
		if lualib:Item_Destroy(player, item, "宝石箱", "系统") then
			lualib:AddItem(player,cry,1,false,"宝石箱", "系统")
		end
	end
    return false                               
end


