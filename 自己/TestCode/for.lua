--[[for i=1,50,5 do 
	print("���ã�����")
end
--]]


--break ����ѭ��,���������һ��ѭ������ѭ��������
--[[
local a = {1,2,3,4,5,6,7,8,9}
for j = 1 , 2 do 
	for i=1,#a do 
		
		if i <= 5 then 
			print(i)
		else
			break
		end
		print("�Ƿ�����ѭ����ѭ���Ƿ������i="..i)
	end
	
	print("��ѭ��j="..j)
end

--]]


for i = 1, 0 do 
	print("123")
end