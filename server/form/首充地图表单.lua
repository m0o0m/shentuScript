--npc������ �׳��ͼ   ������UI��򲻿���


local mapkey = "�׳��ͼ"

local x = 0 --д0�����������

local y = 0 --д0�����������

local bills = 5000--��Ҫ��ֵԪ����Ŀ


function show(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "�׳��ͼ")
	return ""
end


function main(player)
	if lualib:GetTotalBill(player) < bills then
		lualib:MsgBox(player, "��Ǹ���ĳ�ֵ���㡣")
		return ""
	end
	if x == 0 and y == 0 then
		lualib:Player_MapMove(player, mapkey)
	else
		lualib:Player_MapMoveXY(player, mapkey, x, y, 3)
	end
	return ""
end