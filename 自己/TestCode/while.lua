--[[local a=10
local b=20
while a<b do 
print("���ã�����\n")
end--]]--��ѭ��

local a = 500
local i = 1
while i<a do 
	print("���ã���\n")
    i = i*2     --�趨i���޶�ѭ������
	if i == 128 then  
	print("ѭ����������\n")
	break
	end
end