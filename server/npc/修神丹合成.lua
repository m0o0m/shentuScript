local jinbi = 10000 	


function main(npc,player)
	local mes = " NpcKeyName = \"�����ɵ��ϳɡ�\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	local msg = [[




   #COLORCOLOR_ORANGE#�ȼ��ﵽ999��������Ҫʹ�����ɵ������ȼ�

   #COLORCOLOR_BLUE#���񵤺ϳ�Ҫ,���ɵ�x99+10000Ԫ��

  

                    <@sure *01*���ϳ����ɵ���>           
	]]
 
lualib:SetPanelSize(npc, 426, 258)
	
	return msg
end






function sure(npc, player)
if lualib:ItemCount(player, "�м��ȼ���") < 99 then
	showmsg(player, "�����ɵ�������99��")
    return main(npc,player)
end
if lualib:GetIngot(player) < jinbi then 
		showmsg(player, "Ԫ������"..jinbi.."")
return main(npc,player)
end
lualib:DelItem(player, "�м��ȼ���", 99, 2, "�ϳ�", "�ϳ�")
lualib:SubIngot(player, jinbi, "�ϳ�", lualib:Name(player))
 lualib:AddItem(player,"�߼��ȼ���",1,false,"�ϳ�", player)
lualib:SysMsg_SendPromptMsg(player, "�ϳɳɹ�")
	return main(npc,player)
end





function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "�ű���", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form�ļ���", "MsgBox")
end