local tab = {
	{"������ʥ", 9, "�����硷���޼�̳", 20, 24},--���� + �ƺŵȼ����� + ��ת��ͼ������ + x + y
	{"������©", 10, "��ڤ�硷��Ȫ����·", 120, 168},
	{"�������", 11, "��ڤ�硷������ʬѨ", 26, 29},
	{"��������", 12, "��������������̨��", 87, 69},
}


function main(npc,player)

	local lv = lualib:GetInt(player, "nobility")
	local msg = "\n\n"
	for k, v in ipairs(tab) do
		if k % 2 == 0 then
			if lv >= v[2] then
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>#<@enter#"..k.." *01*"..v[1].."[ר��]> #COLORCOLOR_GREENG#���Ѽ���\n\n"
			else
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[ר��]#COLORCOLOR_DARK# ��δ����\n\n"
			end
		else
			if lv >= v[2] then
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>#<@enter#"..k.." *01*"..v[1].."[ר��]> #COLORCOLOR_GREENG#���Ѽ���"
			else
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[ר��]#COLORCOLOR_DARK# ��δ����"
			end
		end
	end
	msg = msg .. "\n\n#POS<X:22>##COLORCOLOR_PURPLE#��ʾ�������Գƺſɽ����Ӧ��ר����ͼ�������ƺ�Խ����ĵ�ͼԽ�ࡣ#COLOREND#\n"
	msg = msg .. "#OFFSET<Y:5>##POS<X:22>##COLORCOLOR_PURPLE#˵��������Ϸ����BOSS���ɱ��ռ���ֻҪ��Ŭ��һ�н��п��ܡ�#COLOREND#\n"
	
	local str = "<form default_parent=NpcTalk>"
	str = str.. "<wnd id=UI x=-5 y=-25>"
	str = str.. "<image id=ͼ1 x=0 y=0 w=500 h=318 fitsize=1 image=1805900000/>"
	str = str.. "<image id=ͼ2 x=18 y=39 w=465 h=268 fitsize=1 image=1804100000/>"
	str = str.. "<image id=Logo x=138 y=-45 image=1690000001,150 type=animate/>"
	str = str.. "<button id=�ر� x=445 y=10 image=1803400011 OnLButtonClick=NpcTalk.Close/>"
	str = str.. "</wnd>"
	msg = str .."<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetailEx(npc, player, msg, 470, 292)
	local script = [[
		local this = GetWindow(nil, "NpcTalk,Close")
		if this ~= 0 then
			WndSetPosM(this, nil, 50, 50)
		end
	]]
	return ""
end


function enter(npc, player, idx)
	local idx = tonumber(idx)
	local lv = lualib:GetInt(player, "nobility")
	if lv < tab[idx][2] then
		lualib:MsgBox(player, "#COLORCOLOR_GREENG#����ǰ�ľ�λ�ƺŲ��߱�����õ�ͼ��Ȩ�ޣ�����ȥ���׳ƺš�#COLOREND#")
		return ""
	end
	lualib:Player_MapMoveXY(player, tab[idx][3], tab[idx][4], tab[idx][5], 3)
	local msg = "��ʿ["..lualib:Name(player).."]ǰ���ƺŸ�����ͼ��"..tab[idx][1].."�ƺš�ר����������BOSS�ȴ�������������"
	lualib:SysMsg_SendBroadcastMsg(msg, "�����鱨")
	return ""
end


function leave(npc,player)
    return ""
end