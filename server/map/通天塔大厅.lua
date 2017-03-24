local mapt1 = {
						["通天塔大厅1层"] = {2,0,23,13,0,0},
						["通天塔大厅2层"] = {3,1,23,18,43,51},
						["通天塔大厅3层"] = {4,2,24,16,43,50},
						["通天塔大厅4层"] = {5,3,23,18,43,51},
						["通天塔大厅5层"] = {6,4,24,16,43,50},
						["通天塔大厅6层"] = {7,5,23,18,43,51},
						["通天塔大厅7层"] = {8,6,24,16,43,50},
						["通天塔大厅8层"] = {9,7,23,18,43,51},
						["通天塔大厅9层"] = {0,8,0,0,43,50},
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
		lualib:Player_MapMoveXY(player, "通天塔大厅"..r.."层",45,47,0)
	elseif x == mapt1[map_name][5] and y== mapt1[map_name][6] then
		local r = lualib:GenRandom(1,mapt1[map_name][2])
		lualib:Player_MapMoveXY(player, "通天塔大厅"..r.."层",24,26,0)
	end
end
