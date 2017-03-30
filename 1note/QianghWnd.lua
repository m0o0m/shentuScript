QianghWnd = {}
function QianghWnd:main()
    local _Parent = LuaGlobal["AttachPartent"]
    local _GUIHandle = 0
    _Parent = GUI:WndCreateWnd(_Parent,"QianghWnd",1851000051,400,64)
    if _Parent ~= 0 then
        GUI:WndSetSizeM(_Parent,700, 452)
    end
	
	

	_GUIHandle = GUI:ImageCreate(_Parent,"fireMagic",3020201000,150,45)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,150, 150)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)
		-- CL:SetAnimateData(30202,100)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"item_image",1850700002,270,25)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,148, 96)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"item",0,309,37,60,60)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1601, "QianghWnd.OnItemIn")
		GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"enhance",285,125,266,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
	end
    
    
    

    
    
    -- _GUIHandle = GUI:ImageCreate(_Parent,"item_magic",0,209,124)
    -- if _GUIHandle ~= 0 then
        -- GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:WndSetSizeM(_GUIHandle,60, 60)
        -- GUI:ImageSetParam(_GUIHandle, 0)
        -- GUI:ImageSetCheckPoint(_GUIHandle, 0)
		-- GUI:WndSetCanRevMsg(_GUIHandle, false)
    -- end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gong_image1",1802400023,39,159)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,225, 149)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"title_back1",1851000056,72,170)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,153, 30)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title1",85,170,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294761476)
		GUI:EditSetTextM(_GUIHandle,"当前强化属性")
	end
	

	

	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong2",53,199,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong1",53,235,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gong3",53,270,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s2",154,199,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s1",154,235,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_s3",154,270,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end

	

	
	_GUIHandle = GUI:ImageCreate(_Parent,"gong_image2",1802400023,439,159)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,225, 149)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end 

	_GUIHandle = GUI:ImageCreate(_Parent,"title_back2",1851000056,475,170)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,153, 30)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"title2",490,170,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4294761476)
		GUI:EditSetTextM(_GUIHandle,"下级强化属性")
	end	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gon2",456,200,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gon1",456,234,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"edit_gon3",456,268,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_2",556,200,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255361)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_1",556,234,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255361)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"gong_3",556,268,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4278255361)
	end

	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrow",1800000366,320,198)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
    
    
	
	_GUIHandle = GUI:ImageCreate(_Parent,"arrowMagic",2147483647,312,198)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,43, 58)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetAnimateEnable(_GUIHandle, true, 100)
	end
	
		_GUIHandle = GUI:ImageCreate(_Parent,"qhcheng_image",1806700005,265,258)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,120, 29)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"succ_image1",0,379,258)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 26)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"succ_image2",0,390,258)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 26)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"succ_image3",0,402,258)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 26)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ImageCreate(_Parent,"succ_image4",0,414,258)
	if _GUIHandle ~= 0 then
		GUI:WndSetCanRevMsg(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,20, 26)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
    
    

	
	
	_GUIHandle = GUI:CheckBoxCreate(_Parent,"yb",1850000272,"",430,320)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1200, "QianghWnd.CheckChange")
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 42)
		GUI:CheckBoxSetCheck(_GUIHandle, false)
		GUI:CheckBoxSetAutoChange(_GUIHandle, true)
	end
    
	_GUIHandle = GUI:RichEditCreate(_Parent,"ybsm",473,336,250,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:RichEditSetEditEnable(_GUIHandle, false)
		GUI:RichEditSetTotalLine(_GUIHandle, 99)
	end
    
    
    -- _GUIHandle = GUI:RichEditCreate(_Parent,"chongz",420,371,70,23)
    -- if _GUIHandle ~= 0 then
        -- GUI:WndSetVisible(_GUIHandle, false)
        -- GUI:WndSetParam(_GUIHandle, 0)
        -- GUI:RichEditSetEditEnable(_GUIHandle, false)
        -- GUI:RichEditAppendString(_GUIHandle, "")
    -- end
    
	_GUIHandle = GUI:ImageCreate(_Parent,"gold_need_back",1851000023,38,320)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,243, 40)
	end
    
	_GUIHandle = GUI:EditCreate(_Parent,"gold_need",68,326,104,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"消耗金币：")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"gold_back",1850300005,171,329)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,37, 25)
		GUI:ImageSetColor(_GUIHandle, 4290950816)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:EditCreate(_Parent,"gold",220,326,99,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Parent,"item_need",68,375,120,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:EditSetTextM(_GUIHandle,"消耗材料：")
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG1",1850500016,172,370)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,66, 66)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl1",0,171,370,64,64)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,64, 64)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Parent, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Parent,"need_item_count",167,411,100,25)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetVisible(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	-- _GUIHandle = GUI:ImageCreate(_Parent,"ItemCtrlBG2",1850500016,255,370)
	-- if _GUIHandle ~= 0 then
	
		-- GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,66, 66)
	-- end
	
	-- _GUIHandle = GUI:ItemCtrlCreate(_Parent,"ItemCtrl2",0,255,370,64,64)
	-- if _GUIHandle ~= 0 then
		-- GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,64, 64)
		-- GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		-- GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		-- GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		-- GUI:WndSetEnableM(_Parent, true)
	-- end
	
	-- _GUIHandle = GUI:EditCreate(_Parent,"need_item_count2",262,409,70,25)
	-- if _GUIHandle ~= 0 then
		-- GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	-- end
	
	
	_GUIHandle = GUI:ButtonCreate(_Parent,"qianghua",1806700037,469,376)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1002, "QianghWnd.qiangh")
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,126, 45)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
		GUI:ButtonSetDownTextPosChange(_GUIHandle, false)
	end
	


	_Wnd = GUI:WndCreateWnd(_Parent,"QianghMax",1851000051,0,0)
	if _Wnd ~= 0 then
		GUI:WndSetSizeM(_Wnd,697, 452)
		GUI:WndSetVisible(_Wnd, false) 
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Wnd,"item_image",1850700002,265,20)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,148, 96)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
	end
	
	_GUIHandle = GUI:ItemCtrlCreate(_Wnd,"item",0,305,31,65,65)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,1601, "QianghWnd.OnItemIn")
		GUI:WndSetParam(_GUIHandle, 0)
		-- GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, true)
		GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900110036)
		GUI:WndSetEnableM(_Wnd, true)
	end
	
	
	_GUIHandle = GUI:RichEditCreate(_Wnd,"enhance",285,125,266,28)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:ImageCreate(_Wnd,"gong_image1",1802400023,226,167)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,225, 149)
		GUI:ImageSetParam(_GUIHandle, 0)
		GUI:ImageSetCheckPoint(_GUIHandle, 0)
		GUI:ImageSetFitSize(_GUIHandle, true)
	end
	
	_GUIHandle = GUI:ImageCreate(_Wnd,"title_back1",1851000056,259,178)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,153, 30)
	end
	
	_GUIHandle = GUI:EditCreate(_Wnd,"title1",292,178,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,223,144,58))
		GUI:EditSetTextM(_GUIHandle,"当前属性")
	end
	
		_GUIHandle = GUI:EditCreate(_Wnd,"edit_gong2",239,209,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Wnd,"edit_gong1",239,245,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Wnd,"edit_gong3",239,280,130,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false)
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetTextColorM(_GUIHandle, 4290950816)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Wnd,"gong_s2",340,209,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Wnd,"gong_s1",340,245,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Wnd,"gong_s3",340,280,100,32)
	if _GUIHandle ~= 0 then
		GUI:WndSetParam(_GUIHandle, 0)
	end
	
	
	_GUIHandle = GUI:EditCreate(_Wnd,"imageBack",250,338,130,32)
	if _GUIHandle ~= 0 then
	
		GUI:WndSetParam(_GUIHandle, 0)
		GUI:WndSetSizeM(_GUIHandle,414, 41)
		GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255,223,144,58))
		GUI:EditSetTextM(_GUIHandle,"已经强化到最高等级")
	end
	
	
    QianghWnd:UIInit(_Parent)
end

--UI Logic Code Start
local suc_img = {
	{1806700008,1806700009,1806700010,1806700011,1806700012,1806700013,1806700014,1806700015,1806700016,1806700007}, --imageid
	{100,90,85,75,65,55,50,30,20,10,5,1},
	{200000,400000,1000000,1600000,3400000,7000000,8000000,10400000,14000000,16200000,20400000,26000000},
	{0,9,28,84,252,758,1517,3040,6069,9104,13656,20484},
	{0,1000,5000,10000,210000,630000,1260000,2520000,151,227,341,535}
}
--强化收益
local ATT_ADD = {
	[76] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--物防上线
	[77] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--物防下线
	[78] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--魔防上线
	[79] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--魔防下线
	[80] = {3 , 6 , 9 , 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60,},	--物攻上线
	[81] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--物攻下线
	[82] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--魔攻上线
	[83] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--魔攻上线
	[84] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--道攻上线
	[85] = {1 , 2 , 4 , 6 , 8 , 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38,},	--道攻下线
} 

QianghWnd.WndHandle   = 0
QianghWnd.job         = 0
QianghWnd.YbYes       = 0
QianghWnd.tip1        = 0
QianghWnd.DelayTaskId = nil
function QianghWnd:UIInit(_GUIHandle)
	QianghWnd.WndHandle = _GUIHandle
	
	-- local handle = GetWindow(_GUIHandle,"shuom")
	-- if handle ~= 0 then
		-- GUI:RichEditAppendString(handle,"#SELECT#强化说明#SELECTEND#")
	-- end

	_handle = GUI:WndFindChildM(_GUIHandle, "item_image")
	if _handle ~= 0 then
		GUI:WndSetCanRevMsg(_handle, false)
	end

	local handle = GetWindow(_GUIHandle,"qianghsm")
	if handle ~= 0 then
		GUI:WndSetHintWidth(handle, 300)
		local txt = "强化说明：                                        "
		txt = txt.."1.强化成功优先消耗绑定金币，强化失败不消耗金币    "
		txt = txt.."2.强化失败不降级，但会消耗强化次数，使用元宝可以 保证100%成功                                      "
		txt = txt.."3.强化次数用完后，可以购买次数继续强化"
		GUI:WndSetHint(handle, txt)
	end
	
	local handle = GetWindow(_GUIHandle,"chongz")
	if handle ~= 0 then
		GUI:RichEditAppendString(handle,"#SELECT#前往充值#SELECTEND#")
		GUI:WndRegistScript(handle, RDWndBaseCL_mouse_lbUp, "QianghWnd.ChongzEditOnLBTNUp")
	end	

	handle = GUI:WndFindChildM(_GUIHandle, "item")
	if handle ~= 0 then
		RDItemCtrlSetGUIDataPropByType(handle, nil, ITEMGUIDATA_INVALIDATE, true)
	end

end


function QianghWnd:UpData(DATA)
	
	self.item_level_index = DATA[0];
	self.ATT = DATA[1];
	self.EXPEND = DATA[2];
	-- dbg("self.EXPEND==================================="..serialize(self.EXPEND));
	self.item_count = DATA[5];
	local item_guid = DATA[3];
	for i = 1 , 3 do 
		EditSetText(QianghWnd.WndHandle,"edit_gong"..i,"")
		EditSetText(QianghWnd.WndHandle,"edit_gon"..i,"")
		EditSetText(QianghWnd.WndHandle,"gong_s"..i,"")
		EditSetText(QianghWnd.WndHandle,"gong_"..i,"")
	end
	

	local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
	if handle1 ~= 0 then
		GUI:WndSetVisible(handle1, false) 
	end
	
	local handle2 = GetWindow(QianghWnd.WndHandle,"chongz")
	if handle2 ~= 0 then
		GUI:WndSetVisible(handle2, false) 
	end
	
	local handle = GetWindow(QianghWnd.WndHandle,"ybsm")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
	end
	
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	if handle ~= 0 then 
		GUI:ItemCtrlClearItemData(handle)
		GUI:ItemCtrlSetEffectImageID(handle, 0, 1.0)
		if UI:Lua_Str2GUID(item_guid) then 
			item_guid = LuaRet;
			RDItemCtrlSetGUIDataPropByGUID(handle, "",  item_guid);
			self:OnEquipIn(handle, item_guid)
		end
	end
	
	if index ~= nil then
		if tonumber(index) == 1 then
			QianghWnd.YbYes = 0
			GUI:CheckBoxSetCheck(handle1,false)
		end
	end
end	

function QianghWnd:OnEquipIn(_handle,item_guid)
	--显示装备Name和精炼等级
	local refineLevel = 0;		
	local name = ""
	if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_REFINELEVEL) then
		refineLevel = tonumber(LuaRet);
	else
		msg("客户端获取精炼等级失败") 	
		return false
	end
	if refineLevel >= 20 then 
		self:ShowQianghMaxWnd(item_guid);
		return 
	else
		local _handle = GetWindow(nil, "ForgeWnd,QianghWnd,QianghMax")
		if _handle ~= 0 then 
			GUI:WndSetVisible(_handle, false)
		end
	end
	if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		name = tostring(LuaRet);
	end
	
	local handle = GetWindow(QianghWnd.WndHandle,"enhance")
	if handle ~= 0 then
		GUI:RichEditClear(handle)
		GUI:RichEditAppendString(handle,"#COLORCOLOR_ORANGE#"..name.."#COLOREND# #COLORCOLOR_GREENG#+"..refineLevel.."#COLOREND#")
	end	
	
	--根据强化等级设置显示特效
	if refineLevel > 0 then
		local _AnimateID = nil
		if refineLevel <= 10 then
			_AnimateID = 1096000100;
		elseif refineLevel <= 15 then
			_AnimateID = 1096000200;
		else
			_AnimateID = 1096000300;
		end
		if _AnimateID ~= nil then
			GUI:ItemCtrlSetEffectImageID(_handle, _AnimateID, 1.5)
		end
	end
	

	--显示当前强化等级的属性和下一等级的强化属性
	local tAtt = {
		ITEM_PROP_MAXPHYDEF                     =76,   -- 物防上限
	    ITEM_PROP_MINPHYDEF                     =77,   -- 物防下限
	    ITEM_PROP_MAXMAGDEF                     =78,   -- 魔防上限
	    ITEM_PROP_MINMAGDEF                     =79,   -- 魔防下限
	    ITEM_PROP_MAXPHYATK                     =80,   -- 攻击力上限
	    ITEM_PROP_MINPHYATK                     =81,   -- 攻击力下限
	    ITEM_PROP_MAXMAGATK                     =82,   -- 魔攻上限
	    ITEM_PROP_MINMAGATK                     =83,   -- 魔攻下限
	    ITEM_PROP_MAXTAOATK                     =84,   -- 道术上限
	    ITEM_PROP_MINTAOATK                     =85,   -- 道术下限
    }
	local miaos = {"物理防御: ", "魔法防御: ","物理攻击:","魔法攻击:","道术攻击:", }
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_EXT) then
		msg("客户端获取道具扩展属性失败") 	
		return false
	end
	local data = LuaRet;
	dbg(serialize(data));
    local refine_next_lv = refineLevel + 1;
	local Temp      = CL:GetItemTemplateHandleByGUID(item_guid)
	local Entity    = CL:GetItemEntityHandleByGUID(item_guid)
	local index     = 76;
	local ext_index = 1;
	local num       = 1;
	for i = 1, 5 do
		-- dbg("index==========================="..index)
		if not CL:GetItemTemplatePropByHandle(Temp, index) then
			return 
		end
		local value_max = LuaRet;	--获取模板属性
		local value_max_ext = data[ext_index][1]	--获取精炼已经加的属性 
		local value_max_next = ATT_ADD[index][refine_next_lv];	--获取下一等级对应属性的强化收益数据
		index = index + 1;
		if not CL:GetItemTemplatePropByHandle(Temp, index) then
			return
		end	
		local value_min = LuaRet;
		local value_min_ext = data[ext_index+1][2]
		local value_min_next = ATT_ADD[index][refine_next_lv];
		if 	value_max > 0 or value_min > 0 then 
			EditSetText(QianghWnd.WndHandle,"edit_gong"..num, miaos[i])
			EditSetText(QianghWnd.WndHandle,"edit_gon"..num, miaos[i])
			value_max = value_max + value_max_ext
			value_min = value_min + value_min_ext
			EditSetText(QianghWnd.WndHandle,"gong_s"..num, ""..value_min.."-"..value_max)
			value_max = value_max + value_max_next;
			value_min = value_min + value_min_next;
			EditSetText(QianghWnd.WndHandle,"gong_"..num, ""..value_min.."-"..value_max)
			num = num + 1;
		end		
		index = index + 1;
	end



	
	
	-- local job = 0
	-- if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_JOB) then
	-- 	if LuaRet ~= nil then
	-- 		job = tonumber(LuaRet)
	-- 	end	
	-- end 
	
	-- local attack_att_name_min = -1;
	-- local attack_att_name_max = -1;
	-- if job == 1 then
	-- 	attack_att_name_max = 10;
	-- 	attack_att_name_min = 11;
	-- elseif job == 2 then
	-- 	attack_att_name_max = 12;
	-- 	attack_att_name_min = 13;
	-- elseif job == 3 then
	-- 	attack_att_name_max = 14;
	-- 	attack_att_name_min = 15;
	-- end
	
	-- local subType = 0
	-- if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_SUBTYPE) then
	-- 	subType = tonumber(LuaRet)				
	-- else
	-- 	msg("客户端获取道具子类型失败") 	
	-- 	return false
	-- end
	-- if subType == 1 or subType == 8 or subType == 9 then
	-- 	if job == 0 then	---三职业通用装备
		
	-- 		local k = 1;
	-- 		local a = 10;
	-- 		for i = 1, 3 do
				
	-- 			att_max = data[k][PROPERTY_ATTR_VALUE];
	-- 			att_max_next = att_max + self.ATT[a][self.item_level_index];
	-- 			k = k + 1;
	-- 			a = a + 1;
	-- 			att_min = data[k][PROPERTY_ATTR_VALUE];
	-- 			att_min_next = att_min + self.ATT[a][self.item_level_index];
	-- 			k = k + 1;
	-- 			a = a + 1;
	-- 			EditSetText(QianghWnd.WndHandle, "edit_gong"..i, miaos[1][i])
	-- 			EditSetText(QianghWnd.WndHandle, "edit_gon"..i, miaos[1][i])
	-- 			EditSetText(QianghWnd.WndHandle, "gong_s"..i, ""..att_min.." - "..att_max)
	-- 			EditSetText(QianghWnd.WndHandle, "gong_"..i, ""..att_min_next.." - "..att_max_next)
	-- 		end
	-- 	else

	-- 		att_max = data[1][PROPERTY_ATTR_VALUE];
	-- 		att_max_next = att_max + self.ATT[attack_att_name_max][self.item_level_index];
	-- 		att_min = data[2][PROPERTY_ATTR_VALUE];
	-- 		att_min_next = att_min + self.ATT[attack_att_name_min][self.item_level_index];
			
	-- 		EditSetText(QianghWnd.WndHandle, "edit_gong1", miaos[1][job])
	-- 		EditSetText(QianghWnd.WndHandle, "edit_gon1", miaos[1][job])
	-- 		EditSetText(QianghWnd.WndHandle, "gong_s1", ""..att_min.." - "..att_max)
	-- 		EditSetText(QianghWnd.WndHandle, "gong_1", ""..att_min_next.." - "..att_max_next)
	-- 	end	
	-- elseif subType == 2 or subType == 3 or subType == 4 or subType == 6 or subType == 7 then		
	-- 	if job == 0 then
	-- 		local level = 0
	-- 		if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_LEVEL) then
	-- 			level = tonumber(LuaRet)				
	-- 		end
	-- 		if level == 1 then 
	-- 			local k = 3;
	-- 			local a = 6;
	-- 			for i = 1, 3 do
	-- 				if i == 1 then 
	-- 					att_max = data[1][PROPERTY_ATTR_VALUE];
	-- 					att_max_next = att_max + self.ATT[10][self.item_level_index];
	-- 					att_min = data[2][PROPERTY_ATTR_VALUE];
	-- 					att_min_next = att_min + self.ATT[11][self.item_level_index];
						
	-- 					EditSetText(QianghWnd.WndHandle, "edit_gong1", miaos[i][1])
	-- 					EditSetText(QianghWnd.WndHandle, "edit_gon1", miaos[i][1])
	-- 					EditSetText(QianghWnd.WndHandle, "gong_s1", ""..att_min.." - "..att_max)
	-- 					EditSetText(QianghWnd.WndHandle, "gong_1", ""..att_min_next.." - "..att_max_next)	
						

	-- 				else
	-- 					att_max = data[k][PROPERTY_ATTR_VALUE];
	-- 					att_max_next = att_max + self.ATT[a][self.item_level_index];
	-- 					k = k + 1;
	-- 					a = a + 1;
	-- 					att_min = data[k][PROPERTY_ATTR_VALUE];
	-- 					att_min_next = att_min + self.ATT[a][self.item_level_index];
	-- 					k = k + 1;
	-- 					a = a + 1;
	-- 					EditSetText(QianghWnd.WndHandle, "edit_gong"..i, miaos[i])
	-- 					EditSetText(QianghWnd.WndHandle, "edit_gon"..i, miaos[i])
	-- 					EditSetText(QianghWnd.WndHandle, "gong_s"..i, ""..att_min.." - "..att_max)
	-- 					EditSetText(QianghWnd.WndHandle, "gong_"..i, ""..att_min_next.." - "..att_max_next)
	-- 				end
	-- 			end
			
	-- 		end
	-- 	else
	-- 		local k = 3;
	-- 		local a = 6;
	-- 		for i = 1, 3 do
	-- 			if i == 1 then 
	-- 				att_max = data[1][PROPERTY_ATTR_VALUE];
	-- 				att_max_next = att_max + self.ATT[attack_att_name_max][self.item_level_index];
	-- 				att_min = data[2][PROPERTY_ATTR_VALUE];
	-- 				att_min_next = att_min + self.ATT[attack_att_name_min][self.item_level_index];
					
	-- 				EditSetText(QianghWnd.WndHandle, "edit_gong1", miaos[i][job])
	-- 				EditSetText(QianghWnd.WndHandle, "edit_gon1", miaos[i][job])
	-- 				EditSetText(QianghWnd.WndHandle, "gong_s1", ""..att_min.." - "..att_max)
	-- 				EditSetText(QianghWnd.WndHandle, "gong_1", ""..att_min_next.." - "..att_max_next)	
					

	-- 			else
	-- 				att_max = data[k][PROPERTY_ATTR_VALUE];
	-- 				att_max_next = att_max + self.ATT[a][self.item_level_index];
	-- 				k = k + 1;
	-- 				a = a + 1;
	-- 				att_min = data[k][PROPERTY_ATTR_VALUE];
	-- 				att_min_next = att_min + self.ATT[a][self.item_level_index];
	-- 				k = k + 1;
	-- 				a = a + 1;
	-- 				EditSetText(QianghWnd.WndHandle, "edit_gong"..i, miaos[i])
	-- 				EditSetText(QianghWnd.WndHandle, "edit_gon"..i, miaos[i])
	-- 				EditSetText(QianghWnd.WndHandle, "gong_s"..i, ""..att_min.." - "..att_max)
	-- 				EditSetText(QianghWnd.WndHandle, "gong_"..i, ""..att_min_next.." - "..att_max_next)
	-- 			end
	-- 		end
	-- 	end
	-- elseif subType == 15 then
	-- 	local k = 1;
	-- 	local a = 6;
	-- 	for i = 1, 2 do
	-- 		att_max = data[k][PROPERTY_ATTR_VALUE];
	-- 		att_max_next = att_max + self.ATT[a][self.item_level_index];
	-- 		k = k + 1;
	-- 		a = a + 1;
	-- 		att_min = data[k][PROPERTY_ATTR_VALUE];
	-- 		att_min_next = att_min + self.ATT[a][self.item_level_index];
	-- 		k = k + 1;
	-- 		a = a + 1;
	-- 		EditSetText(QianghWnd.WndHandle, "edit_gong"..i, miaos[i+1])
	-- 		EditSetText(QianghWnd.WndHandle, "edit_gon"..i, miaos[i+1])
	-- 		EditSetText(QianghWnd.WndHandle, "gong_s"..i, ""..att_min.." - "..att_max)
	-- 		EditSetText(QianghWnd.WndHandle, "gong_"..i, ""..att_min_next.." - "..att_max_next)
	-- 	end

	-- elseif subType == 10 or subType == 11 or subType == 13 or subType == 18  then 
	-- 	---三职业通用装备
	-- 	local k = 1;
	-- 	local a = 10;
	-- 	for i = 1, 3 do
	-- 		att_max = data[k][PROPERTY_ATTR_VALUE];
	-- 		att_max_next = att_max + self.ATT[a][self.item_level_index];
	-- 		k = k + 1;
	-- 		a = a + 1;
	-- 		att_min = data[k][PROPERTY_ATTR_VALUE];
	-- 		att_min_next = att_min + self.ATT[a][self.item_level_index];
	-- 		k = k + 1;
	-- 		a = a + 1;
	-- 		EditSetText(QianghWnd.WndHandle, "edit_gong"..i, miaos[1][i])
	-- 		EditSetText(QianghWnd.WndHandle, "edit_gon"..i, miaos[1][i])
	-- 		EditSetText(QianghWnd.WndHandle, "gong_s"..i, ""..att_min.." - "..att_max)
	-- 		EditSetText(QianghWnd.WndHandle, "gong_"..i, ""..att_min_next.." - "..att_max_next)
	-- 	end
	-- end

	--显示强化所需要消耗的材料
	local need_item_count = self.EXPEND[1][1];
	local have_item_count = self.item_count;
	RDItemCtrlSetGUIDataPropByKeyName(QianghWnd.WndHandle, "ItemCtrl1", "经验丹小", 65535, false); 
	local _handle = GetWindow(QianghWnd.WndHandle, "need_item_count")
	if _handle ~= 0 then 
		GUI:WndSetVisible(_handle, true)
		local color = ""
		if have_item_count >= have_item_count then 
			color = "#COLORCOLOR_BLUE#"
		else
			color = "#COLORCOLOR_RED#"
		end
		GUI:RichEditClear(_handle);
		GUI:RichEditAppendString(_handle, ""..color..have_item_count.."/#COLORCOLOR_BLUE#"..need_item_count)
	end

	
	local gold = self.EXPEND[1][2];
	dbg(""..gold)
	EditSetText(QianghWnd.WndHandle, "gold", ""..gold)
	
	
	--显示强化成功率
	local suc_rate = self.EXPEND[2]
	local ingot = 0;
	if suc_rate < 100 then 
		ingot = self.EXPEND[3];
	end
	local jb , bjb = 0 , 0
	if UI:Lua_GetPlayerSelfProperty64(5) then 
		bjb = LuaRet
	end    
	if UI:Lua_GetPlayerSelfProperty64(4) then 
		jb= LuaRet + bjb
	end      
	if jb < gold then
		local handle = GetWindow(QianghWnd.WndHandle,"gold")
		GUI:EditSetTextColor(handle, MakeARGB(255, 255, 0, 0))
	else
		local handle = GetWindow(QianghWnd.WndHandle,"gold")
		GUI:EditSetTextColor(handle, MakeARGB(255, 194, 182, 160))
	end	
	local handle1 = GetWindow(QianghWnd.WndHandle,"yb")
	if handle1 ~= 0 then 
		if GUI:CheckBoxGetCheck(handle1) then
			QianghWnd.YbYes = 1
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
		else
			if suc_rate < 10 then
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][suc_rate])
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",0)	
			elseif suc_rate >= 10 and suc_rate < 100 then
				local a = math.floor(suc_rate/10) 
				local b = suc_rate%10
				if b == 0 then
					b = 10
				end
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][a])
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",suc_img[1][b])		
			else
				ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
				ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
			end
		end
	end	
	
	ImageSetImageID(QianghWnd.WndHandle,"succ_image4",1806700006)
	
	--扣除元宝保证成功
	if suc_rate < 100 then 
		local handle = GetWindow(QianghWnd.WndHandle,"yb")
		if handle ~= 0 then
			GUI:WndSetVisible(handle, true) 
		end
		handle = GetWindow(QianghWnd.WndHandle,"ybsm")
		if handle ~= 0 then
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle,"#COLORCOLOR_ORANGE#使用#COLOREND##COLORCOLOR_GREENG#"..self.EXPEND[3]
			.."#COLOREND##COLORCOLOR_ORANGE#元宝100%成功#COLOREND#")
		end	
	end

	QianghWnd.job = job
end

	
function QianghWnd.qiangh(_handle)
	
	local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
	if handle ~= 0 then 
		local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil,ITEMGUIDATA_ITEMGUID)
		if tonumber(item_guid) == 0 or item_guid == nil then
			msg_up("请放入需要强化的装备")
			return
		end
		UI:Lua_GUID2Str(item_guid)
		UI:Lua_SubmitForm("强化表单", "forge_item", ""..LuaRet.."#"..QianghWnd.job.."#"..QianghWnd.YbYes)
	end
	
end




function QianghWnd.CheckChange(_Handle)
	local _Istrue = GUI:CheckBoxGetCheck(_Handle)
	if _Istrue then
		QianghWnd.YbYes = 1
		ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
		ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
		ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
	else
		QianghWnd.YbYes = 0
		-- local handle = GetWindow(nil,"ForgeWnd,QianghWnd,item")
		-- local item_guid = RDItemCtrlGetGUIDataPropByType(handle,nil,ITEMGUIDATA_ITEMGUID)
		-- local q_level = 0
		-- if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_REFINELEVEL) then
			-- q_level = tonumber(LuaRet) + 1
		-- end	
		
		local suc_rate = QianghWnd.EXPEND[2]
		if suc_rate < 10 then
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][suc_rate])
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",0)	
		elseif suc_rate >= 10 and suc_rate < 100 then
			local a = math.floor(suc_rate/10) 
			local b = suc_rate%10
			if b == 0 then
				b = 10
			end
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",0)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",suc_img[1][a])
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",suc_img[1][b])		
		else
			ImageSetImageID(QianghWnd.WndHandle,"succ_image1",1806700008)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image2",1806700007)
			ImageSetImageID(QianghWnd.WndHandle,"succ_image3",1806700007)
		end	
	end	
	
end


function QianghWnd:ShowQianghMaxWnd(item_guid)
	local _Phandle = GetWindow(nil, "ForgeWnd,QianghWnd,QianghMax")
	if _Phandle ~= 0 then 
		GUI:WndSetVisible(_Phandle, true);
	else
		return
	end
	local handle = GetWindow(_Phandle, "item")
	if handle ~= 0 then 
		RDItemCtrlSetGUIDataPropByGUID(handle, "", item_guid)
		GUI:ItemCtrlSetEffectImageID(handle, 1096000300, 1.5)
		--显示装备Name和精炼等级
		local name = ""
		if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
			name = tostring(LuaRet);
		end
		
		handle = GetWindow(_Phandle,"enhance")
		if handle ~= 0 then
			GUI:RichEditClear(handle)
			GUI:RichEditAppendString(handle,"#COLORCOLOR_ORANGE#"..name.."#COLOREND# #COLORCOLOR_GREENG#+20#COLOREND#")
		end	

		--显示当前强化等级的属性和下一等级的强化属性
		local miaos = {{"物理攻击:","魔法攻击:","道术攻击:"}, "魔法防御: ", "物理防御: "}
		local att_max = 0;
		local att_min = 0;
		
		local data = {}
		if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_EXT) then
			data = LuaRet
			dbg(serialize(data))
		else
			msg("客户端获取道具扩展属性失败") 	
			return false
		end	
		
		local job = 0
		if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_JOB) then
			if LuaRet ~= nil then
				job = tonumber(LuaRet)
			end	
		end 
		
		local attack_att_name_min = -1;
		local attack_att_name_max = -1;
		if job == 1 then
			attack_att_name_max = 10;
			attack_att_name_min = 11;
		elseif job == 2 then
			attack_att_name_max = 12;
			attack_att_name_min = 13;
		elseif job == 3 then
			attack_att_name_max = 14;
			attack_att_name_min = 15;
		end
		
		local subType = 0
		if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_SUBTYPE) then
			subType = tonumber(LuaRet)				
		else
			msg("客户端获取道具子类型失败") 	
			return false
		end
		if subType == 1 or subType == 8 or subType == 9 then
			if job == 0 then	---三职业通用装备
			
				local k = 1;
				for i = 1, 3 do
					att_max = data[k][PROPERTY_ATTR_VALUE];
					k = k + 1;
					att_min = data[k][PROPERTY_ATTR_VALUE];
					k = k + 1;
					EditSetText(_Phandle, "edit_gong"..i, miaos[1][i])
					EditSetText(_Phandle, "gong_s"..i, ""..att_min.." - "..att_max)
				end
			else

				att_max = data[1][PROPERTY_ATTR_VALUE];
				att_min = data[2][PROPERTY_ATTR_VALUE];
				EditSetText(_Phandle, "edit_gong1", miaos[1][job])
				EditSetText(_Phandle, "gong_s1", ""..att_min.." - "..att_max)
			end	
		elseif subType == 2 or subType == 3 or subType == 4 or subType == 6 or subType == 7 then		
			if job == 0 then
				local level = 0
				if CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_LEVEL) then
					level = tonumber(LuaRet)				
				end
				if level == 1 then 
					local k = 3;
					for i = 1, 3 do
						if i == 1 then 
							att_max = data[1][PROPERTY_ATTR_VALUE];
							att_min = data[2][PROPERTY_ATTR_VALUE];
							
							EditSetText(_Phandle, "edit_gong1", miaos[i][1])
							EditSetText(_Phandle, "gong_s"..i, ""..att_min.." - "..att_max)
							

						else
							att_max = data[k][PROPERTY_ATTR_VALUE];
							k = k + 1;
							att_min = data[k][PROPERTY_ATTR_VALUE];
							k = k + 1;
							EditSetText(_Phandle, "edit_gong"..i, miaos[i])
							EditSetText(_Phandle, "gong_s"..i, ""..att_min.." - "..att_max)
						end
					end
				
				end
			else
				local k = 3;
				for i = 1, 3 do
					if i == 1 then 
						att_max = data[1][PROPERTY_ATTR_VALUE];
						att_min = data[2][PROPERTY_ATTR_VALUE];
						EditSetText(_Phandle, "edit_gong1", miaos[i][job])
						EditSetText(_Phandle, "gong_s1", ""..att_min.." - "..att_max)

					else
						att_max = data[k][PROPERTY_ATTR_VALUE];
						k = k + 1;
						att_min = data[k][PROPERTY_ATTR_VALUE];
						k = k + 1;
						EditSetText(_Phandle, "edit_gong"..i, miaos[i])
						EditSetText(_Phandle, "gong_s"..i, ""..att_min.." - "..att_max)
					end
				end
			end
		elseif subType == 15 then
			local k = 1;
			for i = 1, 2 do
				att_max = data[k][PROPERTY_ATTR_VALUE];
				k = k + 1;
				att_min = data[k][PROPERTY_ATTR_VALUE];
				k = k + 1;
				EditSetText(_Phandle, "edit_gong"..i, miaos[i+1])
				EditSetText(_Phandle, "gong_s"..i, ""..att_min.." - "..att_max)
			end

		elseif subType == 10 or subType == 11 or subType == 13 or subType == 18  then 
			---三职业通用装备
			local k = 1;
			for i = 1, 3 do
				att_max = data[k][PROPERTY_ATTR_VALUE];
				k = k + 1;
				att_min = data[k][PROPERTY_ATTR_VALUE];
				att_min_next = att_min + self.ATT[a][self.item_level_index];
				k = k + 1;
				EditSetText(_Phandle, "edit_gong"..i, miaos[1][i])
				EditSetText(_Phandle, "gong_s"..i, ""..att_min.." - "..att_max)
			end
		end
		
		
	end
end 




function QianghWnd.ChongzEditOnLBTNUp()
	CL:OpenUrlUseIEByType(3)
end



QianghWnd:main()