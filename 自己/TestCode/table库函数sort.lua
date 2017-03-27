tb = {1,3,15,2,14,6,5,7,9}

--这个表是一个数组时,可以使用sort对数组元素进行排序,当元素是一个表时,就需要加一个次数函数参数
table.sort(tb)
for i = 1, #tb do 
	print(tb[i])
end

tb2 = 
{
	{5,1},
	{4,2},
	{6,1},
	{7,2},
	{3,3},
	{2,1},
	{1,4},
}

--可选的次序函数  --如何需要第一个参数在第二个参数前,就应该返回true
function comps(a, b)    --lua手册,If comp is given, then it must be a function that receives two [table elements],and returns true when the first is less than the second
	return a[1] < b[1]  
end
	--[[						
	--so that  not comp(a[i+1],a[i])  will be true after the sort
	--table.sort运行的时候回把tb2[i+1]赋值给b,把tb2[i]赋值给a[i]	
	--]]--不要管					
table.sort(tb2, comps) 
    
for i = 1, #tb2 do 
	print(tb2[i][1])
end


table.sort(