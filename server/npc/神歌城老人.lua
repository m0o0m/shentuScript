local scheduled_id = 100001
local castle_var = "����_atk_familys"

function on_create(npc)
    lualib:AddScheduled(scheduled_id, "����ս����", 4, {"5 20:00:00;"}, "on_castlewar_start", "")
end

function main(npc, player)
    local msg = "����֪��������ǵĹ���ս����?\n \n"
	msg = "��ЩΪ����������Ѫ�Ķ������ڴ���!\n \n"
    msg = msg.."<@InfoBattle *01*���𹥳�ս>\n"
    msg = msg.."<@QueryCastle *01*����ս��ѯ>\n"
    return msg
end

function InfoBattle(npc, player)
    local msg = "ֻ�л᳤���ܷ��𹥳�ս�����⻹��Ҫ50���Һ�һ������ͷ�����빥�Ǻ󣬽�����������20��00������ս��\n \n"
    msg = msg.."<@BattleConfirm *01*�ҷ����������������𹥳�ս>\n"
    return msg
end

local castle_table = {"����",}
function BattleConfirm(npc, player)
    local msg = "��ѡ��Ҫ����ĳǱ�\n \n"
    for k, v in pairs(castle_table) do
        msg = msg.."<@AttackCastle#"..k.." *01*"..v..">\n"
    end
    msg = msg.." \n"
    msg = msg.."<@main *01*�����ء�>\n"
    return msg
end

function AttackCastle(npc, player, index)
    local start_time = lualib:CalcLocalTime(5, "20:00:00")
    local duration = 7200
	
	--local start_time = lualib:CalcLocalTime(1, "20:00:00")
	--local duration = 5 * 60

    if lualib:GetLocalTime() >= start_time then
        return "����ʱ���ѹ��������ύ���룡\n����ʱ�䣺��һ 00:00:00������ 19:59:59\n \n<@BattleConfirm *01*�����ء�>"
    end

    if lualib:Player_GetGuidProp(player, lua_role_guild_id) == "" then
        return "��û���лᣡ\n \n<@BattleConfirm *01*�����ء�>"
    end

    if lualib:HasCastle(castle_table[tonumber(index)]) == false then
        return "�Ǳ����Ʋ����ڣ�\n \n<@BattleConfirm *01*�����ء�>"
    end

    if lualib:Player_IsGuildLeader(player) == false then
        return "�㲻�ǻ᳤��\n \n<@BattleConfirm *01*�����ء�>"
    end

    if lualib:Player_GetItemCount(player, "����ͷ��") < 1 then
        return "���빥��ս��Ҫһ������ͷ��\n \n<@BattleConfirm *01*�����ء�>"
    end

    if not lualib:Player_IsGoldEnough(player, 500000, false) then
        return "��Ľ�Ҳ���500000��\n \n<@BattleConfirm *01*�����ء�>"
    end

    local familys = ""
    local my_family_name = lualib:Player_GetStrProp(player, lua_role_guild)
    if lualib:IsCastleWarStart(castle_table[tonumber(index)]) == true then
        return "�óǱ��Ѿ����ڹ���״̬��\n \n<@BattleConfirm *01*�����ء�>"
    else
        familys = lualib:IO_GetCustomVarStr(castle_var)
        if lualib:IsInCollection(familys, my_family_name, "&") then
            return "�����л��Ѿ���á�"..castle_table[tonumber(index)].."���Ĺ���Ȩ���벻Ҫ�ظ��ύ��\n \n<@BattleConfirm *01*�����ء�>"
        end
        
        --[[
        if lualib:HasCastleWar(castle_table[tonumber(index)], my_family_name) then
            return "�����л��Ѿ���á�"..castle_table[tonumber(index)].."���Ĺ���Ȩ���벻Ҫ�ظ��ύ��\n \n<@BattleConfirm *01*�����ء�>"
        end

        local familys = lualib:StrSplit(lualib:GetCastleAttackFamily(castle_table[tonumber(index)]), "&")
        if table.getn(familys) >= 1 and familys[1] ~= "" then return familys[1].."�л��Ѿ���á�"..castle_table[tonumber(index)].."���Ĺ���Ȩ���������ύ�����룡\n \n<@BattleConfirm *01*�����ء�>" end
        ]]
    end

    if lualib:GetCastleOwnFamily(castle_table[tonumber(index)]) == my_family_name then
        return "���ܹ����Լ��л�ĳǱ���\n \n<@BattleConfirm *01*�����ء�>"
    end

	if not lualib:Player_DestroyItem(player, "����ͷ��", 1, "ɾ��Ʒ������ս�����", player) then
        return "��ȷ�ϳ�ս��������ı����\n \n<@BattleConfirm *01*�����ء�>"
    end

    if not lualib:Player_SubGold(player, 500000, false, "�۽�ң�����ս���뻨��", player) then
        return "�۳����ʧ�ܣ�\n \n<@BattleConfirm *01*�����ء�>"
    end

    --[[
    if lualib:StartCastleWar(castle_table[tonumber(index)], my_family_name, start_time, duration) == false then
        return "����ս����ʧ�ܣ�ϵͳæ��\n \n<@BattleConfirm *01*�����ء�>"
    end
    ]]
    if familys == "" then
        familys = my_family_name
    else
        familys = familys.."&"..my_family_name
    end
    
    lualib:IO_SetCustomVarStr(castle_var, familys)
    
    lualib:SysMsg_SendBroadcastMsg(my_family_name.."�л��"..castle_table[tonumber(index)].."�Ĺ���ս���ڱ�����20��00�ֿ�ʼ��", "ϵͳ֪ͨ")
    return "���������ύ�ɹ���\n \n<@BattleConfirm *01*�����ء�>"
end

function on_castlewar_start(scheduled_id, param)
    local start_time = lualib:CalcLocalTime(5, "20:00:00")
    local duration = 7200
    
    local familys = lualib:IO_GetCustomVarStr(castle_var)
    if familys == "" then return end
    
    if not lualib:StartCastleWarEx("����", familys, start_time, duration) then
        lualib:Error("����ս����ʧ�ܣ�ϵͳæ��")
    end
    
    lualib:IO_SetCustomVarStr(castle_var, "")
end

function QueryCastle(npc, player)
    local msg = "��ѡ��Ҫ��ѯ�ĳǱ�\n \n"
    for k, v in pairs(castle_table) do
        msg = msg.."<@CastleInfo#"..k.." *01*"..v..">\n"
    end
    msg = msg.." \n"
    msg = msg.."<@main *01*�����ء�>\n"
    return msg
end

function CastleInfo(npc, player, index)
    local msg = "��"..castle_table[tonumber(index)].."��\n \n"
    local defense = lualib:GetCastleOwnFamily(castle_table[tonumber(index)])
    --local attack_family_name = lualib:GetCastleAttackFamily(castle_table[tonumber(index)])
    local attack_family_name = lualib:IO_GetCustomVarStr(castle_var)
    local family_table = lualib:StrSplit(attack_family_name, "&")

    if family_table == nil or (table.getn(family_table) == 1 and family_table[1] == "") then
        msg = msg.."Ŀǰû���л����빥��"
    else
        msg = msg.."����ʱ�䣺���� �� 20:00:00 \n"

        for _, v in pairs(family_table) do
            msg = msg.."�����л᣺"..v.." \n"
        end

        if defense == "" then defense = "��" end
        msg = msg.."�س��л᣺"..defense.." \n"
    end
    msg = msg.." \n \n"
    msg = msg.."<@QueryCastle *01*�����ء�>\n"
    return msg
end
