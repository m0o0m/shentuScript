--相对当前脚本路径实现跨路径
local f = assert(io.open("../UI实现测试/具名实参运用.lua","r")) --看清一开始是两个点，表示上一层目录。从而实现了跨路径
local t = f:read("*all")
print(t)