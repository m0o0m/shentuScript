--�ݹ��for������Ӧ����һ���İɣ��������ں����ĵ��ã���ͣ����������Ľ���
--����ͨ���Լ������Լ�ʵ�ֵݹ飬
function a(i)
	i = i + 1
	if i == 10 then
		print(i)
		return
	else
		a(i)  --���ݹ麯�����ں������ã����봫�ݲ�����ȥ�������޷����ʵ��ⲿ�����ľֲ������ģ�����һ���������ã�������һ���������壨��������ʽ����
	end
end

a(1)

--����forѭ����������ͨ���������ú�����ʵ�ֵ���������ĵ�����һ�̶ֹ�ģʽ�ĵݹ飬����û�����������Լ������Ǳ�for���õ�
tb = {1,2,3}
for k in pairs(tb) do 
	print(k)
end

--����ĵݹ���ʵҲ�ǵ����������ߣ�������һ���ģ����ǲ�ͣ�ĵ���ͬһ������������ÿ�ε���ʱ���ݲ�ͬ�Ĳ�����ȥ�����е�������

--�ݹ麯���ڵľֲ�����
function b()
	local tb = {1,2,3}
	return function()  
			local tb = {4,5,6}
			return tb
		   end
end



--[[tb3 = {}
function nilv()
	local i = "���"
	tb3[1] = i
	nilv()
end
nilv()--]]


--�ڲ���for�ĵݹ麯��ֱ�ӽ������񾭲�����ͣ�ĵݹ飬�ͻ᲻ͣ�Ŀ���ѭ����������for��forһ��
function copytab(tb)
	if type(tb) ~= "table" then   --�Դ������Ĳ������м��
        return tb
    end
	
	local tab = {}
	for k , v in pairs(tb) do 
		if type(v) ~= "table" then 
			tab[k] = v
		else
			tab[k] = copytab(v)  --�����ͷһ��һֱ���ȥ
		end
	end
	return tab
end

--����ѭ��������֪��ѭ��Ҫ���м��ε�ʱ�򣬿�����while����repreat������ݹ飬���ʵ�֣��о�ʵ�ֲ���
--[[
repeat
	local tab = {}
	for k , v in pairs(tb) do 
		if type(v) ~= "table" then 
			tab[k] = v
		else
			while type(v) == "table" do
				local tab = {}
				for k , v in pairs(tb) do 
					
				end
			end
		end
	end
until type(v) ~= "table"
--]]