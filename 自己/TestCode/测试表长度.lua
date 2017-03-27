a = {}
a.b = 1
a.c = 2
a.d = 3
a[1] = 1
print(#a)   --为什么表长度是0

local test1 = {[1] = 1 , [3] = 3 , [4] = 4 , [6] = 6 ,[2] = 2}
print(#test1)    --为什么会是6

local test2 = { ['a'] = 1, ['b'] = 2 ,['c'] = 3}
print(#test2)   --打印结果: 0 key必须是整形才能用#取。
