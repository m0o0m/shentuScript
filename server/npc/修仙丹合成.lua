local jinbi = 10000	


function main(npc,player)
	local mes = " NpcKeyName = \"�����ɵ��ϳɡ�\""--����
	lualib:ShowFormWithContent(player, "�ű���", mes)
	local msg = [[




   #COLORCOLOR_ORANGE#�ȼ��ﵽ500��������Ҫʹ�����ɵ������ȼ�

   #COLORCOLOR_BLUE#���ɵ��ϳ�Ҫ,������x3+10000���

  

                    <@sure *01*���ϳ����ɵ���>           
	]]
 
lualib:SetPanelSize(npc, 426, 258)
	
	return msg
end






function sure(npc, player)
if lualib:ItemCount(player, "�����ȼ���") < 3 then
	showmsg(player, "��������������3��")
    return main(npc,player)
end
if lualib:GetGold(player) < jinbi then 
		showmsg(player, "��Ҳ���"..jinbi.."")
return main(npc,player)
end
lualib:DelItem(player, "�����ȼ���", 3, 2, "�ϳ�", "�ϳ�")
lualib:SubGold(player, jinbi, "�ϳ�", lualib:Name(player))
 lualib:AddItem(player,"�м��ȼ���",1,false,"�ϳ�", player)
lualib:SysMsg_SendPromptMsg(player, "�ϳɳɹ�")
	return main(npc,player)
end





function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "�ű���", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form�ļ���", "MsgBox")
end