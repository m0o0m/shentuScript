
local map_jumpXY = {
					{14,21},
					{6, 21},
					{5, 13},
					{15, 13},
				}

				
local to_map_list = {
						"×æÂê¸ó1",
						"×æÂê¸ó2",
						"×æÂê¸ó3",
						"×æÂê¸ó4",
						"×æÂê¸ó5",
						"×æÂê¸ó6",
						"×æÂê¸ó7",
						"×æÂê¸ó8",
						"×æÂê¸ó9",
						"×æÂê¸ó10",
						"×æÂê¸óÕıÈ·1",
						"×æÂê¸óÕıÈ·2",
						"×æÂê¸óÕıÈ·3",
						"×æÂê¸óÕıÈ·4",
						"×æÂê¸óÕıÈ·5",
					}

				
				
				
function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_pre_enter_jump, "on_pre_jump")
end

function on_pre_jump(player, form_map, to_map)
	local to_map_name = lualib:KeyName(to_map)
	local form_map_name = lualib:KeyName(form_map)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)

	local map_area = 1
	if to_map_name == "×æÂê¸ó10" then
			if player_x > 4 and player_x < 7 and player_y > 9 and player_y < 13 then
				map_area = 1
			elseif player_x > 14 and player_x < 18 and player_y > 9 and player_y < 13 then
				map_area = 2
			elseif player_x > 13 and player_x < 17 and player_y > 20 and player_y < 24 then
				map_area = 3
			elseif player_x > 3 and player_x < 7 and player_y > 20 and player_y < 24 then
				map_area = 4
			end
		local rand_map = math.random(1, #to_map_list)
		lualib:Player_MapMoveXY(player, to_map_list[rand_map], map_jumpXY[map_area][1], map_jumpXY[map_area][2], 1)
		return false
	end
	return true
end
