local mapt1 = {
						["道教阁10层"] = {1,0,24,16,0,0},
						["道教阁11层"] = {2,0,23,18,43,51},
						["道教阁12层"] = {3,1,24,16,43,50},
						["道教阁13层"] = {4,2,23,18,43,51},
						["道教阁14层"] = {5,3,24,16,43,50},
						["道教阁15层"] = {6,4,23,18,43,51},
						["道教阁16层"] = {7,5,24,16,43,50},
						["道教阁17层"] = {8,6,23,18,43,51},
						["道教阁18层"] = {9,7,24,16,43,50},
						["道教阁19层"] = {0,8,0,0,43,51},
	}
	
function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_pre_enter_jump , "on_pre_map")  --跳转前触发
	
end

function on_pre_map(player,map)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map_name = lualib:KeyName(map)
	if x == mapt1[map_name][3] and y == mapt1[map_name][4] then
		local r = lualib:GenRandom(mapt1[map_name][1],9)
		lualib:Player_MapMoveXY(player, "道教阁1"..r.."层",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "道教阁1"..r.."层",24,26,0)
	end
end
