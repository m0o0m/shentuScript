--[[

local mt = {}                           --创建mt元表
function mt:NPCTalk(msg)                --mt元方法
    print(msg)
end

function mt:new(instance)               --继承元表
    instance = instance or {}
    setmetatable(instance, self)
    self.__index = self
    return instance
end

lualib = mt:new()            --lualib将mt做为自己的元表
lualib:NPCTalk("你点了NPC!")          --调用元方法

--]]

local g = {1,2,3,4,5}
setmetatable(g,g)
g.__index = g