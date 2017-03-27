--[[local a=10
local b=20
while a<b do 
print("您好！！！\n")
end--]]--死循环

local a = 500
local i = 1
while i<a do 
	print("您好！！\n")
    i = i*2     --设定i，限定循环次数
	if i == 128 then  
	print("循环结束！！\n")
	break
	end
end