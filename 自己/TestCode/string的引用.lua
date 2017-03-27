local str1 = "你好"
local str2 = str1
--[[
str1 = nil
print(str2)
--]]
str1 = "nihao!"
print(str2)   --和table不一样