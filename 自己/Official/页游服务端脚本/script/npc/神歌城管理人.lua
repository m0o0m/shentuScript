local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local castle_name = "����"
local castle_weapon = "����֮ӡ"
local wall_table = {{"�����ʹ�", 6, "", "��ļ�����ؾ�", 100000, {{"north_wall_guard1", 348, 179}, {"north_wall_guard2", 358, 189}, {"north_wall_guard3", 345, 182}, {"north_wall_guard4", 355, 192}, {"north_wall_guard5", 342, 185}, {"north_wall_guard6", 352, 195}}, "��������1"},
                    {"������ǽ", 6, "", "��ļ�����ؾ�", 100000, {{"west_wall_guard1", 288, 152}, {"west_wall_guard2", 299, 141}, {"west_wall_guard3", 284, 156}, {"west_wall_guard4", 303, 137}, {"west_wall_guard5", 280, 160}, {"west_wall_guard6", 307, 133}}, "��������1"},
                    {"�ϲ���ǽ", 6, "", "��ļ�ϲ��ؾ�", 100000, {{"south_wall_guard1", 287, 238}, {"south_wall_guard2", 299, 250}, {"south_wall_guard3", 283, 234}, {"south_wall_guard4", 303, 254}, {"south_wall_guard5", 279, 230}, {"south_wall_guard6", 307, 258}}, "��������1"},
                    {"������ǽ", 6, "", "��ļ�����ؾ�", 100000, {{"east_wall_guard1", 384, 250}, {"east_wall_guard2", 396, 238}, {"east_wall_guard3", 380, 254}, {"east_wall_guard4", 400, 234}, {"east_wall_guard5", 376, 258}, {"east_wall_guard6", 404, 230}}, "��������1"}}

function main(npc, player)
	local msg = "     �Ǳ��������ߣ�ÿ�춼���Ե�����������ȡ����Ŷ���᳤�����Զ�����ȡһ�ݴ����� \n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@AwardLeader *01*���᳤������>\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@AwardMember *01*����Ա������>\n"
    --msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@AwardWeapon *01*����ȡ���������>\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@AwardInfo *01*������˵����>\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-2>#<@Recruit *01*���ؾ�����>\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*���뿪��>"
	return msg
end

function Leave(npc, player)
    return ""
end

function AwardInfo(npc, player)
    local msg = "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."�᳤�����ͻ�Ա����ÿ�춼������ȡһ�Σ�\n"
    msg = msg .. "�᳤�����Ľ�һ���Ϊ1000000��ÿ�η��سɹ��������������ӣ��ﵽ10�κ������ӣ�\n"
    --msg = msg .. "�������ֻ��ÿ��ռ������ʱ�ſ�����ȡ��ͬʱԭ�л���ӵ�е��������������ʧ��\n"
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function AwardLeader(npc, player)
    if not lualib:Player_IsGuildLeader(player) then return "ֻ�л᳤������ȡ�ý�����\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    local day_count = lualib:GetCastleCustomVarInt(castle_name, "award_leader_day_count")
    if day_count < lualib:GetAllDays(0) then return Award(npc, player, 1) end
    
    if day_count == lualib:GetAllDays(0) then return "������ÿ��ֻ����ȡһ�Σ�\n \n \n \n \n \n \n \n" end
    if day_count > lualib:GetAllDays(0) then return "ϵͳ����\n \n \n \n \n \n \n \n" end
    return "������ÿ��ֻ����ȡһ�Σ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function AwardMember(npc, player)
    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    local day_count = lualib:Player_GetCustomVarInt(player, "award_member_wscb_day_count")
    if day_count == 0 then return Award(npc, player, 2) end

    local all_day = lualib:GetAllDays(0)
    if day_count == all_day then return "������ÿ��ֻ����ȡһ�Σ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end
    if day_count > all_day then return "ϵͳ����\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    return Award(npc, player, 2)
end

function AwardWeapon(npc, player)
    if not lualib:Player_IsGuildLeader(player) then return "ֻ�л᳤������ȡ�ý�����\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    if lualib:IO_GetCustomVarStr("����_leader_weapon") == player then
        return "���Ѿ���ȡ���ˣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    local all_day = lualib:GetAllDays(0)
    local day_count = lualib:Player_GetCustomVarInt(player, "award_member_wscb_day_count")
    if day_count == all_day then 
	   return "ÿ��ֻ����ȡһ�Σ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" 
	end
    
    if lualib:ItemCountByKey(player, castle_weapon, true, true, true, 2) > 0 then
        return "���Ѿ�ӵ����������ˣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end
    
    lualib:IO_SetCustomVarStr("����_leader_weapon", player)
    
    if not lualib:AddItem(player, castle_weapon, 1, true, "����Ʒ�����ǹ�����", "���ǹ�����") then
        return "��Ʒ��ȡʧ�ܣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end
    
    --lualib:SysMsg_SendCenterMsg(1, family_name.."�Ļ᳤"..lualib:Name(player).."�õ���"..castle_name.."���������"..castle_weapon.."��", "")
    return "���������ȡ�ɹ���\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function Award(npc, player, index)
	local abc = lualib:IO_GetCustomVarInt("zhanlingcishu")
    if abc >= 10 then abc = 10 end


    local leader_gold = 1000000 * (5 * abc * abc / 1000 - 5 * abc / 1000 + 1)
    local item_table = {
                        {{"���֮��(1��)", 1}},
                        {
                            {{"ǿЧ̫��ˮ��", 3}, {"���ĵ�", 1}, {"С����", 1}},
                            {{"����ѩ˪��", 3}, {"���ĵ�", 1}, {"С����", 1}},
                            {{"����ҩ��", 3}, {"���ĵ�", 1}, {"С����", 1}},
                        }
                       }
    local guild_ctrb = 0

    if index == 2 then
        if lualib:Player_GetGuildCtrb(player) < guild_ctrb then return "�����лṱ�׶Ȳ��㣡\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end
        if not lualib:Player_ReCalGuildCtrb(player, 0 - guild_ctrb) then return "�۳��лṱ�׶�ʧ�ܣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end
    end

    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    if index == 1 then
        for k, v in pairs(item_table[1]) do
            name_table[k] = v[1]
            count_table[k] = v[2]
            bind_table[k] = 0
            opr_table[k] = 0
        end
    else
        local level_table = {40, 30, 20}
        local level = lualib:Player_GetIntProp(player,  lua_role_level)
        local level_index = 4
        for k, v in pairs(level_table) do
            if level >= v then
                level_index = k
                break
            end
        end

        if item_table[2][level_index] == nil then return "���ĵȼ�������������ȡ�лά����\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end
        for k, v in pairs(item_table[2][level_index]) do
            name_table[k] = v[1]
            count_table[k] = v[2]
            bind_table[k] = 1
            opr_table[k] = 0
        end
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "����������Ǳ�ռ���Ľ���", "���ǹ�����") then
        lualib:SysMsg_SendWarnMsg(player, "װ������ʧ�ܣ����ϲ���򱳰�������")
        return "װ������ʧ�ܣ����ϲ���򱳰�������\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    end

    if index == 1 then
		lualib:Player_AddGold(player, leader_gold, false, "�ӽ�ң����Ǳ��᳤����", "���ǹ�����")
        lualib:SetCastleCustomVarInt(castle_name, "award_leader_day_count", lualib:GetAllDays(0))
    else
        lualib:Player_SetCustomVarInt(player, "award_member_wscb_day_count", lualib:GetAllDays(0))
    end

    return "��ȡ�����ɹ���\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
end

function Recruit(npc, player)
    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end
    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "����л᲻�ǳǱ�������ӵ���ߣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end
    if not lualib:Player_IsGuildLeader(player) then return "�㲻��"..castle_name.."�ĳ������޷�����ò�����\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n" end

    local cur_count = 0
    local guard = ""
    local msg = "�Ǳ���ǰ�ؾ����������\n"
		  msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    for k, v in pairs(wall_table) do
        cur_count = v[2]
        for _, v_ in pairs(v[6]) do
            guard = lualib:GetCastleCustomVarStr(castle_name, v_[1])
            if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
        end
        msg = msg..v[1].."��#COLORCOLOR_YELLOW#"..cur_count.."#COLOREND#�ˣ�����#COLORCOLOR_RED#"..v[2].."#COLOREND#����    "
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@RecruitMember#"..k.." *01*["..v[4].."]>\n"
    end
    msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    return msg
end

function RecruitMember(npc, player, type)
    type = tonumber(type)

    local cur_count = wall_table[type][2]
    for _, v in pairs(wall_table[type][6]) do
        guard = lualib:GetCastleCustomVarStr(castle_name, v[1])
        if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
    end

    if cur_count >= wall_table[type][2] then return wall_table[type][1].."�����������Ѵﵽ���ޣ��޷�����ļ�ˣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>" end

    lualib:SysMsg_SendInputDlg(player, wall_table[type][5],
                               "ÿ���ؾ�����ļ����Ϊ10���ң���������ļ������",
                               30, 2, "on_recruit_member", tostring(type).."#"..npc)
    return ""
end

function on_recruit_member(id, player, num, param)
    num = tonumber(num)
    
    local params = lualib:StrSplit(param, "#")
    if params == nil or table.getn(params) < 2 then return end

    local type = tonumber(params[1])
    local npc = params[2]

    if num <= 0 then 
        lualib:NPCTalkEx(npc, player, "������Ч��\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>")
        return
    end
    
    local cur_count = wall_table[type][2]
    for _, v in pairs(wall_table[type][6]) do
        guard = lualib:GetCastleCustomVarStr(castle_name, v[1])
        if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
    end

    if cur_count + num > wall_table[type][2] then
        lualib:NPCTalkEx(npc, player, wall_table[type][1].."��ļ����������̫�࣡\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>")
        return
    end

    local require_gold = wall_table[type][5] * num
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        lualib:NPCTalkEx(npc, player, "���Ľ����������"..require_gold.."��\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>")
        return
    end

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң��Ǳ���������ļ��������", "���ǹ�����") then
        lualib:NPCTalkEx(npc, player, "�۳����ʧ�ܣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>")
        return
    end

    local msg = ""
    if not GenGuard(castle_name, num, type) then
        lualib:NPCTalkEx(npc, player, "��������ʧ�ܣ�\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>")
        return
    end

    cur_count = cur_count + num
    if wall_table[type][2] > cur_count then
        msg = wall_table[type][1].."�ѳɹ���ļ#COLORCOLOR_YELLOW#"..num.."#COLOREND#������������������ļ#COLORCOLOR_YELLOW#"..wall_table[type][2] - cur_count.."#COLOREND#�ˣ�\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    else
        msg = wall_table[type][1].."�ѳɹ���ļ#COLORCOLOR_YELLOW#"..num.."#COLOREND#���������Ѵﵽ��ļ�������ޣ�\n"
		msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    end

    msg = msg.."�Ǳ���ǰ�ؾ����������\n"
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    for k, v in pairs(wall_table) do
        cur_count = v[2]
        for _, v_ in pairs(v[6]) do
            guard = lualib:GetCastleCustomVarStr(castle_name, v_[1])
            if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
        end
        msg = msg..v[1].."��#COLORCOLOR_YELLOW#"..cur_count.."#COLOREND#�ˣ�����#COLORCOLOR_RED#"..v[2].."#COLOREND#����    "
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@RecruitMember#"..k.." *01*["..v[4].."]>\n"
    end
	msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*�����ء�>\n"
    lualib:NPCTalkEx(npc, player, msg)
end

function GenGuard(castle_name, num, type)
    local castle_map = lualib:GetCastleMapGuid(castle_name)
    if castle_name == "" then return false end

    local guard = ""
    local gen_count = 0
    for k_, v_ in pairs(wall_table[type][6]) do
        if gen_count >= num then break end
        guard = lualib:GetCastleCustomVarStr(castle_name, v_[1])
        if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then
            guard = lualib:Map_GenSingleMonster(castle_map, v_[2], v_[3], 0, 3, wall_table[type][7], false)
            if "" == guard then return false end
			lualib:AddTrigger(guard,  lua_trigger_post_die, "on_guard_post_die")
			lualib:Monster_SetCustomVarInt(guard, "type", type)
			lualib:Monster_SetCustomVarInt(guard, "index", k_)
            lualib:SetCastleCustomVarStr(castle_name, v_[1], guard)
            gen_count = gen_count + 1
        end
    end
    return true
end

function on_guard_post_die(actor, killer)
	local type = lualib:Monster_GetCustomVarInt(actor, "type")
	local index = lualib:Monster_GetCustomVarInt(actor, "index")
	if wall_table[type][6][index] == nil then return end
	lualib:SetCastleCustomVarStr(castle_name, wall_table[type][6][index][1], "")
	lualib:RemoveTrigger(actor,  lua_trigger_post_die, "on_guard_post_die")
end