local level = 400	--���븱���ȼ�����

local mapkey = "�����յ�����"		--��ͼ������

local x = 146--x����

local y = 234--y����

local ingot = 0--����Ԫ��

function main(npc, player)
	local mes = " NpcKeyName = \"�����յ�����\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	lualib:SetPanelSize(npc, 430, 258)
	
    local msg = "\n#OFFSET<X:18,Y:15>##COLORCOLOR_MAGENTA#����ŭ��;�� #COLORCOLOR_GOLD2#����Ʒ�ʣ�#COLORCOLOR_SKYBLUE#�����İ���ʱ�䣬ף����Ϸ��죡\n"
	msg = msg .. "#OFFSET<X:20>##COLORCOLOR_GRAY#-----------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#����ͼ�Ѷȡ���#OFFSET<Y:2>##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293#\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#����ͼ���á���#COLORCOLOR_GOLD2#̩ɽ���������¶�ʮ���յ�����˾�����յ�����������ĥ�⽴����������ʮ��С������������ȡ����ҩ�����������ߣ�����������ٷ�С�����ܿ����գ�ת��ڰ˵�������Ρ��֣������ԡ��ܸ桢��թ��ı�ƺ����ߣ������������͹�֮�̷���\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#��������������#COLORCOLOR_GREENG#400����ѽ���\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#����ͼ��������#COLORCOLOR_BLUE#�ظ���ͨBOSS30����ˢ�£�����BOSS60����ˢ��\n"
	msg = msg .. "#OFFSET<X:20>##COLORCOLOR_GRAY#-----------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:78,Y:5>##IMAGE1902700015##OFFSET<Y:-2>#<@enter *01*[�����ͼ]>            #OFFSET<Y:2>##IMAGE1902700034##OFFSET<Y:-2>#<@leave *01*[�ر�ҳ��]>\n"
	local str = [[<form default_parent="NpcTalk,Container">]]
	str = str .. "<image id=x1 x=93 y=56 image=1044800000 />"
	str = str .. "<image id=x2 x=110 y=56 image=1044800000 />"
	str = str .. "<image id=x3 x=127 y=56 image=1044800000 />"
	str = str .. "<image id=x4 x=144 y=56 image=1044800000 />"
	str = str .. "<image id=x5 x=161 y=56 image=1044800000 />"
	str = str .. "<image id=x6 x=178 y=56 image=1044800000 />"
	str = str .. "<image id=x7 x=195 y=56 image=1044800000 />"
	str = str .. "<image id=x8 x=212 y=56 image=1044800000 />"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
    return msg
end

function enter(npc, player)
	local name = lualib:Name(player)
	
	local mes = " NpcKeyName = \"�����յ�����\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	lualib:SetPanelSize(npc, 430, 258)
	
	if lualib:Level(player) < level then
		return "#OFFSET<X:20,Y:35>#��Ǹ,���ĵȼ�����"..level.."��,�޷���ս�����յ�����!"
	end
	
	if lualib:GetIngot(player) < ingot then
		return "#OFFSET<X:20,Y:35>#��Ǹ,����Ԫ������"..ingot..",�޷���ս�����յ�����!"
	end
	
	lualib:SubIngot(player, ingot, "��ս�����յ�����", npc)

	lualib:Player_MapMoveXY(player, mapkey, x, y, 3)

	lualib:SysMsg_SendBroadcastMsg("��ŭ��ʿ��"..name.."��������ڤ�����ˡ�"..mapkey.."�������Ϊ�����ɣ�", "ϵͳ��Ϣ")
	return ""
end

function leave()
	return ""
end