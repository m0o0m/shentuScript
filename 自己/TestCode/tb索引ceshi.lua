local tb = {1,2,3,4,5,6}
--[[print(tb[1])
print(tb["ni"])
print(tb["nsdad"])
--]]
--[[for i = 1 , 10 do
	if tb[i] then 
		print(tb[i])
	else 
		print("没有tb["..i.."]")
	end
end--]]

local str = "索引"
str = str .. tb[8]   --连接一个nil值就会出错
print(str)      

