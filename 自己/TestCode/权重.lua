
local GAMBLE_AWARD = 
	{	
		--倍数
		{1.15, 1.2, 1.25, 1.35, 1.5,  2,  3, 10},
		--权重
		{20,   120,  130,  100,  80, 40, 10,  0},
	} 
	
--获取权重选项
function get_table_key(RATE)
	local maxs = 0
	local RATE_ADD_UP = {}
	for i = 1, #RATE do
		maxs = maxs + RATE[i]
		RATE_ADD_UP[i] = maxs
	end
	
	local key = 1
	local rand = math.random(1, maxs)
	for i = 1, #RATE_ADD_UP do
		if rand <= RATE_ADD_UP[i] then
			key = i
			break
		end
	end
	return key
end

local index = get_table_key(GAMBLE_AWARD[2])
print(index)