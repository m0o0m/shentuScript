function main(npc, player)
	local msg = ""
	msg = msg .."���ȸ�л�����#COLORCOLOR_RED#[Ծ������]#COLOREND#���ҿ�����������˽Ȿ��Ϸ\n\n"
	msg = msg .."�٣�<@teacher *01*����Ҫ��ʦ>\n"
	msg = msg .."�ڣ�<@order *01*�鿴�����������>\n"
	msg = msg .."�ۣ�<@help *01*�鿴��Ϸ��ذ���>\n"
	msg = msg .."�ܣ�<@rechange *01*��Ϸ��ֵ>\n"
	
	lualib:NPCTalkDetail(player, msg, 500, 300)
end


function teacher(npc, player)
	local msg = ""
	msg = msg .."18�����µ���ҿ��԰�40�������ϵ����Ϊʦ��\n"
	msg = msg .."ͽ�ܵȼ����ߺ�ʦ����õ���Ӧ������ֵ��\n"
	msg = msg .."��������ֵ������ȡʦͽѫ�¡�\n"
	msg = msg .."ͽ��40�����Զ���ҵ��ʦ��\n\n"
	msg = msg .."�٣�<@needteacher *01*��Ҫ��ʦ>\n"
	msg = msg .."�ڣ�<@main *01*����>\n"
	
	return msg
end

function needteacher(npc, player)
	local map_k = "��ɽ��"
	local x, y = 427, 244	
	lualib:Player_MapMoveXY(player, map_k, x, y, 3)
	lualib:SysWarnMsg(player, "��ͨ��#COLORCOLOR_SKYBLUE#[���ͳ��]#COLOREND#����ʦͽ������")
	return ""
end

function order(npc, player)
    local msg = "     ���ܹ滮�У������ڴ���\n"
	msg = msg .."\n\n��������������������������������������������������<@main *01*����>\n"
	return msg
end

function help(npc, player)
	local msg = ""
	msg = msg .."18�����µ���ҿ��԰�40�������ϵ����Ϊʦ��\n\n"
	msg = msg .."�٣�<@ask#1 *01*���׬ȡ��ң�>\n"
	msg = msg .."�ڣ�<@ask#2 *01*�������ô�߷���>\n"
	msg = msg .."�ۣ�<@ask#3 *01*ʯĹ����ϸ�߷���>\n"

	msg = msg .."\n\n��������������������������������������������������<@main *01*����>\n"

	return msg
end

function ask(npc, player, n)
	local n = tonumber(n)
	local ask_tbl =
	{
		[1] = {"���׬ȡ��ң�", "����"},
		[2] = {"�������ô�߷���", "����"},
		[3] = {"ʯĹ����ϸ�߷���", "����"},
	}

	local msg = ""
	msg = msg .."���ʡ���"..ask_tbl[n][1].."\n\n"
	msg = msg .."���𡵣�"..ask_tbl[n][2].."\n"
	msg = msg .."\n\n��������������������������������������������������<@main *01*����>\n"
	
	return msg
end

function rechange(npc, player)
	local name = lualib:Name(player)
    local msg = "     �𾴵�"..name.."����Ϊ����#COLORCOLOR_RED#��ֵ#COLOREND#��������Ī�������!\n     ������Ļ����ǡ�#COLORCOLOR_RED#1����ң�100Ԫ��#COLOREND#�� \n     ��֧�ֶ��ֳ�ֵ��ʽ����ɵ��·��ĳ�ֵ��ʽ�鿴��\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700032##OFFSET<X:0,Y:-1>#<@web *01*[��Ҫ��ֵ]>\n"
	msg = msg.."#OFFSET<X:0,Y:3>##IMAGE1902700042##OFFSET<X:0,Y:-2>#<@JieShao *01*[�鿴��ֵ��ʽ]>\n"
	msg = msg .."\n\n��������������������������������������������������<@main *01*����>\n"
	
	return msg
end

function web(npc, player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
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
