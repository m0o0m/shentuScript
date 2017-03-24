marry_timer_id = 5201314
intimacy_limit_max = 20000
intimacy_limit_min = 2000
intimacy_recover_per_minite = 1
intimacy_left_per_day = 0.93

--登录和结婚后调用
function marry_load(player)
    lualib:AddTimer(player, marry_timer_id, 600000, -1, "marry_heartbeat")
    marry_heartbeat(player, marry_timer_id)
end

--离婚时调用
function marry_unload(player)
    lualib:SetInt(player, "intimacy", 0)
    lualib:DisableTimer(player, marry_timer_id)
end

function add_intimacy(player, value)
    local cur = lualib:GetInt(player, "intimacy")
    local new = cur + value

    if new > intimacy_limit_max then
        new = intimacy_limit_max
    elseif new < 0 then
        new = 0
    end
    
    if cur < intimacy_limit_min and new >= intimacy_limit_min then
        local cur_day = lualib:GetAllDays(lualib:GetTime())
        lualib:SetInt(player, "intimacy_day", cur_day)
    end    

    lualib:SetInt(player, "intimacy", new)
end

function marry_heartbeat(player, timer_id)
    --判断夫妻是否组队
    local spouse = lualib:GetStr(player, "配偶GUID")
    if spouse == "" then
        return
    end

    if lualib:Player_GetTeamGuid(player) ~= "" then
        local members = lualib:Player_GetTeamList(player)
        for i = 1, table.getn(members) do
            if spouse == members[i] then
                add_intimacy(player, intimacy_recover_per_minite)
                lualib:SysMsg_SendWarnMsg(player, "你与你的配偶获得了1点亲密度")
            end
        end
    end

    --跨天后扣除一定亲密度
    local last_day = lualib:GetInt(player, "intimacy_day")
    local cur_day = lualib:GetAllDays(lualib:GetTime())
    local cur = lualib:GetInt(player, "intimacy")
    
    if last_day == 0 then
        last_day = cur_day
        lualib:SetInt(player, "intimacy_day", cur_day)
    end

    local offday = cur_day - last_day
    if offday > 0 and cur > intimacy_limit_min then
        local cost = 0;
        for i = 1, offday do
            local new = math.ceil(cur * intimacy_left_per_day)
            cost = cost + (cur - new);
            cur = new           
        end
        
        lualib:SysMsg_SendWarnMsg(player, "随着时间的流逝，你与你的配偶亲密度下降了"..cost.."点")
        add_intimacy(player, -cost)
        lualib:SetInt(player, "intimacy_day", cur_day)
    end

    --根据亲密度判断该玩家身上的Buff等级
end
