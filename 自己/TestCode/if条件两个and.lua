local a = {4,5,6}


for i = 1 , 4 do 
	local b = a[i]
	if b ~= nil and b ~= 0 and b ~= 1 then 
		if b == 4 then
			print("����i="..i)
		elseif b == 5 then 
			print("����i="..i)
		else
			print("����i="..i)
		end
	else 
		print("����else,i="..i)
	end
end