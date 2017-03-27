local str = "12 31#weq e#eda   s  d#sd as#dsadsda#sda d "
str = string.gsub(str,"%s","")  --ÌÞ³ý×Ö·û´®¿Õ¸ñ
print(str)
local tb = {}
local i = 1
for p in string.gmatch(str,"[^#]+") do 
	print(p)
	tb[i] = p
	i = i + 1
end

print(tb[1])