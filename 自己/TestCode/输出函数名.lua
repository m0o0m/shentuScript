function a()
	return 1
end
local b = {[1] = a}
print(tostring(b[1]))