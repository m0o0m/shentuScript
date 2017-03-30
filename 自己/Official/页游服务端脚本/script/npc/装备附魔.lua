
local talk_t = {"不管装备的等级有多低，只要有极品属性，我就能将它变废为宝"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	msg = "     不管装备的等级有多低，只要有极品属性，我就能将它变废为宝\n"
        msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037#<@Openfumo#4 *01*「装备附魔」   >#IMAGE1902700036#<@Openxishou#1 *01*「属性吸收」   >\n\n\n"
        msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."#IMAGE<ID:1902700017># <@info *01*附魔说明>\n"
     msg = msg.."#OFFSET<X:0,Y:0>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"

	return msg
end


function Openfumo(npc, player)
    lualib:ShowForm(player, "装备附魔表单")
    return ""
end


function Openxishou(npc, player)
    lualib:ShowForm(player, "附魔石吸收表单")
    return ""
end


function info(npc, player)
	local msg = "#COLORCOLOR_GOLD#属性吸收：#COLOREND# "
			msg = msg.." \n 1.使用#COLORCOLOR_RED#无属性#COLOREND#的附魔石，吸取装备上的#COLORCOLOR_RED#额外属性#COLOREND#（装备生成时所附加的极品属性）"
			msg = msg.." \n 2.被吸取装备的额外属性转移到#COLORCOLOR_RED#附魔石#COLOREND#上，被吸取的装备消失\n"
			msg = msg.." \n #COLORCOLOR_GOLD#装备附魔：#COLOREND#"
			msg = msg.." \n 1.使用#COLORCOLOR_RED#带有属性的附魔石#COLOREND#，将附魔石上的属性转移到其他装备上"
			msg = msg.." \n 2.附魔成功后，附魔石消失"
			msg = msg.." \n 3.如果被附魔的装备已经拥有附魔的属性，则附魔后，原先的附魔属性消失\n\n"
		msg = msg.."<@main *01*「返回」>\n \n"
	return msg
end
