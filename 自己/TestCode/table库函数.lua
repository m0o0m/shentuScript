local a = 
{
	[1] = 1,
	[2] = 2,
	[3] = 3,
	[4] = 4,
	[5] = 5,
	[100] = 6,
	}

--[[
for k,v in pairs(a) do 	
	print(v)
end
table.remove(a,3)
for k,v in pairs(a) do 
	print(v)
end
--]]

--[[
table.remove(a,100)
for k,v in pairs(a) do 	
	print(v)
end
--]]

--���ɾ��table��ĳ����
a[100] = nil
for k,v in pairs(a) do 	
	print(v)
end


--lua ����һ�ű� ����
t =
{
[111] = {1,2,3}
}

--��ʲô�취���Խ� [111] �ĳ� [112] ��

t[111], t[112] = t[112], t[111]