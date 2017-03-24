local mapt1 = {
						["·ð½Ì¸ó20²ã"] = {1,0,23,13,0,0},
						["·ð½Ì¸ó21²ã"] = {2,0,23,18,43,51},
						["·ð½Ì¸ó22²ã"] = {3,1,24,16,43,50},
						["·ð½Ì¸ó23²ã"] = {4,2,23,18,43,51},
						["·ð½Ì¸ó24²ã"] = {5,3,24,16,43,50},
						["·ð½Ì¸ó25²ã"] = {6,4,23,18,43,51},
						["·ð½Ì¸ó26²ã"] = {7,5,24,16,43,50},
						["·ð½Ì¸ó27²ã"] = {8,6,23,18,43,51},
						["·ð½Ì¸ó28²ã"] = {9,7,24,16,43,50},
						["·ð½Ì¸ó29²ã"] = {0,8,0,0,43,51},
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
		lualib:Player_MapMoveXY(player, "·ð½Ì¸ó2"..r.."²ã",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "·ð½Ì¸ó2"..r.."²ã",24,26,0)
	end
end
