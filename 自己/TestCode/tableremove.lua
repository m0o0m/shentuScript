local a = {

	[2] = 2,
	[3] = 3,
}
if not a[1] then 
	a[1] = 1   --��a[1]Ϊnil�������,renmove����ɹ���,����Ҫ�ڸ�����һ��ֵ
	table.remove(a,1)
end

print(a[1])


local t = {1,2,3,4,5,6,7,8,9}
--[[
for i = 1, 3 do 
	table.remove(t,i)  --�����ƶ���ʽ�ǲ��Ե�,ÿ��ɾ��һ��KEY,�����Ԫ�ض�����ǰ�ƶ�
end
--]]
--print(t[1])


table.insert(t, 1, 10)
print(t[10])
print(t[2])
