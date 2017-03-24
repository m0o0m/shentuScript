local mapt1 = {
						["¾«Îä¸ó60²ã"] = {1,0,24,16,0,0},
						["¾«Îä¸ó61²ã"] = {2,0,23,18,43,51},
						["¾«Îä¸ó62²ã"] = {3,1,24,16,43,50},
						["¾«Îä¸ó63²ã"] = {4,2,23,18,43,51},
						["¾«Îä¸ó64²ã"] = {5,3,24,16,43,50},
						["¾«Îä¸ó65²ã"] = {6,4,23,18,43,51},
						["¾«Îä¸ó66²ã"] = {7,5,24,16,43,50},
						["¾«Îä¸ó67²ã"] = {8,6,23,18,43,51},
						["¾«Îä¸ó68²ã"] = {9,7,24,16,43,50},
						["¾«Îä¸ó69²ã"] = {0,8,0,0,43,51},
	}
	
function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_pre_enter_jump , "on_pre_map")  --Ìø×ªÇ°´¥·¢
	
end

function on_pre_map(player,map)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map_name = lualib:KeyName(map)
	if x == mapt1[map_name][3] and y == mapt1[map_name][4] then
		local r = lualib:GenRandom(mapt1[map_name][1],9)
		lualib:Player_MapMoveXY(player, "¾«Îä¸ó6"..r.."²ã",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "¾«Îä¸ó6"..r.."²ã",24,26,0)
	end
end
