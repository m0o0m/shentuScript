local tCastleMgr = {}

function tCastleMgr:AllCastles()
    local tCastles = {"����"};
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

--T+N�㷨�����������ϰ˵������
tBattleTime["TN"] = function ()  
    local T = 72000;        --��00:00:00��20:00:00������
    local N = 86400;        --24Сʱ������   
    local strTodayDate = lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime());
    return lualib:Str2Time(strTodayDate) + T + N;
end

--WEEK�㷨����ÿ�������ϰ˵������,�����������˵�ʱ���ѹ��򷵻���������˵�
tBattleTime["WEEK"] = function ()
    local N = 86400;                    --24Сʱ������ 
    local T = N * 6 + 72000;            --������˵������
    local dwWeek = lualib:GetWeek(0);   --���ؽ������
    local dwTime = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime())); --���ؽ���00:00:00������

    dwTime = dwTime - ((dwWeek + 1) * N) + T;--�����������˵������
    if dwTime < lualib:GetAllTime() then
        return dwTime + N * 7;
    end

    return dwTime;
end

function main(strNpc, strPlayer)
    local strMsg = "���ǹ���ս����Ա!\n\n";
    strMsg = strMsg.."<@SelectBattle *01*���빥�ǹ�>\n";
    strMsg = strMsg.."<@QueryBattle *01*��ѯ����ս>\n\n";
    strMsg = strMsg.."<@Leave *01*�뿪>";

    return strMsg;
end

function SelectBattle(strNpc, strPlayer)
    local strMsg = "��ѡ��Ҫ����ĳǱ�!\n\n";

    for _, v in pairs(tCastleMgr:AllCastles()) do
        strMsg = strMsg.."<@RegisterBattle#"..v.." *01*"..v..">\n";
    end

    strMsg = strMsg.."\n";
    strMsg = strMsg.."<@main *01*����>";

    return strMsg;
end

function RegisterBattle(strNpc, strPlayer, strCastleName)
    assert(strCastleName ~= "");
    assert(tCastleMgr:HasCastle(strCastleName));

    local dwTime = tBattleTime:TN();--ʹ��T+Nʱ��
    --local dwTime = tBattleTime:WEEK();--ʹ��ÿ������˵�ʱ��

    if tCastleMgr:IsBanDate(dwTime) then
        return "��һ�ι���ʱ��"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwTime).."Ϊ�ڼ���,��������ֹ����!\n\n<@Leave *01*�뿪>";
    end

    --�жϳǱ��Ƿ����
    if not tCastleMgr:IsValidCastle(strCastleName) then
        return "ϵͳ����,�������в����ڸóǱ�!\n\n<@Leave *01*�뿪>";
    end

    --�жϹ����Ƿ�ʼ
    if tCastleMgr:IsBattleStart(strCastleName) then
        return "�����Ѿ���ʼ��,���´�������!\n\n<@Leave *01*�뿪>";
    end

    --�ж��״ι���
    local bFirstBattle, strFirstBattle = tCastleMgr:IsFirstBattle();
    if bFirstBattle then
        return "�״ι��Ǳ�����GM����,����޷�����.\n�״ι���ʱ��Ϊ:"..strFirstBattle.."!\n\n<@Leave *01*�뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤�������빥��!\n\n<@Leave *01*�뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if tCastleMgr:IsDefenceSide(strCastleName, strPlayer) then
        return "���ܹ����л�ռ�еĳǱ�!\n\n<@Leave *01*�뿪>";
    end

    --�ж��Ƿ�Ϊ���Ƿ�
    if tCastleMgr:IsAttackSide(strCastleName, strPlayer) then
        return "�����ظ�����!\n\n<@Leave *01*�뿪>";
    end

    --�ж��Ƿ��г�ս����
    if lualib:ItemCount(strPlayer, "��ս����") < 1 then
        return "���빥��ս��Ҫһ����ս����!\n\n<@Leave *01*�뿪>";
    end

    --�ж��Ƿ����㹻�Ľ�Ǯ
    if not lualib:Player_IsGoldEnough(strPlayer, 500000, false) then
        return "���빥����Ҫ�ǰ󶨽��500000�����ﱸս������!\n\n<@Leave *01*�뿪>";
    end

    --�۳���ս����
    if not lualib:DelItem(strPlayer, "��ս����", 1, 2, "ɾ��Ʒ������ս�����", "����ս����Ա") then
        return "��ȷ�ϳ�ս��������ı�����!\n\n<@Leave *01*�뿪>";
    end

    --�۳����
    if not lualib:Player_SubGold(strPlayer, 500000, false, "�۽�ң�����ս���뻨��", "����ս����Ա") then
        return "�۳����ʧ��!\n\n<@Leave *01*�뿪>";
    end

    --ע�ṥ������
    if not tCastleMgr:RegisterBattle(strCastleName, strPlayer, dwTime, 7200) then
        return "ϵͳ����,���빥��սʧ��!\n\n<@Leave *01*�뿪>";
    end

    return "���빥��ս�ɹ�,����ʱ��Ϊ:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwTime).."!\n\n<@Leave *01*�뿪>";
end

function QueryBattle(strNpc, strPlayer)
    local strMsg = "��ѡ��Ҫ��ѯ�ĳǱ�!\n\n";

    for _, v in pairs(tCastleMgr:AllCastles()) do
        strMsg = strMsg.."<@ShowBattle#"..v.." *01*"..v..">\n";
    end

    strMsg = strMsg.."\n";
    strMsg = strMsg.."<@main *01*����>";

    return strMsg;
end

function ShowBattle(strNpc, strPlayer, strCastleName)
    assert(strCastleName ~= "");
    assert(tCastleMgr:HasCastle(strCastleName));

    --�жϳǱ��Ƿ����
    if not tCastleMgr:IsValidCastle(strCastleName) then
        return "ϵͳ����,�������в����ڸóǱ�!\n\n<@Leave *01*�뿪>";
    end

    local strMsg = strCastleName.."����ս��Ϣ:\n\n";
    local strOwner = tCastleMgr:GetOwner(strCastleName);
    if strOwner == "" then
        strOwner = "��";
    end
    
    local strAttacker = tCastleMgr:GetAttacker(strCastleName);
    if strAttacker == "" then
        strAttacker = "��";
    else
        strAttacker = string.gsub(strAttacker, "&", " ");
    end
    
    strMsg = strMsg.."�سǷ�:"..strOwner.."\n";
    strMsg = strMsg.."���Ƿ�:"..strAttacker.."\n";

    local dwBattleTime = tCastleMgr:GetBattleTime(strCastleName);
    if dwBattleTime == 0 then
        strMsg = strMsg.."����ʱ��:��!\n\n<@Leave *01*�뿪>";
    else
        strMsg = strMsg.."����ʱ��:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwBattleTime).."!\n\n<@Leave *01*�뿪>";
    end

    return strMsg;
end

function Leave(strNpc, strPlayer)
    return "";
end
