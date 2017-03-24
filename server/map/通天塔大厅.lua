local mapt1 = {
						["ͨ��������1��"] = {2,0,23,13,0,0},
						["ͨ��������2��"] = {3,1,23,18,43,51},
						["ͨ��������3��"] = {4,2,24,16,43,50},
						["ͨ��������4��"] = {5,3,23,18,43,51},
						["ͨ��������5��"] = {6,4,24,16,43,50},
						["ͨ��������6��"] = {7,5,23,18,43,51},
						["ͨ��������7��"] = {8,6,24,16,43,50},
						["ͨ��������8��"] = {9,7,23,18,43,51},
						["ͨ��������9��"] = {0,8,0,0,43,50},
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
		lualib:Player_MapMoveXY(player, "ͨ��������"..r.."��",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "ͨ��������"..r.."��",24,26,0)
	end
end
