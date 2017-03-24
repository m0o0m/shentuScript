local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("include/����ս�淨")

function main(strNpc, strPlayer)
	local strMsg = "���ǳǱ�������.\n";
	strMsg = strMsg.."<@RepairCastleDoor *01* ����Ǳ�����>\n";
	strMsg = strMsg.."<@RepairPalaceDoor *01* ����ʹ�����>\n";
	strMsg = strMsg.."<@GenCastleGuard *01* ��ļ�Ǳ�������>\n\n";
	strMsg = strMsg.."<@RequestCastleWar *01* ���빥��ս>\n";
	strMsg = strMsg.."<@QueryCastleWar *01* ����ս��ѯ>\n\n";
	strMsg = strMsg.."<@Leave *01* �뿪>";
	
	return strMsg;
end

function RepairCastleDoor(strNpc, strPlayer)
	local strMsg = nil;
	
	if CCastle:IsCastleDoorDie() then
		strMsg = "�ؽ��Ǳ�������Ҫ100����:<@ReliveCastleDoor *01* ȷ��>\n\n";
	elseif CCastle:IsCastleDoorBreak() then
		strMsg = "����Ǳ�������Ҫ100����:<@RepairCastleDoorEx *01* ȷ��>\n\n";
	else
		strMsg = "�Ǳ������������,��������.\n\n";
	end
	
	strMsg = strMsg.."<@main *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function ReliveCastleDoor(strNpc, strPlayer)
	local strMsg = "";
	
	---�����ж�
	--�жϹ����Ƿ�ʼ
    if CCastle:IsBattleStart() then
        return "�����ڼ䲻�����ؽ��Ǳ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤�����ؽ��Ǳ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if not CCastle:IsDefenceSide(strPlayer) then
        return "��û�иóǱ��Ĺ���Ȩ!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end
	
	CCastle:ReliveCastleDoor();
	strMsg = "�ؽ��Ǳ����ųɹ�.\n\n";
	strMsg = strMsg.."<@main *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function RepairCastleDoorEx(strNpc, strPlayer)
	local strMsg = "";
	
	
	---�����ж�
	--�жϹ����Ƿ�ʼ
    if CCastle:IsBattleStart() then
        return "�����ڼ䲻��������Ǳ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤��������Ǳ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if not CCastle:IsDefenceSide(strPlayer) then
        return "��û�иóǱ��Ĺ���Ȩ!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end
	
	CCastle:RepairCastleDoor();
	strMsg = "����Ǳ����ųɹ�.\n\n";
	strMsg = strMsg.."<@main *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function RepairPalaceDoor(strNpc, strPlayer)
	local strMsg = "��Ҫ����ʹ�������?\n";
	strMsg = strMsg.."<@RepairPalaceDoorEx#1 *01*��߲���>    <@RepairPalaceDoorEx#2 *01*�м����>    <@RepairPalaceDoorEx#3 *01*�ұ߲���>\n\n"
	strMsg = strMsg.."<@main *01* ����>    <@Leave *01* �뿪>";
	
	return strMsg;
end

function RepairPalaceDoorEx(strNpc, strPlayer, iDoorIdx)
	local i = tonumber(iDoorIdx);
	
	if CCastle:IsPalaceDoorDie(i) then
		strMsg = "�ؽ��ʹ�������Ҫ100����:<@RelivePalaceDoor#"..iDoorIdx.." *01* ȷ��>\n\n";
	elseif CCastle:IsPalaceDoorBreak(i) then
		strMsg = "����ʹ�������Ҫ100����:<@RepairPalaceDoorEx2#"..iDoorIdx.." *01* ȷ��>\n\n";
	else
		strMsg = "�ʹ������������,��������.\n\n";
	end
	
	strMsg = strMsg.."<@RepairPalaceDoor *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function RelivePalaceDoor(strNpc, strPlayer, iDoorIdx)
	local strMsg = "";
	
	---�����ж�
	--�жϹ����Ƿ�ʼ
    if CCastle:IsBattleStart() then
        return "�����ڼ䲻�����ؽ��ʹ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤�����ؽ��ʹ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if not CCastle:IsDefenceSide(strPlayer) then
        return "��û�иóǱ��Ĺ���Ȩ!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end
	
	CCastle:RelivePalaceDoor(tonumber(iDoorIdx));
	strMsg = "�ؽ��ʹ����ųɹ�.\n\n";
	strMsg = strMsg.."<@main *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function RepairPalaceDoorEx2(strNpc, strPlayer, iDoorIdx)
	local strMsg = "";
	
	
	---�����ж�
	--�жϹ����Ƿ�ʼ
    if CCastle:IsBattleStart() then
        return "�����ڼ䲻��������ʹ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤��������ʹ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if not CCastle:IsDefenceSide(strPlayer) then
        return "��û�иóǱ��Ĺ���Ȩ!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end
	
	CCastle:RepairPalaceDoor(tonumber(iDoorIdx));
	strMsg = "����ʹ����ųɹ�.\n\n";
	strMsg = strMsg.."<@main *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function GenCastleGuard(strNpc, strPlayer)
	local iCount, iMax = CCastle:CurCastleGuardCount(), CCastle:MaxCastleGuardCount();
	if iCount == iMax then
		return "������ļ��������!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	else
		return "��������"..(iMax - iCount).."������!    <@GenCastleGuardEx *01* ��ļ>\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
end

function GenCastleGuardEx(strNpc, strPlayer)
	local strMsg = "";
	
	---�����ж�
	--�жϹ����Ƿ�ʼ
    if CCastle:IsBattleStart() then
        return "�����ڼ䲻������ļ����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤���ܲ�������ļ����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if not CCastle:IsDefenceSide(strPlayer) then
        return "��û�иóǱ��Ĺ���Ȩ!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end
	
	CCastle:ReliveCastleGuard();
	strMsg = "�ɹ���ļ1������!\n\n";
	strMsg = strMsg.."<@GenCastleGuard *01* ����>    <@Leave *01* �뿪>";
	return strMsg;
end

function RequestCastleWar(strNpc, strPlayer)
	--���ж��Ƿ񿪷���һ�ι���
	local dwTime;
	local strCastleWar = lualib:GetConstVar("CastleWar");
    dwTime = ((strCastleWar == "") and 0 or lualib:Str2Time(strCastleWar));
	if dwTime > lualib:GetAllTime() then
		return "������һ�ι�����ϵͳ�Զ�����,���´�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
	end
	
	dwTime = CCastle:GenTNTime();--ʹ��T+Nʱ��

    --�жϹ����Ƿ�ʼ
    if CCastle:IsBattleStart() then
        return "�����Ѿ���ʼ��,���´�������!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�л�᳤
    if not lualib:Player_IsGuildLeader(strPlayer) then
        return "ֻ���л�᳤�������빥��!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ�سǷ�
    if CCastle:IsDefenceSide(strPlayer) then
        return "���ܹ����л�ռ�еĳǱ�!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --�ж��Ƿ�Ϊ���Ƿ�
    if CCastle:IsAttackSide(strPlayer) then
        return "�����ظ�����!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    --ע�ṥ������
    if not CCastle:RegisterBattle(strPlayer, dwTime, 7200) then
        return "ϵͳ����,���빥��սʧ��!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    return "���빥��ս�ɹ�,����ʱ��Ϊ:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwTime).."!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
end

function QueryCastleWar(strNpc, strPlayer)	
    local strMsg = "����ս��Ϣ:\n\n";
    local strOwner = CCastle:GetOwner();
    if strOwner == "" then
        strOwner = "��";
    end
    
    local strAttacker = CCastle:GetAttacker();
    if strAttacker == "" then
        strAttacker = "��";
    else
        strAttacker = string.gsub(strAttacker, "&", " ");
    end
    
    strMsg = strMsg.."�سǷ�:"..strOwner.."\n";
    strMsg = strMsg.."���Ƿ�:"..strAttacker.."\n";

    local dwBattleTime = CCastle:GetBattleTime();
    if dwBattleTime == 0 then
        strMsg = strMsg.."����ʱ��:��!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    else
        strMsg = strMsg.."����ʱ��:"..lualib:Time2Str("%Y-%m-%d %H:%M:%S", dwBattleTime).."!\n\n<@main *01* ����>    <@Leave *01* �뿪>";
    end

    return strMsg;
end

function Leave(strNpc, strPlayer)
	return "";
end