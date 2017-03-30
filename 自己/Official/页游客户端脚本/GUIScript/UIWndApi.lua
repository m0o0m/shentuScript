WndAttach = function(_Handle, _Info)
	if _Info == nil then _Info = "" end
	if _Handle == nil or _Handle == 0 then
		return as3.tolua(UI:Lua_GetWindow(_Info))
	else
		return as3.tolua(UI:Lua_FindWindow(_Handle, _Info))
	end
	return false
end

---------------------------------------------------------------------------------------------
CreateWnd = function(_Handle, _Info, _ID)
	if not WndAttach(_Handle, _Info) then return 0 end
	if not as3.tolua(UI:Lua_CreateWnd(_ID, Temporary)) then return 0 end
	if not as3.tolua(UI:Lua_WndLoadLayOut(_ID)) then return 0 end
	return Temporary
end

CreateWndFromFile = function(_Handle, _Info, _ID, _FileName)
	if not WndAttach(_Handle, _Info) then return 0 end
	if not as3.tolua(UI:Lua_CreateWnd(_ID, Temporary)) then return 0 end
	if not as3.tolua(UI:Lua_WndLoadLayOut(_FileName)) then return 0 end
	return Temporary
end

CreateWndFromString = function(_Handle, _Info, _ID, _String, _IsCanDrag, _IsEscClose)
	if not WndAttach(_Handle, _Info) then return 0 end
	return CreateWindowFromLayStr(_ID, _String, _IsCanDrag, _IsEscClose, Temporary)
end

CreateCtrl = function(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	if not WndAttach(_Handle, _Info) then return 0 end
	return CreateSimpleCtrl(_Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateImage = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_BACKPIC
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateButton = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_BUTTON
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateCheckBox = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Title)
	if not WndAttach(_Handle, _Info) then return 0 end
	return AddCheckBox(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Title)
end

CreateEdit = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_EDIT
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateComboBox = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
	if not WndAttach(_Handle, _Info) then return 0 end
	return AddComboBox(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
end

CreateListBox = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_LIST
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateRadio = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_RADIO
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateStatic = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_STATIC
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateHScrollBar = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
	if not WndAttach(_Handle, _Info) then return 0 end
	return AddHScrollBar(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _Length, _ID, _Align, _HintInfo)
end

CreateVScrollBar = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
	if not WndAttach(_Handle, _Info) then return 0 end
	return AddVScrollBar(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _Length, _ID, _Align, _HintInfo)
end

CreateTreeCtrl = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_TREECONTROL
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateRichEdit = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_RICHEIDT
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

CreateItemCtrl = function(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
	local _Type = ENUM_UITYPE_ITEMCTRL
	return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
end

GenForm = function(_FileName)
	return as3.tolua(UI:Lua_GenForm(_FileName))
end

GenFormByString = function(_Info)
	return as3.tolua(UI:Lua_GenFormByString(_Info))
end

---------------------------------------------------------------------------------------------
ButtonSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _ImageId)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _ImageId ~= nil then UI:Lua_ButtonSetImageID(_ImageId) end
	return true
end

EditSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _IsCenter, _Color, _IsNumber, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _IsCenter == true then UI:Lua_WndSetFlagsM(flg_dlgEdit_textInCenter) end
	if _Color ~= nil then UI:Lua_EditSetTextColor(_Color) end
	if _IsNumber ~= nil then UI:Lua_EditSetBNumber(_IsNumber) end
	if _Text ~= nil then UI:Lua_EditSetTextM(_Text) end
	return true
end

StaticSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _Text ~= nil then UI:Lua_StaticSetText(_Text) end
	return true
end

ImageSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _ImageId, _ImageColor, _Alpha, _FitSize, _CheckPoint)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _ImageId ~= nil then UI:Lua_ImageSetImageID(_ImageId) end
	if _ImageColor ~= nil then UI:Lua_ImageSetColor(_ImageColor) end
	if _Alpha ~= nil then UI:Lua_ImageSetAlpha(_Alpha) end
	if _FitSize ~= nil then UI:Lua_ImageSetFitSize(_FitSize) end
	if _CheckPoint ~= nil then UI:Lua_ImageSetCheckPoint(_CheckPoint) end
	return true
end

RichEditSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _FontName, _DefaultColor, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_RichEditSetEnable(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _FontName ~= nil then UI:Lua_RichEditSetCurFont(_FontName) end
	if _DefaultColor ~= nil then UI:Lua_RichEditSetDefaultTextColor(_DefaultColor) end
	if _Text ~= nil then UI:Lua_RichEditAppendString(_Text) end
	return true
end

RDItemCtrlSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _AutoManager, _RBtnUse, _GUIDataEnable)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _AutoManager ~= nil then UI:Lua_RDItemCtrlSetItemDataAutoManager(_AutoManager) end
	if _RBtnUse ~= nil then UI:Lua_RDItemCtrlSetRBtnUse(_RBtnUse) end
	if _GUIDataEnable ~= nil then RDItemCtrlSetGUIDataEnable(_Handle, _Info, _GUIDataEnable) end
	return true
end

ComboBoxSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _ListLength, _Text, _BtnImageId, _FillImageId)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _ListLength ~= nil then UI:Lua_ComboBoxSetListLength(_ListLength) end
	if _Text ~= nil then UI:Lua_ComboBoxSetText(_Text) end
	if _BtnImageId ~= nil then UI:Lua_ComboBoxSetImageID(_BtnImageId) end
	if _FillImageId ~= nil then UI:Lua_ComboBoxSetListFillImage(_FillImageId) end
	return true
end

CheckSetProp = function(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _Check, _Text, _ImageId, _AutoChange)
	if not WndAttach(_Handle, _Info) then return false end
	if _Visible ~= nil then UI:Lua_WndSetVisible(_Visible) end
	if _Enable ~= nil then UI:Lua_WndSetEnableM(_Enable) end
	if _CanRevMsg ~= nil then UI:Lua_WndSetCanRevMsg(_CanRevMsg) end
	if _Check ~= nil then UI:Lua_CheckSetCheck(_Check) end
	if _Text ~= nil then UI:Lua_CheckSetText(_Text) end
	if _ImageId ~= nil then UI:Lua_CheckSetImageID(_ImageId) end
	if _AutoChange ~= nil then UI:Lua_CheckSetAutoChange(_AutoChange) end
end

---------------------------------------------------------------------------------------------
GetWindow = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	return tonumber(Temporary)
end

WndFindChild = function(_Handle, _Info, _Child)
	if _Info == nil then return GetWindow(_Handle, _Child) end
	if _Child == nil then return GetWindow(_Handle, _Info) end
	return GetWindow(_Handle, _Info..",".._Child)
end

WndCalSize = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndCalSize())
end

WndInvalidate = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndInvalidate())
end

WndSetMoveWithLBM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetMoveWithLBM())
end; WndSetMoveWithLB = WndSetMoveWithLBM

WndSetEscClose = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	if _Flag == nil then _Flag = true end
	return as3.tolua(UI:Lua_WndSetIsESCClose(_Flag))
end

WndSetFlagsM = function(_Handle, _Info, _Flag)
	if _Flag == nil or not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetFlagsM(_Flag))
end; WndSetFlags = WndSetFlagsM

WndSetCanRevMsg = function(_Handle, _Info, _Flag)
	if _Flag == nil or not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetCanRevMsg(_Flag))
end

WndCloseM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndCloseM())
end; WndClose = WndCloseM

WndIsLive = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndIsLive())
end

WndGetParentM = function(_Handle, _Info)
	if nil == _Info then
		return GetWindow(_Handle, "parent")
	end
	return GetWindow(_Handle, _Info..",parent")
end; WndGetParent = WndGetParentM

WndPtInWindowM = function(_Handle, _Info, _X, _Y)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndPtInWindowM(_X, _Y))
end; WndPtInWindow = WndPtInWindowM

WndGetEnableM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	if as3.tolua(UI:Lua_WndGetEnableM()) then return as3.tolua(LuaRet) end
	return false
end; WndGetEnable = WndGetEnableM

WndSetEnableM = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetEnableM(_Flag))
end; WndSetEnable = WndSetEnableM

WndGetPosM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0,0 end
	if as3.tolua(UI:Lua_WndGetPosM()) then return as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]) end
	return 0, 0
end; WndGetPos = WndGetPosM

WndGetVisibleM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	if as3.tolua(UI:Lua_WndGetVisibleM()) and as3.tolua(LuaRet) then return true end
	return false
end; WndGetVisible = WndGetVisibleM

WndGetSizeM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0,0 end
	if as3.tolua(UI:Lua_WndGetSizeM()) then return as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]) end
	return 0, 0
end; WndGetSize = WndGetSizeM

WndGetIDM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return "" end
	if as3.tolua(UI:Lua_WndGetIDM()) then return as3.tolua(LuaRet) end
	return ""
end; WndGetID = WndGetIDM

WndSetIDM = function(_Handle, _Info, _NewId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetIDM(_NewId))
end; WndSetID = WndSetIDM

WndGetParam = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_WndGetParam()) then return as3.tolua(LuaRet) end
	return 0
end

WndSetParam = function(_Handle, _Info, _Param)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetParam(_Param))
end

WndAddProperty = function(_Handle, _Info, _Key, _Val)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndAddProperty(_Key, _Val))
end

WndDelProperty = function(_Handle, _Info, _Key)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndDelProperty(_Key))
end

WndGetProperty = function(_Handle, _Info, _Key)
	if not WndAttach(_Handle, _Info) then return "" end
	if as3.tolua(UI:Lua_WndGetProperty(_Key)) then return as3.tolua(LuaRet) end
	return ""
end

WndSetPosM = function(_Handle, _Info, _X, _Y)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetPosM(_X, _Y))
end; WndSetPos = WndSetPosM

WndSetSizeM = function(_Handle, _Info, _W, _H)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetSizeM(_W, _H))
end; WndSetSize = WndSetSizeM

WndSetFocusM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetFocusM())
end; WndSetFocus = WndSetFocusM

WndSetVisibleM = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetVisible(_Flag))
end; WndSetVisible = WndSetVisibleM

WndSetActiveM = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetActiveM(_Flag))
end; WndSetActive = WndSetActiveM

WndSetKeyFocusM = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetKeyFocusM(_Flag))
end; WndSetKeyFocus = WndSetKeyFocusM

WndGetScreenPos = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0,0 end
	if as3.tolua(UI:Lua_WndGetScreenPos()) then return as3.tolua(LuaRet[1]), as3.tolua(LuaRet[2]) end
	return 0, 0
end

WndRegistScript = function(_Handle, _Info, _Msg, _FuncName)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndRegistScript(_Msg, _FuncName))
end

WndUnRegistScript = function(_Handle, _Info, _Msg, _FuncName)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndUnRegistScript(_Msg, _FuncName))
end

WndPurgeScript = function(_Handle, _Info, _Msg)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndPurgeScript(_Msg))
end

WndAddTimer = function(_Handle, _Info, _ID, _Elapse, _ScriptHandle)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndAddTimer(_ID, _Elapse, _ScriptHandle))
end

WndAddTimerBrief = function(_Handle, _Info, _Elapse, _ScriptHandle)
	if not WndAttach(_Handle, _Info) then return false end
	if not as3.tolua(UI:Lua_WndAddTimerBrief(_Elapse, _ScriptHandle)) then return false end
	return as3.tolua(LuaRet)
end

WndDelTimer = function(_Handle, _Info, _ID)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndDelTimer(_ID))
end

WndDelAllTimer = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndDelAllTimer())
end

WndGetItemGUIDataHandle = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_WndGetItemGUIDataHandle()) then return as3.tolua(LuaRet) end
	return 0
end

WndSetTipFunction = function(_Handle, _Info, _FuncName)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetTipFunction(_FuncName))
end

WndSetTipInfo = function(_Handle, _Info, _TipInfo)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetTipInfo(_TipInfo))
end

WndSetTipAutoRemove = function(_Handle, _Info, _AutoRemove)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetTipAutoRemove(_AutoRemove))
end

WndMoveToParentBottom = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndMoveToParentBottom())
end

WndMoveToParentTop = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndMoveToParentTop())
end

WndOpenItemWindow = function(_Handle, _Info, _WindowType, _LuaFunc_GetGUIDList)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndOpenItemWindow(_WindowType, _LuaFunc_GetGUIDList))
end

WndActiveItemWindow = function(_Handle, _Info, _WindowType)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndActiveItemWindow(_WindowType))
end

WndCloseItemWindow = function(_Handle, _Info, _WindowType)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndCloseItemWindow(_WindowType))
end

WndGetCurItemWindow = function()
	if as3.tolua(UI:Lua_WndGetCurItemWindow()) then return as3.tolua(LuaRet) end
	return 0
end

WndSetTextColorM = function(_Handle, _Info, _Color)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetTextColorM(_Color))
end; WndSetTextColor = WndSetTextColorM

WndSetTextM = function(_Handle, _Info, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetTextM(_Text))
end; WndSetText = WndSetTextM

WndSetMagicUI = function(_Handle, _Info, _Type)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndSetMagicUI(_Type))
end

WndAddEffect = function(_Handle, _Info, _ImageId, _X, _Y, _Elapse, count)
	local this = GetWindow(_Handle, _Info)
	if 0 == this then return false end
	local id = WndGetID(this, nil).."_effect"
	local effect = GetWindow(this, id)
	if 0 ~= effect then WndClose(effect, nil) end
	if _ImageId == 0 then return false end
	local x, y = 0, 0
	if nil ~= _X then x = _X end
	if nil ~= _Y then y = _Y end
	effect = CreateImage(this, nil, _ImageId, x, y, 0, 0, id, 0, "")
	WndSetCanRevMsg(effect, nil, false)
	local c = 0
	if count ~= nil and type(count) == "number" and count > 0 then
		c = count
	end
	ImageSetAnimate(effect, nil, _Elapse, c)
	return true
end

WndDelEffect = function(_Handle, _Info)
	local this = GetWindow(_Handle, _Info)
	if 0 == this then return end
	local id = WndGetID(this, nil).."_effect"
	WndClose(this, id)
end

WndClick = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndClick())
end

WndRClick = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndRClick())
end

WndDbClick = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndDbClick())
end

WndRDbClick = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_WndRDbClick())
end

-----------------------------------------------------------------
ButtonSetImageID = function(_Handle, _Info, _ImageId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ButtonSetImageID(_ImageId))
end

ButtonGetIsActivePageBtn = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	if not as3.tolua(UI:Lua_ButtonGetIsActivePageBtn()) then return false end
	return as3.tolua(LuaRet)
end

ButtonSetIsActivePageBtn = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ButtonSetIsActivePageBtn(_Flag))
end

ButtonSetShine = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ButtonSetShine(_Flag))
end

ButtonSetIsTextPosChange = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ButtonSetIsTextPosChange(_Flag))
end

-----------------------------------------------------------------
EditSetTextColor = function(_Handle, _Info, _Color)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_EditSetTextColor(_Color))
end

EditGetBNumber = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	if as3.tolua(UI:Lua_EditGetBNumber()) then return as3.tolua(LuaRet) end
	return false
end

EditSetBNumber = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_EditSetBNumber(_Flag))
end

EditGetTextM = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return "" end
	if as3.tolua(UI:Lua_EditGetTextM()) then return as3.tolua(LuaRet) end
	return ""
end; EditGetText = EditGetTextM

EditSetTextM = function(_Handle, _Info, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_EditSetTextM(_Text))
end; EditSetText = EditSetTextM

EditGetInt = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_EditGetInt()) then return as3.tolua(LuaRet) end
	return 0
end

EditSetMultiLineEdit = function(_Handle, _Info, _MultiLine)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_EditSetMultiLineEdit(_MultiLine))
end

EditSetInt = function(_Handle, _Info, _Data)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_EditSetInt(_Data))
end

EditSetIsPassWord = function(_Handle, _Info, _IsPassword)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_EditSetIsPassWord(_IsPassword))
end

EditGetMaxCharNum = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_EditGetMaxCharNum()) then return as3.tolua(LuaRet) end
	return 0
end

EditSetMaxCharNum = function(_Handle, _Info, _MaxCount)
	if not WndAttach(_Handle, _Info) then return 0 end
	return as3.tolua(UI:Lua_EditSetMaxCharNum(_MaxCount))
end

EditSetCanEdit = function(_Handle, _Info, _CanEdit)
	if not WndAttach(_Handle, _Info) then return 0 end
	return as3.tolua(UI:Lua_EditSetCanEdit(_CanEdit))
end

-----------------------------------------------------------------
StaticSetText = function(_Handle, _Info, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_StaticSetText(_Text))
end

-----------------------------------------------------------------
ImageGetImageID = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_ImageGetImageID()) then return as3.tolua(LuaRet) end
	return 0
end

ImageSetImageID = function(_Handle, _Info, _ImageID)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetImageID(_ImageID))
end

ImageSetColor = function(_Handle, _Info, _ImageColor)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetColor(_ImageColor))
end

ImageGetColor = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_ImageGetColor()) then return as3.tolua(LuaRet) end
	return 0
end

ImageSetAlpha = function(_Handle, _Info, _Alpha)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetAlpha(_Alpha))
end

ImageGetAlpha = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_ImageGetAlpha()) then return as3.tolua(LuaRet) end
	return 0
end

ImageSetFitSize = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetFitSize(_Flag))
end

ImageSetParam = function(_Handle, _Info, _Param)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetParam(_Param))
end

ImageSetCheckPoint = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetCheckPoint(_Flag))
end

ImageSetAroundImage = function(_Handle, _Info, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetAroundImage(_LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right))
end

ImageSetAnimateEnable = function(_Handle, _Info, _Enable, _Speed)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetAnimateEnable(_Enable, _Speed))
end

ImageSetAnimate = function(_Handle, _Info, _Speed, _AnimCount, _AnimCallBackFunc)
	if not WndAttach(_Handle, _Info) then return false end
	if _Speed == nil then _Speed = 100 end
	if _AnimCount == nil then _AnimCount = 0 end
	if _AnimCallBackFunc == nil then _AnimCallBackFunc = "" end
	return as3.tolua(UI:Lua_ImageSetAnimate(_Speed, _AnimCount, _AnimCallBackFunc))
end

ImageSetGray = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ImageSetGray(_Flag))
end

-----------------------------------------------------------------
RichEditSetEnable = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditSetEnable(_Flag))
end

RichEditClear = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditClear())
end

RichEditAppendString = function(_Handle, _Info, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditAppendString(_Text))
end

RichEditGetSelectClickString = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return "" end
	if as3.tolua(UI:Lua_RichEditGetSelectClickString()) then return as3.tolua(LuaRet) end
	return ""
end

RichEditLinkControl = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditLinkControl())
end

RichEditSetCurFont = function(_Handle, _Info, _FontName)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditSetCurFont(_FontName))
end

RichEditSetContentRect = function(_Handle, _Info, _X, _Y, _W, _H)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditSetContentRect(_X, _Y, _W, _H))
end

RichEditGetTextItemCount = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_RichEditGetTextItemCount()) then return as3.tolua(LuaRet) end
	return 0
end

RichEditSetTextItemAlpha = function(_Handle, _Info, _Beg, _End, _Alpha)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditSetTextItemAlpha(_Beg, _End, _Alpha))
end

RichEditSetDefaultTextColor = function(_Handle, _Info, _Color)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditSetDefaultTextColor(_Color))
end

RichEditSetTotalLine = function(_Handle, _Info, _MaxLineNum)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RichEditSetTotalLine(_MaxLineNum))
end

-----------------------------------------------------------------
RDItemCtrlSetItemDataAutoManager = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetItemDataAutoManager(_Flag))
end

RDItemCtrlSetRBtnUse = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetRBtnUse(_Flag))
end

RDItemCtrlGetGUIData = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_RDItemCtrlGetGUIData()) then return as3.tolua(LuaRet) end
	return 0
end

RDItemCtrlGetGUIDataPropByType = function(_Handle, _Info, _PropType)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_RDItemCtrlGetGUIDataPropByType(_PropType)) then return as3.tolua(LuaRet) end
	return 0
end

RDItemCtrlGetGUIDataKeyName = function(_Handle, _Info)
	local GUID = RDItemCtrlGetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID)
	if GUID ~= "0" then
		if as3.tolua(UI:Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME)) then
			return as3.tolua(LuaRet)
		end
	end
	return ""
end

RDItemCtrlSetGUIDataPropByType = function(_Handle, _Info, _PropType, _PropValue)
	local _GUIDataHandle = RDItemCtrlGetGUIData(_Handle, _Info)
	if 0 == _GUIDataHandle then return false end
	LuaArg = _PropValue
	CLSetLuaArg(_PropValue)
	return as3.tolua(UI:Lua_SetItemGUIDataPropByType(_GUIDataHandle, _PropType))
end

RDItemCtrlSetGUIDataEnable = function(_Handle, _Info, _Enable)
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, _Enable) then return false end
	return true
end

RDItemCtrlSetGUIDataPropByItemID = function(_Handle, _Info, _ItemID, _Count, _IsBind)
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, "0") then return false end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, _ItemID) then return false end
	if not as3.tolua(UI:Lua_GetItemTemplateHandleByID(_ItemID)) then return false end
	local _ItemHandle = as3.tolua(LuaRet)
	if not as3.tolua(UI:Lua_GetItemTemplatePropByHandle(_ItemHandle, ITEM_PROP_ICON)) then return false end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, as3.tolua(LuaRet)) then return false end
	if nil ~= _Count then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, _Count) then return false end
	end
	if nil ~= _IsBind then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, _IsBind) then return false end
	end
	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true) then return false end
	return true
end

RDItemCtrlSetGUIDataPropByKeyName = function(_Handle, _Info, _KeyName, _Count, _IsBind)
	local handle = GUIWndFindWindow(_Handle,_Info)
	if handle ~= 0 then
		RDItemCtrlSetGUIDataByKeyName(handle,_KeyName,_Count,_IsBind)
	end
	--if not as3.tolua(UI:Lua_GetItemTemplateHandleByKeyName(_KeyName)) then return false end
	--if not as3.tolua(UI:Lua_GetItemTemplatePropByHandle(as3.tolua(LuaRet), ITEM_PROP_ID)) then return false end
	--return RDItemCtrlSetGUIDataPropByItemID(_Handle, _Info, as3.tolua(LuaRet), _Count, _IsBind)
end

RDItemCtrlSetGUIDataPropByGUID = function(_Handle, _Info, _ItemGUID)
	--实体句柄
	if not as3.tolua(UI:Lua_GetItemEntityHandleByGUID(_ItemGUID)) then return false end
	local _Entity = as3.tolua(LuaRet)
	local _GUIDataHandle = GetWindow(_Handle, _Info)
	if _Entity ~= 0 and _GUIDataHandle ~= 0 then
		GUIItemCtrlSetGUIData(_GUIDataHandle, _Entity)
	end
	--模版句柄
	--if not as3.tolua(UI:Lua_GetItemTemplateHandleByGUID(_ItemGUID)) then return false end
	--local _Template = as3.tolua(LuaRet)
	--物品GUID
	--if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, _ItemGUID) then return false end
	--物品模版ID
	--if not as3.tolua(UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_ID)) then return false end
	--if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, as3.tolua(LuaRet)) then return false end
	--物品图片ID
	--if not as3.tolua(UI:Lua_GetItemTemplatePropByHandle(_Template, ITEM_PROP_ICON)) then return false end
	--if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, as3.tolua(LuaRet)) then return false end
	--物品数量
	--if not as3.tolua(UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_AMOUNT)) then return false end
	--if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, as3.tolua(LuaRet)) then return false end
	--物品绑定状态
	--if not as3.tolua(UI:Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_IS_BOUND)) then return false end
	--if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, as3.tolua(LuaRet)) then return false end
	--有效状态
	--if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true) then return false end
	return true
end

RDItemCtrlClearGUIData = function(_Handle, _Info)
--	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, "0") then return false end
--	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, 0) then return false end
--	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, 0) then return false end
--	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, 0) then return false end
--	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, false) then return false end
--	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true) then return false end
	local handle = GetWindow(_Handle,_Info)
	dbg(handle)
	if handle ~= 0 then
		GUIItemCtrlClearItemData(handle)
	end
	return true
end

RDItemCtrlFillGUIData = function(_Handle, _Info, _GUIDataHandle)
	local _ItemHandle = GetWindow(_Handle, _Info)
	if _ItemHandle ~= 0 and _GUIDataHandle ~= 0 then
		GUIItemCtrlSetGUIData(_ItemHandle, _GUIDataHandle)
	end
	--[[if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID)) then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, as3.tolua(LuaRet)) then return false end
	end
	if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, as3.tolua(LuaRet)) then return false end
	end
	if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_IMAGEID)) then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, as3.tolua(LuaRet)) then return false end
	end
	if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT)) then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, as3.tolua(LuaRet)) then return false end
	end
	if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND)) then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, as3.tolua(LuaRet)) then return false end
	end
	if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_INVALIDATE)) then
		if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, as3.tolua(LuaRet)) then return false end
	end--]]
	return true
end

RDItemCtrlSetBigIcon = function(_Handle, _Info, _IsBigIcon)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetBigIcon(_IsBigIcon))
end

RDItemCtrlSetBigIconOffset = function(_Handle, _Info, _OffsetX, _OffsetY)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetBigIconOffset(_OffsetX, _OffsetY))
end

RDItemCtrlUpdateRefineAnimate = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlUpdateRefineAnimate())
end

RDItemCtrlSetFrontImageID = function(_Handle, _Info, _ImgId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetFrontImageID(_ImgId))
end

RDItemCtrlSetBackImageID = function(_Handle, _Info, _ImgId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetBackImageID(_ImgId))
end

RDItemCtrlSetHighlightImageID = function(_Handle, _Info, _ImgId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetHighlightImageID(_ImgId))
end

RDItemCtrlSetEffectImageID = function(_Handle, _Info, _ImgId, _Scale)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetEffectImageID(_ImgId, _Scale))
end

RDItemCtrlSetJson = function(_Handle, _Info, _JsonString)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlSetJson(_JsonString))
end

RDItemCtrlClearTips = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_RDItemCtrlClearTips())
end

RDItemCtrlSetGUIDataByKeyName = function(_Handle, _KeyName, _Count, _IsBind)
	UI:Lua_GetItemTemplateHandleByKeyName(_KeyName)
	local _GUIDataHandle=as3.tolua(LuaRet)
	GUI:ItemCtrlSetGUIData(_Handle, _GUIDataHandle)
	
	LuaArg = _Count
	CL:SetLuaArg(LuaArg);
	UI:Lua_SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT)
	LuaArg = _IsBind
	CL:SetLuaArg(LuaArg);
	UI:Lua_SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND)
end
-----------------------------------------------------------------
ComboBoxSetEditSize = function(_Handle, _Info, _Width, _Height)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetEditSize(_Width, _Height))
end

ComboBoxSetListLength = function(_Handle, _Info, _Length)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetListLength(_Length))
end

ComboBoxGetText = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return "" end
	if as3.tolua(UI:Lua_ComboBoxGetText()) then return as3.tolua(LuaRet) end
	return ""
end

ComboBoxSetText = function(_Handle, _Info, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetText(_Text))
end

ComboBoxAddString = function(_Handle, _Info, _Text, _Id)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxAddString(_Text, _Id))
end

ComboBoxAddStringEx = function(_Handle, _Info, _Text, _Id, _Color)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxAddStringEx(_Text, _Id, _Color))
end

ComboBoxSetCurSelect = function(_Handle, _Info, _Index)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetCurSelect(_Index))
end

ComboBoxGetCurSelect = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return -1 end
	if as3.tolua(UI:Lua_ComboBoxGetCurSelect()) then return as3.tolua(LuaRet) end
	return -1
end

ComboBoxGetCurSelectID = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_ComboBoxGetCurSelectID()) then return as3.tolua(LuaRet) end
	return 0
end

ComboBoxSetImageID = function(_Handle, _Info, _ImgId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetImageID(_ImgId))
end

ComboBoxSetScrollBarImage = function(_Handle, _Info, _Up, _Mid, _Down, _Back)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetScrollBarImage(_Up, _Mid, _Down, _Back))
end

ComboBoxSetListFillImage = function(_Handle, _Info, _ImgId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxSetListFillImage(_ImgId))
end

ComboBoxGetEdit = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if not as3.tolua(UI:Lua_ComboBoxGetEdit()) then return 0 end
	return as3.tolua(LuaRet)
end

ComboBoxClear = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_ComboBoxClear())
end


-----------------------------------------------------------------
CheckSetCheck = function(_Handle, _Info, _Check)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_CheckSetCheck(_Check))
end

CheckGetCheck = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	if not as3.tolua(UI:Lua_CheckGetCheck()) then return false end
	return as3.tolua(LuaRet)
end

CheckSetText = function(_Handle, _Info, _Text)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_CheckSetText(_Text))
end

CheckSetImageID = function(_Handle, _Info, _ImageId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_CheckSetImageID(_ImageId))
end

CheckSetAutoChange = function(_Handle, _Info, _AutoChange)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_CheckSetAutoChange(_AutoChange))
end

-----------------------------------------------------------------
MenuCreate = function(_Handle, _Info, _WndId)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_MenuCreate(_WndId)) then return as3.tolua(LuaRet) end
	return 0
end

MenuGetMenu = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return 0 end
	if as3.tolua(UI:Lua_MenuGetMenu()) then return as3.tolua(LuaRet) end
	return 0
end

MenuDeleteMenu = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuDeleteMenu())
end

MenuAddItem = function(_Handle, _Info, _ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuAddItem(_ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg))
end

MenuDelItem = function(_Handle, _Info, _ItemId)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuDelItem(_ItemId))
end

MenuShowPopupMenu = function(_Handle, _Info, _UseMousePos)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuShowPopupMenu(_UseMousePos))
end

MenuDestroyMenu = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuDestroyMenu())
end

MenuFlushMenu = function(_Handle, _Info)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuFlushMenu())
end

MenuSetItemVisiable = function(_Handle, _Info, _ItemId, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuSetItemVisiable(_ItemId, _Flag))
end

MenuSetAllItemVisiable = function(_Handle, _Info, _Flag)
	if not WndAttach(_Handle, _Info) then return false end
	return as3.tolua(UI:Lua_MenuSetAllItemVisiable(_Flag))
end
