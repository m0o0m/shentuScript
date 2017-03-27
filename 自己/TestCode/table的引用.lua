--table永远是“匿名的”，一个持有table的变量和table自身之间没有固定的关联性

local a = {1,2,3,4}
b = a 
--[[
for _,v in pairs(b) do
	print(v)
end
--]]
--[[
a = nil  --只是消除了a对table的引用而已，表本身还是存在的，还有b指向它，要是没有引用指向这个table，他就被垃圾回收

for _,v in pairs(b) do
	print(v)
end
--print(b[1])

a.new = "你好"  -- 一旦改变表结构，全有的引用都将产生效果

for _,v in pairs(b) do
	print(v)
end

--]]
a = {7,8,9}
for _,v in pairs(b) do
	print(v)
end


local tb = {
		[1] = {1,2,3},
		[2] = {4,5,6},
		[3] = {7,8,9},
}

local tb2 = tb[2]

tb[2][1] = 123456  --对表中表进行修改，看看tb2会不会改变，看看它是引用还是对象
print(tb2[1])   --123456,他也改变了，所以说他只是引用而已，【要想重新创建一份，必须用构造式{}重新构造一个表出来】
				--所以要复制一个表，不是简单的赋值操作就可以的，那只是多加了一个引用，指向的实体还是原来的实体