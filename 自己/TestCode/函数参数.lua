x = 1
function f(x)
	local y = x 
	return y 
end

--print(f())


function text(...)
	local PARAM = {...}
	for k, v in ipairs(PARAM) do 
		print(v)
	end
	
end


text(1,2,3,4,5,6)