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