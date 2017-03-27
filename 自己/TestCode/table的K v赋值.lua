--[[local a = "wugong"
local b = {} 
b[a] = 1
print(b[a])
print(a)--]]



local tb = {}
for i = 0 ,20 do 
	tb[i] = i 
end	

for k,v in pairs(tb) do 
	print(v)
end

