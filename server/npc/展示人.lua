local talk_t = {"你如果想变身成别的样子，可以点我！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		--lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, 20)])

end

function main(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术收费资源展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_RED#        我是展示NPC，大家可以借此观看特殊套装的外形！也可以把自己变形成那样！#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:2>#    #IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2># <@bianxing *01*「我要变形」>\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."#OFFSET<X:400,Y:2>##IMAGE<ID:1902700034>#<@leave *01*「离开」>\n"
	return msg
end

function bianxing(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源武器展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#        这里可以选择把自己变形成指定的外形模样！#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND##OFFSET<X:-2,Y:0>#<@wx#1 *01*「李小龙」>    #COLORCOLOR_BROWN#│  #COLOREND# <@wx#2 *01*「李小龙2」>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@wx#3 *01*「乔丹球衣」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@wx#4 *01*「科比球衣」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND##OFFSET<X:-2,Y:0>#<@wx#5 *01*「7号球衣」>   #COLORCOLOR_BROWN#│  #COLOREND# <@wx#6 *01*「10号球衣」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND# <@wx#7 *01*「赛车服」>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@wx#8 *01*「        」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019># <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,300)
    return ""
	
end

function wx(npc, player,key)
	key= tonumber(key)
	local wx1 = {
						{"李小龙"},
						{"李小龙2"},
						{"乔丹球衣"},
						{"科比球衣"},
						{"7号球衣"},
						{"10号球衣"},
						{"赛车服"},
	}
	for i = 1, #wx1[key] do
		lualib:AddBuff(player, wx1[key][1], 0)
		lualib:SysWarnMsg(player, "你变形成了"..wx1[key][1].."!")
		return ""
	end
end

function leave(player)
	return ""
end