local s = "���"
print(''..#s)

local s2 = " "
print(''..#s2)


local s3 = "a1s����2��d��2����"
for w in string.gmatch(s3, ".") do    --SB  %c ���� c%
	print(w)
end


local s4
print(''..#s4)


