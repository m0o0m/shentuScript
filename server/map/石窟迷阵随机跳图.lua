local map_jumpXY = {
					{78,59},
					{57, 80},
					{80, 80},
					{59, 59},
				}

				
local to_map_list = {
						"ʯ��������ȷ2",
						"ʯ��������ȷ3",
						"ʯ��������ȷ4",
						"ʯ��������ȷ5",
						"ʯ��������ȷ6",
						"ʯ������2",
						"ʯ������3",
						"ʯ������4",
						"ʯ������5",
						"ʯ������6",
						"ʯ������7",
						"ʯ������8",
						"ʯ������9",
						"ʯ������10",
						"ʯ������11",
						"ʯ������12",
						"ʯ������13",
						"ʯ������14",
						"ʯ������15",
						"ʯ������16",
						"ʯ������17",
						"ʯ������18",
						"ʯ������19",
						"ʯ������20",
						"ʯ������21",
						"ʯ������22",
						"ʯ������23",
						"ʯ������24",
						"ʯ������25",
						"ʯ������26",
						"ʯ������27",
						"ʯ������28",
						"ʯ������29",
						"ʯ������30",
						"ʯ������31",
						"ʯ������32",
						"ʯ������33",
						"ʯ������34",
						"ʯ������35",
						"ʯ������36",
						"ʯ������37",
						"ʯ������38",
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
	if to_map_name == "ʯ������38" then
		if form_map_name == "ʯ������" then	
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
