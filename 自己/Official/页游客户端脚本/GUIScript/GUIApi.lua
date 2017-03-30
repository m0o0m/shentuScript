GUIWndCreateBaseWnd = function(_ParentHandle,_ID,_X, _Y,_width,_height)
	local ret = GUI:WndCreateBaseWnd(_ParentHandle,_ID,_X, _Y,_width,_height)
	return tonumber(as3.tolua(ret))
end
GUIWndCreateWnd = function(_ParentHandle,_ID,_ImageID,_X, _Y)
	local ret = GUI:WndCreateWnd(_ParentHandle,_ID,_ImageID,_X, _Y)
	return tonumber(as3.tolua(ret))
end
GUIWndGetChildCount = function(_Handle)
	local ret = GUI:WndGetChildCount(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIWndGetChildWnd = function(_Handle)
	local ret = GUI:WndGetChildWnd(_Handle)
	return as3.tolua(ret)
end
GUIWndFindWindow = function(_Handle,_Info)
	local ret = GUI:WndFindWindow(_Handle,_Info)
	return tonumber(as3.tolua(ret))
end
GUIWndFindChildM = function(_Handle,_ID)
	local ret = GUI:WndFindChildM(_Handle,_ID)
	return tonumber(as3.tolua(ret))
end
GUIWndCalSize = function(_Handle)
	GUI:WndCalSize(_Handle)
end
GUIWndInvalidate = function(_Handle)
	GUI:WndInvalidate(_Handle)
end
GUIWndSetMoveWithLBM = function(_Handle)
	GUI:WndSetMoveWithLBM(_Handle)
end
GUIWndGetMoveWithLBM = function(_Handle)
	local ret = GUI:WndGetMoveWithLBM(_Handle)
	return as3.tolua(ret)
end
GUIWndSetMouseEnableIN = function(_Handle, _Flag)
	GUI:WndSetMouseEnableIN(_Handle, _Flag)
end
GUIWndGetMouseEnableIN = function(_Handle)
	local ret = GUI:WndGetMouseEnableIN(_Handle)
	return as3.tolua(ret)
end
GUIWndSetIsESCClose = function(_Handle, _Flag)
	GUI:WndSetIsESCClose(_Handle, _Flag)
end
GUIWndGetIsESCClose = function(_Handle)
	local ret = GUI:WndGetIsESCClose(_Handle)
	return as3.tolua(ret)
end
GUIWndSetFlagsM = function(_Handle, _Flag)
	GUI:WndSetFlagsM(_Handle, _Flag)
end
GUIWndSetCanRevMsg = function(_Handle, _Flag)
	GUI:WndSetCanRevMsg(_Handle, _Flag)
end
GUIWndGetCanRevMsg = function(_Handle)
	local ret = GUI:WndGetCanRevMsg(_Handle)
	return as3.tolua(ret)
end
GUIWndClose = function(_Handle)
	GUI:WndClose(_Handle)
end
GUIWndIsLive = function(_Handle)
	local ret = GUI:WndIsLive(_Handle)
	return as3.tolua(ret)
end
GUIWndGetParentM = function(_Handle)
	local ret = GUI:WndGetParentM(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIWndPtInWindowM = function(_Handle,x,y)
	local ret = GUI:WndPtInWindowM(_Handle,x,y)
	return as3.tolua(ret)
end
GUIWndGetEnableM = function(_Handle)
	local ret = GUI:WndGetEnableM(_Handle)
	return as3.tolua(ret)
end
GUIWndSetEnableM = function(_Handle, _Flag)
	GUI:WndSetEnableM(_Handle, _Flag)
end
GUIWndGetPosM = function(_Handle)
	local ret = GUI:WndGetPosM(_Handle)
	return as3.tolua(ret)
end
GUIWndGetSizeM = function(_Handle)
	local ret = GUI:WndGetSizeM(_Handle)
	return as3.tolua(ret)
end
GUIWndGetVisible = function(_Handle)
	local ret = GUI:WndGetVisible(_Handle)
	return as3.tolua(ret)
end
GUIWndGetIDM = function(_Handle)
	local ret = GUI:WndGetIDM(_Handle)
	return tostring(as3.tolua(ret))
end
GUIWndSetIDM = function(_Handle,_NewId)
	GUI:WndSetIDM(_Handle,_NewId)
end
GUIWndGetParam = function(_Handle)
	local ret = GUI:WndGetParam(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIWndSetParam = function(_Handle,_Param)
	GUI:WndSetParam(_Handle,_Param)
end
GUIWndAddProperty = function(_Handle, _Key,  _Val)
	GUI:WndAddProperty(_Handle, _Key,  _Val)
end
GUIWndDelProperty = function(_Handle, _Key)
	GUI:WndDelProperty(_Handle, _Key)
end
GUIWndGetProperty = function(_Handle, _Key)
	local ret = GUI:WndGetProperty(_Handle, _Key)
	return tostring(as3.tolua(ret))
end
GUIWndSetPosM = function(_Handle,x,y)
	GUI:WndSetPosM(_Handle,x,y)
end
GUIWndSetSizeM = function(_Handle,w,h)
	GUI:WndSetSizeM(_Handle,w,h)
end
GUIWndSetImageID = function(_Handle,_ImageId)
	GUI:WndSetImageID(_Handle,_ImageId)
end
GUIWndGetImageID = function(_Handle)
	local ret = GUI:WndGetImageID(_Handle)
	return as3.tolua(ret)
end
GUIWndSetFocusM = function(_Handle)
	GUI:WndSetFocusM(_Handle)
end
GUIWndSetVisible = function(_Handle,_Flag)
	GUI:WndSetVisible(_Handle,_Flag)
end
GUIWndSetActiveM = function(_Handle,_Flag)
	GUI:WndSetActiveM(_Handle,_Flag)
end
GUIWndSetKeyFocusM = function(_Handle,_Flag)
	GUI:WndSetKeyFocusM(_Handle,_Flag)
end
GUIWndSetPosByDeviceSize = function(_Handle, _ChangePos, _ChangeSize)
	GUI:WndSetPosByDeviceSize(_Handle, _ChangePos, _ChangeSize)
end
GUIWndGetScreenPos = function(_Handle)
	local ret = GUI:WndGetScreenPos(_Handle)
	return as3.tolua(ret)
end
GUIWndRegistScript = function(_Handle, _Msg, _FuncName)
	local ret = GUI:WndRegistScript(_Handle, _Msg, _FuncName)
	return as3.tolua(ret)
end
GUIWndClearScript = function(_Handle, _Msg)
	local ret = GUI:WndClearScript(_Handle, _Msg)
	return as3.tolua(ret)
end
GUIWndGetRegistScript = function(_Handle,_Msg)
	local ret = GUI:WndGetRegistScript(_Handle,_Msg)
	return tostring(as3.tolua(ret))
end
GUIWndAddTimer = function(_Handle, _ID, _Elapse, _ScriptHandle)
	local ret = GUI:WndAddTimer(_Handle, _ID, _Elapse, _ScriptHandle)
	return as3.tolua(ret)
end
GUIWndAddTimerBrief = function(_Handle,  _Elapse, _ScriptHandle)
	local ret = GUI:WndAddTimerBrief(_Handle,  _Elapse, _ScriptHandle)
	return tonumber(as3.tolua(ret))
end
GUIWndDelTimer = function(_Handle,_ID)
	local ret = GUI:WndDelTimer(_Handle,_ID)
	return as3.tolua(ret)
end
GUIWndDelAllTimer = function(_Handle)
	GUI:WndDelAllTimer(_Handle)
end
GUIWndGetItemGUIDataHandle = function(_Handle)
	local ret = GUI:WndGetItemGUIDataHandle(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIWndSetTipFunction = function(_Handle,_FuncName)
	GUI:WndSetTipFunction(_Handle,_FuncName)
end
GUIWndSetTipInfo = function(_Handle,_TipInfo)
	GUI:WndSetTipInfo(_Handle,_TipInfo)
end
GUIWndSetTipAutoRemove = function(_Handle,_AutoRemove)
	GUI:WndSetTipAutoRemove(_Handle,_AutoRemove)
end
GUIWndSetHint = function(_Handle,_HintInof)
	GUI:WndSetHint(_Handle,_HintInof)
end
GUIWndGetHint = function(_Handle)
	local ret = GUI:WndGetHint(_Handle)
	return tostring(as3.tolua(ret))
end
GUIWndMoveToParentBottom = function()
	local ret = GUI:WndMoveToParentBottom()
	return as3.tolua(ret)
end
GUIWndMoveToParentTop = function()
	local ret = GUI:WndMoveToParentTop()
	return as3.tolua(ret)
end
GUIWndSetTextColorM = function(_Handle,_Color)
	GUI:WndSetTextColorM(_Handle,_Color)
end
GUIWndGetTextColorM = function(_Handle)
	local ret = GUI:WndGetTextColorM(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIWndSetTextOffset = function(_Handle,_X,_Y)
	GUI:WndSetTextOffset(_Handle,_X,_Y)
end
GUIWndSetTextM = function(_Handle,_Text)
	GUI:WndSetTextM(_Handle,_Text)
end
GUIWndGetText = function(_Handle)
	local ret = GUI:WndGetText(_Handle)
	return tostring(as3.tolua(ret))
end
GUIWndSetMagicUI = function(_Handle,_Type)
	GUI:WndSetMagicUI(_Handle,_Type)
end
GUIWndGetMagicUI = function(_Handle)
	local ret = GUI:WndGetMagicUI(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIWndAddFlags = function(_Handle,_Flag)
	GUI:WndAddFlags(_Handle,_Flag)
end
GUIWndSetFlags = function(_Handle,_Flag)
	GUI:WndSetFlags(_Handle,_Flag)
end
GUIWndClick = function()
	local ret = GUI:WndClick()
	return as3.tolua(ret)
end
GUIWndRClick = function()
	local ret = GUI:WndRClick()
	return as3.tolua(ret)
end
GUIWndDbClick = function()
	local ret = GUI:WndDbClick()
	return as3.tolua(ret)
end
GUIWndRDbClick = function()
	local ret = GUI:WndRDbClick()
	return as3.tolua(ret)
end
GUIWndSetModalWnd = function(_Handle, _Flag)
	GUI:WndSetModalWnd(_Handle, _Flag)
end
GUIButtonCreate = function(_ParentHandle, _pButtonID, _ImageId, _PosX, _PosY)
	local ret = GUI:ButtonCreate(_ParentHandle, _pButtonID, _ImageId, _PosX, _PosY)
	return tonumber(as3.tolua(ret))
end
GUIButtonGetIsActivePageBtn = function(_Handle)
	local ret = GUI:ButtonGetIsActivePageBtn(_Handle)
	return as3.tolua(ret)
end
GUIButtonSetIsActivePageBtn = function(_Handle, _Flag)
	GUI:ButtonSetIsActivePageBtn(_Handle, _Flag)
end
GUIButtonSetShine = function(_Handle,_Flag)
	GUI:ButtonSetShine(_Handle,_Flag)
end
GUIButtonGetShine = function(_Handle)
	local ret = GUI:ButtonGetShine(_Handle)
	return as3.tolua(ret)
end
GUIButtonSetDownTextPosChange = function(_Handle,_Flag)
	GUI:ButtonSetDownTextPosChange(_Handle,_Flag)
end
GUIButtonGetDownTextPosChange = function(_Handle)
	local ret = GUI:ButtonGetDownTextPosChange(_Handle)
	return as3.tolua(ret)
end
GUIButtonSetTextFont = function(_Handle,_FontName)
	GUI:ButtonSetTextFont(_Handle,_FontName)
end
GUIButtonGetTextFont = function(_Handle)
	local ret = GUI:ButtonGetTextFont(_Handle)
	return tostring(as3.tolua(ret))
end
GUIEditCreate = function(_ParentHandle, _pEditID,  _PosX, _PosY,  _SizeX, _SizeY)
	local ret = GUI:EditCreate(_ParentHandle, _pEditID,  _PosX, _PosY,  _SizeX, _SizeY)
	return tonumber(as3.tolua(ret))
end
GUIEditSetTextColor = function(_Handle,_Color)
	GUI:EditSetTextColor(_Handle,_Color)
end
GUIEditGetBNumber = function(_Handle)
	local ret = GUI:EditGetBNumber(_Handle)
	return as3.tolua(ret)
end
GUIEditSetBNumber = function(_Handle,_Flag)
	GUI:EditSetBNumber(_Handle,_Flag)
end
GUIEditGetTextM = function(_Handle)
	local ret = GUI:EditGetTextM(_Handle)
	return tostring(as3.tolua(ret))
end
GUIEditSetTextM = function(_Handle,_Text)
	GUI:EditSetTextM(_Handle,_Text)
end
GUIEditSetFontM = function(_Handle,_FontName)
	GUI:EditSetFontM(_Handle,_FontName)
end
GUIEditGetInt = function(_Handle)
	local ret = GUI:EditGetInt(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIEditSetInt = function(_Handle,_Data)
	GUI:EditSetInt(_Handle,_Data)
end
GUIEditSetIsPassWord = function(_Handle,_IsPassword)
	GUI:EditSetIsPassWord(_Handle,_IsPassword)
end
GUIEditGetIsPassWord = function(_Handle)
	local ret = GUI:EditGetIsPassWord(_Handle)
	return as3.tolua(ret)
end
GUIEditGetMaxCharNum = function(_Handle)
	local ret = GUI:EditGetMaxCharNum(_Handle)
	return as3.tolua(ret)
end
GUIEditSetMaxCharNum = function(_Handle,_MaxCount)
	GUI:EditSetMaxCharNum(_Handle,_MaxCount)
end
GUIEditSetCanEdit = function(_Handle,_CanEdit)
	GUI:EditSetCanEdit(_Handle,_CanEdit)
end
GUIEditGetCanEdit = function(_Handle)
	local ret = GUI:EditGetCanEdit(_Handle)
	return as3.tolua(ret)
end
GUIEditSetMultiLineEdit = function(_Handle,_MultiLine)
	GUI:EditSetMultiLineEdit(_Handle,_MultiLine)
end
GUIEditGetMultiLineEdit = function(_Handle)
	local ret = GUI:EditGetMultiLineEdit(_Handle)
	return as3.tolua(ret)
end
GUIEditSetFontCenter = function(_Handle)
	GUI:EditSetFontCenter(_Handle)
end
GUIEditSetLimitStringSize = function(_Handle,_LimitSize)
	GUI:EditSetLimitStringSize(_Handle,_LimitSize)
end
GUIEditSetBold = function(_Handle,_Bold)
	GUI:EditSetBold(_Handle,_Bold)
end
GUIImageCreate = function(_ParentHandle, _pID, _ImageId, _PosX, _PosY)
	local ret = GUI:ImageCreate(_ParentHandle, _pID, _ImageId, _PosX, _PosY)
	return tonumber(as3.tolua(ret))
end
GUIImageGetImageID = function(_Handle)
	local ret = GUI:ImageGetImageID(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIImageSetColor = function(_Handle,_ImageColor)
	GUI:ImageSetColor(_Handle,_ImageColor)
end
GUIImageGetColor = function(_Handle)
	local ret = GUI:ImageGetColor(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIImageSetAlpha = function(_Handle,_Alpha)
	GUI:ImageSetAlpha(_Handle,_Alpha)
end
GUIImageGetAlpha = function(_Handle)
	local ret = GUI:ImageGetAlpha(_Handle)
	return as3.tolua(ret)
end
GUIImageSetFitSize = function(_Handle,_Flag)
	GUI:ImageSetFitSize(_Handle,_Flag)
end
GUIImageGetFitSize = function(_Handle)
	local ret = GUI:ImageGetFitSize(_Handle)
	return as3.tolua(ret)
end
GUIImageSetParam = function(_Handle,_Param)
	GUI:ImageSetParam(_Handle,_Param)
end
GUIImageGetParam = function(_Handle)
	local ret = GUI:ImageGetParam(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIImageSetCheckPoint = function(_Handle, _Flag)
	GUI:ImageSetCheckPoint(_Handle, _Flag)
end
GUIImageGetCheckPoint = function(_Handle)
	local ret = GUI:ImageGetCheckPoint(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIImageSetAroundImage = function(_Handle, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right)
	GUI:ImageSetAroundImage(_Handle, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right)
end
GUIImageSetAnimateEnable = function(_Handle,_Enable,_Speed)
	GUI:ImageSetAnimateEnable(_Handle,_Enable,_Speed)
end
GUIImageSetAnimate = function(_Handle, speed, playCount, fun)
	GUI:ImageSetAnimate(_Handle, speed, playCount, fun)
end
GUIImageSetGray = function(_Handle,_Flag)
	GUI:ImageSetGray(_Handle,_Flag)
end
GUIImageGetGray = function(_Handle)
	local ret = GUI:ImageGetGray(_Handle)
	return as3.tolua(ret)
end
GUIImageSetRenderState = function(_Handle, _RenderState)
	GUI:ImageSetRenderState(_Handle, _RenderState)
end
GUIImageGetRenderState = function(_Handle)
	local ret = GUI:ImageGetRenderState(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIImageSetDrawCenter = function(_Handle,_DrawCenter)
	GUI:ImageSetDrawCenter(_Handle,_DrawCenter)
end
GUIImageGetDrawCenter = function(_Handle)
	local ret = GUI:ImageGetDrawCenter(_Handle)
	return as3.tolua(ret)
end
GUIImageSetTransfrom = function(_Handle, _ScaleX, _ScaleY, _Roation)
	GUI:ImageSetTransfrom(_Handle, _ScaleX, _ScaleY, _Roation)
end
GUIImageSetDrawRect = function(_Handle, _StartX, _EndX, _StartY, _EndY)
	GUI:ImageSetDrawRect(_Handle, _StartX, _EndX, _StartY, _EndY)
end
GUIImageRotate = function(_Handle,centerX,centerY,degree,isAnimation,overFun)
	GUI:ImageRotate(_Handle,centerX,centerY,degree,isAnimation,overFun)
end
GUIRichEditCreate = function(_ParentHandle, _pWndItemID, _PosX, _PosY, _SizeX, _SizeY)
	local ret = GUI:RichEditCreate(_ParentHandle, _pWndItemID, _PosX, _PosY, _SizeX, _SizeY)
	return tonumber(as3.tolua(ret))
end
GUIRichEditSetScrollVisible = function(_Handle,flag)
	GUI:RichEditSetScrollVisible(_Handle,flag)
end
GUIRichEditGetEditEnable = function(_Handle)
	local ret = GUI:RichEditGetEditEnable(_Handle)
	return as3.tolua(ret)
end
GUIRichEditSetEditEnable = function(_Handle,_Flag)
	GUI:RichEditSetEditEnable(_Handle,_Flag)
end
GUIRichEditClear = function(_Handle)
	GUI:RichEditClear(_Handle)
end
GUIRichEditAppendString = function(_Handle,_Info)
	GUI:RichEditAppendString(_Handle,_Info)
end
GUIRichEditGetSelectClickString = function(_Handle)
	local ret = GUI:RichEditGetSelectClickString(_Handle)
	return tostring(as3.tolua(ret))
end
GUIRichEditGetAllString = function(_Handle)
	local ret = GUI:RichEditGetAllString(_Handle)
	return tostring(as3.tolua(ret))
end
GUIRichEditSetCurFont = function(_Handle,_FontName)
	GUI:RichEditSetCurFont(_Handle,_FontName)
end
GUIRichEditSetContentRect = function(_Handle, _X, _Y, _W, _H)
	GUI:RichEditSetContentRect(_Handle, _X, _Y, _W, _H)
end
GUIRichEditGetTextItemCount = function(_Handle)
	local ret = GUI:RichEditGetTextItemCount(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIRichEditSetTextItemAlpha = function(_Handle, _Beg, _End, _Alpha)
	GUI:RichEditSetTextItemAlpha(_Handle, _Beg, _End, _Alpha)
end
GUIRichEditSetDefaultTextColor = function(_Handle,_Color)
	GUI:RichEditSetDefaultTextColor(_Handle,_Color)
end
GUIRichEditSetTotalLine = function(_Handle,_MaxLineNum)
	GUI:RichEditSetTotalLine(_Handle,_MaxLineNum)
end
GUIRichEditGetTotalLine = function(_Handle)
	local ret = GUI:RichEditGetTotalLine(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIRichEditRegisterControlString = function(_Handle,_ControlString)
	GUI:RichEditRegisterControlString(_Handle,_ControlString)
end
GUIRichEditUnRegisterControlString = function(_Handle,_ControlString)
	GUI:RichEditUnRegisterControlString(_Handle,_ControlString)
end
GUIComboBoxCreate = function(_ParentHandle, _pWndItemID, _ImageID, _PosX, _PosY, _SizeX, _SizeY, _Length)
	local ret = GUI:ComboBoxCreate(_ParentHandle, _pWndItemID, _ImageID, _PosX, _PosY, _SizeX, _SizeY, _Length)
	return tonumber(as3.tolua(ret))
end
GUIComboBoxSetEditSize = function(_Handle, _Width, _Height)
	GUI:ComboBoxSetEditSize(_Handle, _Width, _Height)
end
GUIComboBoxGetEditSize = function(_Handle)
	local ret = GUI:ComboBoxGetEditSize(_Handle)
	return as3.tolua(ret)
end
GUIComboBoxSetListLength = function(_Handle,_Length)
	GUI:ComboBoxSetListLength(_Handle,_Length)
end
GUIComboBoxGetListLength = function(_Handle)
	local ret = GUI:ComboBoxGetListLength(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIComboBoxAddString = function(_Handle, _Info, _Id, _Color)
	GUI:ComboBoxAddString(_Handle, _Info, _Id, _Color)
end
GUIComboBoxSetCurSelect = function(_Handle,_Index)
	GUI:ComboBoxSetCurSelect(_Handle,_Index)
end
GUIComboBoxGetCurSelect = function(_Handle)
	local ret = GUI:ComboBoxGetCurSelect(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIComboBoxGetCurSelectID = function(_Handle)
	local ret = GUI:ComboBoxGetCurSelectID(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIComboBoxSetScrollBarImage = function(_Handle, _Up, _Mid, _Down, _Back)
	GUI:ComboBoxSetScrollBarImage(_Handle, _Up, _Mid, _Down, _Back)
end
GUIComboBoxGetScrollBarImage = function(_Handle)
	local ret = GUI:ComboBoxGetScrollBarImage(_Handle)
	return as3.tolua(ret)
end
GUIComboBoxSetListFillImage = function(_Handle, _ImgId)
	GUI:ComboBoxSetListFillImage(_Handle, _ImgId)
end
GUIComboBoxGetListFillImage = function(_Handle)
	local ret = GUI:ComboBoxGetListFillImage(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIComboBoxGetEdit = function(_Handle)
	local ret = GUI:ComboBoxGetEdit(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIComboBoxClear = function(_Handle)
	GUI:ComboBoxClear(_Handle)
end
GUIComboBoxGetListHandle = function(_Handle)
	local ret = GUI:ComboBoxGetListHandle(_Handle)
	return tonumber(as3.tolua(ret))
end
GUICheckBoxCreate = function( _ParentHandle, _pCheckID, _ImageID, _Tital,  _PosX,  _PosY)
	local ret = GUI:CheckBoxCreate( _ParentHandle, _pCheckID, _ImageID, _Tital,  _PosX,  _PosY)
	return tonumber(as3.tolua(ret))
end
GUICheckBoxSetCheck = function(_Handle,_Check)
	GUI:CheckBoxSetCheck(_Handle,_Check)
end
GUICheckBoxGetCheck = function(_Handle)
	local ret = GUI:CheckBoxGetCheck(_Handle)
	return as3.tolua(ret)
end
GUICheckBoxSetAutoChange = function(_Handle,_AutoChange)
	GUI:CheckBoxSetAutoChange(_Handle,_AutoChange)
end
GUICheckBoxGetAutoChange = function(_Handle)
	local ret = GUI:CheckBoxGetAutoChange(_Handle)
	return as3.tolua(ret)
end
GUIMenuCreate = function(_Parent, _WndId)
	local ret = GUI:MenuCreate(_Parent, _WndId)
	return as3.tolua(ret)
end
GUIMenuGetMenu = function(_Handle)
	local ret = GUI:MenuGetMenu(_Handle)
	return as3.tolua(ret)
end
GUIMenuDeleteMenu = function()
	local ret = GUI:MenuDeleteMenu()
	return as3.tolua(ret)
end
GUIMenuAddItem = function(_ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg)
	local ret = GUI:MenuAddItem(_ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg)
	return as3.tolua(ret)
end
GUIMenuDelItem = function(_ItemId)
	local ret = GUI:MenuDelItem(_ItemId)
	return as3.tolua(ret)
end
GUIMenuShowPopupMenu = function(_UseMousePos)
	local ret = GUI:MenuShowPopupMenu(_UseMousePos)
	return as3.tolua(ret)
end
GUIMenuDestroyMenu = function()
	local ret = GUI:MenuDestroyMenu()
	return as3.tolua(ret)
end
GUIMenuFlushMenu = function()
	local ret = GUI:MenuFlushMenu()
	return as3.tolua(ret)
end
GUIMenuSetItemVisiable = function(_ItemId,_Flag)
	local ret = GUI:MenuSetItemVisiable(_ItemId,_Flag)
	return as3.tolua(ret)
end
GUIMenuSetAllItemVisiable = function(_Flag)
	local ret = GUI:MenuSetAllItemVisiable(_Flag)
	return as3.tolua(ret)
end
GUISetPopupMenu = function(_Handle,_fatherHandle)
	GUI:SetPopupMenu(_Handle,_fatherHandle)
end
GUIItemCtrlCreate = function(_ParentHandle, _pItemCtrlID, _ImageID, _PosX, _PosY, _SizeX, _SizeY)
	local ret = GUI:ItemCtrlCreate(_ParentHandle, _pItemCtrlID, _ImageID, _PosX, _PosY, _SizeX, _SizeY)
	return tonumber(as3.tolua(ret))
end
GUIItemCtrlSetItemDataAutoManager = function(_Handle,_Flag)
	GUI:ItemCtrlSetItemDataAutoManager(_Handle,_Flag)
end
GUIItemCtrlGetItemDataAutoManager = function(_Handle)
	local ret = GUI:ItemCtrlGetItemDataAutoManager(_Handle)
	return as3.tolua(ret)
end
GUIItemCtrlSetGUIDataPropByType = function(_Handle,_PropType)
	local ret = GUI:ItemCtrlSetGUIDataPropByType(_Handle,_PropType)
	return as3.tolua(ret)
end
GUIItemCtrlSetRBtnUse = function(_Handle,_Flag)
	GUI:ItemCtrlSetRBtnUse(_Handle,_Flag)
end
GUIItemCtrlGetRBtnUse = function(_Handle)
	local ret = GUI:ItemCtrlGetRBtnUse(_Handle)
	return as3.tolua(ret)
end
GUIItemCtrlGetGUIData = function(_Handle)
	local ret = GUI:ItemCtrlGetGUIData(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIItemCtrlSetGUIData = function(_Handle,_ItemDataHandle)
	GUI:ItemCtrlSetGUIData(_Handle,_ItemDataHandle)
end
GUIItemCtrlSetBigIcon = function(_Handle,_BigIconType)
	GUI:ItemCtrlSetBigIcon(_Handle,_BigIconType)
end
GUIItemCtrlGetBigIcon = function(_Handle)
	local ret = GUI:ItemCtrlGetBigIcon(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIItemCtrlSetBigIconOffset = function(_Handle,_OffsetX,_OffsetY)
	GUI:ItemCtrlSetBigIconOffset(_Handle,_OffsetX,_OffsetY)
end
GUIItemCtrlGetBigIconOffset = function(_Handle)
	local ret = GUI:ItemCtrlGetBigIconOffset(_Handle)
	return as3.tolua(ret)
end
GUIItemCtrlSetFrontImageID = function(_Handle,_ImgId)
	GUI:ItemCtrlSetFrontImageID(_Handle,_ImgId)
end
GUIItemCtrlGetFrontImageID = function(_Handle)
	local ret = GUI:ItemCtrlGetFrontImageID(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIItemCtrlSetBackImageID = function(_Handle,_ImgId)
	GUI:ItemCtrlSetBackImageID(_Handle,_ImgId)
end
GUIItemCtrlGetBackImageID = function(_Handle)
	local ret = GUI:ItemCtrlGetBackImageID(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIItemCtrlSetHighlightImageID = function(_Handle,_ImgId)
	GUI:ItemCtrlSetHighlightImageID(_Handle,_ImgId)
end
GUIItemCtrlGetHighlightImageID = function(_Handle)
	local ret = GUI:ItemCtrlGetHighlightImageID(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIItemCtrlSetEffectImageID = function(_Handle,_ImgId,_Scale)
	GUI:ItemCtrlSetEffectImageID(_Handle,_ImgId,_Scale)
end
GUIItemCtrlSetJson = function(_Handle,_JsonString)
	GUI:ItemCtrlSetJson(_Handle,_JsonString)
end
GUIItemCtrlClearTips = function(_Handle)
	GUI:ItemCtrlClearTips(_Handle)
end
GUIItemCtrlClearItemData = function(_Handle)
	GUI:ItemCtrlClearItemData(_Handle)
end
GUIItemCtrlSetDefaultImage = function(_Handle,_ImageID)
	GUI:ItemCtrlSetDefaultImage(_Handle,_ImageID)
end
GUIItemCtrlGetDefaultImage = function(_Handle)
	local ret = GUI:ItemCtrlGetDefaultImage(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIScrollBarVCreate = function(_ParentHandle, _pItemCtrlID,  _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY, _Length)
	local ret = GUI:ScrollBarVCreate(_ParentHandle, _pItemCtrlID,  _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY, _Length)
	return tonumber(as3.tolua(ret))
end
GUIScrollBarHCreate = function(_ParentHandle, _pItemCtrlID,  _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY, _Length)
	local ret = GUI:ScrollBarHCreate(_ParentHandle, _pItemCtrlID,  _ImageUp, _ImageDown, _ImageThumb, _ImageBack, _PosX, _PosY, _Length)
	return tonumber(as3.tolua(ret))
end
GUIScrollBarGetImageData = function(_Handle)
	local ret = GUI:ScrollBarGetImageData(_Handle)
	return as3.tolua(ret)
end
GUIScrollBarGetSetp = function(_Handle)
	local ret = GUI:ScrollBarGetSetp(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIScrollBarSetSetp = function(_Handle, _Step)
	GUI:ScrollBarSetSetp(_Handle, _Step)
end
GUIScrollBarSetPos = function(_Handle, _Pos)
	GUI:ScrollBarSetPos(_Handle, _Pos)
end
GUIScrollBarGetPos = function(_Handle)
	local ret = GUI:ScrollBarGetPos(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIScrollBarGetLenght = function(_Handle)
	local ret = GUI:ScrollBarGetLenght(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIListBoxCreate = function(_ParentHandle, _pWndID, _PosX, _PosY, _SizeX, _SizeY)
	local ret = GUI:ListBoxCreate(_ParentHandle, _pWndID, _PosX, _PosY, _SizeX, _SizeY)
	return tonumber(as3.tolua(ret))
end
GUIListBoxAddString = function(_Handle, _String, _Color)
	GUI:ListBoxAddString(_Handle, _String, _Color)
end
GUIListBoxDelString = function(_Handle,_LineIdx)
	GUI:ListBoxDelString(_Handle,_LineIdx)
end
GUIListBoxClear = function(_Handle)
	GUI:ListBoxClear(_Handle)
end
GUIListBoxGetLineCount = function(_Handle)
	local ret = GUI:ListBoxGetLineCount(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIListBoxGetLineString = function(_Handle,_LineIdx)
	local ret = GUI:ListBoxGetLineString(_Handle,_LineIdx)
	return tostring(as3.tolua(ret))
end
GUIListBoxGetString = function(_Handle, _LineIdx, _ColIdx)
	local ret = GUI:ListBoxGetString(_Handle, _LineIdx, _ColIdx)
	return tostring(as3.tolua(ret))
end
GUIListBoxSetCurSel = function(_Handle, _LineIdx, _ColIdx)
	GUI:ListBoxSetCurSel(_Handle, _LineIdx, _ColIdx)
end
GUIListBoxGetCurSelLine = function(_Handle)
	local ret = GUI:ListBoxGetCurSelLine(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIListBoxGetCurSelCol = function(_Handle)
	local ret = GUI:ListBoxGetCurSelCol(_Handle)
	return tonumber(as3.tolua(ret))
end
GUIListBoxSetScrollBarImage = function(_Handle,up, mid, down,_BackImageID)
	GUI:ListBoxSetScrollBarImage(_Handle,up, mid, down,_BackImageID)
end
GUIListBoxGetScrollBarImageData = function(_Handle)
	local ret = GUI:ListBoxGetScrollBarImageData(_Handle)
	return as3.tolua(ret)
end
GUIMakeColor = function( r,  g,  b,  a)
	local ret = GUI:MakeColor( r,  g,  b,  a)
	return tonumber(as3.tolua(ret))
end
GUIChatWndSetSize = function( _Handle, w, h)
	GUI:ChatWndSetSize( _Handle, w, h)
end
GUIWndTween = function( _Handle, vars,completeFun)
	GUI:WndTween( _Handle, vars,completeFun)
end
GUIWndSetTextArrangeType = function(_Handle,_XOffset,_YOffset,_FontDistance,_ArrangeType)
	GUI:WndSetTextArrangeType(_Handle,_XOffset,_YOffset,_FontDistance,_ArrangeType)
end
GUIButtonSetStateTextColor = function(_Handle,_State,_Color)
	GUI:ButtonSetStateTextColor(_Handle,_State,_Color)
end
GUIGetWndMousePos = function(_Handle)
	GUI:GetWndMousePos(_Handle)
end
GUIListBoxAddImage = function(_Handle,_LineIdx, _imgid)
	GUI:ListBoxAddImage(_Handle,_LineIdx, _imgid)
end
GUIListBoxAddStringByLine = function(_Handle, _String, _Color,_LineIdx)
	GUI:ListBoxAddStringByLine(_Handle, _String, _Color,_LineIdx)
end
GUIButtonGetShowDisable = function(_Handle)
	local ret = GUI:ButtonGetShowDisable(_Handle)
	return as3.tolua(ret)
end
GUIButtonSetShowDisable = function(_Handle,_Flag)
	GUI:ButtonSetShowDisable(_Handle,_Flag)
end
GUIButtonSetDrawPostTexture = function(_Handle,image)
	GUI:ButtonSetDrawPostTexture(_Handle,image)
end
GUIButtonSetCheckPoint = function(_Handle,type)
	local ret = GUI:ButtonSetCheckPoint(_Handle,type)
	return as3.tolua(ret)
end
GUIEditSetEditImageOffset = function(_Handle, _XOffset, _YOffset)
	GUI:EditSetEditImageOffset(_Handle, _XOffset, _YOffset)
end
GUIItemCtrlSetIconImageType = function(_Handle, _Type)
	GUI:ItemCtrlSetIconImageType(_Handle, _Type)
end
GUIBezierParticleEffect = function(startX,startY,endX,endY,glowColor,count,time,decay,overFun)
	GUI:BezierParticleEffect(startX,startY,endX,endY,glowColor,count,time,decay,overFun)
end
GUIWndSetScrollBarImage = function(_Handle,up, mid, down,_BackImageID)
	GUI:WndSetScrollBarImage(_Handle,up, mid, down,_BackImageID)
end
GUIWndGetScrollBarImageData = function(_Handle)
	local ret = GUI:WndGetScrollBarImageData(_Handle)
	return as3.tolua(ret)
end
