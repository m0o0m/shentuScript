local s = "123456"
s = string.sub(s,1,2) --������������ȡ����
						---��find�Ǹ�����������������
print(s)
local s2 = '123456'
print(s2:sub(s2:find('12')))  --sub �� find �������෴�Ĳ���

local s3 = '�����й���'
local i,j = s3:find('��')
print(i,j)
