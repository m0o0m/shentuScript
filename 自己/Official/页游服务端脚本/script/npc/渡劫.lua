
function main(npc, player)
	--[[
	local msg = "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ɽ�#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	msg = msg .. "��ħ�������У��ұ�Ӣ������������������裬��Ϊ���鲻ɢ�����λ���˳�������������\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##COLORCOLOR_GREENG#1.��ڼ���,ÿ�о�һ�Σ��ɻ��#COLOREND##COLORCOLOR_YELLOW#25W����#COLOREND##COLORCOLOR_GREENG#�����ٻ���һֻ�������ˢ�ڵ�ͼ�ڣ�#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#2.ÿ����(����)һֻ���飬��ɻ������ĺ������飡����ľ���Ϊ#COLOREND##COLORCOLOR_YELLOW#50W#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#3.����һ���õ����ȣ��о��߻������ϵͳ���͵�һ���־��飡��#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_RED#4.ÿ��ÿ���ٻ����������ƣ�40������[30ֻ];40~49��[60ֻ];50~59��[120ֻ];60~65��[240ֻ]��#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ɽ�#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@mv *01*����[�ɽ�]>\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[�ر�]>\n"
	msg = msg .. ""
	return msg
	]]--
end



function mv(npc, player)
	if lualib:Player_MapMoveXY(player, "����", 250, 254, 5) == false then
		return "����ʧ�ܣ����ٴ���һ�Σ�"
	end
	return ""
end