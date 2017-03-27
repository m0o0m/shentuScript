local s = "123456"
s = string.sub(s,1,2) --根据索引来提取内容
						---而find是根据内容来查找索引
print(s)
local s2 = '123456'
print(s2:sub(s2:find('12')))  --sub 和 find 是两个相反的操作

local s3 = '我是中国人'
local i,j = s3:find('中')
print(i,j)
