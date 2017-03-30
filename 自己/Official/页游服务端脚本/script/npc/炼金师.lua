local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
    local msg = "     你只要提供1块炼金石，我就可以帮你淬炼出各种精元，并且我还会赠送给你大量的经验哦！\n \n"
    msg = msg.."<@Refine *01*淬炼炼金石>\n"
    msg = msg.."<@Get *01*领取成品>\n"
	msg = msg.."<@Jieshao *01*淬炼炼金石介绍>\n"
    return msg
end

function Refine(npc, player)
    local msg = "你「确定」要淬炼吗？\n \n"
    msg = msg.."<@Submit *01*「确定」>\n"
    msg = msg.."<@main *01*「返回」>\n"
	return msg
end

function Submit(npc, player)
    local ingot_num = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_num")
    local ingot_times = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_times")
    if ingot_num > 0 then
        --ingot_times = ingot_times + 7200 - lualib:GetTime()
        --local h = math.floor(ingot_times / 3600)
        --local m = math.floor((ingot_times - h * 3600) / 60)
        --local s = ingot_times - h * 3600 - m * 60
        return "您的炼金石正在淬炼中！请稍后再来。"
    end

    local count = lualib:Player_GetItemCount(player, "炼金石")
    if count < 1 then return "背包中没有找到炼金石！" end

    if not lualib:Player_DestroyItem(player, "炼金石", 1, "删物品：炼金师", player) then return "炼金石淬炼失败！背包中没有找到炼金石！" end
    if not lualib:Player_SetCustomVarInt(player, "lian_jin_shi_ingot_times", lualib:GetTime()) then return "炼金石淬炼失败！@2" end
    if not lualib:Player_SetCustomVarInt(player, "lian_jin_shi_ingot_num", 1) then return "炼金石淬炼失败！@3" end
    return "炼金石开始淬炼！请2小时后来领取"
end

function Get(npc, player)
    local present_table = {{"野兽精元", 3},
                           {"骷髅精元", 3},
                           {"僵尸精元", 3},
                           {"牛魔精元", 3},
                           {"树妖精元", 3},
                           {"傀儡精元", 3},
                           {"魔人精元", 3}}

    local exp_table = {{70, 30},
                       {50, 25},
                       {30, 20},
                       {0, 10}}

    local ingot_num = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_num")
    if ingot_num == 0 then return "没有炼金记录！" end

    local ingot_times = lualib:Player_GetCustomVarInt(player, "lian_jin_shi_ingot_times")
    if lualib:GetTime() - ingot_times < 7200 then
        ingot_times = ingot_times + 7200 - lualib:GetTime()
        local h = math.floor(ingot_times / 3600)
        local m = math.floor((ingot_times - h * 3600) / 60)
        local s = ingot_times - h * 3600 - m * 60
        return "您的炼金石正在淬炼中！请稍后再来。（剩余时间："..h.."："..m.."："..s.."）"
    end

    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level == -1 then return "领取奖励失败！" end

    local cur_exp_index = 0
    for i = 1, table.getn(exp_table) do
        if level > exp_table[i][1] then
            cur_exp_index = i
            break
        end
    end

    local exp = lualib:Player_GetExpLimit(player)
    if exp == -1 then return "领取经验失败！" end

    exp = (exp * exp_table[cur_exp_index][2] / 10000 + level * 300) * ingot_num
    if not lualib:Player_AddExp(player, exp, "加经验：炼金石「兑换」经验", player) then
        return "给予经验失败！"
    end

    for i = 1, ingot_num do
        local rnd = lualib:GenRandom(1, table.getn(present_table))
        local item = present_table[rnd][1]
        local count = present_table[rnd][2]
	    if not lualib:Player_GiveItemUnbind(player, item, count, "给物品：炼金师", player) then
            return "领取物品失败！"
        end
    end

    if not lualib:Player_SetCustomVarInt(player, "lian_jin_shi_ingot_num", 0) then return "炼金石淬炼失败！@4" end
    return "领取奖励成功！"
end


function Jieshao(npc, player)
    local msg = "提供1炼金石后，等待2小时可到我这里来领取各种精元和大量经验！"
    return msg
end
