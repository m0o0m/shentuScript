function f()
	local ab  
	print(ab)
end

f()

--------------------------------------
--�����ڲ����Է����ⲿ�ľֲ�����
--����1
local a1 = 1 
function f1()
	print(a1)
end
f1()
--����2

local handle = 12345
function f2()
	handle = 123
end
f2()
print(handle)
---------------------------------------------
--�����ڲ�����ȫ�ֱ���,����û�е��õ�ʱ�����϶�����ִ�У������ú��������ˣ�����ִ���ˣ�ȫ�ֱ����Ͷ����ˣ��ⲿ�ǿ��Է��ʵ�
function f3()
	quanju = 111	
end
f3()
print(quanju)


----------------------------------------------
a = 1

a = b        -----��Ϊb��nil

--print(a)

--print(b)

----------------------------------------



c = 1
d = 2
c = d        -----��d��ֵ��ֵ��c

--print(c)

--print(d)


-----------------------------------------


e = 1

f = e        -----��e��ֵ��ֵ��f

--print(e)

--print(f)


----------------------------------------------

--����Ļ�

local s = "��ã���"
local bool = true
--print(type(bool))

tb = {price = 1}
function tb.a(x)
	tb.price = x
	return tb.price 
end
--print(tb.a(2))


local tb1 = {}
--print(type(tb1))


-----------------------------------------------------
--ֵ����
local a = 3

function f(x)
	x = x - 1
	return x 
end

--print(f(a))
--print(a)