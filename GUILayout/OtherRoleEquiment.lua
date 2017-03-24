OtherRoleEquiment = {}
function OtherRoleEquiment.main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
	_GUIHandle = GUI:ImageCreate(_Parent,"OtherRoleEquiment",1805900006,0,0)
    if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"TitleImg",1805900012,177,6)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,96, 29)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"BackImg",1805900007,34,49)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,381, 429)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"NameImg",1805900017,128,59)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,196, 39)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"RoleNameEdit",164,68,122,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4292794311)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"FamilyEdit",165,95,123,20)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4292794311)
        GUI:EditSetCanEdit(_GUIHandle, false)
        GUI:EditSetFontCenter(_GUIHandle)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"JobEdit",319,58,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4292794311)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
    
    _GUIHandle = GUI:EditCreate(_Parent,"LevelEdit",319,84,90,18)
    if _GUIHandle ~= 0 then
        GUI:WndSetEnableM(_GUIHandle, false)
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetTextColorM(_GUIHandle, 4292794311)
        GUI:EditSetCanEdit(_GUIHandle, false)
    end
    
    
   	    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"WingShow",0,139,94,100,60)
    if _GUIHandle ~= 0 then

        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:WndSetSizeM(_GUIHandle,100, 60)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end    

    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg0",1805900027,50,129)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg1",1805900036,350,129)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg3",1805900029,350,255)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg4",1805900034,167,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg5",1805900032,228,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg6",1805900030,50,318)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg7",1805900030,350,318)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg8",1805900031,50,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg9",1800900114,350,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg10",1805900038,110,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg11",1805900033,289,381)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg13",1805900035,50,192)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg14",1805900029,50,255)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"ItemBkImg15",1805900028,350,192)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
    

    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment14",0,180,144,80,170)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"衣服")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 14)
        GUI:WndSetSizeM(_GUIHandle,80, 170)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 216,228)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment13",0,141,109,50,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 13)
        GUI:WndSetSizeM(_GUIHandle,50, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 216,228)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    end
    
    
  
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment16",0,249,254,32,32)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"盾牌")
        GUI:WndSetParam(_GUIHandle, 16)
        GUI:WndSetSizeM(_GUIHandle,32, 32)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 216,228)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
    end
    
    
    
    -- _GUIHandle = GUI:ImageCreate(_Parent,"image0",0,76,52)
	-- if _GUIHandle ~= 0 then
		-- GUI:WndSetCanRevMsg(_GUIHandle, false)
		-- GUI:WndSetEnableM(_GUIHandle, false)
		-- GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,265, 304)
		-- GUI:ImageSetParam(_GUIHandle, 0)
		-- GUI:ImageSetCheckPoint(_GUIHandle, 0)
	-- end
	
    

   
      _GUIHandle = GUI:ItemCtrlCreate(_Parent, "Equiment18", -1, 54, 134, 42, 42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle, "斗笠")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,false)
        GUI:WndSetParam(_GUIHandle,18)
        GUI:ItemCtrlSetIconSize(_GUIHandle, 42, 42)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    end
	
	
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment0",0,196,134,48,48)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"头盔")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 82,65)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)

    end
   
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment3",0,352,195,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"勋章")
        GUI:WndSetParam(_GUIHandle, 3)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
        _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment15",0,171,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"宝石")
        GUI:WndSetParam(_GUIHandle, 15)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
	
	

    _GUIHandle = GUI:ItemCtrlCreate(_Parent, "HatShow", -1, 179, 110, 42, 42)
    if _GUIHandle ~= 0 then
	    
        GUI:WndSetHint(_GUIHandle, "斗笠展示")
        GUI:ItemCtrlSetRBtnUse(_GUIHandle,true)
        GUI:WndSetCanRevMsg(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 4)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 218, 208)
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		GUI:ImageSetTransfrom(_GUIHandle,6800,6800,0) --图片缩放比例大小接口 7000是缩放70%
		--GUI:ItemCtrlSetIconSize(_GUIHandle, 16, 16)
    end
	

	
	
    

	
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment10",0,53,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"符咒")
        GUI:WndSetParam(_GUIHandle, 10)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment4",0,110,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"法宝")
        GUI:WndSetParam(_GUIHandle, 4)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment5",0,232,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"腰带")
        GUI:WndSetParam(_GUIHandle, 5)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment11",0,293,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"鞋子")
        GUI:WndSetParam(_GUIHandle, 11)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment9",0,354,323,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 9)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
        

    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment7",0,354,260,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 7)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
		 _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment6",0,54,260,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"护腕")
        GUI:WndSetParam(_GUIHandle, 6)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment8",0,54,323,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"戒指")
        GUI:WndSetParam(_GUIHandle, 8)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    
    
        

      
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment2",0,54,197,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"翅膀")
        GUI:WndSetParam(_GUIHandle, 2)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
	
	    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment12",0,354,386,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"坐骑")
        GUI:WndSetParam(_GUIHandle, 12)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
    

    
    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment1",0,354,134,42,42)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"项链")
        GUI:WndSetParam(_GUIHandle, 1)
        GUI:WndSetSizeM(_GUIHandle,42, 42)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
        GUI:WndSetEnableM(_GUIHandle, true)
		GUI:ItemCtrlSetIconSize(_GUIHandle, 42,42)
    end
	
	
	
	
	    _GUIHandle = GUI:ButtonCreate(_Parent,"qimenzhenfa1",1800500246,114,323)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.yuanshen")
	  
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
	
	    _GUIHandle = GUI:ButtonCreate(_Parent,"qimenzhenfa2",1800500258,284,323)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.tipo")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
	
		_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_0",125,360,34,17)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetDefaultTextColor(_GUIHandle,mkcolor("GREENG"))
	    GUI:RichEditAppendString(_GUIHandle, "元神")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"TestWndChild_1",295,360,34,17)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetDefaultTextColor(_GUIHandle,mkcolor("GREENG"))
		GUI:RichEditAppendString(_GUIHandle, "体魄")
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end

	
----------------------------------------------------	
	
    _GUIHandle = GUI:ImageCreate(_Parent,"EnhanceLv",0,131,37)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,16, 16)
    end
    
    
    _GUIHandle = GUI:ImageCreate(_Parent,"EnhanceMagic",1088400000,109,10)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,64, 64)
    end

------------------------元神

	
			_GUIHandle = GUI:ImageCreate(_Parent,"tupian1",1805900004,360,90)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,300, 365)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
		_GUIHandle = GUI:RichEditCreate(_Parent,"tupian2",487,95,50,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
    	GUI:RichEditSetDefaultTextColor(_GUIHandle,mkcolor("GREENG"))
		GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
		GUI:RichEditAppendString(_GUIHandle, "元 神")
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"tupian3",1805900007,379,123)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,260, 320)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"tupian4",1893010014,372,80)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,167, 172)
	end
		
	_GUIHandle = GUI:ImageCreate(_Parent,"tupian5",1064700000,375,80)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,167, 172)
		GUI:ImageSetAnimateEnable(_GUIHandle,true,150)
	end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"tupian6",1805900189,387,180)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
	  _GUIHandle = GUI:ImageCreate(_Parent,"tupian7",1805900189,387,260)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end

  _GUIHandle = GUI:ImageCreate(_Parent,"tupian8",1805900189,387,340)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end

  _GUIHandle = GUI:ImageCreate(_Parent,"tupian9",1805900189,585,180)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
  _GUIHandle = GUI:ImageCreate(_Parent,"tupian10",1805900189,585,260)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end

  _GUIHandle = GUI:ImageCreate(_Parent,"tupian11",1805900189,585,340)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
	
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment36",0,392,184,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元神攻杀心法")
	       GUI:WndSetParam(_GUIHandle, 36)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
			_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment37",0,392,264,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元神刺杀心法")
	       GUI:WndSetParam(_GUIHandle, 37)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
			_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment38",0,392,344,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元神半月心法")
	       GUI:WndSetParam(_GUIHandle, 38)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
				_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment39",0,590,184,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元神烈焰心法")
	       GUI:WndSetParam(_GUIHandle, 39)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
				_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment40",0,590,264,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元神开天心法")
	       GUI:WndSetParam(_GUIHandle, 40)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
					_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment41",0,590,344,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"元神逐日心法")
	       GUI:WndSetParam(_GUIHandle, 41)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
		    _GUIHandle = GUI:ButtonCreate(_Parent,"yuanshengb",1803400011,605,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.guanbi")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
	
----------------------------体魄

	
			_GUIHandle = GUI:ImageCreate(_Parent,"tupiana1",1805900004,-20,90)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,300, 365)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
		_GUIHandle = GUI:RichEditCreate(_Parent,"tupiana2",107,95,50,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
    	GUI:RichEditSetDefaultTextColor(_GUIHandle,mkcolor("GREENG"))
		GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")
		GUI:RichEditAppendString(_GUIHandle, "体 魄")
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"tupiana3",1805900007,-1,123)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,260, 320)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"tupiana4",1893010018,-8,80)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,167, 172)
	end
		
	_GUIHandle = GUI:ImageCreate(_Parent,"tupiana5",1062000000,-5,80)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,167, 172)
		GUI:ImageSetAnimateEnable(_GUIHandle,true,150)
	end
	
    _GUIHandle = GUI:ImageCreate(_Parent,"tupiana6",1805900189,7,180)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
    
	  _GUIHandle = GUI:ImageCreate(_Parent,"tupiana7",1805900189,7,260)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end

  _GUIHandle = GUI:ImageCreate(_Parent,"tupiana8",1805900189,7,340)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end

  _GUIHandle = GUI:ImageCreate(_Parent,"tupiana9",1805900189,205,180)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
  _GUIHandle = GUI:ImageCreate(_Parent,"tupiana10",1805900189,205,260)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end

  _GUIHandle = GUI:ImageCreate(_Parent,"tupiana11",1805900189,205,340)
    if _GUIHandle ~= 0 then
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,48, 48)
    end
	
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment42",0,12,184,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"体魄攻杀心法")
	       GUI:WndSetParam(_GUIHandle, 42)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
			_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment43",0,12,264,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"体魄刺杀心法")
	       GUI:WndSetParam(_GUIHandle, 43)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
			_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment44",0,12,344,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"体魄半月心法")
	       GUI:WndSetParam(_GUIHandle, 44)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
				_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment45",0,210,184,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"体魄烈焰心法")
	       GUI:WndSetParam(_GUIHandle, 45)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
				_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment46",0,210,264,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"体魄开天心法")
	       GUI:WndSetParam(_GUIHandle, 46)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
					_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment47",0,210,344,36,36)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"体魄逐日心法")
	       GUI:WndSetParam(_GUIHandle, 47)
        GUI:WndSetSizeM(_GUIHandle,36, 38)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:WndSetEnableM(_GUIHandle, true)
		 GUI:ItemCtrlSetIconSize(_GUIHandle, 36,38)
		 GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
	end
	
		    _GUIHandle = GUI:ButtonCreate(_Parent,"tipob",1803400011,225,92)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.tguanbi")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,26, 30)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
------------------时装


    _GUIHandle = GUI:ImageCreate(_Parent,"imapk",1805900007,2,8)
    if _GUIHandle ~= 0 then
    
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,592, 427)
        GUI:ImageSetParam(_GUIHandle, 0)
        GUI:ImageSetCheckPoint(_GUIHandle, 0)
    end
		
	
		_GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment17",-1,135,140,164,216)
	if _GUIHandle ~= 0 then
		GUI:WndSetHint(_GUIHandle,"时装")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 17)
        GUI:WndSetSizeM(_GUIHandle,80, 170)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    
	end
		_GUIHandle = GUI:CheckBoxCreate(_Parent,"ShowFashion",1900112013,"显示时装",155,350)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DCheckCL_check_change, "RoleEquiment.FashionShowChange")
		GUI:WndSetTextM(_GUIHandle,"显示时装")
		GUI:WndSetTextColorM(_GUIHandle,4290950816)
		GUI:CheckBoxSetAutoChange(_GUIHandle,true)
	end
	
	    _GUIHandle = GUI:ItemCtrlCreate(_Parent,"Equiment48",0,111,89,50,240)
    if _GUIHandle ~= 0 then
        GUI:WndSetHint(_GUIHandle,"武器")
        GUI:ImageSetDrawCenter(_GUIHandle,true)
        GUI:WndSetParam(_GUIHandle, 48)
        GUI:WndSetSizeM(_GUIHandle,50, 240)
        GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
        GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
        GUI:ItemCtrlSetBigIcon(_GUIHandle, 10)
        GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186,198)
        GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
    end
	
	    _GUIHandle = GUI:ButtonCreate(_Parent,"haoyou",1805900096,60,440)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.haoyou")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,87, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:WndSetTextM(_GUIHandle,"加为好友")
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
		    _GUIHandle = GUI:ButtonCreate(_Parent,"jiaoyi",1805900096,180,440)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.jiaoyi")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,87, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:WndSetTextM(_GUIHandle,"发起交易")
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
	
		    _GUIHandle = GUI:ButtonCreate(_Parent,"liaotan",1805900096,300,440)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.liaotan")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,87, 26)
        GUI:WndSetTextColorM(_GUIHandle, 4291801952)
		GUI:WndSetTextM(_GUIHandle,"发起私聊")
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
    
    _GUIHandle = GUI:ButtonCreate(_Parent,"Close",1805900080,395,4)
    if _GUIHandle ~= 0 then
        GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "OtherRoleEquiment.CloseBtn")
        GUI:WndSetParam(_GUIHandle, 0)
        GUI:WndSetSizeM(_GUIHandle,34, 38)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
    end
    
        OtherRoleEquiment.UIInit(_Parent)
		OtherRoleEquiment.yincang(_Parent)
		OtherRoleEquiment.guanbi(_Parent)
		OtherRoleEquiment.tguanbi(_Parent)	
	    OtherRoleEquiment.shizhuang(_Parent)
end

function  OtherRoleEquiment.haoyou(_Handle)
	_Parent = OtherRoleEquiment.WndHandle  
	_GUIHandle = GUI:WndFindWindow(_Parent, "RoleNameEdit")
	name = GUI:EditGetTextM(_GUIHandle)
	CL:LogicAddFriend(name) 
	end
function  OtherRoleEquiment.jiaoyi(_Handle)
	local _ViewPlayerGUID = CL:GetViewEquipTarPlayerGUID()
	if _ViewPlayerGUID ~= "" then
		CL:DoTrade(_ViewPlayerGUID)
	end
end
function  OtherRoleEquiment.liaotan(_Handle)
		_Parent = OtherRoleEquiment.WndHandle  
	   _GUIHandle = GUI:WndFindWindow(_Parent, "RoleNameEdit")
	   name = GUI:EditGetTextM(_GUIHandle)
      CL:LogicSendPrivateTalk(name)
	end


local emt = {
"imapk",
"Equiment17",
"ShowFashion",
"Equiment48",
}

function OtherRoleEquiment.shizhuang(_Handle)
 _Parent = OtherRoleEquiment.WndHandle
   for i=1,#emt do 
	_GUIHandle = GUI:WndFindWindow(_Parent, emt[i])
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
end

function OtherRoleEquiment.FashionShowChange(_Handle,_Param)
	local _ShowFashion = GUI:CheckBoxGetCheck(_Handle)
	CL:ShowFashion(_ShowFashion)
end


 paramd = 0 
function  OtherRoleEquiment.tipo(_Handle)
	 _Parent = OtherRoleEquiment.WndHandle
	if paramd == 0  then 
				for i = 1,11 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "tupiana"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	
		_GUIHandle = GUI:WndFindWindow(_Parent, "tipob")
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	
	
	for i = 42,47 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	paramd = 1
		else
				for i = 1,11 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "tupiana"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	
		_GUIHandle = GUI:WndFindWindow(_Parent, "tipob")
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	
	
	for i = 42,47 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	 paramd = 0
	end
	
	
	
	
end	

function OtherRoleEquiment.tguanbi(_Handle)
	 _Parent = OtherRoleEquiment.WndHandle
		for i = 1,11 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "tupiana"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	
		_GUIHandle = GUI:WndFindWindow(_Parent, "tipob")
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	
	
	for i = 42,47 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	 paramd = 0
end

function OtherRoleEquiment.guanbi(_Handle)
	 _Parent = OtherRoleEquiment.WndHandle
		for i = 1,11 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "tupian"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	
		_GUIHandle = GUI:WndFindWindow(_Parent, "yuanshengb")
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	
	
	for i = 36,41 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	 paramc = 0 
end



 paramc = 0 

function OtherRoleEquiment.yuanshen(_Handle)
	 _Parent = OtherRoleEquiment.WndHandle
	
if paramc == 0  then 	
		for i = 1,11 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "tupian"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	
		_GUIHandle = GUI:WndFindWindow(_Parent, "yuanshengb")
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	
	
	for i = 36,41 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	paramc = 1
	else
			for i = 1,11 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "tupian"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	
		_GUIHandle = GUI:WndFindWindow(_Parent, "yuanshengb")
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	
	
	for i = 36,41 do 
	_GUIHandle = GUI:WndFindWindow(_Parent, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	paramc = 0
	end
end
function OtherRoleEquiment.dakai(_Handle)
	  Handle = OtherRoleEquiment.WndHandle
if Roleparam == 0  then 
	for i = 1,13 do 
	_GUIHandle = GUI:WndFindWindow(Handle, "imaged"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	for i = 1,12 do 
		_GUIHandle = GUI:WndFindWindow(Handle, "ricd"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	for i = 24,35 do 
	_GUIHandle = GUI:WndFindWindow(Handle, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,true)
    end
	end
	Roleparam = 1 
	else 
	for i = 1,13 do 
	_GUIHandle = GUI:WndFindWindow(Handle, "imaged"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	for i = 1,12 do 
		_GUIHandle = GUI:WndFindWindow(Handle, "ricd"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	for i = 24,35 do 
	_GUIHandle = GUI:WndFindWindow(Handle, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	Roleparam = 0
	end	
end	

function OtherRoleEquiment.yincang(_Handle)
	for i = 1,13 do 
	_GUIHandle = GUI:WndFindWindow(_Handle, "imaged"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	for i = 1,12 do 
		_GUIHandle = GUI:WndFindWindow(_Handle, "ricd"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	for i = 24,35 do 
	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment"..i)
    if _GUIHandle ~= 0 then
     	GUI:WndSetVisible(_GUIHandle,false)
    end
	end
	
end
--UI Logic Code Start

--UI界面用装备索引
--	site_helmet,   /// 头盔0
--	site_necklace, /// 项链1
--	site_wings,    /// 翅膀2
--	site_medal,    /// 勋章3
--	site_amulet,   /// 守护4
--	site_shoulder, /// 护肩5
--	site_wrist_0,  /// 护腕0 6
--	site_wrist_1,  /// 护腕1 7
--	site_ring_0,   /// 戒指0 8
--	site_ring_1,   /// 戒指1 9
--	site_juju,     /// 符咒10
--	site_shoes,    /// 鞋子11
--	site_mount,    /// 坐骑12
--	site_weapon,   /// 武器13
--	site_armor,    /// 衣服14
--	site_gem,      /// 宝石15
--	site_shield,   /// 盾牌16
--	site_jewelry,   /// 时装17
--	site_hat,       /// 斗笠18
--	site_gloves,    /// 手套19
--	site_jewelry,   /// 珠宝20

OtherRoleEquiment.WndHandle = 0
OtherRoleEquiment.UseShield = true
OtherRoleEquiment.ManHairTable = 
{
	1890900000, 
    1890900002,
    1890900004
}


OtherRoleEquiment.WomanHairTable = 
{
	1890900001, 
    1890900003,
    1890900005
}

OtherRoleEquiment.Open = false


function OtherRoleEquiment.UIInit(_Handle)
	OtherRoleEquiment.WndHandle = _Handle
	GUI:WndSetSizeM(_Handle,449, 504)
	GUI:WndSetIsESCClose(_Handle, true)
	GUI:WndSetMoveWithLBM(_Handle)
	GUI:WndSetMagicUI(_Handle,1)
	RegisterUIEvent(LUA_EVENT_OTHERROLEDATA, "OtherRoleEquipment_OtherRoleData", OtherRoleEquiment.propData)		--其他玩家数据
	
	local _GUIHandle = 0
	    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment13")--武器
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end

	_GUIHandle = GUI:WndFindWindow(_Handle, "Equiment16")--盾牌
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
	
    _GUIHandle = GUI:WndFindWindow(_Handle, "Equiment2")--翅膀展示
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
    end
end

function OtherRoleEquiment.propData()
	local _Gender = LuaParam[1]
	local _Name = LuaParam[2]
	local _Level = LuaParam[3]
	local _Job = LuaParam[4]
	local _Family = LuaParam[5]
	OtherRoleEquiment.WndHandle = GUI:WndFindWindow(0, "OtherRoleEquiment")
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "image0")--头盔
	if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)
		if _Gender == 1 then
			GUI:WndSetImageID(_GUIHandle, OtherRoleEquiment.ManHairTable[_Job])
		else
            GUI:WndSetImageID(_GUIHandle, OtherRoleEquiment.WomanHairTable[_Job])
		end
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "Equiment14")--衣服
    if _GUIHandle ~= 0 then
        GUI:ImageSetDrawCenter(_GUIHandle,true)

        if _Gender == 1 then
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900006)
        else
            GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1890900007)
        end
    end
	
	local _GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "JobEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,"职业："..RDJOBName[_Job])
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "LevelEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,"等级：".._Level)
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "FamilyEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,_Family)
    end
	
	_GUIHandle = GUI:WndFindWindow(OtherRoleEquiment.WndHandle, "RoleNameEdit")
    if 0 ~= _GUIHandle then
		GUI:EditSetTextM(_GUIHandle,_Name)
    end
end

function OtherRoleEquiment.CloseBtn()
	GUI:WndClose(OtherRoleEquiment.WndHandle)
end

OtherRoleEquiment.main()