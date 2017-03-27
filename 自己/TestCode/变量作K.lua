
--[[line = 1
point = 2

local t =
{
	[line] = 
	{
		[point] = 1234
	}
}


print(t[1][2])--]]

--[[local line = 1
pos = 2

local t = {}
t.line = line 
t.pos = pos
t[line][pos] = tbl

tb1 = {}
print(t[line][pos])
--]]

local line = 1
local pos = 2
local t = 
{
	[line] =
	{
		[pos] = {1,2,3,4,6}
	}
}


print(t[line][pos][1])
