local talk_t = {"����������ɱ�����ӣ����Ե��ң�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		--lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, 20)])

end

function main(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�����շ���Դչʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_RED#        ����չʾNPC����ҿ��Խ�˹ۿ�������װ�����Σ�Ҳ���԰��Լ����γ�������#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:2>#    #IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2># <@bianxing *01*����Ҫ���Ρ�>\n"
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������#COLOREND#\n\n"
	msg = msg.."#OFFSET<X:400,Y:2>##IMAGE<ID:1902700034>#<@leave *01*���뿪��>\n"
	return msg
end

function bianxing(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ����������������������������������#COLOREND##COLORCOLOR_SKYBLUE#������Դ����չʾ��#COLOREND##COLORCOLOR_YELLOW#����������������������������������#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#        �������ѡ����Լ����γ�ָ��������ģ����#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ���������������������Щ������������������Щ������������������Щ�������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND##OFFSET<X:-2,Y:0>#<@wx#1 *01*����С����>    #COLORCOLOR_BROWN#��  #COLOREND# <@wx#2 *01*����С��2��>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@wx#3 *01*���ǵ����¡�>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@wx#4 *01*���Ʊ����¡�>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ���������������������੤�����������������੤�����������������੤������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ��    #COLOREND##OFFSET<X:-2,Y:0>#<@wx#5 *01*��7�����¡�>   #COLORCOLOR_BROWN#��  #COLOREND# <@wx#6 *01*��10�����¡�>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��   #COLOREND# <@wx#7 *01*����������>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��  #COLOREND# <@wx#8 *01*��        ��>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#��#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ���������������������ة������������������ة������������������ة�������������������#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ����������������������������������������������������������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019># <@main *01*�����ء�>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,300)
    return ""
	
end

function wx(npc, player,key)
	key= tonumber(key)
	local wx1 = {
						{"��С��"},
						{"��С��2"},
						{"�ǵ�����"},
						{"�Ʊ�����"},
						{"7������"},
						{"10������"},
						{"������"},
	}
	for i = 1, #wx1[key] do
		lualib:AddBuff(player, wx1[key][1], 0)
		lualib:SysWarnMsg(player, "����γ���"..wx1[key][1].."!")
		return ""
	end
end

function leave(player)
	return ""
end