local str = 
[[
	local a = 1 
	if a == 1 then
		��
		print("���")
		
	end
]]

assert(loadstring(str),"loadstring("..str..")��������")()