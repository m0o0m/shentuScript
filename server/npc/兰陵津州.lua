local tab = {
	{"ɢ�˴�һ", 0, 0, 0, 0},
}


function main(npc,player)
	local mes = " NpcKeyName = \"��������ݡ�\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	lualib:SetPanelSize(npc, 400, 258)
	
	local msg = [[

#OFFSET<X:35,Y:10>##COLORCOLOR_ORANGE#һ��׷������Ĵ�����£�һ��ֵ����ص��ֵ�����
#OFFSET<X:35,Y:8>##COLORCOLOR_BLUE#�ഺ�ļ��������Ŵ���ĵ��εΣ�������Ѫ��д����
#OFFSET<X:35,Y:8>##COLORCOLOR_MAGENTA#��ܰ��ʾ��#COLORCOLOR_GREENG#BOSSװ��ȫ����һ�п���#COLOREND#

#OFFSET<X:39,Y:0>##COLORCOLOR_BLUE#��������������#COLORCOLOR_GOLD2#�ȼ�������,#COLORCOLOR_RED#��ѽ���
#OFFSET<X:39,Y:0>##COLORCOLOR_BLUE#����Ҫ�����#COLORCOLOR_GREENG#����BOSS..
#OFFSET<X:39,Y:0>##COLORCOLOR_BLUE#����Ҫ��������#COLORCOLOR_MAGENTA#ȫ������װ��,������Ͼ��ɱ���

#OFFSET<X:52,Y:0>##IMAGE1902700015##OFFSET<Y:-2>#<@enter#1 *01*��������ݡ�>         
	]]
 
	return msg
end


function enter(npc, player, idx)
	
	local mes = " NpcKeyName = \"��������ݡ�\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	lualib:SetPanelSize(npc, 400, 258)
	
	local idx = tonumber(idx)
	local name = lualib:Name(player)
	
	if lualib:Level(player) < tab[idx][4] then
		return "#POS<X:12,Y:25>##COLORCOLOR_RED#��Ǹ,���ĵȼ�����"..tab[idx][4].."��,�޷�����õ�ͼ!\n\n\n#POS<X:12>##IMAGE1902700019##OFFSET<Y:-2>#<@main *01*��������ҳ��>"
	end
	
	if tab[idx][5] > 0 then
		if lualib:GetIngot(player) < tab[idx][5] then
			return "#POS<X:12,Y:25>##COLORCOLOR_RED#��Ǹ,����Ԫ������"..tab[idx][5]..",�޷���ս�ر���һ��!\n\n\n#POS<X:12>##IMAGE1902700019##OFFSET<Y:-2>#<@main *01*��������ҳ��>"
		end
		if lualib:SubIngot(player, tab[idx][5], "��ս"..tab[idx][1], npc) == false then
			return "#POS<X:12,Y:25>##COLORCOLOR_RED#��Ǹ,����Ԫ������"..tab[idx][5]..",�޷���ս�ر���һ��!\n\n\n#POS<X:12>##IMAGE1902700019##OFFSET<Y:-2>#<@main *01*��������ҳ��>"
		end
	end

	if tab[idx][2] == 0 or tab[idx][3] == 0 then
		lualib:Player_MapMove(player, tab[idx][1])
	else
		lualib:Player_MapMoveXY(player, tab[idx][1], tab[idx][2], tab[idx][3], 3)
	end

	lualib:SysMsg_SendBroadcastMsg("��ʿ��"..name.."����ǹƥ�����ˡ�".. lualib:KeyName2Name(tab[idx][1], 5) .."�������Ϊ�����ɣ�", "ϵͳ��Ϣ")
	
	return ""
end