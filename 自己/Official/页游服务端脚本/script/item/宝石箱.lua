 
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

function main(player, item)
	local cry_tab = {"1���﹥��ʯ","1��ħ����ʯ","1��������ʯ","1�������ʯ","1��ħ����ʯ","1��������ʯ",}
	local cry = cry_tab[math.random(1,#cry_tab)]
	if cry ~= nil then
		local name = lualib:Name(item)
		--if lualib:DelItem(player, name, 1, 2, "��ʯ��", "ϵͳ") then
		if lualib:Item_Destroy(player, item, "��ʯ��", "ϵͳ") then
			lualib:AddItem(player,cry,1,false,"��ʯ��", "ϵͳ")
		end
	end
    return false                               
end


