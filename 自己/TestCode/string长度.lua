local s = "你好"
print(''..#s)

local s2 = " "
print(''..#s2)


local s3 = "a1s阿萨2大d的2打算"
for w in string.gmatch(s3, ".") do    --SB  %c 不是 c%
	print(w)
end


local s4
print(''..#s4)


