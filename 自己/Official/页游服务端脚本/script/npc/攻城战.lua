local tCastleMgr = {}

function tCastleMgr:AllCastles()
    local tCastles = {"神歌城"};
    return tCastles;
end

function tCastleMgr:IsFirstBattle()
    local strFirstBattleTime = lualib:GetConstVar("CastleWar");
    local dwFirstBattleTime = lualib:Str2Time(strFirstBattleTime);
    local dwCurrentTime = lualib:GetAllTime();

    return dwFirstBattleTime > dwCurrentTime, strFirstBattleTime;
end

function tCastleMgr:IsBanDate(dwTime)
    local dwDateTime = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", dwTime));

    local strBanDates = lualib:GetConstVar("BanCastleDate");
    local tBanDate = string.split(strBanDates, ",");

    for _, v in pairs(tBanDate) do
        if lualib:Str2Time(v) == dwDateTime then
            return true;
        end
    end

    return false;
end

function tCastleMgr:IsValidCastle(strCastleName)
    return lualib:HasCastle(strCastleName);
end

function tCastleMgr:IsBattleStart(strCastleName)
    return lualib:IsCastleWarStart(strCastleName);
end

function tCastleMgr:IsDefenceSide(strCastleName, strPlayer)
    return lualib:GetCastleOwnFamily(strCastleName) == lualib:Name(lualib:GuildGuid(strPlayer));
end

function tCastleMgr:IsAttackSide(strCastleName, strPlayer)
    local strAttackFamilys = lualib:GetCastleAttackFamily(strCastleName);

    local tAttackFamilys = string.split(strAttackFamilys, "&");
    for _, v in pairs(tAttackFamilys) do
        if v == lualib:Name(lualib:GuildGuid(strPlayer)) then
            return true;
        end
    end

    return false;
end

function tCastleMgr:HasCastle(strCastleName)
    for _, v in pairs(self:AllCastles()) do
        if v == strCastleName then
            return true;
        end
    end
    return false;
end

function tCastleMgr:RegisterBattle(strCastleName, strPlayer, dwStartTime, dwDuration)
    local strAttack = lualib:Name(lualib:GuildGuid(strPlayer));

    if lualib:IsCastleWarNull(strCastleName) then
        return lualib:StartCastleWarEx(strCastleName, strAttack, dwStartTime, dwDuration);
    else
        local tAttacks = {strAttack};
        return lualib:ModifyCastleAttacks(strCastleName, tAttacks, false);
    end
end

function tCastleMgr:GetOwner(strCastleName)
    return lualib:GetCastleOwnFamily(strCastleName);
end

function tCastleMgr:GetAttacker(strCastleName)
    return lualib:GetCastleAttackFamily(strCastleName);
end

function tCastleMgr:GetBattleTime(strCastleName)
    return lualib:QueryCastleStart(strCastleName);
end

local tBattleTime = {};

--T+N算法返回明天晚上八点的秒数
tBattleTime["TN"] = function ()  
    local T = 72000;        --从00:00:00到20:00:00的秒数
    local N = 86400;        --24小时的秒数   
    local strTodayDate = lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime());
    return lualib:Str2Time(strTodayDate) + T + N;
end

--WEEK算法返回每周五晚上八点的秒数,如果该周五晚八点时间已过则返回下周五晚八点
tBattleTime["WEEK"] = function ()
    local N = 86400;                    --24小时的秒数 
    local T = N * 6 + 72000;            --周五晚八点的秒数
    local dwWeek = lualib:GetWeek(0);   --返回今天的周
    local dwTime = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime())); --返回今天00:00:00的秒数

    dwTime = dwTime - ((dwWeek + 1) * N) + T;--算出本周五晚八点的秒数
    if dwTime < lualib:GetAllTime() then
        return dwTime + N * 7;
    end

    return dwTime;
end

function main(strNpc, strPlayer)
    local strMsg = "我是攻城战管理员!\n\n";
    strMsg = strMsg.."<@SelectBattle *01*申请攻城攻>\n";
    strMsg = strMsg.."<@QueryBattle *01*查询攻城战>\n\n";
    strMsg = strMsg.."<@Leave *01*离开>";

    return strMsg;
end

function SelectBattle(strNpc, strPlayer)
    local strMsg = "请选择要攻打的城堡!\n\n";

    for _, v in pairs(tCastleMgr:AllCastles()) do
        strMsg = strMsg.."<@RegisterBattle#"..v.." *01*"..v..">\n";
    end

    strMsg = strMsg.."\n";
    strMsg = strMsg.."<@main *01*返回>";

    return strMsg;
end

function RegisterBattle(strNpc, strPlayer, strCastleName)
    assert(strCastleName ~= "");
    assert(tCastleMgr:HasCastle(strCastleName));

    local dwTime = tBattleTime:TN();--使用T+N时间
    --local dwTime = tBattleTime:WEEK();--使用每周五晚八点时间

    if tCastleMgr:IsBanDate(dwTime) then
        return "下一次攻城时间"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwTime).."为节假日,服务器禁止攻城!\n\n<@Leave *01*离开>";
    end

    --判断城堡是否存在
    if not tCastleMgr:IsValidCastle(strCastleName) then
        return "系统错误,服务器中不存在该城堡!\n\n<@Leave *01*离开>";
    end

    --判断攻城是否开始
    if tCastleMgr:IsBattleStart(strCastleName) then
        return "攻城已经开始了,请下次再来吧!\n\n<@Leave *01*离开>";
    end

    --判断首次攻城
    local bFirstBattle, strFirstBattle = tCastleMgr:IsFirstBattle();
    if bFirstBattle then
        return "首次攻城必须由GM开启,玩家无法申请.\n首次攻城时间为:"..strFirstBattle.."!\n\n<@Leave *01*离开>";
    end

    --判断是否为行会会长
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "只有行会会长才能申请攻城!\n\n<@Leave *01*离开>";
    end

    --判断是否为守城方
    if tCastleMgr:IsDefenceSide(strCastleName, strPlayer) then
        return "不能攻打本行会占有的城堡!\n\n<@Leave *01*离开>";
    end

    --判断是否为攻城方
    if tCastleMgr:IsAttackSide(strCastleName, strPlayer) then
        return "不能重复申请!\n\n<@Leave *01*离开>";
    end

    --判断是否有城战令牌
    if lualib:ItemCount(strPlayer, "城战令牌") < 1 then
        return "申请攻城战需要一个城战令牌!\n\n<@Leave *01*离开>";
    end

    --判断是否有足够的金钱
    if not lualib:Player_IsGoldEnough(strPlayer, 500000, false) then
        return "申请攻城需要非绑定金币500000用来筹备战斗物资!\n\n<@Leave *01*离开>";
    end

    --扣除城战令牌
    if not lualib:DelItem(strPlayer, "城战令牌", 1, 2, "删物品：攻场战申请表单", "攻城战管理员") then
        return "请确认城战令牌在你的背包里!\n\n<@Leave *01*离开>";
    end

    --扣除金币
    if not lualib:Player_SubGold(strPlayer, 500000, false, "扣金币：攻城战申请花费", "攻城战管理员") then
        return "扣除金币失败!\n\n<@Leave *01*离开>";
    end

    --注册攻城申请
    if not tCastleMgr:RegisterBattle(strCastleName, strPlayer, dwTime, 7200) then
        return "系统错误,申请攻城战失败!\n\n<@Leave *01*离开>";
    end

    return "申请攻城战成功,攻城时间为:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwTime).."!\n\n<@Leave *01*离开>";
end

function QueryBattle(strNpc, strPlayer)
    local strMsg = "请选择要查询的城堡!\n\n";

    for _, v in pairs(tCastleMgr:AllCastles()) do
        strMsg = strMsg.."<@ShowBattle#"..v.." *01*"..v..">\n";
    end

    strMsg = strMsg.."\n";
    strMsg = strMsg.."<@main *01*返回>";

    return strMsg;
end

function ShowBattle(strNpc, strPlayer, strCastleName)
    assert(strCastleName ~= "");
    assert(tCastleMgr:HasCastle(strCastleName));

    --判断城堡是否存在
    if not tCastleMgr:IsValidCastle(strCastleName) then
        return "系统错误,服务器中不存在该城堡!\n\n<@Leave *01*离开>";
    end

    local strMsg = strCastleName.."攻城战信息:\n\n";
    local strOwner = tCastleMgr:GetOwner(strCastleName);
    if strOwner == "" then
        strOwner = "无";
    end
    
    local strAttacker = tCastleMgr:GetAttacker(strCastleName);
    if strAttacker == "" then
        strAttacker = "无";
    else
        strAttacker = string.gsub(strAttacker, "&", " ");
    end
    
    strMsg = strMsg.."守城方:"..strOwner.."\n";
    strMsg = strMsg.."攻城方:"..strAttacker.."\n";

    local dwBattleTime = tCastleMgr:GetBattleTime(strCastleName);
    if dwBattleTime == 0 then
        strMsg = strMsg.."攻城时间:无!\n\n<@Leave *01*离开>";
    else
        strMsg = strMsg.."攻城时间:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwBattleTime).."!\n\n<@Leave *01*离开>";
    end

    return strMsg;
end

function Leave(strNpc, strPlayer)
    return "";
end
