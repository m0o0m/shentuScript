



function main(npc,player)
	--[[local msg = "  BOSS��������ˢ��5������BOSS��ֻ��ǿ����Ҳ��ܻ�ɱ����÷����Ϻͼ�Ʒװ����\n"
	local msg = msg.."��������������������������������������������������������������\n"
	local msg = msg.."˵����\n"
	local msg = msg.."1.����������#COLORCOLOR_GREENG#VIP2����#COLOREND#�����ѽ��룬VIP1�������10Ԫ������\n"
	local msg = msg.."2.BOSS������5��\n"
	local msg = msg.."3.ˢ��ʱ�䣺150-180����\n"
	local msg = msg.."4.������ϣ�ȫϵ�в���\n"
	local msg = msg.."5.����װ����ȫϵ��װ��\n"
	local msg = msg.."����������������������������������������������������������������\n"
	local msg = msg.."#OFFSET<X:150,Y:0>##COLORCOLOR_GREENG#<@jinru *01* ����BOSS����2��> #COLOREND# \n"
	return msg--]]
	lualib:ShowFormWithContent(player, "form�ļ���", "BOSS_SecondWnd")
	return ""
end

function jinru(npc,player,param)
	if lualib:GetVipLevel(player) >= 2 then 
		lualib:Player_MapMove(player, "BOSS��������")
	elseif lualib:GetVipLevel(player) == 1 then
		if lualib:Player_SubIngot(player, 10, false, "��Ԫ��:ԭ��", "������") then
			lualib:Player_MapMove(player, "BOSS��������")
		else
			return "������Ԫ�����㣬VIP1����Ҫ����10Ԫ���ſ��Խ���BOSS��������"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		lualib:SysMsg_SendBottomColor(player, "����VIP�ȼ�����", 7, 2)
	end
	return ""
end
