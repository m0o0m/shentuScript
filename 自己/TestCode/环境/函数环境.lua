--[[
function a()
	print("���")
end
local b = {1,2,3,4}
setfenv(a,b)
print(#getfenv(a))
--]]

a = 1
local newfenv = {}  -- �����»������൱�ڴ�����ȫ�ֱ�
setmetatable(newfenv,{__index = _G})  --��ȫ�ֱ���Ϊ�»�����Ԫ��
setfenv(1,newfenv)  -- 1��ʾ��ǰ��������lua��chunk��Ϊһ������ִ��
--print(a)           --�»�����ԭ�����м̳���print��a
print(getfenv(1))
local tb = getfenv(1)
print("" .. #tb)
for k in pairs(tb) do 
	print(k)
end
--[[
a = 10
print(a)     --> 10
print(_G.a)  --> 1
_G.a = 20
print(_G.a)  --> 20

--]]