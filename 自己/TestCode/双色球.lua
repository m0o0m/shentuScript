local tb_redall = {}  --��1��33�ĺ���
local tb_red = {}     --���н�����
local blue = 0        --���н�����
local zhongjiang = "" --������н����

--��������
for i=1,33 do 
	tb_redall[i]=i
end

--[[for k,v in pairs(red_all) do 
	print(v)
end--]]

--����������ظ���6�����򣬴���tb_red��	
local j = 0
for i=1,6 do 
	j = math.random(1,#tb_redall)
	table.insert(tb_red,tb_redall[j])
	table.remove(tb_redall,j)
end

--[[for k,v in pairs(tb_red) do
	print(v)
end--]]

--�������ĺ�������
table.sort(tb_red)

--[[for k,v in pairs(tb_red) do
	print(v)
end--]]

--�����������
blue = math.random(1,16)

--��ʽ�����������С��10��ǰ��Ҫ��0
local str_red = ""
for k,v in pairs(tb_red) do 
	if v < 10 then
		str_red =str_red .. 0 .. v .. " "
	 else 
	    str_red = str_red .. v .. " "
	end
end
--[[print(str)--]]

--��ʽ�����������С��10��ǰ��Ҫ��0
local str_blue = ""
if blue < 10 then
	str_blue = str_blue .. 0 .. blue 
else 
	str_blue =str_blue .. blue 
end
--[[print(str2)--]]

--�������н����
zhongjiang = str_red .. "|" .. " " .. str_blue
print("���ڵ��н�����Ϊ��" .. zhongjiang)