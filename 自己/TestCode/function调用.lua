function a(param)
	print(param)
end
--[[
local v = "a('��a��')"
local func = loadstring(v)
if func ~= nil then
	func()
end

--]]



