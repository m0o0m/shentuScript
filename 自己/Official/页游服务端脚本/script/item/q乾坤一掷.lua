local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


function main (player, item)
	local mapguid =lualib:MapGuid(player)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local player_level = lualib:Level(player)
	local skill_id = skillid
	local monster_tb1 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 1, true, true)
	local monster_tb2 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 2, true, true)
	local monster_tb3 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 3, true, true)
	local monster_tb4 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 4, true, true)
	local monster_tb5 = lualib:Map_GetRegionMonsters(mapguid, "", x, y, 5, true, true)
	local item_key = lualib:KeyName(item)
	
	local num = 0

	if	item_key == "Ç¬À¤Ò»ÖÀ1" then
		for i = 1, #monster_tb1 do
			local mt1_keyname = lualib:KeyName(monster_tb1[i])
			local mt1_type = lualib:Monster_Type(mt1_keyname)
			if	mt1_type > 2	then
			else
				lualib:Kill(monster_tb1[i])
				num = num + 1
				if num >= 8 then
					break
				end
			end
		end
	elseif item_key == "Ç¬À¤Ò»ÖÀ2" then
		for i = 1, #monster_tb2 do
			local mt2_keyname = lualib:KeyName(monster_tb2[i])
			local mt2_type = lualib:Monster_Type(mt2_keyname)
			if	mt2_type > 2 	then
			else
				lualib:Kill(monster_tb2[i])
				num = num + 1
				if num >= 24 then
					break
				end
			end
		end
	elseif item_key == "Ç¬À¤Ò»ÖÀ3" then
		for i = 1, #monster_tb3 do
			local mt2_keyname = lualib:KeyName(monster_tb3[i])
			local mt2_type = lualib:Monster_Type(mt2_keyname)
			if	mt2_type > 2 	then
			else
				lualib:Kill(monster_tb3[i])
				num = num + 1
				if num >= 48 then
					break
				end
			end
		end
	elseif item_key == "Ç¬À¤Ò»ÖÀ4" then
		for i = 1, #monster_tb4 do
			local mt2_keyname = lualib:KeyName(monster_tb4[i])
			local mt2_type = lualib:Monster_Type(mt2_keyname)
			if	mt2_type > 2 	then
			else
				lualib:Kill(monster_tb4[i])
				num = num + 1
				if num >= 80 then
					break
				end
			end
		end
	elseif item_key == "Ç¬À¤Ò»ÖÀ5" then
		for i = 1, #monster_tb5 do
			local mt2_keyname = lualib:KeyName(monster_tb5[i])
			local mt2_type = lualib:Monster_Type(mt2_keyname)
			if	mt2_type > 2 	then
			else
				lualib:Kill(monster_tb5[i])
				num = num + 1
				if num >= 120 then
					break
				end
			end
		end
	end
	return true
end