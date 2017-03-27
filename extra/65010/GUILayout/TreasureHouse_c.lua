TreasureHouse_c = {}
function TreasureHouse_c.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TreasureHouse_c",1803500007,0,0)
	if _Parent ~= 0 then
		GUI:WndSetSizeM(_Parent,904, 508)
		GUI:WndSetIsESCClose(_Parent, true)
		GUI:WndSetMoveWithLBM(_Parent)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bodyBg",1803500008,42,125)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,546, 351)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bz",1803500011,397,15)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,109, 66)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_yb",1803500012,62,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,51, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum1",0,190,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum2",0,180,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum3",0,170,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum4",0,160,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum5",0,150,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum6",0,140,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum7",0,130,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum8",0,120,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_ybNum9",0,110,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScore",1803500013,240,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,90, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum1",0,407,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum2",0,397,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum3",0,387,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum4",0,377,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum5",0,367,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum6",0,357,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum7",0,347,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum8",0,337,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"img_bzScoreNum9",0,327,88)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,15, 20)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"imgTitle1",1803500058,80,155)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,135, 22)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"imgTitle2",1803500015,210,148)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,100, 32)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"imgTitle3",1803500016,310,148)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,100, 32)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"imgTitle4",1803500017,410,148)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,100, 32)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"Msg_bg",1803500009,590,140)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,272, 337)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"RED1",1803500032,607,146)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,249, 38)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"my_reward",1803500033,670,150)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,128, 27)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"RED2",1803500032,607,300)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,249, 38)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"sever_reward",1803500034,670,304)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,128, 27)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg1",1803500019,104,180)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg2",1803500019,104,248)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg3",1803500019,104,316)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg4",1803500019,172,180)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg5",1803500019,172,248)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg6",1803500019,172,316)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg7",1803500019,401,180)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg8",1803500019,401,248)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg9",1803500019,401,316)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg10",1803500019,469,180)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg11",1803500019,469,248)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_bg12",1803500019,469,316)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,68, 68)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb1",0,115,187,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb2",0,115,255,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb3",0,115,323,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb4",0,183,187,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb5",0,183,255,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb6",0,183,323,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb7",0,412,187,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb8",0,412,255,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb9",0,412,323,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb10",0,480,187,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb11",0,480,255,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item_tb12",0,480,323,47,48)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,47, 48)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"close",1803400011,865,40)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.closeWnd")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,34, 33)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btn_itemExc",1803500061,450,88)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.List")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,89, 22)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Btn_TreBag",1803500035,605,85)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.ShowTreBag")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,123, 51)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"Btn_Recharge",1803500039,725,85)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.ReCharge")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,123, 51)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btnSeek1",1803500020,90,380)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.Seek")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,116, 44)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btnSeek2",1803500024,256,380)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.Seek")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,116, 44)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"btnSeek3",1803500028,422,380)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "TreasureHouse_c.Seek")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,116, 44)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"seek_yb1",110,430,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"消耗200元宝")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"seek_yb2",276,430,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"消耗1000元宝")
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"seek_yb3",442,430,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:EditSetTextM(_GUIHandle,"消耗2000元宝")
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_MyTreasure1",620,180,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_MyTreasure2",620,205,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_MyTreasure3",620,230,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_MyTreasure4",620,255,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_MyTreasure5",620,280,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_sysTreasure1",620,335,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_sysTreasure2",620,360,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_sysTreasure3",620,385,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_sysTreasure4",620,410,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"edit_sysTreasure5",620,435,220,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	
	TreasureHouse_c.UIInit(_Parent)
end

--UI Logic Code Start
TreasureHouse_c.WndHandle = 0
local img_Num = {1801500161, 1801500162, 1801500163, 1801500164, 1801500165, 1801500166, 1801500167, 1801500168, 1801500169, 1801500170}
--元宝数图片句柄
TreasureHouse_c.IMG_YBNUM = {}
--探宝积分图片句柄
TreasureHouse_c.IMG_BZSCORENUM = {}
--展示装备物品句柄
TreasureHouse_c.ITEM_TB = {}
--探宝个人所得编辑框句柄
TreasureHouse_c.EDIT_MYTREASURE = {}
--全服探宝记录句柄
TreasureHouse_c.EDIT_SYSTREASURE = {}
TreasureHouse_c.TbScore = 0 
TreasureHouse_c.ZhiZunEquip = {}         
TreasureHouse_c.BayeEquip = {}

function TreasureHouse_c.UIInit(_GUIHandle)
	
	TreasureHouse_c.TbScore = FormParam[3]
	TreasureHouse_c.ZhiZunEquip = deserialize(FormParam[1])          --反序列化成lua对象
	TreasureHouse_c.BayeEquip = deserialize(FormParam[2])
	TreasureHouse_c.WndHandle = _GUIHandle
	CenterWnd(_GUIHandle)
	GUI:WndSetSizeM(_GUIHandle, 904, 508)
	for i = 1, 9 do
		TreasureHouse_c.IMG_YBNUM[i] = GetWindow(TreasureHouse_c.WndHandle, "img_ybNum" .. i)
		TreasureHouse_c.IMG_BZSCORENUM[i] = GetWindow(TreasureHouse_c.WndHandle, "img_bzScoreNum" .. i)
	end
	for i = 1, 12 do
		TreasureHouse_c.ITEM_TB[i] = GetWindow(TreasureHouse_c.WndHandle, "item_tb" .. i)
	end
	for i = 1, 5 do
		TreasureHouse_c.EDIT_MYTREASURE[i] = GetWindow(TreasureHouse_c.WndHandle, "edit_MyTreasure" .. i)
		TreasureHouse_c.EDIT_SYSTREASURE[i] = GetWindow(TreasureHouse_c.WndHandle, "edit_sysTreasure" .. i)
	end
	local tb = {1, 5, 10}
	for i = 1, 3 do
		local handle = GetWindow(_GUIHandle, "btnSeek" .. i)
		if handle ~= 0 then 
			GUI:WndSetHint(handle, "探宝" .. tb[i] .. "次，需消耗" .. tb[i]*200 .. "元宝，增加" .. tb[i] .."点宝藏积分")
		end
	end
	TreasureHouse_c.SetYB() 									--显示元宝数量
	TreasureHouse_c.SetTreasure() 								--显示展示商品

	TreasureHouse_c.SetBzScore(""..TreasureHouse_c.TbScore) 		--显示宝藏积分
	TreasureHouse_c.MsgMyTreasureRecord(deserialize(FormParam[4])  )		--显示个人探宝所得
	TreasureHouse_c.SetTreasureMsg( deserialize(FormParam[5] ) )					--显示全服探宝所得
	GUI:WndAddTimerBrief(TreasureHouse_c.WndHandle,10000, "TreasureHouse_c.SetTreasureNotes")
	

	--[[local handle_bag = GetWindow(nil, "TreasureBag_c")
	if handle_bag ~= 0 then
		reset_two_relationWnd(_GUIHandle, handle_bag)
	end--]]
end

function TreasureHouse_c.SetTreasureNotes()
	UI:Lua_SubmitForm("TreasureHouse_s", "setTreasureMsg", "")
end

function TreasureHouse_c.SetYB()
	if CL:GetPlayerSelfProperty64(ROLE_PROP64_INGOT) then
		local yb = LuaRet
		yb = tonumber(yb)
		if yb == 0 then
			ImageSetImageID(TreasureHouse_c.WndHandle, "img_ybNum9", img_Num[10])
			return
		end
		local leftNum = 0
		local tb_leftNum = {}
		local posFlag = 1
		--逆向取数
		while yb > 0 do
			leftNum = yb % 10
			yb = math.floor(yb/10)
			if leftNum == 0 then
				leftNum = 10
			end
			tb_leftNum[posFlag] = leftNum
			posFlag = posFlag + 1
		end
		local startPoint = 9 - #tb_leftNum + 1
		local pointFlag = 1
		for i = startPoint, 9 do
			ImageSetImageID(TreasureHouse_c.WndHandle, "img_ybNum" .. i, img_Num[tb_leftNum[pointFlag]])
			pointFlag = pointFlag + 1 
		end
	end
end

function TreasureHouse_c.SetBzScore(tbscore)
	local score = tonumber(tbscore)
	if score == 0 then
		ImageSetImageID(TreasureHouse_c.WndHandle, "img_bzScoreNum9", img_Num[10])
		return 
	end
	local leftScore = 0
	local tb_leftNum = {}
	local posFlag = 1
	while score > 0 do
		leftScore = score % 10
		score = math.floor(score/10)
		if leftScore == 0 then
			leftScore = 10
		end
		tb_leftNum[posFlag] = leftScore
		posFlag = posFlag + 1
	end
	local startPoint = 9 - #tb_leftNum + 1
	local pointFlag = 1
	for i = startPoint, 9 do
		ImageSetImageID(TreasureHouse_c.WndHandle, "img_bzScoreNum" .. i, img_Num[tb_leftNum[pointFlag]])
		pointFlag = pointFlag + 1
	end
end

function TreasureHouse_c.SetTreasure()
	
	for i = 1, 12 do
		local id = "item_tb"..i
		if i <= 6 then
			if i < 4 then
				RDItemCtrlSetGUIDataPropByKeyName(TreasureHouse_c.WndHandle,id, TreasureHouse_c.ZhiZunEquip[i], 1, false)  
			elseif CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then
				local sex = LuaRet
				RDItemCtrlSetGUIDataPropByKeyName(TreasureHouse_c.WndHandle,id , TreasureHouse_c.ZhiZunEquip[i][sex], 1, false) 
			end
		end
		if i > 6 then 
			local j = i - 6
			if i ~= 10 then
				RDItemCtrlSetGUIDataPropByKeyName(TreasureHouse_c.WndHandle,id , TreasureHouse_c.BayeEquip[j], 1, false)
			elseif CL:GetPlayerSelfPropBase(ROLE_PROP_SEX) then
				local sex = LuaRet
				RDItemCtrlSetGUIDataPropByKeyName(TreasureHouse_c.WndHandle,id , TreasureHouse_c.BayeEquip[j][sex], 1, false)
			end
		end
	end
	
end

function TreasureHouse_c.Seek(_handle) 		--探宝
	local yb = 0
	for i = 1, 3 do
		local handle = GetWindow(TreasureHouse_c.WndHandle, "btnSeek" .. i)
		if handle == _handle then
			if i == 1 then
				yb = 200
			elseif i == 2 then
				yb = 1000
			else
				yb = 2000
			end
		end
	end 
	if yb ~= 0 then
		UI:Lua_SubmitForm("TreasureHouse_s","seekTreasure", ""..yb)	
	end
end

function TreasureHouse_c.MsgMyTreasureRecord(display)
	
	if #display == 0 then
		return
	end
	for i = 1, 5 do
		GUI:RichEditClear(TreasureHouse_c.EDIT_MYTREASURE[i])
	end
	for i = 1, #display do 
		local modelHandle = CL:GetItemTemplateHandleByKeyName(display[i])
		CL:GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME)
		local itemName = LuaRet
		GUI:RichEditAppendString(TreasureHouse_c.EDIT_MYTREASURE[i], "获得了:#COLORCOLOR_RED#".. itemName .. "#COLOREND#")
	end
end

function TreasureHouse_c.SetTreasureMsg(str)
	if #str == 0 then
		return
	end
	for i = 1, 5 do
		GUI:RichEditClear(TreasureHouse_c.EDIT_SYSTREASURE[i])
	end
	local j = 1
	for i = 1, #str do
		local strs = strsplit(str[i], ":")
		local playerName = strs[1]
		local itemName = strs[2]
		local modelHandle = CL:GetItemTemplateHandleByKeyName(itemName)
		
		CL:GetItemTemplatePropByHandle(modelHandle, ITEM_PROP_NAME)
		itemName = LuaRet
		GUI:RichEditAppendString(TreasureHouse_c.EDIT_SYSTREASURE[j], "#COLORCOLOR_BLUE#" .. playerName .. " #COLOREND#获得：#COLORCOLOR_RED#".. itemName .. "#COLOREND#")
		j = j + 1
	end
end

function TreasureHouse_c.isTreasureBagOpen(itemList)
	local bagHandle = GetWindow(nil, "TreasureBag_c")
	if bagHandle == 0 then
		UI:Lua_OpenWindow(0, "TreasureBag_c.lua")		
		--bagHandle = GetWindow(nil, "TreasureBag_c")
		--reset_two_relationWnd(TreasureHouse_c.WndHandle, bagHandle)
	else 
		for i = 1, 3 do
			if TreasureBag_c.BTN_TabItem[i] ~= 0 then
				if i == 1 then
					GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], true)
				else
					GUI:ButtonSetIsActivePageBtn(TreasureBag_c.BTN_TabItem[i], false)
				end
			end
		end
		UI:Lua_SubmitForm("TreasureBag_s", "getAllTreasure", "")
	end 
end

function TreasureHouse_c.List(_handle) 		--道具兑换
	UI:Lua_SubmitForm("Marks2Item_s","openExchangePage","")
end

function TreasureHouse_c.ShowTreBag(_handle)	--宝藏仓库
	

	
	UI:Lua_OpenWindow(0, "TreasureBag_c.lua")
	--[[local handle_bag = GetWindow(nil, "TreasureBag_c")
	reset_two_relationWnd(TreasureHouse_c.WndHandle, handle_bag)--]]
end

function TreasureHouse_c.ReCharge(_handle)		--立即充值
	if CL:OpenUrlUseIEByType(3) then
		-- coding there
	end
end

function TreasureHouse_c.closeWnd(_handle)		--关闭窗口
	GUI:WndDelAllTimer(TreasureHouse_c.WndHandle)
	   
	--[[local handle_bag = GetWindow(nil, "TreasureBag_c")
	reset_two_relationWnd(0, handle_bag)--]]
	
	GUI:WndClose(TreasureHouse_c.WndHandle)
end

function TreasureHouse_c.Update2(tbScore, newDisplay, strDataBase)
	local score = tonumber(tbScore)
	local chargeHandle = GetWindow(nil, "Marks2Item_c")
	if chargeHandle ~= 0 then
		Marks2Item_c.scoreUpdate(score)
	end
	TreasureHouse_c.SetYB()
	TreasureHouse_c.SetBzScore(score)
	TreasureHouse_c.MsgMyTreasureRecord(newDisplay)
	TreasureHouse_c.SetTreasureMsg(strDataBase)
end

function TreasureHouse_c.MsgAttention(tag)
	--tag 1：元宝不足 tag 2：金钱不足
	if tonumber(tag) == 1 then
		luaMsgBox.new("元宝", "    很抱歉，您的元宝不足", {"前往充值", "取消"}, {"TreasureHouse_c.chongz", "TreasureHouse_c.out"}, "")
	else
		msg("next attention")
	end
end

function TreasureHouse_c.chongz(h)
	CL:OpenUrlUseIEByType(3)
	luaWndClose(h)
end

function TreasureHouse_c.out(h)
	luaWndClose(h)
end

TreasureHouse_c.main()