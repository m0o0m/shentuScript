local str = 
[[
	local a = 1 
	if a == 1 then
		不
		print("你好")
		
	end
]]

assert(loadstring(str),"loadstring("..str..")发生错误")()