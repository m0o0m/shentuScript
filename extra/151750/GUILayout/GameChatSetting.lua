GameChatSetting = {}
function GameChatSetting.main()
	local _Parent = LuaGlobal["AttachPartent"]
	local _GUIHandle = 0
	local _DeviceSizeX = CL:GetScreenWidth()
    local _DeviceSizeY = CL:GetScreenHeight()
	_GUIHandle = GUI:ImageCreate(_Parent,"GUI_chat",0,20,80)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		--GUI:WndSetSizeM(_GUIHandle,1130, 434)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetSizeM(_GUIHandle,_DeviceSizeX - 40 , _DeviceSizeY - 205 )
		GUI:ImageSetAroundImage(_GUIHandle, 1850700035,1850700037,1850700041,1850700043,1850700039,1850700036,1850700042,1850700038,1850700040)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg0",1801700006,310,111)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,57, 31)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckAutoChat",1850000272,"自动发言",110,110)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"自动发言")
		GUI:WndSetParam(_GUIHandle, 0)
		--GUI:WndSetSizeM(_GUIHandle,74, 21)
		GUI:WndSetTextColorM(_GUIHandle, 4291932767)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg0",0,750,113)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,100, 40)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"EditChatWait",764,121,80,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"ChatWordBkImg",0,75,160)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,944, 210)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord1",1850000272,"",110,175)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord2",1850000272,"",110,220)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord3",1850000272,"",110,265)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckChatWord4",1850000272,"",110,310)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckPlaySnd",1850000272,"来言发声",110,390)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"来言发声")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckReply",1850000272,"自动回复",110,440)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"自动回复")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:CheckBoxCreate(_Parent,"CheckNoStrangerChat",1850000272,"不显示陌生人私聊内容",640,390)
	if _GUIHandle ~= 0 then
		GUI:WndSetTextM(_GUIHandle,"不显示陌生人私聊内容")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,21, 21)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg1",1801700008,157,181)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,787, 30)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg2",1801700008,157,226)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,787, 30)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg3",1801700008,157,271)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,787, 30)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end

	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg5",1801700008,157,316)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,787, 30)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"EditChatWord1",160,184,780,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"EditChatWord2",160,229,780,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"EditChatWord3",160,274,780,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"EditChatWord4",160,319,780,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace1",1850800069,960,176)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,39, 39)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace2",1850800069,960,221)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,39, 39)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace3",1850800069,960,266)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,39, 39)
	end

	_GUIHandle = GUI:ButtonCreate(_Parent,"BtnChoseFace4",1850800069,960,311)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,39, 39)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"EditBkImg4",0,240,446)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,487, 30)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600052, 1850600054, 1850600058, 1850600060, 1850600056,1850600053, 1850600059, 1850600055, 1850600057)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"EditReplyWord",244,449,410,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	_GUIHandle = GUI:EditCreate(_Parent,"Static1",600,120,150,24)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4291932767)
		GUI:EditSetTextM(_GUIHandle,"发言间隔（秒）")
		GUI:WndSetEnableM(_GUIHandle, false)
	end

	GameChatSetting.UIInit(_Parent)
end

--UI Logic Code Start
function GameChatSetting.UIInit(_Handle)
	GameChatSetting.WndHandle = _Handle
	--设置九宫格
	local _GUIHandle = GUI:WndFindChildM(GameChatSetting.WndHandle, "ChatWordBkImg")
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetEnableM(_GUIHandle,false)
		GUI:ImageSetAroundImage(_GUIHandle, 1850600025, 1850600027, 1850600031, 1850600033, 1850600029,1850600026, 1850600032, 1850600028, 1850600030)
	end
end
GameChatSetting.main()




