local g = {1,2,3,4,5,6,7,8,9,["g"] = g}

--[[
for k in pairs(g.g) do 
	print(k)
end
--]]
--  _G._G = _G  ？？？？？？？？？？？？？？？？？？？？？？？怎么实现的不知道,,为什么要这样设计不知道


setmetatable(g,g)
g._index