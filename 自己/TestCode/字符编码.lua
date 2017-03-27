local str = "\123"
print(str)

print(string.byte("你好",1,6))


local a = " 1"
local b = "1"
if a == b then
	print("相等")
else
	print(" 不相等")
end
print(#a)

--[[
for i = 1 , 100 do 
	print(string.char(i))
end
--]]

print(string.char(50))

