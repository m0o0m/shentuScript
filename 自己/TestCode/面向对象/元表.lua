local LuaGlobal = {}
local mt = {}
mt.__index = function(table, index)
	
	print(table)
	--print(index)
	return table
end
setmetatable(LuaGlobal, mt)
--print(getmetatable(LuaGlobal))
print(LuaGlobal['main'])
local t = LuaGlobal['main']
for k, v in pairs(t) do 
	print(("[%s] = %s\n"):format(k,v))
end
