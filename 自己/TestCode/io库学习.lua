
--[[如果在Windows下（……Linux行不行不知道）
obj=io.popen("cd")  
--如果不在交互模式下，前面可以添加local 
path=obj:read("*all"):sub(1,-2)    --path存放当前路径, 至于sub(1,-2)是为了去掉换行符
obj:close()   --关掉句柄
上述原理是利用Windows的cd命令返回工作目录；
当然如果你有lua socks或者你有lfs（注意匹配你的Lua版本），你可以使用
lfs(Lua File System)
require("lfs")
path=lfs.currentdir().
这个则是Lua文件系统库中的函数。……就是这样
--]]
--[[
local a = io.popen("cd"):read("*all"):sub(1,-2)    --如何获取当前路径?
print(a)  --C:\Users\pc\Desktop\LUA\测试代码
 --]]
--[[
io.input("ioinput.lua") --不能绝对路径？ 路径问题：windows下路径分割必须用两个斜线，这是因为 \是转义序列。\\表示\本身 
local f = assert(io.open("C:\Users\pc\Desktop\LUA\测试代码\ioinput.lua","r")) --只使用\作分隔符是找不到路径的
local f = assert(io.open("C:\\Users\\pc\\Desktop\\LUA\\测试代码\\ioinput.lua","r"))
local f = assert(io.open("C:/Users/pc/Desktop/LUA/测试代码/ioinput.lua","r")) --io.open也可以使用 /做路径分割符号
local f = assert(io.open("环境\\module.lua","r")) --相对当前脚本路径也是可以的
local f = assert(io.open("环境/module.lua","r")) --也可以使用 /做路径分割符号
local t = f:read("*all")
print(t)
local a = io.popen("cd")
--]]
--[[
local f = assert(io.open("iooutput.lua","w"))
f:write("你好！！！")
assert(io.close(f))
--]]
--io.output("io_output.lua")
dofile("jd/CommonFun.lua")
dofile("io_output.lua")
zhuxunrun[1] = "你好！！！"
local f = assert(io.open("io_output.lua","w")) 
f:write("zhuxunrun = ","\n",serialize(zhuxunrun))
assert(io.close(f))
--io.output("io_output.lua") --直接清空了 沃日
--io.flush()














