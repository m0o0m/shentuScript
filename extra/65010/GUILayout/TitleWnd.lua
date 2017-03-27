TitleWnd = {}
function TitleWnd.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"TitleWnd",1806100012,224,67)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,384, 505)
        GUI:WndSetMoveWithLBM(_Parent)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805500015,130,11)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,126, 22)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"lineImage1",1800600004,29,129)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,327, 2)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"text1",49,68,100,23)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4281116897)
        GUI:EditSetTextM(_GUIHandle,"经验、功勋")
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"text2",78,93,247,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1805900080,327,5)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.CloseWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"experienceImg",1892100043,53,191)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
        GUI:ImageSetFitSize(_GUIHandle, true)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"text4",112,209,46,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"经验：")
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"experienceNum",148,208,65,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4290936121)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"exploitsImg",1802200022,53,255)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:EditCreate(_Parent,"text5",112,272,46,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"功勋：")
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"exploitsNum",148,271,65,24)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetTextColorM(_GUIHandle, 4290936121)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"textFullStar",264,331,77,16)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"任务满星！")
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"continueMission",1800000150,148,393)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.ContinueMission")
        GUI:WndSetTextM(_GUIHandle,"继续任务")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"buyNum",1800000150,148,393)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.PayYbRevMission")
        GUI:WndSetTextM(_GUIHandle,"购买1次")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent,"buyNumInfo",158,425,150,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TestWndChild_0",1806100000,40,147)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,224, 28)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent,"lineImage2",1800600004,30,370)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,327, 2)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    

    _Parent_wnd1 = GUI:WndCreateWnd(_Parent,"wnd1",0,0,0)
    if _Parent_wnd1 ~= 0 then
        GUI:WndSetVisible(_Parent_wnd1, false)
        GUI:WndSetSizeM(_Parent_wnd1,16, 16)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent_wnd1,"inf1",39,443,100,21)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:EditSetTextM(_GUIHandle,"任务剩余次数：")
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent_wnd1,"inf2",121,446,15,17)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294957313)
        GUI:EditSetTextM(_GUIHandle,"10")
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg1",1806700025,49,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg2",1806700025,69,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg3",1806700025,89,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg4",1806700025,109,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg5",1806700025,129,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg6",1806700025,149,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg7",1806700025,169,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg8",1806700025,189,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg9",1806700025,209,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ImageCreate(_Parent_wnd1,"starImg10",1806700025,229,330)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,22, 21)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    _GUIHandle = GUI:ButtonCreate(_Parent_wnd1,"getMission",1800000150,148,393)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.ReceiveMission")
        GUI:WndSetTextM(_GUIHandle,"领取任务")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,84, 32)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent_wnd1,"updateNum",263,334,52,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.UpdateStarNum")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "#SELECT#刷新等级#SELECTEND#")
    end
    
    _GUIHandle = GUI:RichEditCreate(_Parent_wnd1,"upgradeTitle",263,444,53,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.OpenUpdateTitleWnd")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "#SELECT#升级称号#SELECTEND#")
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent_wnd1,"notice",1804600019,339,430)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"马上获得称号")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,188, 50)
        GUI:WndSetTextColorM(_GUIHandle, 4292592384)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent_wnd1,"tips",1804600019,340,315)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"刷新10星任务")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,188, 50)
        GUI:WndSetTextColorM(_GUIHandle, 4292592384)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    
_Parent_wnd2 = GUI:WndCreateWnd(_Parent,"wnd2",0,10,0)
    if _Parent_wnd2 ~= 0 then
        GUI:WndSetVisible(_Parent_wnd2, false)
        GUI:WndSetSizeM(_Parent_wnd2,16, 16)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent_wnd2,"info1",79,367,119,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"花费       金币")
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent_wnd2,"info2",107,368,58,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294957313)
        GUI:EditSetTextM(_GUIHandle,"600000")
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent_wnd2,"info3",78,400,119,19)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4290950816)
        GUI:EditSetTextM(_GUIHandle,"花费       金币")
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent_wnd2,"info4",106,401,58,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4294957313)
        GUI:EditSetTextM(_GUIHandle,"300000")
        GUI:WndSetEnableM(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent_wnd2,"info5",238,367,74,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.GetReward")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "'#SELECT#领取3倍奖励#SELECTEND#'")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent_wnd2,"info6",238,400,75,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.GetReward")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "'#SELECT#领取2倍奖励#SELECTEND#'")
    end
    
    
    _GUIHandle = GUI:RichEditCreate(_Parent_wnd2,"info7",238,433,77,20)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,1002, "TitleWnd.GetReward")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:RichEditSetEditEnable(_GUIHandle, false)
        GUI:RichEditAppendString(_GUIHandle, "'#SELECT#免费领取奖励#SELECTEND#'")
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent_wnd2,"GET_REWARD_TIP",1804600019,339,350)
    if _GUIHandle ~= 0 then
        GUI:WndSetTextM(_GUIHandle,"领三倍升级更快")
        GUI:WndSetVisible(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,188, 50)
        GUI:WndSetTextColorM(_GUIHandle, 4292592384)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    

    TitleWnd.UIInit(_Parent)
end

--UI Logic Code Start
TitleWnd.questConst = 0
function TitleWnd.UIInit(_Handle)
	
	TitleWnd.Handle = _Handle
	GUI:WndSetSizeM(TitleWnd.Handle,361,524)
	CenterWnd(TitleWnd.Handle)
	GUI:WndSetMagicUI(TitleWnd.Handle, 1)
	GUI:WndSetIsESCClose(TitleWnd.Handle, true)
	UI:Lua_SubmitForm("功勋称号表单","Open_CM_Wnd","")

end

function TitleWnd.RedrawGUI(data)
	local hh = GetWindow(0,"Achieve")
	if hh ~= 0 then
		GUI:WndClose(hh)
	end
	hh = GetWindow(0,"TaskOperationDlg")
	if hh ~= 0 then
		GUI:WndClose(hh)
	end
	
	TitleWnd.rewardTb = data[2]
	TitleWnd.dayNum = data[5]
	TitleWnd.exploitLevel = tonumber(data[7])
	TitleWnd.Title_three = tonumber(data[10]) 
	TitleWnd.monsterNum = 0
	
	local isComplete = tonumber(data[1])
	local starNum = tonumber(data[3])
	local missionIng = tonumber(data[4])
	local payNum = tonumber(data[6])
	local handle = 0
	
	local Title_clink = tonumber(data[8]) 
	local ach_score = tonumber(data[9]) 

    TitleWnd.questConst = tonumber(data[11])
	handle = GetWindow(_Handle, "wnd1,tips")
	if handle ~= 0 then
		if Title_clink == 0 then 
			GUI:ButtonSetTextFont(handle,"SIMLI18") 
			GUI:WndSetTextArrangeType(handle,10,0,0,0)
			GUI:WndSetVisible(handle, true)
		end
	end
	handle = GetWindow(_Handle, "wnd1,notice")
	if handle ~= 0 then
		if ach_score >= 30000 and TitleWnd.exploitLevel == 0 then 
			GUI:ButtonSetTextFont(handle,"SIMLI18") 
			GUI:WndSetTextArrangeType(handle,10,0,0,0)
			GUI:WndSetVisible(handle, true)
			local _hand = GetWindow(TitleWnd.Handle, "wnd1,upgradeTitle")
			if _hand ~= 0 then
				GUI:RichEditClear(_hand) 
				GUI:RichEditAppendString(_hand, "#SELECT#领取称号#SELECTEND# ") 
				GUI:WndSetHint(_hand, "<font color='#47B260'>称号可领取，点击链接领取称号</font>")
			end
		end
	end
	local ach_tb = {30000, 210000, 550000, 870000, 950000, 1380000, 2590000, 3450000, 4320000, 7120000, 999999999}
	local _hand = GetWindow(TitleWnd.Handle, "wnd1,upgradeTitle")
	if _hand ~= 0 then
		if ach_score >= ach_tb[TitleWnd.exploitLevel+1] then
			WndAddEffect(TitleWnd.Handle, "wnd1,upgradeTitle", 3020100300, -5, -5, 100, 0)
		else
			WndDelEffect(_hand)
		end
	end
	
    local costYb = ""
    if payNum <= 4 then
        costYb = ""..(math.pow(2, payNum) * 98)
    end
	TitleWnd.monsterNum = 6 + 2*starNum
	
	
	handle = GetWindow(TitleWnd.Handle, "wnd1,updateNum")
	if handle ~= 0 then
		GUI:WndSetHint(handle, "<font color='#B8A085'>花费</font><font color='#FFD901'>10000</font><font color='#B8A085'>绑定金币刷新任务星级</font>")
	end
	handle = GetWindow(TitleWnd.Handle, "wnd1,inf2")
	if handle ~= 0 then
		GUI:EditSetTextM(handle, tostring(TitleWnd.dayNum))
		if TitleWnd.dayNum ==0 then
			local color = MakeARGB(255,255,0,0)
			GUI:WndSetTextColorM(handle, color)
		end
	end
	if isComplete == 0 then  --任务未完成
		handle = GetWindow(TitleWnd.Handle, "wnd1")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		
		handle = GetWindow(TitleWnd.Handle, "wnd2")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
		if missionIng == 0 then
			if TitleWnd.dayNum ~= 0 then  --剩余次数不为0
				handle = GetWindow(TitleWnd.Handle, "wnd1,getMission")
				if handle ~= 0 then
					GUI:WndSetVisible(handle, true)
				end
			else   --为0
				handle = GetWindow(TitleWnd.Handle, "buyNum")
				if handle ~= 0 then
					GUI:WndSetVisible(handle, true)
					GUI:ButtonSetShine(handle,true)
                    if payNum > 4 then
                        GUI:WndSetEnableM(handle,false)
                        GUI:ButtonSetShine(handle,false)
                    end
				end
				handle = GetWindow(TitleWnd.Handle, "wnd1,getMission")
				if handle ~= 0 then
					GUI:WndSetVisible(handle, false)
				end
				handle = GetWindow(TitleWnd.Handle, "buyNumInfo")
				if handle ~= 0 then
                    if payNum <= 4  then
    					GUI:WndSetVisible(handle, true)		
    					--[[if tonumber(costYb) > 100 then
    						GUI:WndSetPosM(handle, 141, 453)
    					end
    					if tonumber(costYb) > 1000 then
    						GUI:WndSetPosM(handle, 137, 453)
    					end
    					if tonumber(costYb) > 10000 then
    						GUI:WndSetPosM(handle, 135, 453)
    					end
    					if tonumber(costYb) > 100000 then
    						GUI:WndSetPosM(handle, 133, 453)
    					end
    					if tonumber(costYb) > 1000000 then
    						GUI:WndSetPosM(handle, 131, 453)
    					end]]
                        GUIRichEditClear(handle) 
    					GUI:RichEditAppendString(handle, "#COLORCOLOR_DARKGOLD#".."消耗".."#COLOREND#" .."#COLORCOLOR_GOLD#"..costYb.."#COLOREND#".."#COLORCOLOR_DARKGOLD#".."元宝".."#COLOREND#" )
                    else
                        GUIRichEditClear(handle) 
                        GUI:RichEditAppendString(handle, "#COLORCOLOR_DARKGOLD#".."购买次数已达上限".."#COLOREND#")
                    end
				end
			end
			handle = GetWindow(TitleWnd.Handle, "continueMission")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			end
			handle = GetWindow(TitleWnd.Handle, "wnd1,updateNum")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, true)
			end
		else   --任务进行中
			handle = GetWindow(TitleWnd.Handle, "wnd1,getMission")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			end
			handle = GetWindow(TitleWnd.Handle, "continueMission")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, true)
			end
			handle = GetWindow(TitleWnd.Handle, "wnd1,updateNum")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			end
		end
		
		for i = 1 , 10 do  --显示任务星级
			ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700025 )
		end
		for i = 1 , starNum do
			ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700026 )
		end
		if starNum == 10 then
			handle = GetWindow(TitleWnd.Handle,"textFullStar")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, true)
			end
			handle = GetWindow(TitleWnd.Handle,"wnd1,updateNum")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, false)
			end
		end
	else  --任务完成
		handle = GetWindow(TitleWnd.Handle, "wnd2")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		
		handle = GetWindow(TitleWnd.Handle, "wnd1")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
	
		if TitleWnd.Title_three == 0 then 
			handle = GetWindow(TitleWnd.Handle, "wnd2,GET_REWARD_TIP")
			if handle ~= 0 then
				GUI:WndSetVisible(handle, true)
				GUI:WndSetTextArrangeType(handle,10,0,0,0)
				GUI:ButtonSetTextFont(handle,"SIMLI18")
			end
		end
	end
	
	TitleWnd.UpdateMissionInfo(starNum)
end


function TitleWnd.UpdateStarUI(a)
	local handle = 0            --刷新任务星级
	for i = 1 , 10 do
		ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700025 )
		
	end
	handle = GetWindow(TitleWnd.Handle, "wnd1,starImg1")
	if handle ~= 0 then
		WndAddEffect(TitleWnd.Handle,"wnd1,starImg1",1089400000,-25,-58,100,1)
	end
	for i = 1 , a do
		ImageSetImageID(TitleWnd.Handle, "wnd1,starImg" .. i, 1806700026 )
	end
	if a == 10 then
		handle = GetWindow(TitleWnd.Handle,"textFullStar")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)
		end
		handle = GetWindow(TitleWnd.Handle,"wnd1,updateNum")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, false)
		end
	end
	TitleWnd.UpdateMissionInfo(a)
end

function TitleWnd.UpdateMissionInfo(a)
	local handle = 0               --刷新奖励信息
	handle = GetWindow(TitleWnd.Handle,"experienceNum")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,tostring(TitleWnd.rewardTb[a][1]))
	end
	handle = GetWindow(TitleWnd.Handle,"exploitsNum")
	if handle ~= 0 then
		GUI:EditSetTextM(handle,tostring(TitleWnd.rewardTb[a][2]))
	end
	--任务需求
	local playerLevel = 0
	if CL:GetPlayerSelfProperty32(ROLE_PROP32_LEVEL) then
		playerLevel = LuaRet
	end
	TitleWnd.monsterNum = 6 + 2*a
	handle = GetWindow(TitleWnd.Handle, "text2")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
	end

    if TitleWnd.questConst == 1 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "前往毒虫洞杀死"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 4 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "邪庙一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 2 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "食人魔洞穴一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 3 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "天荒阵一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 5 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "蜘蛛洞一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 6 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "牛魔洞一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 7 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "骸骨洞一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
    if TitleWnd.questConst == 8 then
        if handle ~= 0 then
            GUI:RichEditAppendString(handle, "永夜之地一层"..TitleWnd.monsterNum.."只怪物，获得大量功勋")
        end
    end
end

function TitleWnd.UpdateStarNum()  --刷新任务星级
	local handle = GetWindow(TitleWnd.Handle, "wnd1,tips")
	if handle ~= 0 then 
		GUI:WndSetVisible(handle, false)
	end
	UI:Lua_SubmitForm("功勋称号表单","UpdateStarNum","")
end

function TitleWnd.ReceiveMission()	  --接受任务
	UI:Lua_SubmitForm("功勋称号表单","Receive_CM_Mission","")
end

function TitleWnd.ContinueMission()  --继续任务
	UI:Lua_SubmitForm("功勋称号表单","Continue_CM_Mission","")
end

function TitleWnd.PayYbRevMission()  --购买任务次数
	UI:Lua_SubmitForm("功勋称号表单","PayYbRev_CM_Mission","")
end

function TitleWnd.GetReward(h)       --领取奖励
	local index = GUI:WndGetParam(h)
	UI:Lua_SubmitForm("功勋称号表单","Get_CM_Reward",tostring(index))
end

function TitleWnd.MsgUp(msg)   --消息提示
	local handle = GetWindow(TitleWnd.Handle,"lineImage2")
	local color = MakeARGB(255,255,0,0)
	window_msg_up(handle, msg, 55, -10, 30, color, 2)
end

function TitleWnd.OpenUpdateTitleWnd()  --打开升级称号窗口
	local handle = 0
	if TitleWnd.exploitLevel < 10 then
		if TitleWnd.Handle ~= 0 then 
			GUI:WndSetVisible(TitleWnd.Handle, false)	
		end
		handle = GetWindow(0, "Achieve")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true)	
			UI:Lua_SubmitForm("功勋称号表单", "main", "")
		else
			UI:Lua_OpenWindow(0, "Achieve.lua")
		end
		
	else
		TitleWnd.MsgUp("您的称号已经满级！")
	end
end

function TitleWnd.CloseWnd()
	if TitleWnd.Handle ~= 0 then 
		GUI:WndClose(TitleWnd.Handle)
	end
end
TitleWnd.main()