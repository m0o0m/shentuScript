--[[
function a()
	print("你好")
end
local b = {1,2,3,4}
setfenv(a,b)
print(#getfenv(a))
--]]

a = 1
local newfenv = {}  -- 创建新环境，相当于创建新全局表
setmetatable(newfenv,{__index = _G})  --将全局表作为新环境的元表
setfenv(1,newfenv)  -- 1表示当前函数，在lua中chunk作为一个函数执行
--print(a)           --新环境从原环境中继承了print和a
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