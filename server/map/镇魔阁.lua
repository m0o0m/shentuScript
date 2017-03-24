local mapt1 = {
						["镇魔阁50层"] = {1,0,24,22,0,0},
						["镇魔阁51层"] = {2,0,23,18,43,51},
						["镇魔阁52层"] = {3,1,24,16,43,50},
						["镇魔阁53层"] = {4,2,23,18,43,51},
						["镇魔阁54层"] = {5,3,24,16,43,50},
						["镇魔阁55层"] = {6,4,23,18,43,51},
						["镇魔阁56层"] = {7,5,24,16,43,50},
						["镇魔阁57层"] = {8,6,23,18,43,51},
						["镇魔阁58层"] = {9,7,24,16,43,50},
						["镇魔阁59层"] = {0,8,0,0,43,51},
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
		lualib:Player_MapMoveXY(player, "镇魔阁5"..r.."层",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "镇魔阁5"..r.."层",24,26,0)
	end
end
