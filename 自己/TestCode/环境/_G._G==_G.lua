local g = {1,2,3,4,5,6,7,8,9,["g"] = g}

--[[
for k in pairs(g.g) do 
	print(k)
end
--]]
--  _G._G = _G  ������������������������������������������������ôʵ�ֵĲ�֪��,,ΪʲôҪ������Ʋ�֪��


setmetatable(g,g)
g._index