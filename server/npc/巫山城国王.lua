function main(npc, player)
    local msg = "热血酬兄弟，仗剑觅红颜。男儿当杀人，杀人不独行。恩仇快意众兄弟，手持菜刀也张狂！行走天藏大陆，一个人怎么行？\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@CreateFamily *01*创建我的行会>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@JoinFamily *01*我想加入行会>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@FightGuild *01*发起行会战>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:-5,Y:-1>#<@likai *01*「关闭」>\n"
    return msg
end

function CreateFamily(npc, player)
    local msg = "创建行会需要1000000金币和一个沃玛号角。\n\n\n\n"
    msg = msg.."<@CreateFamilyConfirm *01*我符合条件，继续建立行会>\n \n \n"
	msg = msg.."<@main *01*「返回」>\n"
    return msg
end

function CreateFamilyConfirm(npc, player)
    if lualib:GuildGuid(player) ~= "" then
        return "你已经有行会了。"
    end

    if lualib:Level(player) < 1 then
        return "你的等级不够。"
    end

    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "你的金币不足。"
    end

    if lualib:ItemCount(player, "沃玛号角") < 1 then
       return "你身上没有创建行会所需要的道具。"
    end

    if lualib:SysMsg_SendInputDlg(player, 1, "请输入行会名称：", 30, 12, "GetFamilyName", "") == false then
        return "忙着呢，你过会儿再来吧"
    end
    return ""
end

function GetFamilyName(id, player, family_name)
	if lualib:HasFamily(family_name) then
		lualib:SysMsg_SendWarnMsg(player, "行会"..family_name.."已经存在.");
		return
	end
	
	if not lualib:SubGold(player, 1000000, "扣金币：创建行会花费", "行会管理员") then
		lualib:SysMsg_SendWarnMsg(player, "金币不足1000000.");
		return
	end
	
    if not lualib:TakeItem(player, "沃玛号角", 1, "删物品：创建行会消耗", "行会管理员") then
		lualib:SysMsg_SendWarnMsg(player, "缺少物品沃玛号角.");
		return
	end
	
    if lualib:CreateFamily(player, family_name) ~= 0 then
		lualib:SysMsg_SendWarnMsg(player, "创建行会失败.");
		return
    end
end

function JoinFamily(npc, player)
    if lualib:GetFamilyJoinList(player) ~= 0 then
        return "我正在整理行会资料，请等会儿再来吧。"
    end

    return ""
end

--行会战
function FightGuild(npc, player)
    local msg = "只有会长拿着[讨伐令]才能对其它行会发起行会战！\n\n\n\n"
    msg = msg.."<@FightGuildConfirm *01*我符合条件，继续发起行会战(行会战持续3小时)>\n \n \n"
	msg = msg.."<@main *01*「返回」>\n"
    return msg
end

function FightGuildConfirm(npc, player)
    lualib:ShowForm(player, "行会战申请表单")
    return ""
end

function likai(npc, player)
    return""
end