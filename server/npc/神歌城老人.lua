local scheduled_id = 100001
local castle_var = "神歌城_atk_familys"

function on_create(npc)
    lualib:AddScheduled(scheduled_id, "攻城战开启", 4, {"5 20:00:00;"}, "on_castlewar_start", "")
end

function main(npc, player)
    local msg = "你想知道最近神歌城的攻城战役吗?\n \n"
	msg = "那些为神歌城洒出鲜血的都长埋于此了!\n \n"
    msg = msg.."<@InfoBattle *01*发起攻城战>\n"
    msg = msg.."<@QueryCastle *01*攻城战查询>\n"
    return msg
end

function InfoBattle(npc, player)
    local msg = "只有会长才能发起攻城战，此外还需要50万金币和一个祖玛头像。申请攻城后，将于周五晚上20：00开启城战！\n \n"
    msg = msg.."<@BattleConfirm *01*我符合条件，继续发起攻城战>\n"
    return msg
end

local castle_table = {"神歌城",}
function BattleConfirm(npc, player)
    local msg = "请选择要攻打的城堡\n \n"
    for k, v in pairs(castle_table) do
        msg = msg.."<@AttackCastle#"..k.." *01*"..v..">\n"
    end
    msg = msg.." \n"
    msg = msg.."<@main *01*「返回」>\n"
    return msg
end

function AttackCastle(npc, player, index)
    local start_time = lualib:CalcLocalTime(5, "20:00:00")
    local duration = 7200
	
	--local start_time = lualib:CalcLocalTime(1, "20:00:00")
	--local duration = 5 * 60

    if lualib:GetLocalTime() >= start_time then
        return "攻城时间已过，不能提交申请！\n申请时间：周一 00:00:00～周五 19:59:59\n \n<@BattleConfirm *01*「返回」>"
    end

    if lualib:Player_GetGuidProp(player, lua_role_guild_id) == "" then
        return "你没有行会！\n \n<@BattleConfirm *01*「返回」>"
    end

    if lualib:HasCastle(castle_table[tonumber(index)]) == false then
        return "城堡名称不存在！\n \n<@BattleConfirm *01*「返回」>"
    end

    if lualib:Player_IsGuildLeader(player) == false then
        return "你不是会长！\n \n<@BattleConfirm *01*「返回」>"
    end

    if lualib:Player_GetItemCount(player, "祖玛头像") < 1 then
        return "申请攻城战需要一个祖玛头像！\n \n<@BattleConfirm *01*「返回」>"
    end

    if not lualib:Player_IsGoldEnough(player, 500000, false) then
        return "你的金币不足500000。\n \n<@BattleConfirm *01*「返回」>"
    end

    local familys = ""
    local my_family_name = lualib:Player_GetStrProp(player, lua_role_guild)
    if lualib:IsCastleWarStart(castle_table[tonumber(index)]) == true then
        return "该城堡已经处于攻城状态。\n \n<@BattleConfirm *01*「返回」>"
    else
        familys = lualib:IO_GetCustomVarStr(castle_var)
        if lualib:IsInCollection(familys, my_family_name, "&") then
            return "您的行会已经获得【"..castle_table[tonumber(index)].."】的攻城权，请不要重复提交！\n \n<@BattleConfirm *01*「返回」>"
        end
        
        --[[
        if lualib:HasCastleWar(castle_table[tonumber(index)], my_family_name) then
            return "您的行会已经获得【"..castle_table[tonumber(index)].."】的攻城权，请不要重复提交！\n \n<@BattleConfirm *01*「返回」>"
        end

        local familys = lualib:StrSplit(lualib:GetCastleAttackFamily(castle_table[tonumber(index)]), "&")
        if table.getn(familys) >= 1 and familys[1] ~= "" then return familys[1].."行会已经获得【"..castle_table[tonumber(index)].."】的攻城权，您不能提交该申请！\n \n<@BattleConfirm *01*「返回」>" end
        ]]
    end

    if lualib:GetCastleOwnFamily(castle_table[tonumber(index)]) == my_family_name then
        return "不能攻打自己行会的城堡。\n \n<@BattleConfirm *01*「返回」>"
    end

	if not lualib:Player_DestroyItem(player, "祖玛头像", 1, "删物品：攻场战申请表单", player) then
        return "请确认城战令牌在你的背包里！\n \n<@BattleConfirm *01*「返回」>"
    end

    if not lualib:Player_SubGold(player, 500000, false, "扣金币：攻城战申请花费", player) then
        return "扣除金币失败！\n \n<@BattleConfirm *01*「返回」>"
    end

    --[[
    if lualib:StartCastleWar(castle_table[tonumber(index)], my_family_name, start_time, duration) == false then
        return "攻城战创建失败，系统忙。\n \n<@BattleConfirm *01*「返回」>"
    end
    ]]
    if familys == "" then
        familys = my_family_name
    else
        familys = familys.."&"..my_family_name
    end
    
    lualib:IO_SetCustomVarStr(castle_var, familys)
    
    lualib:SysMsg_SendBroadcastMsg(my_family_name.."行会对"..castle_table[tonumber(index)].."的攻城战将于本周五20：00分开始！", "系统通知")
    return "攻城申请提交成功！\n \n<@BattleConfirm *01*「返回」>"
end

function on_castlewar_start(scheduled_id, param)
    local start_time = lualib:CalcLocalTime(5, "20:00:00")
    local duration = 7200
    
    local familys = lualib:IO_GetCustomVarStr(castle_var)
    if familys == "" then return end
    
    if not lualib:StartCastleWarEx("神歌城", familys, start_time, duration) then
        lualib:Error("攻城战创建失败，系统忙。")
    end
    
    lualib:IO_SetCustomVarStr(castle_var, "")
end

function QueryCastle(npc, player)
    local msg = "请选择要查询的城堡\n \n"
    for k, v in pairs(castle_table) do
        msg = msg.."<@CastleInfo#"..k.." *01*"..v..">\n"
    end
    msg = msg.." \n"
    msg = msg.."<@main *01*「返回」>\n"
    return msg
end

function CastleInfo(npc, player, index)
    local msg = "【"..castle_table[tonumber(index)].."】\n \n"
    local defense = lualib:GetCastleOwnFamily(castle_table[tonumber(index)])
    --local attack_family_name = lualib:GetCastleAttackFamily(castle_table[tonumber(index)])
    local attack_family_name = lualib:IO_GetCustomVarStr(castle_var)
    local family_table = lualib:StrSplit(attack_family_name, "&")

    if family_table == nil or (table.getn(family_table) == 1 and family_table[1] == "") then
        msg = msg.."目前没有行会申请攻打！"
    else
        msg = msg.."攻城时间：周五 晚 20:00:00 \n"

        for _, v in pairs(family_table) do
            msg = msg.."攻城行会："..v.." \n"
        end

        if defense == "" then defense = "无" end
        msg = msg.."守城行会："..defense.." \n"
    end
    msg = msg.." \n \n"
    msg = msg.."<@QueryCastle *01*「返回」>\n"
    return msg
end
