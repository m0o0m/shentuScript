tb = {1,3,15,2,14,6,5,7,9}

--�������һ������ʱ,����ʹ��sort������Ԫ�ؽ�������,��Ԫ����һ����ʱ,����Ҫ��һ��������������
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

--��ѡ�Ĵ�����  --�����Ҫ��һ�������ڵڶ�������ǰ,��Ӧ�÷���true
function comps(a, b)    --lua�ֲ�,If comp is given, then it must be a function that receives two [table elements],and returns true when the first is less than the second
	return a[1] < b[1]  
end
	--[[						
	--so that  not comp(a[i+1],a[i])  will be true after the sort
	--table.sort���е�ʱ��ذ�tb2[i+1]��ֵ��b,��tb2[i]��ֵ��a[i]	
	--]]--��Ҫ��					
table.sort(tb2, comps) 
    
for i = 1, #tb2 do 
	print(tb2[i][1])
end


table.sort(