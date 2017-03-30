local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"行会会长可以发起行会战，但需要讨伐令才行。", "创建行会需要一个号角和部分金币。", "你可以在我这儿创建或者加入行会。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 210000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
local msg = "    热血酬兄弟，仗剑觅红颜。手持菜刀有兄弟，快意恩仇也张狂。男儿本豪杰，笑傲不独行！行走天藏大陆，一个人怎么行？\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@InfoCreateFamily *01*[创建行会]>\n"
    msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@JoinFamily *01*[我想加入行会]>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@InfoFightGuild *01*[发起行会战]>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700031>##OFFSET<X:1,Y:-1>#<@GuildAward *01*[领取行会礼包]>\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:-5,Y:-1>#<@likai *01*「关闭」>\n"
    return msg
end

function InfoCreateFamily(npc, player)
    --msg = "创建行会需要1000000金币和一个号角。\n \n \n \n \n \n \n"
    msg = "创建行会需要一个号角。\n \n \n \n \n \n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@CreateFamilyConfirm *01*[我符合条件，继续建立行会]>\n \n"
	msg = msg.."                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
    return msg
end

function CreateFamilyConfirm(npc, player)
    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
        return "你已经有行会了。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if lualib:Player_GetIntProp(player,  lua_role_level) < 1 then
        return "你的等级不够。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "你的金币不足。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end

    --if lualib:Player_GetItemCount(player, "号角") < 1 then
     --  return "你身上没有创建行会所需要的道具。\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    --end

    if lualib:SysMsg_SendInputDlg(player, 1, "请输入行会名称：", 30, 12, "GetFamilyName", npc) == false then
        return "忙着呢，你过会儿再来吧\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    end
    return ""
end

function GetFamilyName(id, player, family_name, npc)
    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "0" and lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
        return
    end

    if lualib:Player_GetIntProp(player,  lua_role_level) < 1 then
        return
    end

    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return
    end

    if lualib:Player_GetItemCount(player, "号角") < 1 then
       return
    end
	
	if lualib:HasFamily(family_name) then
		local msg = "行会名" .. family_name .. "已存在\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
		lualib:NPCTalkEx(npc, player, msg)
		return
	end

    if lualib:CreateFamily(player, family_name) ~= 0 then
        return
    end

	if not lualib:Player_SubGold(player, 1000000, false, "扣金币：创建行会花费", "行会管理员") then
		lualib:NPCTalkEx(npc, player, "扣除金币失败")
		return
	end
	
	
    lualib:Player_DestroyItem(player, "号角", 1, "删物品：创建行会消耗", "行会管理员")
end

function JoinFamily(npc, player)
--    if lualib:Player_GetGuidProp(player,  lua_role_guild_id) ~= "" then
--        return "你已经有行会了。"
--    end

    if lualib:GetFamilyJoinList(player) ~= 0 then
        return "我正在整理行会资料，请等会儿再来吧。"
    end

    return ""
end

--行会战
function InfoFightGuild(npc, player)
    msg = "只有会长拿着[讨伐令]或者50万金币才能对其它行会发起行会战！在有50W金币的情况下，会优先用金币来发起行会战！\n \n \n \n \n \n"
    msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@FightGuildConfirm *01*发起行会战，延长行会战时间(延长3小时)>\n \n \n"
	msg = msg.."                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
    return msg
end

function FightGuildConfirm(npc, player)
    lualib:ShowForm(player, "行会战申请表单")
    return ""
end

function GuildAward(npc, player)
	if not lualib:SysMsg_SendInputDlg(player, 1, "请输入激活码：", 30, 19, "VerifyReg", npc) then
        return "咳、咳，脑子不好使了，出问题了......"
	end
	return ""
end

function VerifyReg(id, player, reg, npc)
	local record = "reg_guild.txt"

	if reg == "" then
		lualib:NPCTalkEx(npc, player, "输入的激活码不存在！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end

	if not lualib:IO_CheckTextInFile(record, reg) then
		lualib:NPCTalkEx(npc, player, "输入的激活码不存在！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end

	if not lualib:IO_TextFileDeleteLineStr(record, reg) then
		lualib:NPCTalkEx(npc, player, "校验激活码失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end

	if not lualib:IO_AppendFile(record, "#"..reg) then
		lualib:NPCTalkEx(npc, player, "校验激活码失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end

	if not lualib:Player_GiveItemUnbind(player, "公会礼包", 1, "给物品：激活行会礼包激活码", "行会管理员") then
		lualib:NPCTalkEx(npc, player, "奖励行会礼包失败！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end

	lualib:NPCTalkEx(npc, player, "领取行会礼包成功！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
	return
end

function likai(npc, player)
    return""
end