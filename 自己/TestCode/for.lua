--[[for i=1,50,5 do 
	print("您好！！！")
end
--]]


--break 跳出循环,跳出最近的一个循环，外循环不跳出
--[[
local a = {1,2,3,4,5,6,7,8,9}
for j = 1 , 2 do 
	for i=1,#a do 
		
		if i <= 5 then 
			print(i)
		else
			break
		end
		print("是否跳出循环，循环是否继续，i="..i)
	end
	
	print("外循环j="..j)
end

--]]


for i = 1, 0 do 
	print("123")
end