
--[[�����Windows�£�����Linux�в��в�֪����
obj=io.popen("cd")  
--������ڽ���ģʽ�£�ǰ��������local 
path=obj:read("*all"):sub(1,-2)    --path��ŵ�ǰ·��, ����sub(1,-2)��Ϊ��ȥ�����з�
obj:close()   --�ص����
����ԭ��������Windows��cd����ع���Ŀ¼��
��Ȼ�������lua socks��������lfs��ע��ƥ�����Lua�汾���������ʹ��
lfs(Lua File System)
require("lfs")
path=lfs.currentdir().
�������Lua�ļ�ϵͳ���еĺ�����������������
--]]
--[[
local a = io.popen("cd"):read("*all"):sub(1,-2)    --��λ�ȡ��ǰ·��?
print(a)  --C:\Users\pc\Desktop\LUA\���Դ���
 --]]
--[[
io.input("ioinput.lua") --���ܾ���·���� ·�����⣺windows��·���ָ����������б�ߣ�������Ϊ \��ת�����С�\\��ʾ\���� 
local f = assert(io.open("C:\Users\pc\Desktop\LUA\���Դ���\ioinput.lua","r")) --ֻʹ��\���ָ������Ҳ���·����
local f = assert(io.open("C:\\Users\\pc\\Desktop\\LUA\\���Դ���\\ioinput.lua","r"))
local f = assert(io.open("C:/Users/pc/Desktop/LUA/���Դ���/ioinput.lua","r")) --io.openҲ����ʹ�� /��·���ָ����
local f = assert(io.open("����\\module.lua","r")) --��Ե�ǰ�ű�·��Ҳ�ǿ��Ե�
local f = assert(io.open("����/module.lua","r")) --Ҳ����ʹ�� /��·���ָ����
local t = f:read("*all")
print(t)
local a = io.popen("cd")
--]]
--[[
local f = assert(io.open("iooutput.lua","w"))
f:write("��ã�����")
assert(io.close(f))
--]]
--io.output("io_output.lua")
dofile("jd/CommonFun.lua")
dofile("io_output.lua")
zhuxunrun[1] = "��ã�����"
local f = assert(io.open("io_output.lua","w")) 
f:write("zhuxunrun = ","\n",serialize(zhuxunrun))
assert(io.close(f))
--io.output("io_output.lua") --ֱ������� ����
--io.flush()














