MarsWnd = {}
function MarsWnd.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"MarsWnd",1803200000,62,29)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,1026, 570)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"title",1803200002,468,10)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,90, 55)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"marsBtn1",1803200003,117,105)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.Mars_btn")
		GUI:WndSetParam(_GUIHandle, 1)
		GUI:WndSetSizeM(_GUIHandle,158, 45)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"marsBtn2",1803200046,117,177)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.Mars_btn")
		GUI:WndSetParam(_GUIHandle, 2)
		GUI:WndSetSizeM(_GUIHandle,158, 45)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"marsBtn3",1803200055,117,250)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.Mars_btn")
		GUI:WndSetParam(_GUIHandle, 3)
		GUI:WndSetSizeM(_GUIHandle,158, 45)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"marsBtn4",1803200043,113,327)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.Mars_btn")
		GUI:WndSetParam(_GUIHandle, 4)
		GUI:WndSetSizeM(_GUIHandle,167, 48)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"marsBtn5",1803200019,105,408)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.Mars_btn")
		GUI:WndSetParam(_GUIHandle, 5)
		GUI:WndSetSizeM(_GUIHandle,186, 53)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"NudeModel",1990401001,380,180)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,265, 304)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"NudeModel1",0,271,76)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,400, 400)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"marsName",1803200028,751,94)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,197, 70)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ATKpic",1803200027,728,154)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,99, 43)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ATKnum1",0,830,163)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,25, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ATKnum2",0,855,163)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,25, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ATKnum3",0,880,163)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,25, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ATKnum4",0,905,163)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,25, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ATKnum5",0,930,163)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,29, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"marsProp",1803200033,780,203)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,82, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"marsIntroduce",1803200034,783,299)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,82, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"marsItem",1803200035,786,425)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,82, 21)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsHP",742,231,42,18)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292118847)
		GUI:EditSetTextM(_GUIHandle,"生命：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsHPnum",781,232,58,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"100860000")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsHPrecover",859,230,77,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292118847)
		GUI:EditSetTextM(_GUIHandle,"生命恢复：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsHPrecoverNum",918,232,45,16)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"99999")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsATK",742,261,44,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292118847)
		GUI:EditSetTextM(_GUIHandle,"攻击：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsATKnum",781,261,58,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"10086")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsDef",859,261,56,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4292118847)
		GUI:EditSetTextM(_GUIHandle,"防御：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"marsDefNum",894,261,54,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"10086")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"IntroText",743,331,212,89)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
_GUIHandle = GUI:ImageCreate(_Parent,"itemBack1",1800000133,701,460)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,41, 41)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item1",-1,705,464,41,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,41, 41)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack2",1800000133,752,460)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,41, 41)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item2",0,756,464,41,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,41, 41)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack3",1800000133,804,460)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,41, 41)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item3",0,808,464,41,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,41, 41)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack4",1800000133,856,460)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,41, 41)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item4",0,860,464,41,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,41, 41)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"itemBack5",1800000133,908,460)
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,41, 41)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item5",0,912,464,41,41)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,41, 41)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"actText",135,465,104,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"helpImg",1800000297,113,505)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,27, 30)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"marsFuncIntro",144,511,103,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"callBtn",1803200023,439,505)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.CallbtnClicked")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,166, 45)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"activateBtn",1803200039,439,505)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.ActivateMars")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,166, 45)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"closeBtn",1800000068,943,31)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "MarsWnd.CloseWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,24, 24)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"usingPic1",1803200036,235,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,78, 55)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"usingPic2",1803200036,235,158)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,78, 55)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"usingPic3",1803200036,235,233)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,78, 55)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"usingPic4",1803200036,235,310)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,78, 55)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"usingPic5",1803200036,235,390)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,78, 55)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"text1",767,519,90,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"免费召唤次数：")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"callNum",849,522,30,19)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"restTime",769,519,200,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text2",130,217,147,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294950912)
		GUI:EditSetTextM(_GUIHandle,"登录2天或VIP1免费领取")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text3",130,292,147,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294950912)
		GUI:EditSetTextM(_GUIHandle,"登录3天或VIP2免费领取")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"text4",130,370,147,22)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294950912)
		GUI:EditSetTextM(_GUIHandle,"登录5天或VIP3免费领取")
		GUI:WndSetEnableM(_GUIHandle, false)
	end
	
	
	
	MarsWnd.UIInit(_Parent)
end

MarsWnd.index = 1
--UI Logic Code Start
function MarsWnd.UIInit(_Handle)
	local GUIHandle = 0
	MarsWnd.cur_index = 0
	MarsWnd.WndHandle = _Handle
	CenterWnd(MarsWnd.WndHandle)
	GUI:WndSetSizeM(MarsWnd.WndHandle,847,570)
	MarsWnd.item = deserialize(FormParam[1])
	MarsWnd.Info = deserialize(FormParam[2])
	MarsWnd.loginDayNum = deserialize(FormParam[4])
	MarsWnd.Is_activate = deserialize(FormParam[6])
	MarsWnd.vipLv = deserialize(FormParam[5])
	MarsWnd.callnum = deserialize(FormParam[7])

	
	MarsWnd.ShowCallNum(MarsWnd.callnum)
	
	local handle = GetWindow(nil,"GuideDlg_mars")
	if handle ~= 0 then
		GUI:WndClose(handle)
	end
	
	if MarsWnd.loginDayNum >= 2 or MarsWnd.vipLv >= 1 then
		ButtonSetImageID(MarsWnd.WndHandle, "marsBtn2", 1803200007 )
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"text2")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, false)	
		end
	end
	
	if MarsWnd.loginDayNum >= 3 or MarsWnd.vipLv >= 2 then
		ButtonSetImageID(MarsWnd.WndHandle, "marsBtn3", 1803200011 )
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"text3")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, false)
		end
	end
	
	if MarsWnd.loginDayNum >= 5 or MarsWnd.vipLv >= 3 then
		ButtonSetImageID(MarsWnd.WndHandle, "marsBtn4", 1803200015 )
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"text4")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, false)
		end
	end
	
	
	
	
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"helpImg")
	if GUIHandle ~= 0 then
		GUI:WndSetHint(GUIHandle, "战神召唤说明：\n1.每日上线可免费召唤一次战神\n2.在线30分钟可获得一次召唤次数，每天最多可获得4次\n3.离线或死亡（PVP活动场景中死亡除外）战神会消失")
	end
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsFuncIntro")
	if GUIHandle ~= 0 then
		GUI:WndSetHint(GUIHandle, "战神召唤说明：\n1.每日上线可免费召唤一次战神\n2.在线30分钟可获得一次召唤次数，每天最多可获得4次\n3.离线或死亡（PVP活动场景中死亡除外）战神会消失")
	end
	local marsBtnHint = deserialize(FormParam[3])
	for i = 1 , 5 do
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsBtn"..i)
		if GUIHandle ~= 0 then
			GUI:WndSetHint(GUIHandle, ""..marsBtnHint[i])
		end
	end
	
--[[	local _handle = GUI:WndFindWindow(MarsWnd.WndHandle,"NudeModel")    ---设置动画
	if _handle ~= 0 then 
		GUI:ImageSetDrawCenter(_handle,true)
		GUI:ImageSetAnimateEnable(_handle, true, 150)
	end --]]
	
--[[	local resrTime_min = deserialize(FormParam[4])
	local resrTime_sec = deserialize(FormParam[5])
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"restTime")
	GUI:EditSetTextM(GUI:Handle,"（"..resrTime_min.."："..resrTime_sec.."后增加一次）")
	
	local callnumber = deserialize(FormParam[6])
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"callNum")
	GUI:RichEditClear(GUI:Handle)
	GUI:RichEditAppendString(GUI:Handle,callnumber)--]]
	if deserialize(FormParam[9]) == "is_Exist" then
		local heroName = ""
		local i = 1
		local heroTB = {["先锋战圣"] = 5 , ["傲啸战神"] = 4 , ["怒威战将"] = 3 , ["圣威战将"] = 2 , ["天威战将"] = 1}
		heroName = deserialize(FormParam[8])
		local i = heroTB[heroName]
		MarsWnd.index = i
		MarsWnd.cur_index = i
		MarsWnd.ShowUsingPic()
		ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..i,true)          ---初始化，锁定使用中的战神
	end
	
	if deserialize(FormParam[9]) == "is_not_Exist" and FormParam[8] ~=0 then    --不存在战神，显示上次召唤成功的战神
		local index = FormParam[8]
		MarsWnd.index = index
		ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..index,true)
	elseif FormParam[8] == 0 then
		ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn1",true)           --没召唤过战神则显示第一个
	end

	MarsWnd.UpdateUI()
end


function MarsWnd.UpdateUI()
	MarsWnd.index = tonumber(MarsWnd.index)
	local GUIHandle = 0
	for i = 1 , 5 do
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"item"..i)
		if GUIHandle ~= 0 then 
			RDItemCtrlSetGUIDataPropByKeyName(MarsWnd.WndHandle,"item"..i,MarsWnd.item[MarsWnd.index][i], 1, false)  --物品框填充   
		end
		ImageSetImageID(MarsWnd.WndHandle, "ATKnum" .. i, -1 )
	end
	 
	local marsNametab = {1803200028,1803200029,1803200030,1803200031,1803200032}
	ImageSetImageID(MarsWnd.WndHandle, "marsName", marsNametab[MarsWnd.index] )  --战神模型、名字
	local handle = GetWindow(MarsWnd.WndHandle, "NudeModel1")

	--ImageSetImageID(MarsWnd.WndHandle, "NudeModel1", marsModelIcon)
	local a = {1893120000,1893100000, 1893140000, 1893110000,  1893130000}
	if handle ~= 0 then
		GUI:WndSetVisible(handle, true)
		--GUI:ImageSetDrawCenter(handle,true)
		ImageSetImageID(handle, nil, a[MarsWnd.index])
		GUI:ImageSetAnimateEnable(handle, true, 200)
		if MarsWnd.index == 3 then
			GUI:WndSetPosM(handle, 271-24,76-24)
		else
			GUI:WndSetPosM(handle, 271,76)
		end
	end	
	local handle = GetWindow(MarsWnd.WndHandle, "marsHair")
	if handle ~= 0 then
		GUI:WndSetVisible(handle, false) 
	end	
	ImageSetImageID(MarsWnd.WndHandle, "NudeModel", 0)
	ImageSetImageID(MarsWnd.WndHandle, "marsWeapon", 0)
	
	------------------------------------------------------------------
	local fightNum = MarsWnd.item[MarsWnd.index][6]
	local showNum = 0
	local lenth = 0
	while ( fightNum/10 ~= 0 ) do
		showNum = fightNum % 10
		showNum = tonumber(CL:Plus(tostring(1801500107), tostring(showNum)))   
		ImageSetImageID(MarsWnd.WndHandle, "ATKnum" .. (5-lenth), showNum )  --战神攻击力（图拼凑）
		lenth = lenth + 1
		fightNum = math.floor(fightNum/10)
	end  
	
	local marsInfo = MarsWnd.Info[MarsWnd.index]
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsHPnum")  --战神生命值
	if GUIHandle ~= 0 then
		GUI:EditSetTextM(GUIHandle,tostring(marsInfo[1]))
	end
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsHPrecoverNum")  --生命回复
	if GUIHandle ~= 0 then
		GUI:EditSetTextM(GUIHandle,tostring(marsInfo[2]))
	end
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsATKnum")     --攻击
	if GUIHandle ~= 0 then
		GUI:EditSetTextM(GUIHandle,tostring(marsInfo[3]))
	end
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsDefNum")   --防御力
	if GUIHandle ~= 0 then
		GUI:EditSetTextM(GUIHandle,tostring(marsInfo[4]))	
	end
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"IntroText")  --介绍
	if GUIHandle ~= 0 then
		GUI:RichEditClear(GUIHandle)
		GUI:RichEditAppendString(GUIHandle,tostring(marsInfo[5]))	
	end
	
	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"callBtn")  
	if GUIHandle ~= 0 then
		GUI:WndSetHint(GUIHandle, "每次召唤消耗1次生命或88元宝")
	end
	
	local callBtnParam = WndGetParam(GUIHandle)
	if callBtnParam == MarsWnd.index or ((MarsWnd.loginDayNum < MarsWnd.index and MarsWnd.vipLv < MarsWnd.index) and MarsWnd.index ~= 5) then
		GUI:WndSetEnableM(GUIHandle, false)
	else 
		GUI:WndSetEnableM(GUIHandle, true)
	end
	if MarsWnd.loginDayNum == 4 and MarsWnd.index == 4 and MarsWnd.vipLv < 3 then
		GUI:WndSetEnableM(GUIHandle, false)
	end
	if MarsWnd.index == 5 and MarsWnd.Is_activate == 0 then   --激活按钮<-->召唤按钮
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"callBtn")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, false)
		end
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"activateBtn")
		if GUIHandle ~= 0 then 
			GUI:WndSetVisible(GUIHandle, true)
		end
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"activateBtn")
		if GUIHandle ~= 0 then
			GUI:WndSetHint(GUIHandle, "消耗8888元宝激活先锋战圣")
		end
	else
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"callBtn")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, true)
		end
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"activateBtn")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, false)
		end
	end
	if MarsWnd.Is_activate == 1 then
		GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"actText")
		if GUIHandle ~= 0 then
			GUI:WndSetVisible(GUIHandle, false)
		end
	end
	
--[[	GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"usingPic"..MarsWnd.index)
	if GUI:Handle ~= 0 then
		GUI:WndSetVisible(Handle, true)
	end--]]
	
end	

function MarsWnd.SetParam(param)
	MarsWnd.Is_activate = param
	MarsWnd.UpdateUI()
end


function MarsWnd.Update(_Handle)    
	for i = 1 , 5 do 
		
		local handle = GUI:WndFindWindow(MarsWnd.WndHandle,"marsBtn"..i)	
		if handle == _Handle then
			if handle ~= 0 then
				ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..i,true)
			end
		else 
			if handle ~= 0 then
				ButtonSetIsActivePageBtn(MarsWnd.WndHandle,"marsBtn"..i,false)
			end
		end
	end
end


function MarsWnd.Mars_btn(_Handle)
	MarsWnd.index = GUI:WndGetParam(_Handle)
	local Is_true = ButtonGetIsActivePageBtn(_Handle)
	if not Is_true then
		MarsWnd.Update(_Handle)
	end	
	MarsWnd.UpdateUI()
end

function MarsWnd.CallbtnClicked()
	if MarsWnd.callnum <= 0 then
		luaMsgBox.new("战神召唤","#COLORCOLOR_RED#\n             是否消耗#COLOREND#".."#COLORCOLOR_BLUE#88#COLOREND#".."#COLORCOLOR_RED#元宝召唤战神#COLOREND#", {"是", "否"}, {"MarsWnd.CompareIndex", "MarsWnd.out"}, h)
	else
		MarsWnd.CompareIndex(0)
	end
end



function MarsWnd.CompareIndex(h)
	local handle = 0
	if MarsWnd.index < MarsWnd.cur_index then
		MarsWnd.WarnMsgBox()
	else
		MarsWnd.CallMars()
	end
	if h ~= 0 then
		handle = GUI:WndGetParentM(h)
		if handle ~= 0 then
			GUI:WndClose(handle)
		end 
	end
end

function MarsWnd.WarnMsgBox()
	luaMsgBox.new("战神召唤", "#COLORCOLOR_RED#当前召唤战神攻击力低于使用中的战神，是否确认召唤？#COLOREND#", {"是", "否"}, {"MarsWnd.CallAnotherMars", "MarsWnd.out"}, _handle)
end

function MarsWnd.CallMars()
	UI:Lua_SubmitForm("MarsWnd_s","CallMars",tostring(MarsWnd.index))
	
	--MarsWnd.UpdateUI()
end

function MarsWnd.CallAnotherMars(_handle)
	local handle = GUI:WndGetParentM(_handle)
	if handle ~= 0 then
		GUI:WndClose(handle)
	end 
	MarsWnd.CallMars()
end

function MarsWnd.ShowUsingPic() --“使用中”图片显示
	
	for i = 1 , 5 do
		local Handle = GUI:WndFindWindow(MarsWnd.WndHandle,"usingPic"..i)

		if i == MarsWnd.index then
			if Handle ~= 0 then
				GUI:WndSetVisible(Handle, true)
			end
		else
			if Handle ~= 0 then
				GUI:WndSetVisible(Handle, false)
			end
		end
	end
	local GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"callBtn")
	GUI:WndSetParam(GUIHandle,MarsWnd.index)
	local callBtnparam = WndGetParam(GUIHandle)
	if callBtnparam == MarsWnd.index then
		GUI:WndSetEnableM(GUIHandle, false)
	else 
		GUI:WndSetEnableM(GUIHandle, true)
	end
	
end

function MarsWnd.ActivateMars()
	UI:Lua_SubmitForm("MarsWnd_s","ActivateMars","")
end

function MarsWnd.ShowCallNum(callnum)
	local GUIHandle = GUI:WndFindWindow(MarsWnd.WndHandle,"callNum")
	if GUIHandle ~= 0 then
		GUI:RichEditClear(GUIHandle)
		GUI:RichEditAppendString(GUIHandle,tostring(callnum))	
	end
end

function MarsWnd.MsgBox()
	luaMsgBox.new("元宝", "     很抱歉，您的元宝不足", {"前往充值", "取消"}, {"MarsWnd.chongz", "MarsWnd.out"}, "")
end

function MarsWnd.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end

function MarsWnd.out(h)
	luaWndClose(h)
end

function MarsWnd.WndMsg_up()
	local handle = GUI:WndFindWindow(MarsWnd.WndHandle,"callBtn")
	local color = MakeARGB(255,255,0,0)
	if handle ~= 0 then
		window_msg_up(handle,"剩余召唤次数不足",-25,-30,30,color,2)
	end
end

function MarsWnd.CloseWnd()
	if MarsWnd.WndHandle ~= 0 then
		GUI:WndClose(MarsWnd.WndHandle)
	end
end

MarsWnd.main()