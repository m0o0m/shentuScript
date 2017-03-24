local __items = {--��3����Ф��������
	"����3",
	"��ţ3",
	"����3",
	"î��3",
	"����3",
	"����3",
	"����3",
	"δ��3",
	"���3",
	"�ϼ�3",
	"�繷3",
	"����3",
}


local map_t = {"����ħս����", 138, 198}	--���͵�ͼ������ + x + y


function main(npc, player)
	local mes = " NpcKeyName = \"��BOSS������\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)

	local msg = [[
#POS<X:35,Y:300>##COLORCOLOR_PURPLE#��ʾ��#COLORCOLOR_GREENG#����ʮ����Ф��ȫ���ڸ����ͼ�������κ�NPC����#COLOREND#
#POS<X:35,Y:320>##COLORCOLOR_PURPLE#��ʾ��#COLORCOLOR_ORANGE#����ʮ����Ф�ɽ��룬��Фר����ͼ#COLOREND#
#POS<X:170,Y:346>#<@enter *01*ʮ����Фר����ͼ>
	]]
	
	local str = "<form default_parent=NpcTalk>"
	str = str.. "<wnd id=����1 x=-5 y=-35>"
	str = str.. "<image id=ͼ1 x=0 y=0 w=470 h=448 fitsize=1 image=1804100002/>"
	str = str.. "<image id=ͼ2 x=23 y=68 w=427 h=363 fitsize=1 image=1804100000/>"
	str = str.. "<image id=Logo x=138 y=-22 image=1690000001,150 type=animate/>"
	str = str.. "<button id=�ر� x=418 y=28 image=1803400011 OnLButtonClick=NpcTalk.Close/>"
	str = str.. "</wnd>"
	for k, v in ipairs(items) do
		local x = (k - 1) % 4 * 102 + 30
		local y = math.floor((k - 1) / 4) * 88 + 35
		str = str.. "<image id=��"..k.." x="..x.." y="..y.." w=60 h=60 fitsize=1 image=1803500019 parent=NpcTalk,Container/>"
		str = str.. "<itemctrl id=��Ʒ"..k.." x="..(x + 13).." y="..(y + 11).." w=35 h=35 init_item="..v.." use_back=0 parent=NpcTalk,Container/>"
		str = str .."<image id=��Ч"..k.." x="..(x + 6).." y="..(y + 6).." image=1092600000 type=animate parent=NpcTalk,Container/>"
	end
	msg = str.. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetailEx(npc, player, msg, 458, 412)
	local script = [[
		local this = GetWindow(nil, "NpcTalk,Close")
		if this ~= 0 then
			WndSetPosM(this, nil, 50, 50)
		end
	]]
	lualib:ShowFormWithContent(player, "�ű���", script)
	return ""
end


function enter(npc, player)
	if which(player, __items) then
		lualib:Player_MapMoveXY(player, map_t[1], map_t[2], map_t[3], 3)
	else
		lualib:MsgBox(player, "#COLORCOLOR_PURPLE#�뽫��Ӧ����Фװ�����벢�����á�")
	end
	return ""
end


function which(player, tab)
	for _, v in ipairs(tab) do
		if lualib:ItemCountEx(player, v, 2, true, true, false, false) < 1 then
			return false
		end
	end
	return true
end