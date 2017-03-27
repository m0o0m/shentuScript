--[[
print(type(package.loadlib))  --function
print(type(package.seeall))	--function
print(type(package.loaded))   --tb
print(type(package.preload))  --tb
print(type(package.cpath))    --string
print(type(package.path))     --string
print(type(package.config))	--string
--]]
--print(type(package.loaders))  --tb 5.1module库里怎么没看到这个
--[[
for k in pairs(package.loaded) do 
	print(k)
end
--]]
--[[
print(type(package))  --tb
print(type(string))  --tb
print(type(debug))  --tb
print(type(_G))  --tb
print(type(io))  --tb
print(type(os))  --tb
print(type(table))  --tb
print(type(math))  --tb
print(type(coroutine))  --tb
--]]
--[[
local f = assert(loadfile("module1.lua"))
f()
--]]
for k in pairs(_G) do 
	print(k)
end