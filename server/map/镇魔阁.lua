local mapt1 = {
						["��ħ��50��"] = {1,0,24,22,0,0},
						["��ħ��51��"] = {2,0,23,18,43,51},
						["��ħ��52��"] = {3,1,24,16,43,50},
						["��ħ��53��"] = {4,2,23,18,43,51},
						["��ħ��54��"] = {5,3,24,16,43,50},
						["��ħ��55��"] = {6,4,23,18,43,51},
						["��ħ��56��"] = {7,5,24,16,43,50},
						["��ħ��57��"] = {8,6,23,18,43,51},
						["��ħ��58��"] = {9,7,24,16,43,50},
						["��ħ��59��"] = {0,8,0,0,43,51},
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
		lualib:Player_MapMoveXY(player, "��ħ��5"..r.."��",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "��ħ��5"..r.."��",24,26,0)
	end
end
