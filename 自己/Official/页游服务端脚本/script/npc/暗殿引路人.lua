


function main(npc,player)
	local msg = "                      #COLORCOLOR_BROWN#������·��#COLOREND#                    \n"
	local msg = msg.."\n"
	local msg = msg.."    ����ˢ��BOSS�������࣬ˢ��ʱ��죬���׻�ɱ������70������ȫϵ��װ���ʹ���������ǰ�ڱ���\n"
	local msg = msg.."\n"
	local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n"
	local msg = msg.."\n"
	local msg = msg.."˵����\n"
	local msg = msg.."\n"
	local msg = msg.."    1.����������ÿ�ν�������#COLORCOLOR_GREENG#500��Ԫ��#COLOREND#\n"
	local msg = msg.."\n"
	local msg = msg.."    2.BOSS������10��\n"
	local msg = msg.."\n"
	local msg = msg.."    3.ˢ��ʱ�䣺30-60����\n"
	local msg = msg.."\n"
	local msg = msg.."    4.������ϣ�����������\n"
	local msg = msg.."\n"
	local msg = msg.."    5.����װ����#COLORCOLOR_GREENG#70��#COLOREND#����ȫϵ��װ�����ɻ��պ������飩\n"
	local msg = msg.."\n"
	local msg = msg.."    #COLORCOLOR_GRAY#��������������������������������������������#COLOREND#\n"
	local msg = msg.."\n"
	local msg = msg.."\n"
	local msg = msg.."#OFFSET<X:140,Y:0>##COLORCOLOR_GREENG#<@entermap *01* ���밵��>#COLOREND# \n"
	local msg = msg.."\n"
	local msg = msg.."#OFFSET<X:135,Y:0>#���İ�Ԫ��:#COLORCOLOR_GOLD#500#COLOREND# \n"
	lualib:NPCTalkDetailEx(npc, player, msg, 350, 490)
	--lualib:NPCTalkDetail( player, msg, 350, 490)
	--lualib:NPCTalkDetail( sPlayerID , msg , 350 , 490 )
end

function entermap(npc,player)
	if lualib:GetBindIngot(player) >= 500 then
		lualib:SubBindIngot(player, 500, "������Ʊ", lualib:Name(player))
		lualib:Player_MapMove(player, "δ֪����")
	else
		lualib:SysMsg_SendBottomColor(player, "���İ�Ԫ������", 7, 2)
	end
	return ""
end