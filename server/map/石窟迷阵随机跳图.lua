local map_jumpXY = {
					{78,59},
					{57, 80},
					{80, 80},
					{59, 59},
				}

				
local to_map_list = {
						"Ê¯¿ßÃÔÕóÕıÈ·2",
						"Ê¯¿ßÃÔÕóÕıÈ·3",
						"Ê¯¿ßÃÔÕóÕıÈ·4",
						"Ê¯¿ßÃÔÕóÕıÈ·5",
						"Ê¯¿ßÃÔÕóÕıÈ·6",
						"Ê¯¿ßÃÔÕó2",
						"Ê¯¿ßÃÔÕó3",
						"Ê¯¿ßÃÔÕó4",
						"Ê¯¿ßÃÔÕó5",
						"Ê¯¿ßÃÔÕó6",
						"Ê¯¿ßÃÔÕó7",
						"Ê¯¿ßÃÔÕó8",
						"Ê¯¿ßÃÔÕó9",
						"Ê¯¿ßÃÔÕó10",
						"Ê¯¿ßÃÔÕó11",
						"Ê¯¿ßÃÔÕó12",
						"Ê¯¿ßÃÔÕó13",
						"Ê¯¿ßÃÔÕó14",
						"Ê¯¿ßÃÔÕó15",
						"Ê¯¿ßÃÔÕó16",
						"Ê¯¿ßÃÔÕó17",
						"Ê¯¿ßÃÔÕó18",
						"Ê¯¿ßÃÔÕó19",
						"Ê¯¿ßÃÔÕó20",
						"Ê¯¿ßÃÔÕó21",
						"Ê¯¿ßÃÔÕó22",
						"Ê¯¿ßÃÔÕó23",
						"Ê¯¿ßÃÔÕó24",
						"Ê¯¿ßÃÔÕó25",
						"Ê¯¿ßÃÔÕó26",
						"Ê¯¿ßÃÔÕó27",
						"Ê¯¿ßÃÔÕó28",
						"Ê¯¿ßÃÔÕó29",
						"Ê¯¿ßÃÔÕó30",
						"Ê¯¿ßÃÔÕó31",
						"Ê¯¿ßÃÔÕó32",
						"Ê¯¿ßÃÔÕó33",
						"Ê¯¿ßÃÔÕó34",
						"Ê¯¿ßÃÔÕó35",
						"Ê¯¿ßÃÔÕó36",
						"Ê¯¿ßÃÔÕó37",
						"Ê¯¿ßÃÔÕó38",
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
	if to_map_name == "Ê¯¿ßÃÔÕó38" then
		if form_map_name == "Ê¯¿ßÃÔÕó" then	
			if player_x > 48 and player_x < 58 and player_y > 83 and player_y < 93 then
				map_area = 1
			elseif player_x > 81 and player_x < 91 and player_y > 50 and player_y < 60 then
				map_area = 2
			elseif player_x > 47 and player_x < 57 and player_y > 49 and player_y < 59 then
				map_area = 3
			elseif player_x > 79 and player_x < 89 and player_y > 83 and player_y < 93 then
				map_area = 4
			end
		else
			if player_x > 50 and player_x < 60 and player_y > 77 and player_y < 87 then
				map_area = 1
			elseif player_x > 75 and player_x < 85 and player_y > 51 and player_y < 61 then
				map_area = 2
			elseif player_x > 52 and player_x < 62 and player_y > 51 and player_y < 61 then
				map_area = 3
			elseif player_x > 77 and player_x < 87 and player_y > 77 and player_y < 87 then
				map_area = 4
			end
		end
		local rand_map = math.random(1, #to_map_list)
		lualib:Player_MapMoveXY(player, to_map_list[rand_map], map_jumpXY[map_area][1], map_jumpXY[map_area][2], 1)
		return false
	end
	return true
end
