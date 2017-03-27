--[[local table_1 = {}

for i=1,6 do 
	table_1[i] = i*2
end

print(table_1[5])
--]]
--[[
local  a = {}
print(a[x])
--]]
--[[
local a = {}
a["b"] = function(x,y)
	local z = x + y
	return z 
end
print(a["b"](1,2))
--]]
--[[
local a = {}
a.b = function(x,y)
	local z = x + y
	return z 
end
print(a["b"](1,2))
--]]

local a = {}
a[1] = ""
print(a[1])

t1 = {
	nihao = '123'
}

print(t1.nihao)

for k, v in ipairs(a) do 
	print(v);
end