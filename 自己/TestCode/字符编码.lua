local str = "\123"
print(str)

print(string.byte("���",1,6))


local a = " 1"
local b = "1"
if a == b then
	print("���")
else
	print(" �����")
end
print(#a)

--[[
for i = 1 , 100 do 
	print(string.char(i))
end
--]]

print(string.char(50))

