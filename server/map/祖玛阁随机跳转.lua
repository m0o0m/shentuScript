
local map_jumpXY = {
					{14,21},
					{6, 21},
					{5, 13},
					{15, 13},
				}

				
local to_map_list = {
						"�����1",
						"�����2",
						"�����3",
						"�����4",
						"�����5",
						"�����6",
						"�����7",
						"�����8",
						"�����9",
						"�����10",
						"�������ȷ1",
						"�������ȷ2",
						"�������ȷ3",
						"�������ȷ4",
						"�������ȷ5",
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
	if to_map_name == "�����10" then
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
