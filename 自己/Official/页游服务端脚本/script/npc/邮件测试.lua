function main(npc,player) 
	--lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenRewardHall()")

	--lualib:ShowFormWithContent(player,"form�ļ���","����")	
	--lualib:ShowFormWithContent(player,"form�ļ���","RewardHall")
	-- lualib:ShowFormWithContent(player,"form�ļ���","DemonWnd")
	--	lualib:SetDBNum("wasActivityUnderway", 0)	
		--lualib:SetDBNum("ActivityUnderway", 0)			
		--lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
        --local pname= lualib:Name(player)
	--lualib:Mail("ȺӢ���Ի", pname, "��л�����뱾�λ���������Ļ�ɱ10�˽���������ա�", 0, 0, {"������ƬС" , 6 , 1,"BOSS���־���" , 3 , 1 ,"�ɾ�����" , 1 , 1  } )
	--lualib:SysPromptMsg(player, "A.var:"..lualib:GetDBNum("ActivityUnderway"))
	--lualib:SysPromptMsg(player, "Ac.Namevar:"..lualib:GetDBStr("nowActivityName"))
	--lualib:SetVipLevel(player, 0)
			--lualib:ShowFormWithContent(player,"�ű���","CL:SetQuickBar(".. 1 ..",".. 9 ..",".. 13 ..")")
	--lualib:SetDayInt(player, "qianwang5",0)
	--lualib:ShowFormWithContent(player, "�ű���", "GameMainBar.Taskitem(" .. 7 ..");")

	
	lualib:SetDayInt(player, "qianwang10",0)
			--lualib:ShowFormWithContent(player, "form�ļ���","BuyItemWnd#\"�����\"#\"�ɿ��\#200")
	lualib:Player_Summon(player, "����4��", 32)
return ""
end