
s = "00000000000000"
s = "hello world from Lua"
for w in string.gmatch(s, "c%") do    --SB  %c ���� c%
	print(w)
end

local s2 = "123"
--print(#s2)
local char = string.sub(s2, 1, 1)
print(char)
--local s_tb = {}
--[[
for w in string.gmatch(s, "c%") do 
	s_tb[#s_tb + 1] = w
	print(w)
end
--]]

--[[
local a , b , c = string.gmatch(s,"(.-)#")
print(type(a),type(b),type(c))

local d,e,f = a()
print(type(d),type(e),type(f))
print(d)
print(a())
print(a())
print(a())
print(a())
print(a())
print(a())
--]]

--item_keyname = "12���﹥��ʯ"


--[[
item_keyname2 = "18"
local stoneType = string.match(item_keyname2,"��".."(.-)".."��")
print(stoneType)

local a = "000"
print(string.len(a))
print(#a)
local b = "�����й���"
print(string.len(b))
print(#b)
print(string.utf8len(b))
--]]


--local mon = 'Ѫɫ�Ǳ�����1'
--[[
local str = mon:match('(%D+)')
print(str)
--]]
