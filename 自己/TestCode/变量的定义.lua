function f()
	local ab  
	print(ab)
end

f()

--------------------------------------
--函数内部可以访问外部的局部变量
--例子1
local a1 = 1 
function f1()
	print(a1)
end
f1()
--例子2

local handle = 12345
function f2()
	handle = 123
end
f2()
print(handle)
---------------------------------------------
--函数内部定义全局变量,函数没有调用的时候，语句肯定不会执行，当调用函数调用了，语句就执行了，全局变量就定义了，外部是可以访问的
function f3()
	quanju = 111	
end
f3()
print(quanju)


----------------------------------------------
a = 1

a = b        -----因为b是nil

--print(a)

--print(b)

----------------------------------------



c = 1
d = 2
c = d        -----将d的值赋值给c

--print(c)

--print(d)


-----------------------------------------


e = 1

f = e        -----将e的值赋值给f

--print(e)

--print(f)


----------------------------------------------

--对象的话

local s = "你好！！"
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
--值传递
local a = 3

function f(x)
	x = x - 1
	return x 
end

--print(f(a))
--print(a)