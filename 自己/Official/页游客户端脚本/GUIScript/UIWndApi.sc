package script
{
	public class UIWndApi
	{
		public function UIWndApi()
		{
			addApi("WndSetKeyFocus",WndSetKeyFocus);
			addApi("WndSetActive",WndSetActive);
			addApi("WndSetVisible",WndSetVisible);
			addApi("WndSetFocus",WndSetFocus);
			addApi("WndSetSize",WndSetSize);
			addApi("WndSetPos",WndSetPos);
			addApi("WndSetID",WndSetID);
			addApi("WndGetID",WndGetID);
			addApi("WndGetSize",WndGetSize);
			addApi("WndGetVisible",WndGetVisible);
			addApi("WndGetPos",WndGetPos);
			addApi("WndSetEnable",WndSetEnable);
			addApi("WndGetEnable",WndGetEnable);
			addApi("WndPtInWindow",WndPtInWindow);
			addApi("WndGetParent",WndGetParent);
			addApi("WndClose",WndClose);
			addApi("WndSetFlags",WndSetFlags);
			addApi("WndSetMoveWithLB",WndSetMoveWithLB);
			addApi("WndSetTextColor",WndSetTextColor);
			addApi("WndSetText",WndSetText);
			addApi("EditGetText",EditGetText);
			addApi("EditSetText",EditSetText);

			addApi("WndAttach",WndAttach);
			addApi("CreateWnd",CreateWnd);
			addApi("CreateWndFromFile",CreateWndFromFile);
			addApi("CreateWndFromString",CreateWndFromString);
			addApi("CreateCtrl",CreateCtrl);
			addApi("CreateImage",CreateImage);
			addApi("CreateButton",CreateButton);
			addApi("CreateCheckBox",CreateCheckBox);
			addApi("CreateEdit",CreateEdit);
			addApi("CreateComboBox",CreateComboBox);
			addApi("CreateListBox",CreateListBox);
			addApi("CreateRadio",CreateRadio);
			addApi("CreateStatic",CreateStatic);
			addApi("CreateHScrollBar",CreateHScrollBar);
			addApi("CreateVScrollBar",CreateVScrollBar);
			addApi("CreateTreeCtrl",CreateTreeCtrl);
			addApi("CreateRichEdit",CreateRichEdit);
			addApi("CreateItemCtrl",CreateItemCtrl);
			addApi("GenForm",GenForm);
			addApi("GenFormByString",GenFormByString);
			addApi("ButtonSetProp",ButtonSetProp);
			addApi("EditSetProp",EditSetProp);
			addApi("StaticSetProp",StaticSetProp);
			addApi("ImageSetProp",ImageSetProp);
			addApi("RichEditSetProp",RichEditSetProp);
			addApi("RDItemCtrlSetProp",RDItemCtrlSetProp);
			addApi("ComboBoxSetProp",ComboBoxSetProp);
			addApi("CheckSetProp",CheckSetProp);
			addApi("GetWindow",GetWindow);
			addApi("WndFindChild",WndFindChild);
			addApi("WndCalSize",WndCalSize);
			addApi("WndInvalidate",WndInvalidate);
			addApi("WndSetMoveWithLBM",WndSetMoveWithLBM);
			addApi("WndSetEscClose",WndSetEscClose);
			addApi("WndSetFlagsM",WndSetFlagsM);
			addApi("WndSetCanRevMsg",WndSetCanRevMsg);
			addApi("WndCloseM",WndCloseM);
			addApi("WndIsLive",WndIsLive);
			addApi("WndGetParentM",WndGetParentM);
			addApi("WndPtInWindowM",WndPtInWindowM);
			addApi("WndGetEnableM",WndGetEnableM);
			addApi("WndSetEnableM",WndSetEnableM);
			addApi("WndGetPosM",WndGetPosM);
			addApi("WndGetVisibleM",WndGetVisibleM);
			addApi("WndGetSizeM",WndGetSizeM);
			addApi("WndGetIDM",WndGetIDM);
			addApi("WndSetIDM",WndSetIDM);
			addApi("WndGetParam",WndGetParam);
			addApi("WndSetParam",WndSetParam);
			addApi("WndAddProperty",WndAddProperty);
			addApi("WndDelProperty",WndDelProperty);
			addApi("WndGetProperty",WndGetProperty);
			addApi("WndSetPosM",WndSetPosM);
			addApi("WndSetSizeM",WndSetSizeM);
			addApi("WndSetFocusM",WndSetFocusM);
			addApi("WndSetVisibleM",WndSetVisibleM);
			addApi("WndSetActiveM",WndSetActiveM);
			addApi("WndSetKeyFocusM",WndSetKeyFocusM);
			addApi("WndGetScreenPos",WndGetScreenPos);
			addApi("WndRegistScript",WndRegistScript);
			addApi("WndUnRegistScript",WndUnRegistScript);
			addApi("WndPurgeScript",WndPurgeScript);
			addApi("WndAddTimer",WndAddTimer);
			addApi("WndAddTimerBrief",WndAddTimerBrief);
			addApi("WndDelTimer",WndDelTimer);
			addApi("WndDelAllTimer",WndDelAllTimer);
			addApi("WndGetItemGUIDataHandle",WndGetItemGUIDataHandle);
			addApi("WndSetTip",WndSetTip);
			addApi("WndSetTipInfo",WndSetTipInfo);
			addApi("WndSetTipAutoRemove",WndSetTipAutoRemove);
			addApi("WndMoveToParentBottom",WndMoveToParentBottom);
			addApi("WndMoveToParentTop",WndMoveToParentTop);
			addApi("WndOpenItemWindow",WndOpenItemWindow);
			addApi("WndActiveItemWindow",WndActiveItemWindow);
			addApi("WndCloseItemWindow",WndCloseItemWindow);
			addApi("WndGetCurItemWindow",WndGetCurItemWindow);
			addApi("WndSetTextColorM",WndSetTextColorM);
			addApi("WndSetTextM",WndSetTextM);
			addApi("WndSetMagicUI",WndSetMagicUI);
			addApi("WndAddEffect",WndAddEffect);
			addApi("WndDelEffect",WndDelEffect);
			addApi("WndClick",WndClick);
			addApi("WndRClick",WndRClick);
			addApi("WndDbClick",WndDbClick);
			addApi("WndRDbClick",WndRDbClick);
			addApi("ButtonSetImageID",ButtonSetImageID);
			addApi("ButtonGetIsActivePageBtn",ButtonGetIsActivePageBtn);
			addApi("ButtonSetIsActivePageBtn",ButtonSetIsActivePageBtn);
			addApi("ButtonSetShine",ButtonSetShine);
			addApi("ButtonSetIsTextPosChange",ButtonSetIsTextPosChange);
			addApi("EditSetTextColor",EditSetTextColor);
			addApi("EditGetBNumber",EditGetBNumber);
			addApi("EditSetBNumber",EditSetBNumber);
			addApi("EditGetTextM",EditGetTextM);
			addApi("EditSetTextM",EditSetTextM);
			addApi("EditGetInt",EditGetInt);
			addApi("EditSetMultiLineEdit",EditSetMultiLineEdit);
			addApi("EditSetInt",EditSetInt);
			addApi("EditSetIsPassWord",EditSetIsPassWord);
			addApi("EditGetMaxCharNum",EditGetMaxCharNum);
			addApi("EditSetMaxCharNum",EditSetMaxCharNum);
			addApi("EditSetCanEdit",EditSetCanEdit);
			addApi("StaticSetText",StaticSetText);
			addApi("ImageGetImageID",ImageGetImageID);
			addApi("ImageSetImageID",ImageSetImageID);
			addApi("ImageSetColor",ImageSetColor);
			addApi("ImageGetColor",ImageGetColor);
			addApi("ImageSetAlpha",ImageSetAlpha);
			addApi("ImageGetAlpha",ImageGetAlpha);
			addApi("ImageSetFitSize",ImageSetFitSize);
			addApi("ImageSetParam",ImageSetParam);
			addApi("ImageSetCheckPoint",ImageSetCheckPoint);
			addApi("ImageSetAroundImage",ImageSetAroundImage);
			addApi("ImageSetAnimateEnable",ImageSetAnimateEnable);
			addApi("ImageSetAnimate",ImageSetAnimate);
			addApi("ImageSetGray",ImageSetGray);
			addApi("RichEditSetEnable",RichEditSetEnable);
			addApi("RichEditClear",RichEditClear);
			addApi("RichEditAppendString",RichEditAppendString);
			addApi("RichEditGetSelectClickString",RichEditGetSelectClickString);
			addApi("RichEditLinkControl",RichEditLinkControl);
			addApi("RichEditSetCurFont",RichEditSetCurFont);
			addApi("RichEditSetContentRect",RichEditSetContentRect);
			addApi("RichEditGetTextItemCount",RichEditGetTextItemCount);
			addApi("RichEditSetTextItemAlpha",RichEditSetTextItemAlpha);
			addApi("RichEditSetDefaultTextColor",RichEditSetDefaultTextColor);
			addApi("RichEditSetTotalLine",RichEditSetTotalLine);
			addApi("RDItemCtrlSetItemDataAutoManager",RDItemCtrlSetItemDataAutoManager);
			addApi("RDItemCtrlSetRBtnUse",RDItemCtrlSetRBtnUse);
			addApi("RDItemCtrlGetGUIData",RDItemCtrlGetGUIData);
			addApi("RDItemCtrlGetGUIDataPropByType",RDItemCtrlGetGUIDataPropByType);
			addApi("RDItemCtrlGetGUIDataKeyName",RDItemCtrlGetGUIDataKeyName);
			addApi("RDItemCtrlSetGUIDataPropByType",RDItemCtrlSetGUIDataPropByType);
			addApi("RDItemCtrlSetGUIDataEnable",RDItemCtrlSetGUIDataEnable);
			addApi("RDItemCtrlSetGUIDataPropByItemID",RDItemCtrlSetGUIDataPropByItemID);
			addApi("RDItemCtrlSetGUIDataPropByKeyNamereturn",RDItemCtrlSetGUIDataPropByKeyNamereturn);
			addApi("RDItemCtrlSetGUIDataPropByGUID",RDItemCtrlSetGUIDataPropByGUID);
			addApi("RDItemCtrlClearGUIData",RDItemCtrlClearGUIData);
			addApi("RDItemCtrlFillGUIData",RDItemCtrlFillGUIData);
			addApi("RDItemCtrlSetBigIcon",RDItemCtrlSetBigIcon);
			addApi("RDItemCtrlSetBigIconOffset",RDItemCtrlSetBigIconOffset);
			addApi("RDItemCtrlUpdateRefineAnimate",RDItemCtrlUpdateRefineAnimate);
			addApi("RDItemCtrlSetFrontImageID",RDItemCtrlSetFrontImageID);
			addApi("RDItemCtrlSetBackImageID",RDItemCtrlSetBackImageID);
			addApi("RDItemCtrlSetHighlightImageID",RDItemCtrlSetHighlightImageID);
			addApi("RDItemCtrlSetEffectImageID",RDItemCtrlSetEffectImageID);
			addApi("RDItemCtrlSetJson",RDItemCtrlSetJson);
			addApi("RDItemCtrlClearTips",RDItemCtrlClearTips);
			addApi("RDItemCtrlSetGUIDataByKeyName",RDItemCtrlSetGUIDataByKeyName);
			addApi("ComboBoxSetEditSize",ComboBoxSetEditSize);
			addApi("ComboBoxSetListLength",ComboBoxSetListLength);
			addApi("ComboBoxGetText",ComboBoxGetText);
			addApi("ComboBoxSetText",ComboBoxSetText);
			addApi("ComboBoxAddString",ComboBoxAddString);
			addApi("ComboBoxAddStringEx",ComboBoxAddStringEx);
			addApi("ComboBoxSetCurSelect",ComboBoxSetCurSelect);
			addApi("ComboBoxGetCurSelect",ComboBoxGetCurSelect);
			addApi("ComboBoxGetCurSelectID",ComboBoxGetCurSelectID);
			addApi("ComboBoxSetImageID",ComboBoxSetImageID);
			addApi("ComboBoxSetScrollBarImage",ComboBoxSetScrollBarImage);
			addApi("ComboBoxSetListFillImage",ComboBoxSetListFillImage);
			addApi("ComboBoxGetEdit",ComboBoxGetEdit);
			addApi("ComboBoxClear",ComboBoxClear);
			addApi("CheckSetCheck",CheckSetCheck);
			addApi("CheckGetCheck",CheckGetCheck);
			addApi("CheckSetText",CheckSetText);
			addApi("CheckSetImageID",CheckSetImageID);
			addApi("CheckSetAutoChange",CheckSetAutoChange);
			addApi("MenuCreate",MenuCreate);
			addApi("MenuGetMenu",MenuGetMenu);
			addApi("MenuDeleteMenu",MenuDeleteMenu);
			addApi("MenuAddItem",MenuAddItem);
			addApi("MenuDelItem",MenuDelItem);
			addApi("MenuShowPopupMenu",MenuShowPopupMenu);
			addApi("MenuDestroyMenu",MenuDestroyMenu);
			addApi("MenuFlushMenu",MenuFlushMenu);
			addApi("MenuSetItemVisiable",MenuSetItemVisiable);
			addApi("MenuSetAllItemVisiable",MenuSetAllItemVisiable);
		}

		function WndAttach(_Handle, _Info)
		{
			if(_Info == null)
			{
				_Info = "";
			}
			if(_Handle == null || _Handle == 0)
			{
				return UI.Lua_GetWindow(_Info);
			}
			else
			{
				return UI.Lua_FindWindow(_Handle, _Info);
			}
			return false;
		}


		function CreateWnd(_Handle, _Info, _ID)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return 0;
			}
			if(!UI.Lua_CreateWnd(_ID, Temporary))
			{
				return 0;
			}
			if(!UI.Lua_WndLoadLayOut(_ID))
			{
				return 0;
			}
			return Temporary;
		}

		function CreateWndFromFile(_Handle, _Info, _ID, _FileName)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return 0;
			}
			if(!UI.Lua_CreateWnd(_ID, Temporary))
			{
				return 0;
			}
			if(!UI.Lua_WndLoadLayOut(_FileName))
			{
				return 0;
			}
			return Temporary;
		}

		function CreateWndFromString(_Handle, _Info, _ID, _String, _IsCanDrag, _IsEscClose)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return 0;
			}
			return CreateWindowFromLayStr(_ID, _String, _IsCanDrag, _IsEscClose, Temporary);
		}

		function CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return CreateSimpleCtrl(_Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateImage(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_BACKPIC;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateButton(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_BUTTON;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateCheckBox(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Title)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return AddCheckBox(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Title);
		}

		function CreateEdit(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_EDIT;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateComboBox(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return AddComboBox(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length);
		}

		function CreateListBox(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_LIST;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateRadio(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_RADIO;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateStatic(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_STATIC;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateHScrollBar(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return AddHScrollBar(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _Length, _ID, _Align, _HintInfo);
		}

		function CreateVScrollBar(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo, _Length)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return AddVScrollBar(_ImageId, _PosX, _PosY, _SizeX, _SizeY, _Length, _ID, _Align, _HintInfo);
		}

		function CreateTreeCtrl(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_TREECONTROL;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateRichEdit(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_RICHEIDT;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function CreateItemCtrl(_Handle, _Info, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo)
		{
			var _Type = ENUM_UITYPE_ITEMCTRL;
			return CreateCtrl(_Handle, _Info, _Type, _ImageId, _PosX, _PosY, _SizeX, _SizeY, _ID, _Align, _HintInfo);
		}

		function GenForm(_FileName)
		{
			return UI.Lua_GenForm(_FileName);
		}

		function GenFormByString(_Info)
		{
			return UI.Lua_GenFormByString(_Info);
		}

		////////////////////////////////////////////////////////////////////////////////////////////-
		function ButtonSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _ImageId)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Visible != null)
			{
				UI.Lua_WndSetVisible(_Visible);
			}
			if(_Enable != null)
			{
				UI.Lua_WndSetEnableM(_Enable);
			}
			if(_CanRevMsg != null)
			{
				UI.Lua_WndSetCanRevMsg(_CanRevMsg);
			}
			if(_ImageId != null)
			{
				UI.Lua_ButtonSetImageID(_ImageId);
			}
			return true;
		}

		function EditSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _IsCenter, _Color, _IsNumber, _Text)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Visible != null)
			{
				UI.Lua_WndSetVisible(_Visible);
			}
			if(_Enable != null)
			{
				UI.Lua_WndSetEnableM(_Enable);
			}
			if(_CanRevMsg != null)
			{
				UI.Lua_WndSetCanRevMsg(_CanRevMsg);
			}
			if(_IsCenter == true)
			{
				UI.Lua_WndSetFlagsM(flg_dlgEdit_textInCenter);
			}
			if(_Color != null)
			{
				UI.Lua_EditSetTextColor(_Color);
			}
			if(_IsNumber != null)
			{
				UI.Lua_EditSetBNumber(_IsNumber);
			}
			if(_Text != null)
			{
				UI.Lua_EditSetTextM(_Text);
			}
			return true;
		}

		function StaticSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _Text)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Visible != null)
			{
				UI.Lua_WndSetVisible(_Visible);
			}
			if(_Enable != null)
			{
				UI.Lua_WndSetEnableM(_Enable);
			}
			if(_CanRevMsg != null)
			{
				UI.Lua_WndSetCanRevMsg(_CanRevMsg);
			}
			if(_Text != null)
			{
				UI.Lua_StaticSetText(_Text);
			}
			return true;
		}

		function ImageSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _ImageId, _ImageColor, _Alpha, _FitSize, _CheckPoint)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Visible != null)
			{
				UI.Lua_WndSetVisible(_Visible);
			}
			if(_Enable != null)
			{
				UI.Lua_WndSetEnableM(_Enable);
			}
			if(_CanRevMsg != null)
			{
				UI.Lua_WndSetCanRevMsg(_CanRevMsg);
			}
			if(_ImageId != null)
			{
				UI.Lua_ImageSetImageID(_ImageId);
			}
			if(_ImageColor != null)
			{
				UI.Lua_ImageSetColor(_ImageColor);
			}
			if(_Alpha != null)
			{
				UI.Lua_ImageSetAlpha(_Alpha);
			}
			if(_FitSize != null)
			{
				UI.Lua_ImageSetFitSize(_FitSize);
			}
			if(_CheckPoint != null)
			{
				UI.Lua_ImageSetCheckPoint(_CheckPoint);
			}
			return true;
		}

		function RichEditSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _FontName, _DefaultColor, _Text)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Visible != null)
			{
				UI.Lua_WndSetVisible(_Visible);
			}
			if(_Enable != null)
			{
				UI.Lua_RichEditSetEnable(_Enable);
			}
			if(_CanRevMsg != null)
			{
				UI.Lua_WndSetCanRevMsg(_CanRevMsg);
			}
			if(_FontName != null)
			{
				UI.Lua_RichEditSetCurFont(_FontName);
			}
			if(_DefaultColor != null)
			{
				UI.Lua_RichEditSetDefaultTextColor(_DefaultColor);
			}
			if(_Text != null)
			{
				UI.Lua_RichEditAppendString(_Text);
			}
			return true;
		}

		function RDItemCtrlSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _AutoManager, _RBtnUse, _GUIDataEnable)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Visible != null) {UI.Lua_WndSetVisible(_Visible);}
			if(_Enable != null) {UI.Lua_WndSetEnableM(_Enable);}
			if(_CanRevMsg != null) {UI.Lua_WndSetCanRevMsg(_CanRevMsg);}
			if(_AutoManager != null) {UI.Lua_RDItemCtrlSetItemDataAutoManager(_AutoManager);}
			if(_RBtnUse != null) {UI.Lua_RDItemCtrlSetRBtnUse(_RBtnUse);}
			if(_GUIDataEnable != null) {RDItemCtrlSetGUIDataEnable(_Handle, _Info, _GUIDataEnable);}
			return true;
		}

		function ComboBoxSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _ListLength, _Text, _BtnImageId, _FillImageId)
		{
			if(!WndAttach(_Handle, _Info)) {return false;}
			if(_Visible != null) {UI.Lua_WndSetVisible(_Visible);}
			if(_Enable != null) {UI.Lua_WndSetEnableM(_Enable);}
			if(_CanRevMsg != null) {UI.Lua_WndSetCanRevMsg(_CanRevMsg);}
			if(_ListLength != null) {UI.Lua_ComboBoxSetListLength(_ListLength);}
			if(_Text != null) {UI.Lua_ComboBoxSetText(_Text);}
			if(_BtnImageId != null) {UI.Lua_ComboBoxSetImageID(_BtnImageId);}
			if(_FillImageId != null) {UI.Lua_ComboBoxSetListFillImage(_FillImageId);}
			return true;
		}

		function CheckSetProp(_Handle, _Info, _Visible, _Enable, _CanRevMsg, _Check, _Text, _ImageId, _AutoChange)
		{
			if(!WndAttach(_Handle, _Info)) {return false;}
			if(_Visible != null) {UI.Lua_WndSetVisible(_Visible);}
			if(_Enable != null) {UI.Lua_WndSetEnableM(_Enable);}
			if(_CanRevMsg != null) {UI.Lua_WndSetCanRevMsg(_CanRevMsg);}
			if(_Check != null) {UI.Lua_CheckSetCheck(_Check);}
			if(_Text != null) {UI.Lua_CheckSetText(_Text);}
			if(_ImageId != null) {UI.Lua_CheckSetImageID(_ImageId);}
			if(_AutoChange != null) {UI.Lua_CheckSetAutoChange(_AutoChange);}
		}

		////////////////////////////////////////////////////////////////////////////////////////////-
		function GetWindow(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return int(Temporary);
		}

		function WndFindChild(_Handle, _Info, _Child)
		{
			if(_Info == null){return GetWindow(_Handle, _Child);}
			if(_Child == null){return GetWindow(_Handle, _Info);}
			return GetWindow(_Handle, _Info + "," + _Child);
		}

		function WndCalSize(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndCalSize();
		}

		function WndInvalidate(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndInvalidate();
		}

		function WndSetMoveWithLBM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false;}
			return UI.Lua_WndSetMoveWithLBM();
		}
		var WndSetMoveWithLB = WndSetMoveWithLBM;

		function WndSetEscClose(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(_Flag == null)
			{
				_Flag = true;
			}
			return UI.Lua_WndSetIsESCClose(_Flag);
		}

		function WndSetFlagsM(_Handle, _Info, _Flag)
		{
			if(_Flag == null || !WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndSetFlagsM(_Flag);
		}
		var WndSetFlags = WndSetFlagsM;

		function WndSetCanRevMsg(_Handle, _Info, _Flag)
		{
			if(_Flag == null || !WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndSetCanRevMsg(_Flag);
		}

		function WndCloseM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndCloseM();
		}
		var WndClose = WndCloseM;

		function WndIsLive(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndIsLive();
		}

		function WndGetParentM(_Handle, _Info)
		{
			if(null == _Info)
			{
				return GetWindow(_Handle, "parent");
			}
			return GetWindow(_Handle, _Info + ",parent");
		}
		var WndGetParent = WndGetParentM;

		function WndPtInWindowM(_Handle, _Info, _X, _Y)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndPtInWindowM(_X, _Y);
		}
		var WndPtInWindow = WndPtInWindowM;

		function WndGetEnableM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(UI.Lua_WndGetEnableM())
			{
				return LuaRet;
			}
			return false;
		}
		var WndGetEnable = WndGetEnableM;

		function WndSetEnableM(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndSetEnableM(_Flag);
		}
		var WndSetEnable = WndSetEnableM;

		function WndGetPosM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return [0,0];
			}
			if(UI.Lua_WndGetPosM())
			{
				return [LuaRet[0], LuaRet[1]];
			}
			return [0, 0];
		}
		var WndGetPos = WndGetPosM;

		function WndGetVisibleM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(UI.Lua_WndGetVisibleM() && LuaRet)
			{
				return true;
			}
			return false;
		}
		var WndGetVisible = WndGetVisibleM;

		function WndGetSizeM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return [0,0];
			}
			if(UI.Lua_WndGetSizeM())
			{
				return [LuaRet[0], LuaRet[1]];
			}
			return [0, 0];
		}
		var WndGetSize = WndGetSizeM;

		function WndGetIDM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return "";
			}
			if(UI.Lua_WndGetIDM())
			{
				return LuaRet;
			}
			return "";
		}
		var WndGetID = WndGetIDM;

		function WndSetIDM(_Handle, _Info, _NewId)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndSetIDM(_NewId);
		}
		var WndSetID = WndSetIDM;

		function WndGetParam(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return 0;
			}
			if(UI.Lua_WndGetParam())
			{
				return LuaRet;
			}
			return 0;
		}

		function WndSetParam(_Handle, _Info, _Param)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndSetParam(_Param);
		}

		function WndAddProperty(_Handle, _Info, _Key, _Val)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			return UI.Lua_WndAddProperty(_Key, _Val);
		}
		
		
		function WndDelProperty(_Handle, _Info, _Key)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndDelProperty(_Key);
		}

		function WndGetProperty(_Handle, _Info, _Key)
		{
			if(!WndAttach(_Handle, _Info)) {return ""; }
			if(UI.Lua_WndGetProperty(_Key)) {return LuaRet;}
			return "";
		}

		function WndSetPosM(_Handle, _Info, _X, _Y)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetPosM(_X, _Y);
		}
		var WndSetPos = WndSetPosM;

		function WndSetSizeM(_Handle, _Info, _W, _H)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetSizeM(_W, _H);
		}
		var WndSetSize = WndSetSizeM;

		function WndSetFocusM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetFocusM();
		}
		var WndSetFocus = WndSetFocusM;

		function WndSetVisibleM(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetVisible(_Flag);
		}
		var WndSetVisible = WndSetVisibleM;

		function WndSetActiveM(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetActiveM(_Flag);
		}
		var WndSetActive = WndSetActiveM;

		function WndSetKeyFocusM(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetKeyFocusM(_Flag);
		}
		var WndSetKeyFocus = WndSetKeyFocusM;

		function WndGetScreenPos(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return [0,0];}
			if(UI.Lua_WndGetScreenPos()) {return [LuaRet[0], LuaRet[1]]; }
			return [0, 0];
		}

		function WndRegistScript(_Handle, _Info, _Msg, _FuncName)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndRegistScript(_Msg, _FuncName);
		}

		function WndUnRegistScript(_Handle, _Info, _Msg, _FuncName)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndUnRegistScript(_Msg, _FuncName);
		}

		function WndPurgeScript(_Handle, _Info, _Msg)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndPurgeScript(_Msg);
		}

		function WndAddTimer(_Handle, _Info, _ID, _Elapse, _ScriptHandle)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndAddTimer(_ID, _Elapse, _ScriptHandle);
		}

		function WndAddTimerBrief(_Handle, _Info, _Elapse, _ScriptHandle)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			if(!UI.Lua_WndAddTimerBrief(_Elapse, _ScriptHandle)) {return false; }
			return LuaRet;
		}

		function WndDelTimer(_Handle, _Info, _ID)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndDelTimer(_ID);
		}

		function WndDelAllTimer(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndDelAllTimer();
		}

		function WndGetItemGUIDataHandle(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_WndGetItemGUIDataHandle()) {return LuaRet;}
			return 0;
		}

		function WndSetTipFunction(_Handle, _Info, _FuncName)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetTipFunction(_FuncName);
		}

		function WndSetTipInfo(_Handle, _Info, _TipInfo)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetTipInfo(_TipInfo);
		}

		function WndSetTipAutoRemove(_Handle, _Info, _AutoRemove)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetTipAutoRemove(_AutoRemove);
		}

		function WndMoveToParentBottom(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndMoveToParentBottom();
		}

		function WndMoveToParentTop(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndMoveToParentTop();
		}

		function WndOpenItemWindow(_Handle, _Info, _WindowType, _LuaFunc_GetGUIDList)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndOpenItemWindow(_WindowType, _LuaFunc_GetGUIDList);
		}

		function WndActiveItemWindow(_Handle, _Info, _WindowType)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndActiveItemWindow(_WindowType);
		}

		function WndCloseItemWindow(_Handle, _Info, _WindowType)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndCloseItemWindow(_WindowType);
		}

		function WndGetCurItemWindow()
		{
			if(UI.Lua_WndGetCurItemWindow()) {return LuaRet;}
			return 0;
		}

		function WndSetTextColorM(_Handle, _Info, _Color)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetTextColorM(_Color);
		}
		var WndSetTextColor = WndSetTextColorM;

		function WndSetTextM(_Handle, _Info, _Text)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetTextM(_Text);
		}
		var WndSetText = WndSetTextM;

		function WndSetMagicUI(_Handle, _Info, _Type)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndSetMagicUI(_Type);
		}

		function WndAddEffect(_Handle, _Info, _ImageId, _X, _Y, _Elapse, count)
		{
			var tis = GetWindow(_Handle, _Info);
			if(0 == tis) {return false; }
			var id = WndGetID(tis, null) + "_effect";
			var effect = GetWindow(tis, id);
			if(0 != effect) {WndClose(effect, null); }
			if(_ImageId == 0) {return false; }
			var x = 0;
			var y = 0;
			if(null != _X) {x = _X; }
			if(null != _Y) {y = _Y; }
			effect = CreateImage(tis, null, _ImageId, x, y, 0, 0, id, 0, "");
			WndSetCanRevMsg(effect, null, false);
			var c = 0;
			if(count != null && (count is int) && count > 0)
			{
				c = count;
			}
			ImageSetAnimate(effect, null, _Elapse, c);
			return true;
		}

		function WndDelEffect(_Handle, _Info)
		{
			var tis = GetWindow(_Handle, _Info);
			if(0 == tis) {return; }
			var id = WndGetID(tis, null) + "_effect";
			WndClose(tis, id);
		}

		function WndClick(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndClick();
		}

		function WndRClick(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndRClick();
		}

		function WndDbClick(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndDbClick();
		}

		function WndRDbClick(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_WndRDbClick();
		}

		////////////////////////////////////////////////////////////////-
		function ButtonSetImageID(_Handle, _Info, _ImageId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ButtonSetImageID(_ImageId);
		}

		function ButtonGetIsActivePageBtn(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			if(!UI.Lua_ButtonGetIsActivePageBtn()) {return false; }
			return LuaRet;
		}

		function ButtonSetIsActivePageBtn(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ButtonSetIsActivePageBtn(_Flag);
		}

		function ButtonSetShine(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ButtonSetShine(_Flag);
		}

		function ButtonSetIsTextPosChange(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ButtonSetIsTextPosChange(_Flag);
		}

		////////////////////////////////////////////////////////////////-
		function EditSetTextColor(_Handle, _Info, _Color)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_EditSetTextColor(_Color);
		}

		function EditGetBNumber(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			if(UI.Lua_EditGetBNumber()) {return LuaRet;}
			return false;
		}

		function EditSetBNumber(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_EditSetBNumber(_Flag);
		}

		function EditGetTextM(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return ""; }
			if(UI.Lua_EditGetTextM()) {return LuaRet;}
			return "";
		}
		var EditGetText = EditGetTextM;

		function EditSetTextM(_Handle, _Info, _Text)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_EditSetTextM(_Text);
		}
		var EditSetText = EditSetTextM;

		function EditGetInt(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_EditGetInt()) {return LuaRet;}
			return 0;
		}

		function EditSetMultiLineEdit(_Handle, _Info, _MultiLine)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_EditSetMultiLineEdit(_MultiLine);
		}

		function EditSetInt(_Handle, _Info, _Data)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_EditSetInt(_Data);
		}

		function EditSetIsPassWord(_Handle, _Info, _IsPassword)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_EditSetIsPassWord(_IsPassword);
		}

		function EditGetMaxCharNum(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_EditGetMaxCharNum()) {return LuaRet;}
			return 0;
		}

		function EditSetMaxCharNum(_Handle, _Info, _MaxCount)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return UI.Lua_EditSetMaxCharNum(_MaxCount);
		}

		function EditSetCanEdit(_Handle, _Info, _CanEdit)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			return UI.Lua_EditSetCanEdit(_CanEdit);
		}

		////////////////////////////////////////////////////////////////-
		function StaticSetText(_Handle, _Info, _Text)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_StaticSetText(_Text);
		}

		////////////////////////////////////////////////////////////////-
		function ImageGetImageID(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_ImageGetImageID()) {return LuaRet;}
			return 0;
		}

		function ImageSetImageID(_Handle, _Info, _ImageID)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetImageID(_ImageID);
		}

		function ImageSetColor(_Handle, _Info, _ImageColor)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetColor(_ImageColor);
		}

		function ImageGetColor(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_ImageGetColor()) {return LuaRet;}
			return 0;
		}

		function ImageSetAlpha(_Handle, _Info, _Alpha)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetAlpha(_Alpha);
		}

		function ImageGetAlpha(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_ImageGetAlpha()) {return LuaRet;}
			return 0;
		}

		function ImageSetFitSize(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetFitSize(_Flag);
		}

		function ImageSetParam(_Handle, _Info, _Param)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetParam(_Param);
		}

		function ImageSetCheckPoint(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetCheckPoint(_Flag);
		}

		function ImageSetAroundImage(_Handle, _Info, _LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetAroundImage(_LeftUp, _RightUp, _LeftDown, _RightDown, _Mid, _Up, _Down, _Left, _Right);
		}

		function ImageSetAnimateEnable(_Handle, _Info, _Enable, _Speed)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetAnimateEnable(_Enable, _Speed);
		}

		function ImageSetAnimate(_Handle, _Info, _Speed, _AnimCount, _AnimCallBackFunc)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			if(_Speed == null) {_Speed = 100; }
			if(_AnimCount == null) {_AnimCount = 0; }
			if(_AnimCallBackFunc == null) {_AnimCallBackFunc = ""; }
			return UI.Lua_ImageSetAnimate(_Speed, _AnimCount, _AnimCallBackFunc);
		}

		function ImageSetGray(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ImageSetGray(_Flag);
		}

		////////////////////////////////////////////////////////////////-
		function RichEditSetEnable(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditSetEnable(_Flag);
		}

		function RichEditClear(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditClear();
		}

		function RichEditAppendString(_Handle, _Info, _Text)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditAppendString(_Text);
		}

		function RichEditGetSelectClickString(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return ""; }
			if(UI.Lua_RichEditGetSelectClickString()) {return LuaRet;}
			return "";
		}

		function RichEditLinkControl(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditLinkControl();
		}

		function RichEditSetCurFont(_Handle, _Info, _FontName)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditSetCurFont(_FontName);
		}

		function RichEditSetContentRect(_Handle, _Info, _X, _Y, _W, _H)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditSetContentRect(_X, _Y, _W, _H);
		}

		function RichEditGetTextItemCount(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_RichEditGetTextItemCount()) {return LuaRet;}
			return 0;
		}

		function RichEditSetTextItemAlpha(_Handle, _Info, _Beg, _End, _Alpha)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditSetTextItemAlpha(_Beg, _End, _Alpha);
		}

		function RichEditSetDefaultTextColor(_Handle, _Info, _Color)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditSetDefaultTextColor(_Color);
		}

		function RichEditSetTotalLine(_Handle, _Info, _MaxLineNum)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RichEditSetTotalLine(_MaxLineNum);
		}

		////////////////////////////////////////////////////////////////-
		function RDItemCtrlSetItemDataAutoManager(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetItemDataAutoManager(_Flag);
		}

		function RDItemCtrlSetRBtnUse(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetRBtnUse(_Flag);
		}

		function RDItemCtrlGetGUIData(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_RDItemCtrlGetGUIData()) {return LuaRet;}
			return 0;
		}

		function RDItemCtrlGetGUIDataPropByType(_Handle, _Info, _PropType)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_RDItemCtrlGetGUIDataPropByType(_PropType)) {return LuaRet;}
			return 0;
		}

		function RDItemCtrlGetGUIDataKeyName(_Handle, _Info)
		{
			var GUID = RDItemCtrlGetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID);
			if(GUID != "0")
			{
				if(UI.Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_KEYNAME))
				{
					return LuaRet;
				}
			}
			return "";
		}

		function RDItemCtrlSetGUIDataPropByType(_Handle, _Info, _PropType, _PropValue)
		{
			var _GUIDataHandle = RDItemCtrlGetGUIData(_Handle, _Info);
			if(0 == _GUIDataHandle) {return false; }
			LuaArg = _PropValue;
			CLSetLuaArg(_PropValue);
			return UI.Lua_SetItemGUIDataPropByType(_GUIDataHandle, _PropType);
		}

		function RDItemCtrlSetGUIDataEnable(_Handle, _Info, _Enable)
		{
			if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, _Enable)) {return false; }
			return true;
		}

		function RDItemCtrlSetGUIDataPropByItemID(_Handle, _Info, _ItemID, _Count, _IsBind)
		{
			if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, "0")) {return false; }
			if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, _ItemID)) {return false; }
			if(!UI.Lua_GetItemTemplateHandleByID(_ItemID)) {return false; }
			var _ItemHandle = LuaRet;
			if(!UI.Lua_GetItemTemplatePropByHandle(_ItemHandle, ITEM_PROP_ICON)) {return false; }
			if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, LuaRet)) {return false; }
			if(null != _Count)
			{
				if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, _Count)) {return false; }
			}
			if(null != _IsBind)
			{
				if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, _IsBind)) {return false;}
			}
			if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true)) {return false; }
			return true;
		}

		function RDItemCtrlSetGUIDataPropByKeyName(_Handle, _Info, _KeyName, _Count, _IsBind)
		{
			var handle = GUIWndFindWindow(_Handle,_Info);
			if(handle != 0)
			{
				RDItemCtrlSetGUIDataByKeyName(handle,_KeyName,_Count,_IsBind);
			}
			//if(!UI.Lua_GetItemTemplateHandleByKeyName(_KeyName))) {return false; }
			//if(!UI.Lua_GetItemTemplatePropByHandle(LuaRet, ITEM_PROP_ID))) {return false; }
			//return RDItemCtrlSetGUIDataPropByItemID(_Handle, _Info, LuaRet, _Count, _IsBind)
		}

		function RDItemCtrlSetGUIDataPropByGUID(_Handle, _Info, _ItemGUID)
		{
			//实体句柄
			if(!UI.Lua_GetItemEntityHandleByGUID(_ItemGUID)) {return false; }
			var _Entity = LuaRet;
			var _GUIDataHandle = GetWindow(_Handle, _Info);
			if(_Entity != 0 && _GUIDataHandle != 0)
			{
				GUIItemCtrlSetGUIData(_GUIDataHandle, _Entity);
				//模版句柄
				//if(!UI.Lua_GetItemTemplateHandleByGUID(_ItemGUID))) {return false; }
				//var _Template = LuaRet;
				//物品GUID
				//if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, _ItemGUID)) {return false; }
				//物品模版ID
				//if(!UI.Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_ID))) {return false; }
				//if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, LuaRet)) {return false; }
				//物品图片ID
				//if(!UI.Lua_GetItemTemplatePropByHandle(_Template, ITEM_PROP_ICON))) {return false; }
				//if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, LuaRet)) {return false; }
				//物品数量
				//if(!UI.Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_AMOUNT))) {return false; }
				//if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, LuaRet)) {return false; }
				//物品绑定状态
				//if(!UI.Lua_GetItemEntityPropByHandle(_Entity, ITEM_PROP_ENTITY_IS_BOUND))) {return false; }
				//if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, LuaRet)) {return false; }
				//有效状态
				//if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true)) {return false; }
			}
			return true;
		}

		function RDItemCtrlClearGUIData(_Handle, _Info)
		{
		//	if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, "0")) {return false; }
		//	if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, 0)) {return false; }
		//	if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, 0)) {return false; }
		//	if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, 0)) {return false; }
		//	if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, false)) {return false; }
		//	if(!RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, true)) {return false; }
			var handle = GetWindow(_Handle,_Info);
			dbg(handle);
			if(handle != 0)
			{
				GUIItemCtrlClearItemData(handle);
			}
			return true;
		}

		function RDItemCtrlFillGUIData(_Handle, _Info, _GUIDataHandle)
		{
			var _ItemHandle = GetWindow(_Handle, _Info);
			if(_ItemHandle != 0 && _GUIDataHandle != 0)
			{
				GUIItemCtrlSetGUIData(_ItemHandle, _GUIDataHandle);
			}
			//if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID)) then
			//	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMGUID, as3.tolua(LuaRet)) then return false end
			//end
			//if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID)) then
			//	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMID, as3.tolua(LuaRet)) then return false end
			//end
			//if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_IMAGEID)) then
			//	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_IMAGEID, as3.tolua(LuaRet)) then return false end
			//end
			//if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT)) then
			//	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ITEMCOUNT, as3.tolua(LuaRet)) then return false end
			//end
			//if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND)) then
			//	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_ISSHOWBIND, as3.tolua(LuaRet)) then return false end
			//end
			//if as3.tolua(UI:Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_INVALIDATE)) then
			//	if not RDItemCtrlSetGUIDataPropByType(_Handle, _Info, ITEMGUIDATA_INVALIDATE, as3.tolua(LuaRet)) then return false end
			//end--]]
			return true;
		}

		function RDItemCtrlSetBigIcon(_Handle, _Info, _IsBigIcon)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetBigIcon(_IsBigIcon);
		}

		function RDItemCtrlSetBigIconOffset(_Handle, _Info, _OffsetX, _OffsetY)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetBigIconOffset(_OffsetX, _OffsetY);
		}

		function RDItemCtrlUpdateRefineAnimate(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlUpdateRefineAnimate();
		}

		function RDItemCtrlSetFrontImageID(_Handle, _Info, _ImgId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetFrontImageID(_ImgId);
		}

		function RDItemCtrlSetBackImageID(_Handle, _Info, _ImgId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetBackImageID(_ImgId);
		}

		function RDItemCtrlSetHighlightImageID(_Handle, _Info, _ImgId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetHighlightImageID(_ImgId);
		}

		function RDItemCtrlSetEffectImageID(_Handle, _Info, _ImgId, _Scale)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetEffectImageID(_ImgId, _Scale);
		}

		function RDItemCtrlSetJson(_Handle, _Info, _JsonString)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlSetJson(_JsonString);
		}

		function RDItemCtrlClearTips(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_RDItemCtrlClearTips();
		}

		function RDItemCtrlSetGUIDataByKeyName(_Handle, _KeyName, _Count, _IsBind)
		{
			UI.Lua_GetItemTemplateHandleByKeyName(_KeyName);
			var _GUIDataHandle=LuaRet;
			GUI.ItemCtrlSetGUIData(_Handle, _GUIDataHandle);
			LuaArg = _Count;
			CL.SetLuaArg(LuaArg);
			UI.Lua_SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT);
			LuaArg = _IsBind;
			CL.SetLuaArg(LuaArg);
			UI.Lua_SetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND);
		}
		////////////////////////////////////////////////////////////////-
		function ComboBoxSetEditSize(_Handle, _Info, _Width, _Height)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetEditSize(_Width, _Height);
		}

		function ComboBoxSetListLength(_Handle, _Info, _Length)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetListLength(_Length);
		}

		function ComboBoxGetText(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return ""; }
			if(UI.Lua_ComboBoxGetText()) {return LuaRet;}
			return "";
		}

		function ComboBoxSetText(_Handle, _Info, _Text)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetText(_Text);
		}

		function ComboBoxAddString(_Handle, _Info, _Text, _Id)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxAddString(_Text, _Id);
		}

		function ComboBoxAddStringEx(_Handle, _Info, _Text, _Id, _Color)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxAddStringEx(_Text, _Id, _Color);
		}

		function ComboBoxSetCurSelect(_Handle, _Info, _Index)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetCurSelect(_Index);
		}

		function ComboBoxGetCurSelect(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return -1; }
			if(UI.Lua_ComboBoxGetCurSelect()) {return LuaRet;}
			return -1;
		}

		function ComboBoxGetCurSelectID(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_ComboBoxGetCurSelectID()) {return LuaRet;}
			return 0;
		}

		function ComboBoxSetImageID(_Handle, _Info, _ImgId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetImageID(_ImgId);
		}

		function ComboBoxSetScrollBarImage(_Handle, _Info, _Up, _Mid, _Down, _Back)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetScrollBarImage(_Up, _Mid, _Down, _Back);
		}

		function ComboBoxSetListFillImage(_Handle, _Info, _ImgId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxSetListFillImage(_ImgId);
		}

		function ComboBoxGetEdit(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(!UI.Lua_ComboBoxGetEdit()) {return 0;}
			return LuaRet;
		}

		function ComboBoxClear(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_ComboBoxClear();
		}


		////////////////////////////////////////////////////////////////-
		function CheckSetCheck(_Handle, _Info, _Check)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_CheckSetCheck(_Check);
		}

		function CheckGetCheck(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			if(!UI.Lua_CheckGetCheck()) {return false; }
			return LuaRet;
		}

		function CheckSetText(_Handle, _Info, _Text)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_CheckSetText(_Text);
		}

		function CheckSetImageID(_Handle, _Info, _ImageId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_CheckSetImageID(_ImageId);
		}

		function CheckSetAutoChange(_Handle, _Info, _AutoChange)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_CheckSetAutoChange(_AutoChange);
		}

		////////////////////////////////////////////////////////////////-
		function MenuCreate(_Handle, _Info, _WndId)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_MenuCreate(_WndId)) {return LuaRet;}
			return 0;
		}

		function MenuGetMenu(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return 0;}
			if(UI.Lua_MenuGetMenu()) {return LuaRet;}
			return 0;
		}

		function MenuDeleteMenu(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuDeleteMenu();
		}

		function MenuAddItem(_Handle, _Info, _ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuAddItem(_ItemId, _TextInfo, _FlagImage, _ParentId, _ItemImg);
		}

		function MenuDelItem(_Handle, _Info, _ItemId)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuDelItem(_ItemId);
		}

		function MenuShowPopupMenu(_Handle, _Info, _UseMousePos)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuShowPopupMenu(_UseMousePos);
		}

		function MenuDestroyMenu(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuDestroyMenu();
		}

		function MenuFlushMenu(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuFlushMenu();
		}

		function MenuSetItemVisiable(_Handle, _Info, _ItemId, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuSetItemVisiable(_ItemId, _Flag);
		}

		function MenuSetAllItemVisiable(_Handle, _Info, _Flag)
		{
			if(!WndAttach(_Handle, _Info)) {return false; }
			return UI.Lua_MenuSetAllItemVisiable(_Flag);
		}
	}
}