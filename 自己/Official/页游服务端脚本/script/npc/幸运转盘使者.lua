local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/幸运转盘物品")

local talk_t = {"每天你都可以来我这儿免费转一次幸运转盘。", "幸运转盘里的物品都很实用。", "使用幸运转盘是获得商城物品最便利的方式。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 190000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
       local msg = "　　身为幸运使者，我会给大陆上每一个子民带来祈福。30级后你每天可以在我这里免费转动一次命运的罗盘！罗盘会给你带来超值的商城道具奖励。\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                      <@check_times *01*「探索幸运转盘」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                  #OFFSET<X:0,Y:2>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>"
    return msg
end

function leave(npc, player)
	return ""
end

function check_times(npc, player_guid)
    if lualib:Player_GetCustomVarInt(player_guid, "幸运转盘_HasAward") == 1 then
        notify_award(player_guid, 0)
        return "您上次抽中的奖品还未领取，请先领取。"
    end

    --判断今天的抽奖次数
    local player_count = lualib:Player_GetCustomVarInt(player_guid, "LuckyPanel_times")
    local player_day = lualib:Player_GetCustomVarInt(player_guid, "LuckyPanel_day")
    local cur_days = lualib:GetAllDays(0)
    local level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
    if level < settings["等级限制"] then
        local msg = "你的等级还不满"..settings["等级限制"].."级，但若你不满足今天的命运，想篡改命运的话，可以花费100元宝继续探索幸运转盘。\n\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                 #OFFSET<X:0,Y:2>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-2>#<@check_yuanbao *01*「使用元宝探索幸运转盘」>\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
        msg = msg.."                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
        return msg
    elseif cur_days == player_day then
        if player_count >= settings["每天次数"] then
            local msg = "你今天的幸运转盘次数已经用完了，但若你不满足今天的命运，想篡改命运的话，可以花费100元宝继续探索幸运转盘。\n\n"
            msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
            msg = msg.."                 <@check_yuanbao *01*「使用元宝探索幸运转盘」>\n"
            msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
            msg = msg.."                                                #IMAGE<ID:1902700019>#<@main *01*「返回」>"
            return msg
        else
            lualib:Player_SetCustomVarInt(player_guid, "LuckyPanel_times", player_count + 1)
        end
    else
        lualib:Player_SetCustomVarInt(player_guid, "LuckyPanel_day", cur_days)
        lualib:Player_SetCustomVarInt(player_guid, "LuckyPanel_times", 1)
    end
    
    choujiang(npc, player_guid)
    return ""
end

function check_yuanbao(npc, player_guid)
    if lualib:Player_IsIngotEnough(player_guid, settings["消耗元宝"], false) == false then
        return "你的元宝不足。\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*返回>"
    end
    
    if lualib:Player_SubIngot(player_guid, settings["消耗元宝"], false, "幸运转盘", "") then
        choujiang(npc, player_guid)
    end
    
    return ""
end

function choujiang(npc, player_guid)
    --开始抽奖
	lualib:SetStr(player_guid,"zhuanpanleixing","幸运转盘")
    local i = 0
    i = lualib:GenRandom(1, table.getn(AwardGroup))
    lualib:Player_SetCustomVarInt(player_guid, "幸运转盘_CurGroupID", i)

    lualib:Player_SetCustomVarInt(player_guid, "幸运转盘_times", 0)
    local sel = GetRandomAward(player_guid)
    
    lualib:Player_SetCustomVarInt(player_guid, "幸运转盘_Sel_1", sel)
    lualib:Player_SetCustomVarInt(player_guid, "幸运转盘_times", 1)
    lualib:Player_SetCustomVarInt(player_guid, "幸运转盘_HasAward", 1)
    for n = 2, settings["转盘次数"] do
        lualib:Player_SetCustomVarInt(player_guid, "幸运转盘_Sel_"..n, 0)
    end

    notify_award(player_guid, 1)
end
