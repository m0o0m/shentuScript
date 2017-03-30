local times = 3600
local buff = "宝宝双倍经验1小时"

function main(player, item)
    local servant_t = lualib:Player_GetServantList(player)
    if servant_t == nil or table.getn(servant_t) == 0 then
        lualib:SysMsg_SendWarnMsg(player, "你没有宠物！该卷轴只适用于道士和法师召唤的宝宝！")
        return false 
    end

    for _, v in pairs(servant_t) do
        if lualib:Player_IsServantNear(player, v) == false then
            lualib:SysMsg_SendWarnMsg(player, "您的一个或多个宠物离得过远！")
            return false 
        end
    end

    for _, v in pairs(servant_t) do
        if not lualib:Monster_AddBuff(v, buff, times) then
            lualib:SysMsg_SendWarnMsg(player, "使用宠物经验卷轴失败！")
            return false
        end
    end

    lualib:SysMsg_SendPromptMsg(player, "使用宠物经验卷轴成功！")
    return true
end