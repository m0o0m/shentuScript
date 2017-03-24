local mapt1 = {
						["��ħ��70��"] = {1,0,22,14,0,0},
						["��ħ��71��"] = {2,0,23,18,43,51},
						["��ħ��72��"] = {3,1,24,16,43,50},
						["��ħ��73��"] = {4,2,23,18,43,51},
						["��ħ��74��"] = {5,3,24,16,43,50},
						["��ħ��75��"] = {6,4,23,18,43,51},
						["��ħ��76��"] = {7,5,24,16,43,50},
						["��ħ��77��"] = {8,6,23,18,43,51},
						["��ħ��78��"] = {9,7,24,16,43,50},
						["��ħ��79��"] = {0,8,0,0,43,51},
	}
	
function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_pre_enter_jump , "on_pre_map")  --��תǰ����
	
end

function on_pre_map(player,map)
	local x = lualib:X(player)
	local y = lualib:Y(player)
	local map_name = lualib:KeyName(map)
	if x == mapt1[map_name][3] and y == mapt1[map_name][4] then
		local r = lualib:GenRandom(mapt1[map_name][1],9)
		lualib:Player_MapMoveXY(player, "��ħ��7"..r.."��",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "��ħ��7"..r.."��",24,26,0)
	end
end
