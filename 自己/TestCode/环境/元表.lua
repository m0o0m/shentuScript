--[[

local mt = {}                           --����mtԪ��
function mt:NPCTalk(msg)                --mtԪ����
    print(msg)
end

function mt:new(instance)               --�̳�Ԫ��
    instance = instance or {}
    setmetatable(instance, self)
    self.__index = self
    return instance
end

lualib = mt:new()            --lualib��mt��Ϊ�Լ���Ԫ��
lualib:NPCTalk("�����NPC!")          --����Ԫ����

--]]

local g = {1,2,3,4,5}
setmetatable(g,g)
g.__index = g