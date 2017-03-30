local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local castle_name = "神歌城"
local castle_weapon = "城主之印"
local wall_table = {{"北部皇宫", 6, "", "招募北部守军", 100000, {{"north_wall_guard1", 348, 179}, {"north_wall_guard2", 358, 189}, {"north_wall_guard3", 345, 182}, {"north_wall_guard4", 355, 192}, {"north_wall_guard5", 342, 185}, {"north_wall_guard6", 352, 195}}, "弓箭守卫1"},
                    {"西部城墙", 6, "", "招募西部守军", 100000, {{"west_wall_guard1", 288, 152}, {"west_wall_guard2", 299, 141}, {"west_wall_guard3", 284, 156}, {"west_wall_guard4", 303, 137}, {"west_wall_guard5", 280, 160}, {"west_wall_guard6", 307, 133}}, "弓箭守卫1"},
                    {"南部城墙", 6, "", "招募南部守军", 100000, {{"south_wall_guard1", 287, 238}, {"south_wall_guard2", 299, 250}, {"south_wall_guard3", 283, 234}, {"south_wall_guard4", 303, 254}, {"south_wall_guard5", 279, 230}, {"south_wall_guard6", 307, 258}}, "弓箭守卫1"},
                    {"东部城墙", 6, "", "招募东部守军", 100000, {{"east_wall_guard1", 384, 250}, {"east_wall_guard2", 396, 238}, {"east_wall_guard3", 380, 254}, {"east_wall_guard4", 400, 234}, {"east_wall_guard5", 376, 258}, {"east_wall_guard6", 404, 230}}, "弓箭守卫1"}}

function main(npc, player)
	local msg = "     城堡的所有者，每天都可以到我这里来领取奖励哦，会长还可以额外领取一份大奖励！ \n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@AwardLeader *01*「会长奖励」>\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@AwardMember *01*「成员奖励」>\n"
    --msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@AwardWeapon *01*「领取镇城神器」>\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@AwardInfo *01*「奖励说明」>\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700039##OFFSET<X:0,Y:-2>#<@Recruit *01*「守军部署」>\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@Leave *01*「离开」>"
	return msg
end

function Leave(npc, player)
    return ""
end

function AwardInfo(npc, player)
    local msg = "#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."会长奖励和会员奖励每天都可以领取一次！\n"
    msg = msg .. "会长奖励的金币基础为1000000，每次防守成功后奖励会有所增加，达到10次后不再增加！\n"
    --msg = msg .. "镇城神器只有每次占领神歌城时才可以领取，同时原行会所拥有的镇城神器将会消失！\n"
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function AwardLeader(npc, player)
    if not lualib:Player_IsGuildLeader(player) then return "只有会长才能领取该奖励！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    local day_count = lualib:GetCastleCustomVarInt(castle_name, "award_leader_day_count")
    if day_count < lualib:GetAllDays(0) then return Award(npc, player, 1) end
    
    if day_count == lualib:GetAllDays(0) then return "本奖励每天只能领取一次！\n \n \n \n \n \n \n \n" end
    if day_count > lualib:GetAllDays(0) then return "系统错误！\n \n \n \n \n \n \n \n" end
    return "本奖励每天只能领取一次！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function AwardMember(npc, player)
    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    local day_count = lualib:Player_GetCustomVarInt(player, "award_member_wscb_day_count")
    if day_count == 0 then return Award(npc, player, 2) end

    local all_day = lualib:GetAllDays(0)
    if day_count == all_day then return "本奖励每天只能领取一次！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end
    if day_count > all_day then return "系统错误！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    return Award(npc, player, 2)
end

function AwardWeapon(npc, player)
    if not lualib:Player_IsGuildLeader(player) then return "只有会长才能领取该奖励！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    if lualib:IO_GetCustomVarStr("神歌城_leader_weapon") == player then
        return "你已经领取过了！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    local all_day = lualib:GetAllDays(0)
    local day_count = lualib:Player_GetCustomVarInt(player, "award_member_wscb_day_count")
    if day_count == all_day then 
	   return "每天只能领取一次！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" 
	end
    
    if lualib:ItemCountByKey(player, castle_weapon, true, true, true, 2) > 0 then
        return "你已经拥有镇城神器了！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end
    
    lualib:IO_SetCustomVarStr("神歌城_leader_weapon", player)
    
    if not lualib:AddItem(player, castle_weapon, 1, true, "给物品：神歌城管理人", "神歌城管理人") then
        return "物品领取失败！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end
    
    --lualib:SysMsg_SendCenterMsg(1, family_name.."的会长"..lualib:Name(player).."得到了"..castle_name.."的镇城神器"..castle_weapon.."！", "")
    return "镇城神器领取成功！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

function Award(npc, player, index)
	local abc = lualib:IO_GetCustomVarInt("zhanlingcishu")
    if abc >= 10 then abc = 10 end


    local leader_gold = 1000000 * (5 * abc * abc / 1000 - 5 * abc / 1000 + 1)
    local item_table = {
                        {{"鸠王之翼(1天)", 1}},
                        {
                            {{"强效太阳水包", 3}, {"清心丹", 1}, {"小喇叭", 1}},
                            {{"万年雪霜包", 3}, {"清心丹", 1}, {"小喇叭", 1}},
                            {{"疗伤药包", 3}, {"清心丹", 1}, {"小喇叭", 1}},
                        }
                       }
    local guild_ctrb = 0

    if index == 2 then
        if lualib:Player_GetGuildCtrb(player) < guild_ctrb then return "您的行会贡献度不足！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end
        if not lualib:Player_ReCalGuildCtrb(player, 0 - guild_ctrb) then return "扣除行会贡献度失败！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end
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

        if item_table[2][level_index] == nil then return "您的等级不够，不能领取行会奖励！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end
        for k, v in pairs(item_table[2][level_index]) do
            name_table[k] = v[1]
            count_table[k] = v[2]
            bind_table[k] = 1
            opr_table[k] = 0
        end
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：城堡占领后的奖励", "神歌城管理人") then
        lualib:SysMsg_SendWarnMsg(player, "装备打造失败，材料不足或背包已满！")
        return "装备打造失败，材料不足或背包已满！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
    end

    if index == 1 then
		lualib:Player_AddGold(player, leader_gold, false, "加金币：神歌城堡会长奖励", "神歌城管理人")
        lualib:SetCastleCustomVarInt(castle_name, "award_leader_day_count", lualib:GetAllDays(0))
    else
        lualib:Player_SetCustomVarInt(player, "award_member_wscb_day_count", lualib:GetAllDays(0))
    end

    return "领取奖励成功！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
end

function Recruit(npc, player)
    local family_name = lualib:GetCastleOwnFamily(castle_name)
    if family_name == "" then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end
    if family_name ~= lualib:Player_GetStrProp(player,  lua_role_guild) then return "你的行会不是城堡的最终拥有者！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end
    if not lualib:Player_IsGuildLeader(player) then return "你不是"..castle_name.."的城主，无法进入该操作！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n" end

    local cur_count = 0
    local guard = ""
    local msg = "城堡当前守军部署情况：\n"
		  msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    for k, v in pairs(wall_table) do
        cur_count = v[2]
        for _, v_ in pairs(v[6]) do
            guard = lualib:GetCastleCustomVarStr(castle_name, v_[1])
            if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
        end
        msg = msg..v[1].."：#COLORCOLOR_YELLOW#"..cur_count.."#COLOREND#人（上限#COLORCOLOR_RED#"..v[2].."#COLOREND#）人    "
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@RecruitMember#"..k.." *01*["..v[4].."]>\n"
    end
    msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function RecruitMember(npc, player, type)
    type = tonumber(type)

    local cur_count = wall_table[type][2]
    for _, v in pairs(wall_table[type][6]) do
        guard = lualib:GetCastleCustomVarStr(castle_name, v[1])
        if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
    end

    if cur_count >= wall_table[type][2] then return wall_table[type][1].."的守卫数量已达到上限，无法再招募了！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>" end

    lualib:SysMsg_SendInputDlg(player, wall_table[type][5],
                               "每个守军的招募费用为10万金币！请输入招募数量：",
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
        lualib:NPCTalkEx(npc, player, "输入无效！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>")
        return
    end
    
    local cur_count = wall_table[type][2]
    for _, v in pairs(wall_table[type][6]) do
        guard = lualib:GetCastleCustomVarStr(castle_name, v[1])
        if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
    end

    if cur_count + num > wall_table[type][2] then
        lualib:NPCTalkEx(npc, player, wall_table[type][1].."招募的守卫数量太多！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>")
        return
    end

    local require_gold = wall_table[type][5] * num
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        lualib:NPCTalkEx(npc, player, "您的金币数量不足"..require_gold.."！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>")
        return
    end

    if not lualib:Player_SubGold(player, require_gold, false, "扣金币：城堡管理人招募守卫花费", "神歌城管理人") then
        lualib:NPCTalkEx(npc, player, "扣除金币失败！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>")
        return
    end

    local msg = ""
    if not GenGuard(castle_name, num, type) then
        lualib:NPCTalkEx(npc, player, "生成守卫失败！\n \n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>")
        return
    end

    cur_count = cur_count + num
    if wall_table[type][2] > cur_count then
        msg = wall_table[type][1].."已成功招募#COLORCOLOR_YELLOW#"..num.."#COLOREND#名守卫，您还可以招募#COLORCOLOR_YELLOW#"..wall_table[type][2] - cur_count.."#COLOREND#人！\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    else
        msg = wall_table[type][1].."已成功招募#COLORCOLOR_YELLOW#"..num.."#COLOREND#名守卫，已达到招募人数上限！\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    end

    msg = msg.."城堡当前守军部署情况：\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    for k, v in pairs(wall_table) do
        cur_count = v[2]
        for _, v_ in pairs(v[6]) do
            guard = lualib:GetCastleCustomVarStr(castle_name, v_[1])
            if guard == "" or (not lualib:Monster_IsExist(guard)) or lualib:Monster_IsDie(guard) then cur_count = cur_count - 1 end
        end
        msg = msg..v[1].."：#COLORCOLOR_YELLOW#"..cur_count.."#COLOREND#人（上限#COLORCOLOR_RED#"..v[2].."#COLOREND#）人    "
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@RecruitMember#"..k.." *01*["..v[4].."]>\n"
    end
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@Recruit *01*「返回」>\n"
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