local num = 12
print(type(num))


local str = "a"
local num1 
print(type(str))
num1 = tonumber(str)
print(type(num1))   -->nil


local num2 = 10
local str2 = tostring(num2)
print(type(str2))
 
str3 = "this string"
str4 = string.gsub(str3,"this","that")
print(str4)
str5 = string.sub(str3,1,6)
print(str5)
print(#str5)


local a = #str5
print(a)

print(str3..str4..str5..a)