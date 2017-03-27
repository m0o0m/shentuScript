local a = {

	[2] = 2,
	[3] = 3,
}
if not a[1] then 
	a[1] = 1   --在a[1]为nil的情况下,renmove不会成功的,所以要在给它附一个值
	table.remove(a,1)
end

print(a[1])


local t = {1,2,3,4,5,6,7,8,9}
--[[
for i = 1, 3 do 
	table.remove(t,i)  --这种移动方式是不对的,每次删除一个KEY,后面的元素都会往前移动
end
--]]
--print(t[1])


table.insert(t, 1, 10)
print(t[10])
print(t[2])
