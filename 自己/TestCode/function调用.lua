function a(param)
	print(param)
end
--[[
local v = "a('ÄãaºÃ')"
local func = loadstring(v)
if func ~= nil then
	func()
end

--]]



