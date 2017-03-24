local talk_t = {"每周五晚上20:00才可以开启城战，城战成功可以获得大量资源。", "攻城战需要50万金币和一个城战令牌。", "行会会长可以在我这儿申请攻城战。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 220000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
    msg = "热血酬兄弟，仗剑觅红颜。男儿当击败人，击败人不独行。恩仇快意众兄弟，手持菜刀也张狂！行走天藏大陆，一个人怎么行？\n\n\n\n"
    msg = msg.."<@InfoFightGuild *01*发起行会战>\n"
    return msg
end

function InfoFightGuild(npc, player)
    msg = "只有会长才能发起行会战，此外还需要50万金币。\n\n\n\n"
    msg = msg.."<@FightGuildConfirm *01*我符合条件，继续发起行会战>\n \n \n"
	msg = msg.."<@main *01*「返回」>\n"
    return msg
end

function FightGuildConfirm(npc, player)

    lualib:ShowForm(player, "行会战申请表单")

    return ""
end
