function main(npc, player)
	local name = lualib:Name(player)
    local msg = "     �𾴵�"..name.."����Ϊ����#COLORCOLOR_RED#��ֵ#COLOREND#��������Ī�������!\n     ������Ļ����ǡ�#COLORCOLOR_RED#1����ң�100Ԫ��#COLOREND#�� \n     ��֧�ֶ��ֳ�ֵ��ʽ����ɵ��·��ĳ�ֵ��ʽ�鿴��\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"

	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@web *01*[��Ҫ��ֵ]>\n"
	msg = msg.."#OFFSET<X:0,Y:3>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@JieShao *01*[�鿴��ֵ��ʽ]>\n"

	return msg
end

function web(npc, player)
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function JieShao(npc, player)
	local msg = "������֧�����³�ֵ��ʽ:".."\n \n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@dx *01*�����š�  ��>".."   �ƶ�����ͨ���ų�ֵ\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@ykt *01*��һ��ͨ����>".."   #OFFSET<X:0,Y:0>#ʢ��/����/����/����/�Ѻ�/��;/����һ��ͨ\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@czk *01*����ֵ������>".."   #OFFSET<X:0,Y:0>#�ƶ�/��ͨ/���ų�ֵ��\n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@yy *01*��������  ��>".."   �����������V�ҳ�ֵ/�ƶ��ֻ�����(QD-IVR)\n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700042##OFFSET<X:0,Y:-1>#<@wy *01*��������  ��>".."   ��������#COLOREND#\n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *1*�����ء�>"
	return msg
end
--����
function dx(npc, player)
	local msg = "�����ʷ�: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#���ƶ����š���#COLOREND##COLORCOLOR_GOLD#1/2/5 Ԫ#COLOREND#\n \n \n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--һ��ͨ
function ykt(npc, player)
	local msg = "#OFFSET<X:0,Y:-2>#�����ʷ�: \n"
	msg = msg.."#COLORCOLOR_GREENG#��ʢ�󡻣�#COLOREND##COLORCOLOR_GOLD#5/10/15/25/30/35/45/50/100/300/350/1000 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#����������#COLOREND##COLORCOLOR_GOLD#5/6/10/15/30/50/100 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#�����ס���#COLOREND##COLORCOLOR_GOLD#5/10/15/20/30/50/ Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#����������#COLOREND##COLORCOLOR_GOLD#15/30/50/100 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#���Ѻ�����#COLOREND##COLORCOLOR_GOLD#5/10/15/30/40/100 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#����;����#COLOREND##COLORCOLOR_GOLD#10/15/20/25/30/50/60/100/300/468/500 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#�����Ρ���#COLOREND##COLORCOLOR_GOLD#5/10/15/20/25/30/50/100 Ԫ#COLOREND#\n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--��ֵ��
function czk(npc, player)
	local msg = "�����ʷ�: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#���ƶ���ֵ������#COLOREND##COLORCOLOR_GOLD#10/20/30/50/100 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#����ͨ��ֵ������#COLOREND##COLORCOLOR_GOLD#20/30/50/100/300/500 Ԫ#COLOREND#\n"
	msg = msg.."#COLORCOLOR_GREENG#�����ų�ֵ������#COLOREND##COLORCOLOR_GOLD#50/100 Ԫ#COLOREND#\n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--����
function yy(npc, player)
	local msg = "�����ʷ�: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#�������������V�ҳ�ֵ����#COLOREND##COLORCOLOR_GOLD#2/5/10//15/20/30 Ԫ#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_GREENG#�������������V�ҳ�ֵ����#COLOREND##COLORCOLOR_GOLD#10/20/30 Ԫ#COLOREND#\n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end
--����
function wy(npc, player)
	local msg = "�����ʷ�: \n \n"
	msg = msg.."#COLORCOLOR_GREENG#���������С���#COLOREND##COLORCOLOR_GOLD#���� Ԫ#COLOREND#\n \n \n \n \n"
	msg = msg.."                                                                                 #OFFSET<X:0,Y:-2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@JieShao *1*�����ء�>"
	return msg
end

