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

--如何删除table中某个键
a[100] = nil
for k,v in pairs(a) do 	
	print(v)
end


--lua 里面一张表 比如
t =
{
[111] = {1,2,3}
}

--有什么办法可以讲 [111] 改成 [112] 吗？

t[111], t[112] = t[112], t[111]