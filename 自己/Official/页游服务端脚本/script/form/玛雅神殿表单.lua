--����Զ�����һ��
function enter(player)
	--lualib:SysPromptMsg(player, "enter=") 
	lualib:Player_MapMoveXY(player, "�������һ��" , 21 , 171 , 5)
	lualib:ShowFormWithContent(player,"�ű���","mayaTemple.closeWnd()")
	return ""

end


--����Զ��������
function enter2(player)
	local daycounts = lualib:GetDayInt(player, "mayaTemple")
	if daycounts >= 2 then 
		lualib:ShowFormWithContent(player,"�ű���","mayaTemple2.msg('����ɽ����������������,����������')")
		return ""	
	end
	
	if lualib:ItemCount( player , "���ž���") >= 1 then
		if lualib:DelItem(player, "���ž���", 1 , 2 , "���ž���" , "��������" ) then
			lualib:Player_MapMoveXY( player, "����������" , 103 , 188 , 5 )
			lualib:ShowFormWithContent(player,"�ű���","mayaTemple2.closeWnd()")
			lualib:SetDayInt(player, "mayaTemple", daycounts + 1)
			local sName = lualib:Name( player )
			--lualib:SysMsg_SendBroadcastColor( "#COLORCOLOR_WRITE#��ҡ�#COLORCOLOR_GREENG#"..sName.."#COLOREND#��������#COLORCOLOR_GREENG#Զ��������#COLOREND#�����Զ�����Ŀ�������ɽ�����ң�" , "" , 1, 0)
			lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#"..sName.."#COLOREND##COLORCOLOR_YELLOW#����#COLOREND##COLORCOLOR_BLUE#Զ��������#COLOREND##COLORCOLOR_YELLOW#��Զ�������Դ���ɽ��Զ������Ա�����룡#COLOREND#" , "" , 1, 0)
			
			return ""
		else
			--lualib:ShowFormWithContent(player,"�ű���","mayaTemple2.msg('ȱ��Զ�ž���')");
			lualib:ShowFormWithContent(player,"�ű���","mayaTemple2.msgbox()");
			return ""
		end
	else
		--lualib:ShowFormWithContent(player,"�ű���","mayaTemple2.msg('ȱ��Զ�ž���')")
		lualib:ShowFormWithContent(player,"�ű���","mayaTemple2.msgbox()");
		return ""
	end
end

--����Զ�ž���
function Buy(player)
	if not lualib:Player_IsIngotEnough(player, 200, false) then
		lualib:ShowFormWithContent(player,"�ű���","ReinTemple.YBMsg()")
		--lualib:SysPromptMsg(player, "Ԫ������") 
		return ""
	end
	if lualib:Player_SubIngot(player, 200, false, "��������", "��������") then 
		lualib:AddItem(player, '���ž���', 1, true, "��������", player)
	end
	return ""
end