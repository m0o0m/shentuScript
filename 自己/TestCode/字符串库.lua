local str = "你好"
local a , b = string.find(str,"好")
print(a,b)  ---》 34,表示好在占用第三和第四两个字节

local num = 0
local s = "12级物攻宝石"
local ss = string.match(s,"级".."(.-)".."宝")
if ss == "物攻" then 
	print("匹配到了")
end
print(ss)

local sn = string.match(s,"(%d+)")
print(sn)



local str2 = "大;河;向;东;流;"
local w_tb = {}
for w in string.gmatch(str2,"(.-)"..";") do 
	w_tb[#w_tb] = w
	print(w)
end