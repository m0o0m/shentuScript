local tb = {1,2,3,4,5,6}
--[[print(tb[1])
print(tb["ni"])
print(tb["nsdad"])
--]]
--[[for i = 1 , 10 do
	if tb[i] then 
		print(tb[i])
	else 
		print("û��tb["..i.."]")
	end
end--]]

local str = "����"
str = str .. tb[8]   --����һ��nilֵ�ͻ����
print(str)      

