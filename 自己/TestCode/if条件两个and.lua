local a = {4,5,6}


for i = 1 , 4 do 
	local b = a[i]
	if b ~= nil and b ~= 0 and b ~= 1 then 
		if b == 4 then
			print("进入i="..i)
		elseif b == 5 then 
			print("进入i="..i)
		else
			print("进入i="..i)
		end
	else 
		print("进入else,i="..i)
	end
end