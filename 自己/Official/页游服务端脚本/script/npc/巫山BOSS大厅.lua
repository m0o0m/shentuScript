function main(npc,player)
	local msg = "\n                  #COLORCOLOR_GREENG#BOSS ��  ��#COLOREND#\n\n"
	local msg = msg.."#COLORCOLOR_BROWN#    �������ʣ�BOSS������������;��ˢ�����BOSS�ĵط��������ࡢˢ�¿죬�ҵ���ȫϵ��װ������\n"
	local msg = msg.."\n\n\n"
	local msg = msg.."                     #COLORCOLOR_GREENG#˵  ��#COLOREND##COLORCOLOR_BROWN#\n\n"
	local msg = msg.."  1.����������#COLORCOLOR_GREENG#��ΪVIP#COLOREND##COLOREND##COLORCOLOR_BROWN#����ֵ1Ԫ���ܳ�ΪVIP��\n\n"
	local msg = msg.."  2.BOSS������һ��10��������5��������3��\n\n"
	local msg = msg.."  3.ˢ��ʱ�䣺15-360����\n\n"
	local msg = msg.."  4.������ϣ�ȫϵ�в���\n\n"
	local msg = msg.."  5.����װ����ȫϵ��װ��\n\n"
	local msg = msg.."\n\n\n\n\n\n"
	local msg = msg.."              <@jinru *01* ��������BOSS��������>\n"
	return msg
end

function jinru(npc,player,param)
	if lualib:GetVipLevel(player) >= 1 then 
		lualib:Player_MapMove(player, "BOSS����")
	else
		lualib:SysMsg_SendBottomColor(player, "����VIP�ȼ�����", 7, 2)
	end
	return ""
end
