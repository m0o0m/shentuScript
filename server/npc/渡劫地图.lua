local zhuanshu_t = {
	{"���ɽ���������", 34, 70},--1���ɽٴ���ר����ͼ+����x������y
	{"���ɽ��ںϾ���", 34, 70},
	{"���ɽٽ𵤾���", 34, 70},
	{"���ɽ�ԪӤ����", 34, 70},
	{"���ɽٶ��龳��", 34, 70},
	{"���ɽٴ�˾���", 34, 70},
	{"�������ɽپ���", 34, 70},
	{"��ɢ�����ƾ���", 34, 70},
	{"��̫�����ɾ���", 34, 70},
	{"��̫�����ɾ���", 34, 70},
	{"�����޽��ɾ���", 34, 70},
	{"����Ԫ���ɾ���", 34, 70},

}




function main(npc,player)
	local lv = lualib:GetInt(player, "exerciselv")
	local msg = "\n\n"
	for k, v in ipairs(zhuanshu_t) do
		if k % 2 == 0 then
			if lv >= k then
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>#<@jinru#"..k.." *01*"..v[1].."[��]> #COLORCOLOR_GREENG#���Ѽ���\n\n"
			else
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[��]#COLORCOLOR_DARK# ��δ����\n\n"
			end
		else
			if lv >= k then
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>#<@jinru#"..k.." *01*"..v[1].."[��]> #COLORCOLOR_GREENG#���Ѽ���"
			else
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[��]#COLORCOLOR_DARK# ��δ����"
			end
		end
	end
	msg = msg .. "\n\n#POS<X:20>##COLORCOLOR_PURPLE#��ʾ��������Ӧ�ɽٿɽ����Ӧ��ר����ͼ���ɽ�Խ�߽��ĵ�ͼԽ�ࡣ#COLOREND#\n"
	msg = msg .. "#OFFSET<Y:5>##POS<X:20>##COLORCOLOR_PURPLE#˵��������Ϸ����BOSS���ɱ��ռ���ֻҪ��Ŭ��һ�н��п��ܡ�#COLOREND#\n"
	local str = "<form default_parent=NpcTalk>"
	str = str.. "<wnd id=UI x=-5 y=-25>"
	str = str.. "<image id=ͼ1 x=0 y=0 w=500 h=318 fitsize=1 image=1805900000/>"
	str = str.. "<image id=ͼ2 x=18 y=39 w=465 h=268 fitsize=1 image=1804100000/>"
	str = str.. "<image id=Logo x=-100 y=-25 image=1084500000,150 type=animate/>"
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

function jinru(npc, player, idx)
	local idx = tonumber(idx)
	local lv = lualib:GetInt(player, "exerciselv")
	if lv < idx then
		lualib:MsgBox(player, "#COLORCOLOR_GREENG#����ǰ�ľ�λ�ƺŲ��߱�����õ�ͼ��Ȩ�ޣ�����ȥ���׳ƺš�#COLOREND#")
		return ""
	end
	lualib:Player_MapMoveXY(player, zhuanshu_t[idx][1], zhuanshu_t[idx][2], zhuanshu_t[idx][3], 3)
	local msg = "��ʿ["..lualib:Name(player).."]ǰ���ƺŸ�����ͼ��"..zhuanshu_t[idx][1].."��ר����������BOSS�ȴ�������������"
	lualib:SysMsg_SendBroadcastMsg(msg, "�����鱨")
	return ""
end
