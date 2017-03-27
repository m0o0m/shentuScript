
--res
TestGUI = {}
local m_IsChange = true
function TestGUI.main()
	local _Parent = LuaGlobal["AttachPartent"]	
	local _GUIHandle = 0
	_Parent = GUI:WndCreateWnd(_Parent,"TestWndChild_4",1930001006,200,100)
	if _Parent ~= 0 then
		UI:Lua_Log("WND创建成功")
		GUI:WndSetSizeM(_Parent,360, 360)
		GUI:WndGetSizeM(_Parent)
		_X = LuaRet[1]
		_Y = LuaRet[2]
		GUI:WndGetPosM(_Parent)
		_PosX = LuaRet[1]
		_PosY = LuaRet[2]
		GUI:WndSetMoveWithLBM(_Parent)
		GUI:WndSetCanRevMsg(_Parent,true)
		_IsMove = GUI:WndGetMoveWithLBM(_Parent)
		MainPar = GUI:WndGetParentM(_Parent)
		if MainPar ~= nil then
			GUI:WndGetPosM(MainPar)
			_ParPosX = LuaRet[1]
			_ParPosY = LuaRet[2]
		end
		GUI:WndSetMagicUI(_Parent,2)
		_MagicType = GUI:WndGetMagicUI(_Parent)
		GUI:WndSetHint(_GUIHandle, "Dlg提示")
		GUI:WndSetTextM(_Parent,"LUAWND 宽=".._X.." 高=".._Y.."移动"..tostring(_IsMove).."位置X".._PosX.."位置Y".._PosY.."父位置X".._ParPosX.."父位置Y".._ParPosY)
		UI:Lua_Log("LUAWND 宽=".._X.." 高=".._Y.."移动"..tostring(_IsMove).."位置X".._PosX.."位置Y".._PosY.."父位置X".._ParPosX.."父位置Y".._ParPosY.."MagicType ".._MagicType)
	end

	local _Parent2 = GUI:WndCreateWnd(_Parent,"TestWndChild_4",1830700061,380,100)
	if _Parent2 ~= 0 then
		GUI:WndSetTextM(_Parent2,"2222")
	end

	_GUIHandle = GUI:ButtonCreate(_Parent2,"TestBtn2",1832500014,80,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TestGUI.Close")
	end

		--编辑框控件--------------------------------------------------------------------------
	_GUIHandle = GUI:EditCreate(_Parent2,"TestWndEdit2", 0, 0, 112, 131) --点击控件没有光标
	if _GUIHandle ~= 0 then
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:EditSetFontCenter(_GUIHandle)	
	end
	

	--按钮控件----------------------------------------------------------------------------
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestLogBtn",1890900006,10,230)
	if _GUIHandle ~= 0 then
		--GUI:WndSetPosM(_GUIHandle,60, 60)
		GUI:WndSetSizeM(_GUIHandle,60, 60)
		GUI:WndSetTextM(_GUIHandle,"输出按钮")
		GUI:WndSetHint(_GUIHandle, "输出按钮提示")
		--GUI:WndSetEnableM(_GUIHandle,false)
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,255,0,0))	--类型和微端不符合
		_Color = GUI:WndGetTextColorM(_GUIHandle)
		GUI:WndSetTextColorM(_GUIHandle, _Color)
		GUI:ButtonSetStateTextColor(_GUIHandle, 0, GUI:MakeARGB(255,255,0,0))
		GUI:ButtonSetStateTextColor(_GUIHandle, 1, GUI:MakeARGB(255,0,255,0))
		GUI:ButtonSetStateTextColor(_GUIHandle, 2, GUI:MakeARGB(255,0,0,255))
		GUI:ButtonSetStateTextColor(_GUIHandle, 3, GUI:MakeARGB(255,255,255,0))
		--GUI:WndSetCanRevMsg(_GUIHandle,false)		--测试成功
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TestGUI.ChangeSize")
		--GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TestGUI.BtnLog")
	end

	function TestGUI.ChangeSize(_Handle)
		UI:Lua_Log("改变大小开始触发")
		if _Handle ~= 0 then 
			local _ParentHandle = GUI:WndGetParentM(_Handle)
			if _ParentHandle ~= 0 then
				if m_IsChange == true then
					GUI:WndSetSizeM(_Parent,160, 160)
					m_IsChange = false
				else 
					GUI:WndSetSizeM(_Parent,360, 360)
					m_IsChange = true
				end
			end
		end
	end



	--按钮控件----------------------------------------------------------------------------
	_GUIHandle = GUI:ButtonCreate(_Parent,"TestWndChild_5",1832500014,240,20)
	if _GUIHandle ~= 0 then
		UI:Lua_Log("BTN创建成功")
		--GUI:WndSetSizeM(_GUIHandle,20, 20)
		GUI:WndGetSizeM(_GUIHandle)
		_X = LuaRet[1]
		_Y = LuaRet[2]
		GUI:WndSetImageID(_GUIHandle,1930200105)
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "TestGUI.Close")
		GUI:ButtonSetIsActivePageBtn(_GUIHandle, true)		--与微端不一致，设置后闪烁接口也依然起效
		GUI:ButtonGetIsActivePageBtn(_GUIHandle)
    	GUI:ButtonSetShine(_GUIHandle, true)
        _IsShine = GUI:ButtonGetShine(_GUIHandle)
        GUI:ButtonSetDownTextPosChange(_GUIHandle, true)
        _IsDown = GUI:ButtonGetDownTextPosChange(_GUIHandle)
        GUI:ButtonSetTextFont(_GUIHandle, "SIMLI")    
        _Font = GUI:ButtonGetTextFont(_GUIHandle)
        GUI:WndGetPosM(_GUIHandle)
		_PosX = LuaRet[1]
		_PosY = LuaRet[2]
        GUI:WndGetScreenPos(_GUIHandle)
        _SX = LuaRet[1]
        _SY = LuaRet[2]
         GUI:WndSetHint(_GUIHandle, "关闭按钮提示")
        GUI:WndSetTextM(_GUIHandle,"LUABTN 宽=".._X.." 高=".._Y.."闪烁"..tostring(_IsShine).."位置".._PosX.." , ".._PosY.."相对屏幕的X".._SX.." Y ".._SY.."    DownTextPos"..tostring(_IsDown).."字体".._Font)
	end
	
	--编辑框控件--------------------------------------------------------------------------
	_GUIHandle = GUI:EditCreate(_Parent,"TestWndEdit", 100, 80, 100, 30) --点击控件没有光标
	if _GUIHandle ~= 0 then
		UI:Lua_Log("EDIT创建成功")
		GUI:WndGetSizeM(_GUIHandle)
		_X = LuaRet[1]
		_Y = LuaRet[2]
		--UI:Lua_MakeARGB(255,255,0,0)	--应该直接返回颜色 不应该在ret里,并且取值有类型转换等问题
		GUI:EditSetTextColor(_GUIHandle, GUI:MakeARGB(255,255,0,0))	--类型和微端不符合
		--GUI:EditSetBNumber(_GUIHandle, true)	--还未实现
		--_IsNumber = GUI:EditGetBNumber(_GUIHandle)  --还未实现
		--UI:Lua_Log("EditGetBNumber".._IsNumber)
		--GUI:EditSetFontM(_GUIHandle, "SIMLI18")	--测试成功
		--GUI:EditSetInt(_GUIHandle, 123456)		--测试成功
		--_EditInt = GUI:EditGetInt(_GUIHandle)		--测试成功
		--UI:Lua_Log("EditGetInt".._EditInt)
		--GUI:EditSetIsPassWord(_GUIHandle, true)  --测试成功
		_IsPassWord = GUI:EditGetIsPassWord(_GUIHandle)
		--GUI:EditSetMaxCharNum(_GUIHandle, 10)		--测试成功
		--_MaxNum = GUI:EditGetMaxCharNum(_GUIHandle)	--测试成功
		--UI:Lua_Log("EditGetMaxCharNum".._MaxNum)
		
		--GUI:EditSetCanEdit(_GUIHandle, false)		--测试成功
		--_IsCanEdit = GUI:EditGetCanEdit(_GUIHandle)	--测试成功
		--UI:Lua_Log("EditGetCanEdit"..tostring(_IsCanEdit))	
		--GUI:EditSetMultiLineEdit(_GUIHandle, true)	--未定
		GUI:EditSetFontCenter(_GUIHandle)		--不起作用
		--GUI:EditSetLimitStringSize(_GUIHandle, true)	--未定
		
		_Text = GUI:EditGetTextM(_GUIHandle)
		 GUI:WndSetHint(_GUIHandle, "编辑框提示")
		 GUI:WndGetScreenPos(_GUIHandle)
        _SX = LuaRet[1]
        _SY = LuaRet[2]
        GUI:WndGetPosM(_GUIHandle)
		_ParPosX = LuaRet[1]
		_ParPosY = LuaRet[2]
        GUI:EditSetTextM(_GUIHandle,"LuaEdit".."X：".._ParPosX.."Y: ".._ParPosY)
		UI:Lua_Log("EditGetTextM".._Text.."相对屏幕的X".._SX.." Y ".._SY.."是否密码显示"..tostring(_IsPassWord))
	end

	--列表框控件--------------------------------------------------------------------------
	--目前选中没有被色背景，有自动的滚动条关联
    _GUIHandle = GUI:ListBoxCreate(_Parent, "TestListBox", 130, 120, 100, 30)
    if _GUIHandle ~= 0 then
    	UI:Lua_Log("LISTBOX创建成功")
    	---因为颜色不对  目前没有显示出来
		GUI:ListBoxAddString(_GUIHandle, "烈焰斩111", GUI:MakeColor(255,0,0,255))
		GUI:ListBoxAddString(_GUIHandle, "风刺剑法222", GUI:MakeColor(0,255,0,255))
		GUI:ListBoxAddString(_GUIHandle, "凌波微步333", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步444", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步555", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步666", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步777", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步888", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步999", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步100", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步11", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步12", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步13", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步14", GUI:MakeARGB(255,0,0,255))	--测试成功
		GUI:ListBoxAddString(_GUIHandle, "凌波微步15", GUI:MakeARGB(255,0,0,255))	--测试成功
	    GUI:ListBoxDelString(_GUIHandle, 1)		--测试成功		
	    --GUI:ListBoxClear(_GUIHandle)		--测试成功

	    _Conut = GUI:ListBoxGetLineCount(_GUIHandle)	--测试成功
	     for i=1, _Conut do 
	    	_LineStr = GUI:ListBoxGetLineString(_GUIHandle, i-1)	--测试成功
	    	 UI:Lua_Log("条目"..tostring(i-1).."信息".._LineStr) 
	    end
	    _LinColStr = GUI:ListBoxGetString(_GUIHandle, 1, 2)	--还未实现
	    GUI:ListBoxSetCurSel(_GUIHandle, 6, 4)	--还未实现
	    _CurSelLine = GUI:ListBoxGetCurSelLine(_GUIHandle)	--还未实现
	    _CurSelCol = GUI:ListBoxGetCurSelCol(_GUIHandle)	--还未实现
	    UI:Lua_Log("ListBox  ".."条目数:".._Conut.."特定行列字符 ".._LinColStr.."当前选中  ".._CurSelLine.."列 ".._CurSelCol) 
	end

	--图片控件--------------------------------------------------------------------------
	_GUIHandle = GUI:ImageCreate(_Parent, "TestImage", 1832500024, 10, 50)    
	if _GUIHandle ~= 0 then
    	UI:Lua_Log("IMAGE创建成功")
	    _ID = GUI:ImageGetImageID(_GUIHandle)    --ID获取不到 一直是0
	    --GUI:ImageSetColor(_GUIHandle, GUI:MakeARGB(255,0,0,255))  --测试成功
	    _SetColor = GUI:MakeARGB(255,0,0,255)  
	    _color = GUI:ImageGetColor(_GUIHandle)    --测试成功
	    --GUI:ImageSetAlpha(_GUIHandle, 100)    		--测试成功
	    _alpha = GUI:ImageGetAlpha(_GUIHandle)    	--测试成功
	    GUI:WndSetSizeM(_GUIHandle,150, 100)
	   --GUI:ImageSetFitSize(_GUIHandle, false)    	--测试成功
	    _IsFit = GUI:ImageGetFitSize(_GUIHandle)
	     GUI:WndSetHint(_GUIHandle, "图片提示")
	     GUI:WndSetTextM(_GUIHandle,"图片上文字")
	     GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,65,150,80))
	   -- GUI:ImageSetParam(_GUIHandle, 3)   --还未实现 
	   --GUI:ImageSetCheckPoint(_GUIHandle, 1)   --还未实现   
	   --GUI:ImageSetAroundImage(_GUIHandle, 1900111004, 1900111004, 1900111004,1900111004, 1930200105, 1900111004, 1900111004,1900111004, 1900111004)    --不起作用
	   -- GUI:ImageSetAnimateEnable(_GUIHandle, true, 200)    --还未实现 
	   GUI:ImageSetAnimate(_GUIHandle, 200, 0, "0")    --还未实现 
	    --GUI:ImageSetGray(_GUIHandle, true)    --还未实现
	    _IsGray = GUI:ImageGetGray(_GUIHandle)
	   -- GUI:ImageSetRenderState(_GUIHandle, 0)    --还未实现 
	   -- GUI:WndSetSizeM(_GUIHandle,80, 200) 
	   -- GUI:ImageSetDrawCenter(_GUIHandle, true)    --还未实现 
	   -- GUI:ImageSetTransfrom(_GUIHandle, 10000, 10000, 30)    --逆时针旋转的 微端为顺时针,已修改
	    --GUI:ImageSetDrawRect(_GUIHandle, float _StartX, float _EndX, float _StartY, float _EndY)   --还未实现 
	    UI:Lua_Log("IMAGE ".."ID:"..tonumber(_ID).."设置的颜色 "..tonumber(_SetColor).."获取的颜色: ".._color.."透明度:".._alpha.."是否自适应"..tostring(_IsFit).."是否灰度"..tostring(_IsGray))
	end

	--RichEdit控件--------------------------------------------------------------------------
	--自带自适应滚动条，并且支持form的字符串解析,但是不支持编辑，微端支持
    _GUIHandle = GUI:RichEditCreate(_Parent, "TestRichEdit", 110, 280, 150, 30)
    if _GUIHandle ~= 0 then
    	UI:Lua_Log("RICHEDIT创建成功")
	    --GUI:RichEditSetEditEnable(_GUIHandle, true)	--测试成功  这个不需要了，不支持在RichEdit里编辑
	   	GUI:RichEditSetDefaultTextColor(_GUIHandle, GUI:MakeARGB(255,0,0,255))	--测试成功
	    --_Enable = GUI:RichEditGetEditEnable(_GUIHandle)	--测试成功 这个也不需要了
	    --GUI:RichEditClear(_GUIHandle)
		GUI:RichEditAppendString(_GUIHandle, "编辑111")
		GUI:RichEditAppendString(_GUIHandle, "编辑222")
		GUI:RichEditAppendString(_GUIHandle, "编辑333")
		GUI:RichEditAppendString(_GUIHandle, "编辑444")
		GUI:RichEditAppendString(_GUIHandle, "编辑555")	--测试成功
		GUI:RichEditAppendString(_GUIHandle, "编辑666")
		GUI:RichEditAppendString(_GUIHandle, "编辑777")
		GUI:RichEditAppendString(_GUIHandle, "编辑888")
		GUI:RichEditAppendString(_GUIHandle, "编辑999")
		GUI:RichEditAppendString(_GUIHandle, "#COLORCOLOR_BROWN#断空兑换神器啦！便宜啦快来看看。。。")
	    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18")	--测试成功
		GUI:WndSetHint(_GUIHandle, "图片提示")
		--GUI:WndSetSizeM(_GUIHandle,150,10)
	   -- GUI:RichEditSetContentRect(_GUIHandle, 100, 100, 120, 10)	--还未实现
	    --GUI:RichEditSetContentRect(long _Handle, int X_, int Y_, int _W, int _H)	--还未实现
	    _Count = GUI:RichEditGetTextItemCount(_GUIHandle)	--还未实现		因为机制的不一样 这里获取的条目数 不准确，后续再修改
	    GUI:RichEditSetTextItemAlpha(_GUIHandle, 1 , 5, 100)	--还未实现
	    --GUI:RichEditSetTotalLine(_GUIHandle, 1)	--实现
	    _TotalLine = GUI:RichEditGetTotalLine(_GUIHandle)	--还未实现
	    _SelStr = GUI:RichEditGetSelectClickString(_GUIHandle)	--还未实现
	    _str = GUI:RichEditGetAllString(_GUIHandle)	--还未实现
	    UI:Lua_Log("RICHEDIT ".."GetEditEnable: "..tostring(_Enable).."全部字符串".._str.."条目数".._Count.."选择字符串".._SelStr.."获取最大行数".._TotalLine)
	end


	

	--组合框控件--------------------------------------------------------------------------
	--SizeX生效，SizeY不生效，length也不生效
	--[[
	_GUIHandle = GUI:ComboBoxCreate(_Parent, "TestComboBox", 1900111004, 150, 60, 100, 10, 3)
	if _GUIHandle ~= 0 then
		UI:Lua_Log("COMBOBOX创建成功")
	    --GUI:ComboBoxSetEditSize(long _Handle, int _Width, int _Height)	--还未实现
	    --GUI:ComboBoxSetListLength(long _Handle, int _Length)	--还未实现
	    GUI:ComboBoxAddString(_GUIHandle, "组合框111", 0,  GUI:MakeARGB(255,255,0,0))	--颜色值不起作用
	    GUI:ComboBoxAddString(_GUIHandle, "组合框222", 1,  GUI:MakeARGB(255,0,255,0))
	    GUI:ComboBoxAddString(_GUIHandle, "组合框333", 2,  GUI:MakeARGB(255,0,255,0))
	    GUI:ComboBoxSetCurSelect(_GUIHandle, 1)	--测试成功
	    _CurSel = GUI:ComboBoxGetCurSelect(_GUIHandle)	--测试成功
	    --GUI:ComboBoxGetCurSelectID(long _Handle)	--还未实现
	    --GUI:ComboBoxSetScrollBarImage(long _Handle, unsigned int _Up, unsigned int _Mid, unsigned int _Down,
	    --                               unsigned int _Back)	--还未实现
	    --GUI:ComboBoxSetListFillImage(long _Handle, unsigned int _ImgId)	--还未实现
	    --GUI:ComboBoxClear(long _Handle)
	    --GUI:ComboBoxGetListHandle(long _ComboxHandle)	--还未实现
	    --GUI:ComboBoxGetEdit(long _Handle)	--还未实现
	    UI:Lua_Log("COMBOBOX".._CurSel)
    end
    ]]--

	--勾选框控件--------------------------------------------------------------------------
    _GUIHandle = GUI:CheckBoxCreate(_Parent, "TestCheckBox", 1930800014, "勾选框", 120, 180)
    if _GUIHandle ~= 0 then
    	UI:Lua_Log("勾选框创建成功")
    	--GUI:WndSetTextM(_GUIHandle,"wwwww")
    	GUI:CheckBoxSetText(_GUIHandle,"CBoxSet")
    	GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,0,255,0))
    	_Color = GUI:WndGetTextColorM(_GUIHandle)
    	GUI:WndSetTextColorM(_GUIHandle, _Color)
    	GUI:WndSetHint(_GUIHandle, "勾选框提示")
	    GUI:CheckBoxSetCheck(_GUIHandle, false)	--测试成功0
	    _IsChecked = GUI:CheckBoxGetCheck(_GUIHandle)	--测试成功
	    GUI:CheckBoxSetAutoChange(_GUIHandle, true)	--测试成功
	    _AutoChecked = GUI:CheckBoxGetAutoChange(_GUIHandle)	--测试成功
	    --GUI:WndSetEnableM(_GUIHandle, false)	--测试成功
	    UI:Lua_Log("CHECKBOX ".."GetCheck"..tostring(_IsChecked).."是否自动选择"..tostring(_AutoChecked))
	end


	--物品框控件--------------------------------------------------------------------------
   _GUIHandle = GUI:ItemCtrlCreate(_Parent, "TestItemCtrl", 1903300004, 246, 180, 64, 64)
    if _GUIHandle ~= 0 then
    	UI:Lua_Log("物品框创建成功")
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)--测试成功
		GUI:ItemCtrlGetItemDataAutoManager(_GUIHandle)--测试成功
		GUI:ItemCtrlSetGUIDataPropByType(_GUIHandle, 1)
		GUI:ItemCtrlGetGUIDataPropByType(_GUIHandle,15)
		--local _Data = LuaRet
		GUI:WndSetTextM(_GUIHandle,"物品框")
		GUI:WndSetTextColorM(_GUIHandle, GUI:MakeARGB(255,65,150,80))
		--GUI:ItemCtrlSetBackImageID(_GUIHandle, 1930800041)
		_BackId = GUI:ItemCtrlGetBackImageID(_GUIHandle)
		
		GUI:ItemCtrlSetDefaultImage(_GUIHandle, 1903300004)
		_DefaultId = GUI:ItemCtrlGetDefaultImage(_GUIHandle)
		--GUI:ItemCtrlSetRBtnUse(long _Handle, GUI:_Flag)  --手游右键不实现
		--GUI:ItemCtrlGetRBtnUse(long _Handle)			 --手游右键不实现
		--GUI:ItemCtrlSetGUIData(_GUIHandle, 564465)--测试成功
		
		

		GUI:ItemCtrlSetBigIcon(_GUIHandle, 1)
		_BigIcon = GUI:ItemCtrlGetBigIcon(_GUIHandle)
		GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 10, 10)	--测试成功
		GUI:ItemCtrlGetBigIconOffset(_GUIHandle)	--测试成功
		_OffX = LuaRet[1]
		_OffY = LuaRet[2]
		--GUI:ItemCtrlSetIconSize(_GUIHandle, 0, 0)	--测试成功
		GUI:ItemCtrlSetFrontImageID(_GUIHandle, 2)
		_FrontImg = GUI:ItemCtrlGetFrontImageID(_GUIHandle)
		 GUI:WndSetHint(_GUIHandle, "物品框提示")

		 _GUIData1 = GUI:ItemCtrlGetGUIData(_GUIHandle)--测试成功
		UI:Lua_Log("设置Json串之前GUIData".._GUIData1)

		GUI:ItemCtrlSetJson(_GUIHandle, "{\"i\":3,\"g\":\"400215703490c0b8\",\"n\":\"乌木剑\",\"s\":85,\"a\":1,\"d\":100000,\"dm\":100000,\"eq\":{},\"cus\":{\"i\":{\"itemContribution\":1}}}")
		
		_GUIData2 = GUI:ItemCtrlGetGUIData(_GUIHandle)--测试成功
		UI:Lua_Log("设置Json串之后GUIData".._GUIData2)

--{"i":10001,"g":"400215703490c0b8","n":"乌木剑","s":85,"a":1,"d":100000,"dm":100000,"eq":{},"cus":{"i":{"itemContribution":1}}}

		

		for i=1, 15 do
			GUI:ItemCtrlGetGUIDataPropByType(_GUIHandle,i)
			--UI:Lua_Log("第"..i.."个值"..LuaRet[1].."\r\n")
		end
		--GUI:ItemCtrlClearItemData(_GUIHandle)  --测试成功
		--[[
		
		GUI:ItemCtrlSetHighlightImageID(long _Handle, unsigned int _ImgId) --不需要
		GUI:ItemCtrlSetEffectImageID(long _Handle, unsigned int _ImgId, float _Scale)
		
		GUI:ItemCtrlClearTips(long _Handle)
		]]--均未实现
		UI:Lua_Log("物品框"..tostring(_Data).."背景图".._BackId.."默认图".._DefaultId.."大图标类型".._BigIcon.."偏移X".._OffX.."偏移Y".._OffY.."前景图".._FrontImg)
	end

	--垂直滚动条控件--------------------------------------------------------------------------
	--目前能创建，但是绑定到指定控件 是问题,ListBox和RichEdit都自带自适应的滚动条，这个再做定夺
    _GUIHandle = GUI:ScrollBarVCreate(_Parent, "TestScrollBarV", 1900111004,  1900111004, 1900111004, 1900111004, 320, 80,260)
    if _GUIHandle ~= 0 then
    	UI:Lua_Log("垂直滚动条创建成功")
    	GUI:WndGetPosM(_GUIHandle)
		_X = LuaRet[1]
		_Y = LuaRet[2]
		UI:Lua_Log("垂直滚动条位置".._X.."   ".._Y)
	end
    --[[long ScrollBarVCreate(long _ParentHandle, const char *_pItemCtrlID, int _ImageUp, int _ImageDown, int _ImageThumb,
                          int _ImageBack, int _PosX, int _PosY, int _Length)
    long ScrollBarHCreate(long _ParentHandle, const char *_pItemCtrlID, int _ImageUp, int _ImageDown, int _ImageThumb,
                          int _ImageBack, int _PosX, int _PosY, int _Length)
    bool ScrollBarGetImageData(long _Handle)

    void ScrollBarSetSetp(long _Handle, int _Step)
    int ScrollBarGetSetp(long _Handle)

    void ScrollBarSetPos(long _Handle, int _Pos)
    int ScrollBarGetPos(long _Handle)
    int ScrollBarGetLenght(long _Handle)
	]]--
	--均未实现

	TestGUI.UIInit(_Parent)
end

--UI Logic Code Start
function TestGUI.UIInit(_Handle)

end


function TestGUI.BtnLog(_Handle)
	UI:Lua_Log("BtnLog触发成功")
	if _Handle ~= 0 then 
		local _ParentHandle = GUI:WndGetParentM(_Handle)
		if _ParentHandle ~= 0 then
			UI:Lua_Log("BtnLog父窗口获取成功")
			
			local _UICount = GUI:WndGetChildCount(_ParentHandle)	--测试成功
			if _UICount > 0 then
				if GUI:WndGetChildWnd(_ParentHandle) then	--测试成功		
					local _UIArray = {}
					for i=1, _UICount do
						_UIArray[i] = {}
						UI:Lua_Log("控件类型: "..LuaRet[i][1].."句柄值: "..LuaRet[i][2])
						
					end
				end
			end

			_TempHandle = GUI:WndFindWindow(_ParentHandle, "TestCheckBox")	--测试成功
			if _TempHandle ~= 0 then
				_Text = GUI:WndGetEnableM(_TempHandle)
				UI:Lua_Log("WndGetEnableM: "..tostring(_Text))
			end

			_TempHandle = GUI:WndFindWindow(_ParentHandle, "TestWndEdit")	--测试成功
			if _TempHandle ~= 0 then
				_Text = GUI:EditGetTextM(_TempHandle)
				UI:Lua_Log("TestWndEdit的内容: ".._Text)
			end

			_TempHandle = GUI:WndFindWindow(_ParentHandle, "TestListBox")	--测试成功
			if _TempHandle ~= 0 then
				_CurSelCol = GUI:ListBoxGetCurSelCol(_TempHandle)	--还未实现
				UI:Lua_Log("TestListBox列: ".._CurSelCol)
			end


			_TempHandle = GUI:WndFindWindow(_ParentHandle, "TestRichEdit")	--测试成功
			if _TempHandle ~= 0 then	
				_SelStr = GUI:RichEditGetSelectClickString(_TempHandle)	--还未实现
	   			_str = GUI:RichEditGetAllString(_TempHandle)	--还未实现
	   			 GUI:RichEditSetContentRect(_TempHandle, 100, 100, 50, 90)	--还未实现
	   			UI:Lua_Log("测试RICHEDIT ".."全部字符串".._str.."选择字符串".._SelStr)
			end

			_TempHandle = GUI:WndFindChildM(_ParentHandle, "TestWndEdit")	--测试成功
			if _TempHandle ~= 0 then
				_Text = GUI:EditGetTextM(_TempHandle)
				GUI:WndSetVisible(_TempHandle, false)
				_IsVisible = GUI:WndGetVisible(_TempHandle)
				UI:Lua_Log("WndFindChildM成功: ".._Text.."是否可见"..tostring(_IsVisible))
			end
			GUI:WndAttachParent(LuaGlobal["AttachPartent"])	--没有注册进去，已修改好
			--void WndCalSize(long _Handle)				--还未实现
			--void WndInvalidate(long _Handle)			--还未实现
			--void WndSetMoveWithLBM(long _Handle)		--还未实现
			--bool WndGetMoveWithLBM(long _Handle)		--还未实现
			--void WndSetMouseEnableIN(long _Handle, bool _Flag)	--还未实现
			--bool WndGetMouseEnableIN(long _Handle)	--还未实现
			--void WndSetIsESCClose(long _Handle, bool _Flag)		--还未实现
			--bool WndGetIsESCClose(long _Handle)		--还未实现
			--GUI:WndSetFlagsM(_ParentHandle, 1)
			--void WndSetCanRevMsg(long _Handle, bool _Flag)		--还未实现
			--bool WndGetCanRevMsg(long _Handle)					--还未实现
			_IsLive = GUI:WndIsLive(_ParentHandle)
			_IsIn = GUI:WndPtInWindowM(_ParentHandle, 200, 200)
			_IsEnable = GUI:WndGetEnableM(_ParentHandle)
			UI:Lua_Log("窗口是否存活:"..tostring(_IsLive).."  是否在内"..tostring(true).."  是否enable: "..tostring(_IsEnable))
			--void WndSetEnableM(long _Handle, bool _Flag)			--还未实现

			GUI:WndSetIDM(_ParentHandle, "NewWndID")
			_IDStr = GUI:WndGetIDM(_ParentHandle)
			
			GUI:WndSetParam(_ParentHandle, 6)
			_Param = GUI:WndGetParam(_ParentHandle)

			GUI:WndSetImageID(_ParentHandle, 1900111004)		--不起作用
			_NewIMgID = GUI:WndGetImageID(_ParentHandle)

			GUI:WndAddProperty(_ParentHandle, "qq", "111")
			GUI:WndAddProperty(_ParentHandle, "ww", "222")
			GUI:WndAddProperty(_ParentHandle, "ee", "333")
			GUI:WndDelProperty(_ParentHandle, "ww")
			_DelPro = GUI:WndGetProperty(_ParentHandle, "ww")
			_Pro = GUI:WndGetProperty(_ParentHandle, "qq")
			UI:Lua_Log("窗口删除的:".._DelPro.."  获取pro".._Pro)
			UI:Lua_Log("窗口新ID:"..tostring(_IDStr).."  参数"..tostring(_Param).."  新图片ID: "..tostring(_NewIMgID))

			_WndText = GUI:WndGetText(_ParentHandle)
			GUI:WndSetTextColorM(_ParentHandle, GUI:MakeARGB(255,100,100,100));
			_TextColor = GUI:WndGetTextColorM(_ParentHandle)
			--GUI:WndSetTextOffset(_ParentHandle, 200, 0)		--不起作用
			UI:Lua_Log("窗口的文字:".._WndText.."  文本的颜色"..tostring(_TextColor))
			--void WndSetMagicUI(long _Handle, int _Type)			--还未实现
			--int WndGetMagicUI(long _Handle)						--还未实现
			--void WndSetFocusM(long _Handle)						--还未实现
			--void WndSetActiveM(long _Handle, bool _Flag)			--还未实现
			--void WndSetKeyFocusM(long _Handle, bool _Flag)		--还未实现
			--bool WndGetScreenPos(long _Handle)					--还未实现
			--void WndSetPosByDeviceSize(long _Handle, bool _ChangePos, bool _ChangeSize)			--还未实现
--[[
			bool WndRegistScript(long _Handle, int _Msg, const string &_FuncName)
			bool WndClearScript(long _Handle, int _Msg)
			string WndGetRegistScript(long _Handle, int _Msg)

			bool WndAddTimer(long _Handle, int _ID, int _Elapse, const string &_ScriptHandle)
			int WndAddTimerBrief(long _Handle, int _Elapse, const string &_ScriptHandle)
			bool WndDelTimer(long _Handle, int _ID)
			void WndDelAllTimer(long _Handle)
			long WndGetItemGUIDataHandle(long _Handle)
			void WndSetTipFunction(long _Handle, const std::string &_FuncName)
			void WndSetTipInfo(long _Handle, const std::string &_TipInfo)
			--void WndSetTipAutoRemove(long _Handle, bool _AutoRemove)		--还未实现
			--void WndSetHint(long _Handle, const std::string &_HintInof)		--还未实现
			--string WndGetHint(long _Handle)						--还未实现

			void WndAddFlags(long _Handle, unsigned int _Flag)
			void WndSetFlags(long _Handle, unsigned int _Flag)
]]--
			--bool WndMoveToParentBottom()		--参数样式不符合
			--bool WndMoveToParentTop()	--参数样式不符合
			--bool WndClick()	--参数样式不符合
			--bool WndRClick()	--参数样式不符合
			--bool WndDbClick()	--参数样式不符合
			--bool WndRDbClick()	--参数样式不符合
			--void WndSetModalWnd(long _Handle, bool _Flag)
		end
	end
end

function TestGUI.Close(_Handle)
	UI:Lua_Log("关闭开始触发")
	if _Handle ~= 0 then 
		local _ParentHandle = GUI:WndGetParentM(_Handle)
		if _ParentHandle ~= 0 then
			GUI:WndClose(_ParentHandle)
		end
	end
end

TestGUI.main()




