
local t = {4,5,6,[1] = 1,[2] = 2, [3] = 3}
--print(#t)
for _ , v in pairs(t) do 
	print(v)
end

local t1 = {1,7,8,[2] = 2, [3] = 5}
for _ , v in pairs(t1) do 
	print(v)
end
print(t1[2])