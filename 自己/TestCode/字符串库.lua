local str = "���"
local a , b = string.find(str,"��")
print(a,b)  ---�� 34,��ʾ����ռ�õ����͵��������ֽ�

local num = 0
local s = "12���﹥��ʯ"
local ss = string.match(s,"��".."(.-)".."��")
if ss == "�﹥" then 
	print("ƥ�䵽��")
end
print(ss)

local sn = string.match(s,"(%d+)")
print(sn)



local str2 = "��;��;��;��;��;"
local w_tb = {}
for w in string.gmatch(str2,"(.-)"..";") do 
	w_tb[#w_tb] = w
	print(w)
end