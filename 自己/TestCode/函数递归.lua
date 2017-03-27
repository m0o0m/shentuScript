--递归和for的流程应该是一样的吧，动力在于函数的调用，不停的驱动程序的进行
--函数通过自己调用自己实现递归，
function a(i)
	i = i + 1
	if i == 10 then
		print(i)
		return
	else
		a(i)  --【递归函数属于函数调用，必须传递参数进去，它是无法访问到外部函数的局部变量的，它是一个函数调用，并不是一个函数定义（函数构造式）】
	end
end

a(1)

--泛型for循环迭代器，通过主动调用函数来实现迭代，这里的迭代是一种固定模式的递归，函数没有主动调用自己，而是被for调用的
tb = {1,2,3}
for k in pairs(tb) do 
	print(k)
end

--这里的递归其实也是迭代，这两者，本质是一样的，都是不停的调用同一个函数，但是每次调用时传递不同的参数进去，进行迭代操作

--递归函数内的局部变量
function b()
	local tb = {1,2,3}
	return function()  
			local tb = {4,5,6}
			return tb
		   end
end



--[[tb3 = {}
function nilv()
	local i = "你好"
	tb3[1] = i
	nilv()
end
nilv()--]]


--内部有for的递归函数直接叫你变成神经病，不停的递归，就会不停的开启循环，就像是for中for一样
function copytab(tb)
	if type(tb) ~= "table" then   --对传进来的参数进行检查
        return tb
    end
	
	local tab = {}
	for k , v in pairs(tb) do 
		if type(v) ~= "table" then 
			tab[k] = v
		else
			tab[k] = copytab(v)  --像个钻头一样一直钻进去
		end
	end
	return tab
end

--都是循环，当不知道循环要进行几次的时候，可以用while或者repreat来代替递归，如何实现？感觉实现不了
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