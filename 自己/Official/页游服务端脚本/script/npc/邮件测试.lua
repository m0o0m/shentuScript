function main(npc,player) 
	--lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenRewardHall()")

	--lualib:ShowFormWithContent(player,"form文件表单","测试")	
	--lualib:ShowFormWithContent(player,"form文件表单","RewardHall")
	-- lualib:ShowFormWithContent(player,"form文件表单","DemonWnd")
	--	lualib:SetDBNum("wasActivityUnderway", 0)	
		--lualib:SetDBNum("ActivityUnderway", 0)			
		--lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
        --local pname= lualib:Name(player)
	--lualib:Mail("群英争霸活动", pname, "感谢您参与本次活动，这是您的击杀10人奖励，请查收。", 0, 0, {"魂珠碎片小" , 6 , 1,"BOSS积分精魄" , 3 , 1 ,"成就令牌" , 1 , 1  } )
	--lualib:SysPromptMsg(player, "A.var:"..lualib:GetDBNum("ActivityUnderway"))
	--lualib:SysPromptMsg(player, "Ac.Namevar:"..lualib:GetDBStr("nowActivityName"))
	--lualib:SetVipLevel(player, 0)
			--lualib:ShowFormWithContent(player,"脚本表单","CL:SetQuickBar(".. 1 ..",".. 9 ..",".. 13 ..")")
	--lualib:SetDayInt(player, "qianwang5",0)
	--lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(" .. 7 ..");")

	
	lualib:SetDayInt(player, "qianwang10",0)
			--lualib:ShowFormWithContent(player, "form文件表单","BuyItemWnd#\"鹤嘴锄\"#\"采矿镐\#200")
	lualib:Player_Summon(player, "神兽4级", 32)
return ""
end