



function main(npc,player)
--[[	local msg = "  BOSS��������ˢ��3������BOSS��ֻ��ǿ����Ҳ��ܻ�ɱ����÷����Ϻͼ�Ʒװ����\n"
	local msg = msg.."��������������������������������������������������������������\n"
	local msg = msg.."˵����\n"
	local msg = msg.."1.����������#COLORCOLOR_GREENG#VIP3����#COLOREND#�����ѽ��룬VIP1-2�������10Ԫ������\n"
	local msg = msg.."2.BOSS������3��\n"
	local msg = msg.."3.ˢ��ʱ�䣺240-360����\n"
	local msg = msg.."4.������ϣ�ȫϵ�в���\n"
	local msg = msg.."5.����װ����ȫϵ��װ��\n"
	local msg = msg.."����������������������������������������������������������������\n"
	local msg = msg.."#OFFSET<X:150,Y:0>##COLORCOLOR_GREENG#<@jinru *01* ����BOSS����3��> #COLOREND# \n"
	return msg--]]
	lualib:ShowFormWithContent(player, "form�ļ���", "BOSS_ThirdWnd")
	return ""
end

function jinru3(npc,player,param)
	if lualib:GetVipLevel(player) >= 3 then 
		lualib:Player_MapMove(player, "BOSS��������")
	elseif lualib:GetVipLevel(player) >= 1 and lualib:GetVipLevel(player) < 3 then
		if lualib:Player_SubIngot(player, 100, false, "��Ԫ��:ԭ��", "������") then
			lualib:Player_MapMove(player, "BOSS��������")
		else
			return "������Ԫ�����㣬VIP1����Ҫ����100Ԫ���ſ��Խ���BOSS��������"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		lualib:SysMsg_SendBottomColor(player, "����VIP�ȼ�����", 7, 2)
	end
	return ""
end
