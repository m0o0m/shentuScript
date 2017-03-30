local times = 3600
local buff = "����˫������1Сʱ"

function main(player, item)
    local servant_t = lualib:Player_GetServantList(player)
    if servant_t == nil or table.getn(servant_t) == 0 then
        lualib:SysMsg_SendWarnMsg(player, "��û�г���þ���ֻ�����ڵ�ʿ�ͷ�ʦ�ٻ��ı�����")
        return false 
    end

    for _, v in pairs(servant_t) do
        if lualib:Player_IsServantNear(player, v) == false then
            lualib:SysMsg_SendWarnMsg(player, "����һ������������ù�Զ��")
            return false 
        end
    end

    for _, v in pairs(servant_t) do
        if not lualib:Monster_AddBuff(v, buff, times) then
            lualib:SysMsg_SendWarnMsg(player, "ʹ�ó��ﾭ�����ʧ�ܣ�")
            return false
        end
    end

    lualib:SysMsg_SendPromptMsg(player, "ʹ�ó��ﾭ�����ɹ���")
    return true
end