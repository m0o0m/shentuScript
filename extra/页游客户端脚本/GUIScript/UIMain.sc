package script
{
	public class UIMain
	{

		public function UIMain()
		{
			addApi("GetCurWindow",GetCurWindow);
			addApi("SetCurWindow",SetCurWindow);
			addApi("SaveWnd",SaveWnd);
			addApi("RestoreWnd",RestoreWnd);
			addApi("SetWindowPosAt",SetWindowPosAt);
			addApi("WndSetPosAt",WndSetPosAt);
			addApi("CenterWnd",CenterWnd);
			addApi("GetTipItemGUIDataPropByType",GetTipItemGUIDataPropByType);
			addApi("GetWndItemGUIDataPropByType",GetWndItemGUIDataPropByType);
			addApi("SetWndItemGUIDataPropByType",SetWndItemGUIDataPropByType);
			addApi("SetWndItemGUIDataPropByKeyName",SetWndItemGUIDataPropByKeyName);
			addApi("SetWndItemGUIDataPropByItemID",SetWndItemGUIDataPropByItemID);
			addApi("ClearWndItemGUIData",ClearWndItemGUIData);
			addApi("RDItemClearGUIData",RDItemClearGUIData);
			addApi("RDItemFillGUIData",RDItemFillGUIData);
			addApi("SetWndItemGUIDataEnable",SetWndItemGUIDataEnable);
			addApi("CHECK_BUTTON_UP",CHECK_BUTTON_UP);
			addApi("GeneralCloseBtnClick",GeneralCloseBtnClick);
			addApi("GeneralCloseWnd",GeneralCloseWnd);
			addApi("CreateWindow",CreateWindow);
			addApi("CreateWindowFromLayOut",CreateWindowFromLayOut);
			addApi("CreateWindowFromLayStr",CreateWindowFromLayStr);
			addApi("CreateCommonWnd",CreateCommonWnd);
			addApi("CreateCommonBack",CreateCommonBack);
			addApi("MessageBoxOkScript_",MessageBoxOkScript_);
			addApi("MessageBoxCloseScript_",MessageBoxCloseScript_);
			addApi("MessageBox",MessageBox);
			addApi("MessageBoxOkFunc_",MessageBoxOkFunc_);
			addApi("MessageBox2",MessageBox2);
			addApi("AddMagicToWnd",AddMagicToWnd);
			addApi("AddMagicToScreen",AddMagicToScreen);
			addApi("MoveMagicToBottom",MoveMagicToBottom);
			addApi("MoveMagicToTop",MoveMagicToTop);
			addApi("CreateSimpleCtrl",CreateSimpleCtrl);
			addApi("AddImage",AddImage);
			addApi("AddButton",AddButton);
			addApi("AddCheckBox",AddCheckBox);
			addApi("AddEdit",AddEdit);
			addApi("AddComboBox",AddComboBox);
			addApi("AddListBox",AddListBox);
			addApi("AddRadio",AddRadio);
			addApi("AddStatic",AddStatic);
			addApi("AddHScrollBar",AddHScrollBar);
			addApi("AddVScrollBar",AddVScrollBar);
			addApi("AddTreeCtrl",AddTreeCtrl);
			addApi("AddRichEdit",AddRichEdit);
			addApi("AddItemCtrl",AddItemCtrl);
			addApi("Sys_GetUniqueItemWindowID",Sys_GetUniqueItemWindowID);
			addApi("Sys_PushBackItemWindow",Sys_PushBackItemWindow);
			addApi("Sys_GetItemWindowGUIDList",Sys_GetItemWindowGUIDList);
			addApi("Sys_ItemWindowDestroy",Sys_ItemWindowDestroy);
			addApi("Sys_ItemWindowMoveIn",Sys_ItemWindowMoveIn);
			addApi("Sys_ItemCtrlLButtonDown",Sys_ItemCtrlLButtonDown);
			addApi("Sys_ItemWindowGetAllItemGUIDList",Sys_ItemWindowGetAllItemGUIDList);
			addApi("Sys_ItemWindowOnItemDestory",Sys_ItemWindowOnItemDestory);
			
			//注册物品更新和物品销毁事件
			RegisterUIEvent(LUA_EVENT_ONITEMATTRCHANGE, "系统物品窗口属性改变", Sys_ItemWindowOnItemAttrChange);
			RegisterUIEvent(LUA_EVENT_ONITEMDESTROY, "系统物品窗口销毁", Sys_ItemWindowOnItemDestory);
		}
		var TempWndCurrentSaving;
		function GetCurWindow()
		{
			var _NewWindow = Temporary;
			return _NewWindow;
		}

		function SetCurWindow(_Window)
		{
			Temporary = _Window;
		}

		function SaveWnd()
		{
			TempWndCurrentSaving = null;
			if(Temporary == null)
			{
				return;
			}
			TempWndCurrentSaving = Temporary;
		}

		function RestoreWnd()
		{
			if(TempWndCurrentSaving == null)
			{
				return;
			}
			Temporary = TempWndCurrentSaving;
		}

		//设置窗口位置,(X轴上空白占上下总空白比例,Y轴左空白占左右总空白比例)
		function SetWindowPosAt(XPerct,YPerct)
		{
			UI.Lua_GetScreenSize();
			var _SW = LuaRet[0];
			var _SH = LuaRet[1];
			UI.Lua_WndGetSizeM();
			var _W = LuaRet[0];
			var _H = LuaRet[1];
			var _X = XPerct*(_SW-_W);
			var _Y = YPerct*(_SH-_H);
			UI.Lua_WndSetPosM(_X,_Y);
		}

		//设置窗口位置,(X轴上空白占上下总空白比例,Y轴左空白占左右总空白比例)
		function WndSetPosAt(_Handle, _Info, XPerct, YPerct)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			UI.Lua_GetScreenSize();
			var _SW = LuaRet[0];
			var _SH = LuaRet[1];
			UI.Lua_WndGetSizeM();
			var _W = LuaRet[0];
			var _H = LuaRet[1];
			var _X = XPerct*(_SW-_W);
			var _Y = YPerct*(_SH-_H);
			UI.Lua_WndSetPosM(_X,_Y);
			return true;
		}

		//将窗口居中
		function CenterWnd(_Handle, _Info)
		{
			WndSetPosAt(_Handle, _Info, 0.5, 0.5)
		}

		//获取Tip指向的物品格的属性
		function GetTipItemGUIDataPropByType(Type)
		{
			var handle = GetTipParam("GUIDATA");
			if(null == handle)
			{
				return false;
			}
			handle = int(handle);
			if(handle == 0)
			{
				return false;
			}
			return UI.Lua_GetItemGUIDataPropByType(handle,Type);
		}

		//获取物品格属性
		function GetWndItemGUIDataPropByType(Type)
		{
			if(UI.Lua_WndGetItemGUIDataHandle())
			{
				return UI.Lua_GetItemGUIDataPropByType(LuaRet,Type);
			}
			return false;
		}

		//设置物品格属性
		function SetWndItemGUIDataPropByType(Type,Value)
		{
			if(UI.Lua_WndGetItemGUIDataHandle())
			{
				LuaArg = Value;
				return UI.Lua_SetItemGUIDataPropByType(LuaRet,Type);
			}
			return false;
		}

		//以物品KeyName填充物品格
		function SetWndItemGUIDataPropByKeyName(Value,count,_IsShowBind)
		{
			if(!UI.Lua_GetItemTemplateHandleByKeyName(Value))
			{
				return false;
			}
			var _ItemTemplateHandle = LuaRet;
			if(!UI.Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle,ITEM_PROP_ID))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,LuaRet))
			{
				return false;
			}
			if(!UI.Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle,ITEM_PROP_ICON))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,LuaRet))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,count))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,_IsShowBind))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true))
			{
				return false;
			}
			return true;
		}

		//以物品ID填充物品格
		function SetWndItemGUIDataPropByItemID(Value,count,_IsShowBind)
		{
			if(!UI.Lua_GetItemTemplateHandleByID(Value))
			{
				return false;
			}
			var _ItemTemplateHandle = LuaRet;
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,Value))
			{
				return false;
			}
			if(!UI.Lua_GetItemTemplatePropByHandle(_ItemTemplateHandle,ITEM_PROP_ICON))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,LuaRet))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,count))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,_IsShowBind))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true))
			{
				return false;
			}
			return true;
		}

		//清除物品格内容
		function ClearWndItemGUIData()
		{
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,0))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,0))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,0))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,false))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true))
			{
				return false;
			}
		}

		//清除物品格内容
		function RDItemClearGUIData(_Handle, _Info)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMGUID,"0"))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID,0))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID,0))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT,0))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND,false))
			{
				return false;
			}
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,true))
			{
				return false;
			}
		}

		//将格子填充为传过来的Item属性
		function RDItemFillGUIData(_Handle, _Info, _GUIDataHandle)
		{
			if(!WndAttach(_Handle, _Info))
			{
				return false;
			}

			if(UI.Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMGUID))
			{
				if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMGUID, LuaRet))
				{
					return false;
				}
			}
			if(UI.Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMID))
			{
				if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMID, LuaRet))
				{
					return false;
				}
			}
			if(UI.Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_IMAGEID))
			{
				if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_IMAGEID, LuaRet))
				{
					return false;
				}
			}
			if(UI.Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ITEMCOUNT))
			{
				if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ITEMCOUNT, LuaRet))
				{
					return false;
				}
			}
			if(UI.Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_ISSHOWBIND))
			{
				if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_ISSHOWBIND, LuaRet))
				{
					return false;
				}
			}
			if(UI.Lua_GetItemGUIDataPropByType(_GUIDataHandle, ITEMGUIDATA_INVALIDATE))
			{
				if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE, LuaRet))
				{
					return false;
				}
			}
			return true;
		}

		//设置物品格不可用
		function SetWndItemGUIDataEnable(_Enable)
		{
			if(!SetWndItemGUIDataPropByType(ITEMGUIDATA_INVALIDATE,_Enable))
			{
				return false;
			}
		}

		function CHECK_BUTTON_UP(X,Y)
		{
			return UI.Lua_WndPtInWindowM(X,Y);
		}

		//通用关闭按钮处理
		function GeneralCloseBtnClick(_Handle,Param,X,Y)
		{
			if(!CHECK_BUTTON_UP(X,Y))
			{
				return;
			}
			if(UI.Lua_WndGetParentM())
			{
				UI.Lua_WndCloseM();
			}
		}

		//通用关闭Wnd函数
		function GeneralCloseWnd(_Handle, Param, X, Y)
		{
			UI.Lua_WndCloseM();
		}

		//创建一个窗口从ID对应的Layout文件
		function CreateWindow(_ID,_IsCanDrag,_IsEscClose,_ParentHandle)
		{
			return CreateWindowFromLayOut(_ID,_ID,_IsCanDrag,_IsEscClose,_ParentHandle);
		}

		//创建一个窗口从指定的的Layout名字
		function CreateWindowFromLayOut(_ID,_LayOutName,_IsCanDrag,_IsEscClose,_ParentHandle)
		{
			if(_ParentHandle == null)
			{
				_ParentHandle = 0;
			}
			UI.Lua_CreateWnd(_ID,_ParentHandle);
			var _Wnd = GetCurWindow();
			UI.Lua_WndLoadLayOut(_LayOutName);
			UI.Lua_WndCalSize();
			if(_IsCanDrag)
			{
				UI.Lua_WndSetMoveWithLBM();
			}
			if(_IsEscClose)
			{
				UI.Lua_WndSetIsESCClose(true);
			}
			if(UI.Lua_FindChildM("GUI_2"))
			{
				UI.Lua_WndSetCanRevMsg(false);
				SetCurWindow(_Wnd);
			}
			return _Wnd;
		}

		//创建一个窗口从Layout字符串
		function CreateWindowFromLayStr(_ID,_LayStr,_IsCanDrag,_IsEscClose,_ParentHandle)
		{
			if(_ParentHandle == null)
			{
				_ParentHandle = 0;
			}
			UI.Lua_CreateWnd(_ID,_ParentHandle);
			var _Wnd = GetCurWindow();
			UI.Lua_WndLoadLayOutString(_LayStr);
			UI.Lua_WndCalSize();
			if(_IsCanDrag)
			{
				UI.Lua_WndSetMoveWithLBM();
			}
			if(_IsEscClose)
			{
				UI.Lua_WndSetIsESCClose(true);
			}
			if(UI.Lua_FindChildM("GUI_2"))
			{
				UI.Lua_WndSetCanRevMsg(false);
				SetCurWindow(_Wnd);
			}
			return _Wnd;
		}

		//创建一个通用对话框
		function CreateCommonWnd(id, width, height, title_image_id)
		{
			if(id == null || id == "" || width == null || width == 0 || height == null || height == 0)
			{
				return 0;
			}
			if(width % 1 != 0)
			{
				width = width + 1;
			}
			if(height % 1 != 0)
			{
				height = height + 1;
			}
			if(!UI.Lua_GetWindow(""))
			{
				return 0;
			}
			CreateSimpleCtrl(1, 0, 0, 0, 0, 0, id, 0, "");
			UI.Lua_ImageSetCheckPoint(0);
			SaveWnd();
			AddImage(0, 0, 0, width, height, "GUI_2", 0, "");
			UI.Lua_WndSetCanRevMsg(false);
			UI.Lua_ImageSetAroundImage(1904400001, 1904400002, 1904400003, 1904400004, 1904400006, 1904400005, 1904400007, 1904400008, 1904400009);
			RestoreWnd();
			UI.Lua_WndCalSize();
			UI.Lua_WndSetMoveWithLBM();
			UI.Lua_WndSetIsESCClose(true);
			UI.Lua_WndSetFlagsM(flg_wndBase_autoTop);
			SetWindowPosAt(0.5, 0.5);
			AddButton(1900111000, width - 33, 8, 28, 27, "Close", 0, "");
			UI.Lua_WndRegistScript(RDWndBaseCL_mouse_lbUp, "GeneralCloseBtnClick");
			if(height > 225)
			{
				var posy = 49 + Math.floor((height - 209) / 2);
				RestoreWnd();
				AddImage(1904400010, 0, posy, 10, 160, "FrameLeft", 0, "");
				UI.Lua_WndSetCanRevMsg(false);
				RestoreWnd();
				AddImage(1904400011, width - 10, posy, 10, 160, "FrameRight", 0, "");
				UI.Lua_WndSetCanRevMsg(false);
			}
			if(title_image_id != null && title_image_id != 0)
			{
				var imgw = 0;
				var imgh = 0;
				if(UI.Lua_GetTextureWidthHeight(title_image_id))
				{
					imgw = LuaRet[0];
					imgh = LuaRet[1];
				}
				else
				{
					imgw = 184;
					imgh = 49;
				}
				var x = Math.floor((width - imgw) / 2);
				var y = Math.floor((49 - imgh) / 2);
				RestoreWnd();
				AddImage(title_image_id, x, y, imgw, imgh, "Title", 0, "");
				UI.Lua_WndSetCanRevMsg(false);
			}
			RestoreWnd();
			return Temporary;
		}

		//为对话框创建通用背景
		function CreateCommonBack(id, handle, info, title, desc_str, desc_height)
		{
			if(id == null || id == "")
			{
				return 0;
			}
			var tis = GetWindow(handle, info);
			if(0 == tis)
			{
				return 0;
			}
			var cx = 0;
			var cy = 0;
			var ctrl = GetWindow(tis, id);
			var temp;
			if(0 != ctrl)
			{
				temp = WndGetSize(ctrl, null);
				cx = temp[0];
				cy = temp[1];
				WndClose(ctrl);
			}
			else
			{
				temp = WndGetSize(tis, null);
				cx = temp[0];
				cy = temp[1];
			}
			ctrl = CreateImage(tis, null, 0, 0, 0, cx, cy, id, 0, "");
			WndSetCanRevMsg(ctrl, null, false);
			WndMoveToParentBottom(ctrl, null);
			ImageSetAroundImage(ctrl, null, 1904400001, 1904400002, 1904400003, 1904400004, 1904400006, 1904400005, 1904400007, 1904400008, 1904400009);
			if(title != null && title != "" && UI.Lua_GetFontStrWidth("SIMLI18", title))
			{
				var text_width = LuaRet;
				var edit = CreateRichEdit(ctrl, null, 0, 0, 0, text_width, 20, "Title", 0, "");
				WndSetPos(edit, null, Math.floor((cx - text_width) / 2), 13);
				RichEditSetProp(edit, null, true, false, false, "SIMLI18", MakeARGB(255, 218, 190, 130), title);
			}
			if(desc_str != null && desc_str != "" && cx > 70 && cy > 50)
			{
				if(desc_height == null)
				{
					desc_height = 0;
				}
				var edit_h = Math.max(40, desc_height);
				var back_x = 15;
				var back_y = 55;
				var back_w = cx - back_x * 2;
				var back_h = edit_h + 15;
				var edit_x = back_x + 10;
				var edit_y = back_y + 10;
				var edit_w = back_w - 15;
				var back = CreateImage(ctrl, null, 0, back_x, back_y, back_w, back_h, "BackDesc", 0, "");
				WndSetCanRevMsg(back, null, false);
				ImageSetAroundImage(back, null, 1903700005, 1903700007, 1903700011, 1903700009, 1903700013, 1903700006, 1903700010, 1903700012, 1903700008);
				var edit = CreateRichEdit(ctrl, null, 0, edit_x, edit_y, edit_w, edit_h, "Description", 0, "");
				RichEditSetProp(edit, null, true, false, false, "system", MakeARGB(255, 192, 139, 99), desc_str);
			}
			return ctrl;
		}

		//MessageBox弹框
		function MessageBoxOkScript_(tis, param, x, y)
		{
			var func = WndGetProperty(tis, null, "ok_script");
			return func();
		}
		function MessageBoxCloseScript_(tis, param, x, y)
		{
			var func = WndGetProperty(tis, null, "close_script");
			return func();
		}
		function MessageBox(flag, info, ok_script, close_script, is_esc_close)
		{
			if(null == flag || info == null || info == "")
			{
				return;
			}
			if(0 != GetWindow(null, "MessageBox"))
			{
				WndClose(null, "MessageBox");
			}
			UI.Lua_MessageBox("MessageBox", 0, flag, info);
			var msgbox = LuaRet;
			if(null != ok_script && "" != ok_script)
			{
				WndAddProperty(msgbox, null, "ok_script", ok_script);
				WndRegistScript(msgbox, null, messageBox_closeOk, "MessageBoxOkScript_");
			}
			if(null != close_script && "" != close_script)
			{
				WndAddProperty(msgbox, null, "close_script", close_script);
				WndRegistScript(msgbox, null, RDWndBaseCL_wnd_close, "MessageBoxCloseScript_");
			}
			if(false == is_esc_close)
			{
				WndSetEscClose(msgbox, null, false);
			}
			else
			{
				WndSetEscClose(msgbox, null, true);
			}
		}
		function MessageBoxOkFunc_(tis)
		{
			var check = GetWindow(tis, "GUICheck");
			if(check != 0)
			{
				var status = CheckGetCheck(check, null);
				var func_str = WndGetProperty(tis, null, "ok_func");
				var data = WndGetProperty(tis, null, "data");
				func_str(String(status),String( data));
			}
		}
		function MessageBox2(flag, info, ok_func, text, text_color, is_esc_close, data)
		{
			if(null == flag || info == null || info == "")
			{
				return;
			}
			if(0 != GetWindow(null, "MessageBox"))
			{
				WndClose(null, "MessageBox");
			}
			UI.Lua_MessageBox("MessageBox", 0, flag, info);
			var msgbox = LuaRet;
			if(null != ok_func && "" != ok_func)
			{
				WndAddProperty(msgbox, null, "ok_func", ok_func);
				WndRegistScript(msgbox, null, messageBox_closeOk, "MessageBoxOkFunc_");
				if(data is String)
				{
					WndAddProperty(msgbox, null, "data", data);
				}
			}
			var check = GetWindow(msgbox, "GUICheck");
			if(0 != check)
			{
				var txt = "下次不再提示";
				if(text != null && text != "")
				{
					txt = text;
				}
				WndSetVisible(check, null, true);
				CheckSetText(check, null, txt);
				if(null != text_color)
				{
					WndSetTextColor(check, null, mkcolor(text_color));
				}
			}
			if(false == is_esc_close)
			{
				WndSetEscClose(msgbox, null, false);
			}
			else
			{
				WndSetEscClose(msgbox, null, true);
			}
		}

		//基于窗口创建特效
		function AddMagicToWnd(wnd_id, posx, posy, magic_id, image_id, speed, timer_elapse, timer_func)
		{
			if(!UI.Lua_GetWindow(wnd_id))
			{
				return false;
			}
			AddImage(image_id, posx, posy, 0, 0, magic_id, 0, "");
			UI.Lua_ImageSetAnimateEnable(true, speed);
			UI.Lua_WndSetCanRevMsg(false);
			if(timer_elapse != null && timer_func != null)
			{
				UI.Lua_WndAddTimer(2000, timer_elapse, timer_func);
			}
			return true;
		}

		//基于桌面创建特效
		function AddMagicToScreen(posx, posy, magic_id, image_id, speed, timer_elapse, timer_func)
		{
			return AddMagicToWnd("", posx, posy, magic_id, image_id, speed, timer_elapse, timer_func);
		}

		//移动特效到父窗口底层
		function MoveMagicToBottom(parent_id, magic_id)
		{
			if(!UI.Lua_GetWindow(parent_id))
			{
				return false;
			}
			if(!UI.Lua_FindChildM(magic_id))
			{
				return false;
			}
			UI.Lua_WndMoveToParentBottom();
			return true;
		}

		//移动特效到父窗口顶层
		function MoveMagicToTop(parent_id, magic_id)
		{
			if(!UI.Lua_GetWindow(parent_id))
			{
				return false;
			}
			if(!UI.Lua_FindChildM(magic_id))
			{
				return false;
			}
			UI.Lua_WndMoveToParentTop();
			return true;
		}

		var XMLDeclHeader = "<?xml version=\"1.0\" encoding=\"GB2312\" standalone=\"yes\" ?>";
		function CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var _LayStr = "";
			_LayStr = _LayStr + XMLDeclHeader;
			_LayStr = _LayStr + "<Property ";
			_LayStr = _LayStr + "UIType=\"" + UIType + "\" ";
			_LayStr = _LayStr + "ImageID=\"" + ImageID + "\" ";
			_LayStr = _LayStr + "PosX=\"" + PosX + "\" ";
			_LayStr = _LayStr + "PosY=\"" + PosY + "\" ";
			_LayStr = _LayStr + "SizeX=\"" + SizeX + "\" ";
			_LayStr = _LayStr + "SizeY=\"" + SizeY + "\" ";
			_LayStr = _LayStr + "UIID=\"" + UIID + "\" ";
			_LayStr = _LayStr + "AlignType=\"" + AlignType + "\" ";
			_LayStr = _LayStr + "UIHint=\"" + UIHint + "\" ";
			_LayStr = _LayStr + "/>";
			if(UI.Lua_WndCreateCtrl(UIType,_LayStr))
			{
				return LuaRet;
			}
			return 0;
		}

		//图片控件
		function AddImage(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_BACKPIC;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//按钮
		function AddButton(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_BUTTON;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//复选框
		function AddCheckBox(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint,Title)
		{
			var UIType = ENUM_UITYPE_CHECKBOX;
			var _LayStr = "";
			_LayStr = _LayStr + XMLDeclHeader;
			_LayStr = _LayStr + "<Property ";
			_LayStr = _LayStr + "UIType=\"" + UIType + "\" ";
			_LayStr = _LayStr + "ImageID=\"" + ImageID + "\" ";
			_LayStr = _LayStr + "PosX=\"" + PosX + "\" ";
			_LayStr = _LayStr + "PosY=\"" + PosY + "\" ";
			_LayStr = _LayStr + "SizeX=\"" + SizeX + "\" ";
			_LayStr = _LayStr + "SizeY=\"" + SizeY + "\" ";
			_LayStr = _LayStr + "UIID=\"" + UIID + "\" ";
			_LayStr = _LayStr + "AlignType=\"" + AlignType + "\" ";
			_LayStr = _LayStr + "UIHint=\"" + UIHint + "\" ";
			_LayStr = _LayStr + "Title=\"" + Title + "\" ";
			_LayStr = _LayStr + "/>";
			if(UI.Lua_WndCreateCtrl(UIType,_LayStr))
			{
				return LuaRet;
			}
			return 0;
		}

		//编辑框
		function AddEdit(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_EDIT;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//组合框
		function AddComboBox(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint,Length)
		{
			var UIType = ENUM_UITYPE_COMBOBOX;
			var ButtonType = "combobox";
			var _LayStr = "";
			_LayStr = _LayStr + XMLDeclHeader;
			_LayStr = _LayStr + "<Property ";
			_LayStr = _LayStr + "UIType=\"" + UIType + "\" ";
			_LayStr = _LayStr + "ImageID=\"" + ImageID + "\" ";
			_LayStr = _LayStr + "PosX=\"" + PosX + "\" ";
			_LayStr = _LayStr + "PosY=\"" + PosY + "\" ";
			_LayStr = _LayStr + "SizeX=\"" + SizeX + "\" ";
			_LayStr = _LayStr + "SizeY=\"" + SizeY + "\" ";
			_LayStr = _LayStr + "UIID=\"" + UIID + "\" ";
			_LayStr = _LayStr + "AlignType=\"" + AlignType + "\" ";
			_LayStr = _LayStr + "UIHint=\"" + UIHint + "\" ";
			_LayStr = _LayStr + "Length=\"" + Length + "\" ";
			_LayStr = _LayStr + "ButtonType=\"" + ButtonType + "\" ";
			_LayStr = _LayStr + "/>";
			if(UI.Lua_WndCreateCtrl(UIType,_LayStr))
			{
				return LuaRet;
			}
			return 0;
		}

		//列表框
		function AddListBox(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_LIST;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//单选框
		function AddRadio(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_RADIO;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//静态文本
		function AddStatic(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_STATIC;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//水平滚动条
		function AddHScrollBar(ImageID,PosX,PosY,SizeX,SizeY,Length,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_HSCROLLBAR;
			var _LayStr = "";
			_LayStr = _LayStr + XMLDeclHeader;
			_LayStr = _LayStr + "<Property ";
			_LayStr = _LayStr + "UIType=\"" + UIType + "\" ";
			_LayStr = _LayStr + "ImageID=\"" + ImageID + "\" ";
			_LayStr = _LayStr + "ImageUp=\"" + ImageUp + "\" ";
			_LayStr = _LayStr + "ImageDown=\"" + ImageDown + "\" ";
			_LayStr = _LayStr + "ImageThumb=\"" + ImageThumb + "\" ";
			_LayStr = _LayStr + "PosX=\"" + PosX + "\" ";
			_LayStr = _LayStr + "PosY=\"" + PosY + "\" ";
			_LayStr = _LayStr + "Length=\"" + Length + "\" ";
			_LayStr = _LayStr + "UIID=\"" + UIID + "\" ";
			_LayStr = _LayStr + "AlignType=\"" + AlignType + "\" ";
			_LayStr = _LayStr + "UIHint=\"" + UIHint + "\" ";
			_LayStr = _LayStr + "/>";
			if(UI.Lua_WndCreateCtrl(UIType,_LayStr))
			{
				return LuaRet;
			}
			return 0;
		}

		//垂直滚动条
		function AddVScrollBar(ImageID,PosX,PosY,SizeX,SizeY,Length,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_VSCROLLBAR;
			var _LayStr = "";
			_LayStr = _LayStr + XMLDeclHeader;
			_LayStr = _LayStr + "<Property ";
			_LayStr = _LayStr + "UIType=\"" + UIType + "\" ";
			_LayStr = _LayStr + "ImageID=\"" + ImageID + "\" ";
			_LayStr = _LayStr + "ImageUp=\"" + ImageUp + "\" ";
			_LayStr = _LayStr + "ImageDown=\"" + ImageDown + "\" ";
			_LayStr = _LayStr + "ImageThumb=\"" + ImageThumb + "\" ";
			_LayStr = _LayStr + "PosX=\"" + PosX + "\" ";
			_LayStr = _LayStr + "PosY=\"" + PosY + "\" ";
			_LayStr = _LayStr + "Length=\"" + Length + "\" ";
			_LayStr = _LayStr + "UIID=\"" + UIID + "\" ";
			_LayStr = _LayStr + "AlignType=\"" + AlignType + "\" ";
			_LayStr = _LayStr + "UIHint=\"" + UIHint + "\" ";
			_LayStr = _LayStr + "/>";
			if(UI.Lua_WndCreateCtrl(UIType,_LayStr))
			{
				return LuaRet;
			}
			return 0;
		}

		//树状控件
		function AddTreeCtrl(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_TREECONTROL;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//RichEdit控件
		function AddRichEdit(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_RICHEIDT;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//物品控件
		function AddItemCtrl(ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint)
		{
			var UIType = ENUM_UITYPE_ITEMCTRL;
			return CreateSimpleCtrl(UIType,ImageID,PosX,PosY,SizeX,SizeY,UIID,AlignType,UIHint);
		}

		//物品控件系统辅助函数
		var SysItemWindowIDAlloc = 100000;
		function Sys_GetUniqueItemWindowID()
		{
			SysItemWindowIDAlloc = SysItemWindowIDAlloc - 1;
			return SysItemWindowIDAlloc;
		}
		var SysItemWindowList = {};
		//[[{ [id] = { t = { {this, func} }, tocken = * } }]]
		//func 原型： function func(this, GUIData, DragIn, GUID, ItemId, KeyName, ItemPos, IsBound, Count)
		function Sys_PushBackItemWindow(thi, func)
		{
			if(func == "")
			{
				return;
			}
			var parent = WndGetParent(tis, null);
			if(parent == 0)
			{
				return;
			}
			var id = null;
			for(var k in SysItemWindowList)
			{
				if(SysItemWindowList[k].tocken == parent)
				{
					id = k;
					break;
				}
			}
			if(null == id)
			{
				id = Sys_GetUniqueItemWindowID();
				var t = {};
				t.t = [[tis, func]];
				t.tocken = parent;
				SysItemWindowList[id] = t;
				WndOpenItemWindow(parent, null, id, "Sys_GetItemWindowGUIDList");
				WndRegistScript(parent, null, RDWndBaseCL_wnd_destroy, "Sys_ItemWindowDestroy");
				WndRegistScript(parent, null, RDWndBaseCL_wnd_active, "Sys_ItemWindowActive");
				RegisterUIEvent(LUA_EVENT_ITEMWNDMOVEITEMIN, "Sys_ItemWindowMoveIn", Sys_ItemWindowMoveIn);
				WndActiveItemWindow(parent, null, id);
			}
			else
			{
				var t = SysItemWindowList[id].t;
				t.push([tis, func]);
			}
			WndAddProperty(tis, null, "SysItemWindowID", id);
			var ItemId = RDItemCtrlGetGUIDataPropByType(tis, null, ITEMGUIDATA_ITEMID);
			if(ItemId != 0)
			{
				var Count = RDItemCtrlGetGUIDataPropByType(tis, null, ITEMGUIDATA_ITEMCOUNT);
				var IsBound = RDItemCtrlGetGUIDataPropByType(tis, null, ITEMGUIDATA_ISSHOWBIND);
				WndAddProperty(tis, null, "Init_ItemId", ItemId);
				WndAddProperty(tis, null, "Init_Count", Count);
				WndAddProperty(tis, null, "Init_IsBound", IsBound);
				WndAddProperty(tis, null, "SysItemInitScript", RDItemCtrlSetGUIDataPropByItemID);
			}
			WndRegistScript(tis, null, RDWndBaseCL_mouse_lbDown, "Sys_ItemCtrlLButtonDown");
		}
		function Sys_GetItemWindowGUIDList(id)
		{
			var ret = [];
			if(SysItemWindowList[id] != null)
			{
				var t = SysItemWindowList[id].t;
				for each(var v in t)
				{
					var guid = RDItemCtrlGetGUIDataPropByType(v[0], null, ITEMGUIDATA_ITEMGUID);
					if(0 != guid)
					{
						ret = [guid];
					}
				}
			}
			return ret;
		}
		function Sys_ItemWindowDestroy(tis)
		{
			for(var k in SysItemWindowList)
			{
				if(tis == SysItemWindowList[k].tocken)
				{
					SysItemWindowList[k] = null;
					WndCloseItemWindow(tis, null, k);
					break;
				}
			}
		}
		function Sys_ItemWindowActive(tis, active)
		{
			if(active == 0)
			{
				return;
			}
			for(var k in SysItemWindowList)
			{
				if(tis == SysItemWindowList[k].tocken)
				{
					WndActiveItemWindow(handle, null, k);
					break;
				}
			}
		}
		function Sys_ItemWindowMoveIn()
		{
			var id = int(LuaParam[1]);
			var GUIData = LuaParam[2];
			if(SysItemWindowList[id] == null)
			{
				return;
			}
			var t = SysItemWindowList[id].t;
			if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMGUID))
			{
				return;
			}
			var GUID = LuaRet;
			if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMID))
			{
				return;
			}
			var ItemId = LuaRet;
			if(!UI.Lua_GetItemTemplatePropByID(ItemId, ITEM_PROP_KEYNAME))
			{
				return;
			}
			var KeyName = LuaRet;
			var ItemPos = null;
			if(GUID != 0 && GUID != "")
			{
				if(!UI.Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_SITE))
				{
					return;
				}
				ItemPos = LuaRet;
			}
			if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ISSHOWBIND))
			{
				return;
			}
			var IsBound = LuaRet;
			if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMCOUNT))
			{
				return;
			}
			var Count = LuaRet;
			
			for each(var v in t)
			{
				if(v[1] != null && v[1] != "" && WndGetVisible(v[0], null))
				{
					if(CallFunction(v[1],v[0], GUIData, false, GUID, ItemId, KeyName, ItemPos, IsBound, Count))
					{
						RDItemCtrlFillGUIData(v[0], null, GUIData);
						break;
					}
				}
			}
		}
		function Sys_ItemCtrlLButtonDown(tis)
		{
			var id = WndGetProperty(tis, null, "SysItemWindowID");
			if(id == "")
			{
				return;
			}
			id = int(id);
			if(SysItemWindowList[id] == null)
			{
				return;
			}
			var t = SysItemWindowList[id].t;
			var guid = RDItemCtrlGetGUIDataPropByType(tis, null, ITEMGUIDATA_ITEMGUID);
			if(UI.Lua_GetMouseGUIItemData())
			{
				var GUIData = LuaRet;
				for each(var v in t)
				{
					if(tis == v[0])
					{
						if(v[1] != null && v[1] != "")
						{
							if(null != v[1])
							{
								if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMGUID))
								{
									return;
								}
								var GUID = LuaRet;
								if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMID))
								{
									return;
								}
								var ItemId = LuaRet;
								if(!UI.Lua_GetItemTemplatePropByID(ItemId, ITEM_PROP_KEYNAME))
								{
									return;
								}
								var KeyName = LuaRet;
								var ItemPos = null
								if(GUID != 0 && GUID != "")
								{
									if(!UI.Lua_GetItemEntityPropByGUID(GUID, ITEM_PROP_ENTITY_SITE))
									{
										return;
									}
									ItemPos = LuaRet;
								}
								if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ISSHOWBIND))
								{
									return;
								}
								var IsBound = LuaRet;
								if(!UI.Lua_GetItemGUIDataPropByType(GUIData, ITEMGUIDATA_ITEMCOUNT))
								{
									return;
								}
								var Count = LuaRet;
								if(CallFunction(v[1],tis, GUIData, true, GUID, ItemId, KeyName, ItemPos, IsBound, Count))
								{
									RDItemCtrlFillGUIData(tis, null, GUIData);
									UI.Lua_ClearMouseGUIItemData();
									break;
								}
							}
						}
					break;
					}
				}
			}
			else
			{
				var ItemInitScript = WndGetProperty(tis, null, "SysItemInitScript");
				if(ItemInitScript == "")
				{
					RDItemCtrlClearGUIData(tis, null);
				}
				else
				{
					if(null != ItemInitScript)
					{
						var Init_ItemId = WndGetProperty(tis, null, "Init_ItemId");
						var Init_Count = WndGetProperty(tis, null, "Init_Count");
						var Init_IsBound = WndGetProperty(tis, null, "Init_IsBound");
						ItemInitScript(tis,null,Init_ItemId,Init_Count,Init_IsBound);
					}
				}
			}
		}
		function Sys_ItemWindowGetAllItemGUIDList()
		{
			var ret = [];
			for each(var v in SysItemWindowList)
			{
				if(t.t != null)
				{
					for each(var v in t.t)
					{
						var guid = RDItemCtrlGetGUIDataPropByType(v[0], null, ITEMGUIDATA_ITEMGUID);
						if(guid != "0")
						{
							ret = [guid, v[0]];
						}
					}
				}
			}
			return ret;
		}

		function Sys_ItemWindowOnItemAttrChange()
		{
			var list = Sys_ItemWindowGetAllItemGUIDList();
			var guid = LuaParam[1];
			for each(var v in list)
			{
				if(guid == v[0])
				{
					RDItemCtrlSetGUIDataPropByGUID(v[1], null, v[0]);
				}
			}
		}

		function Sys_ItemWindowOnItemDestory()
		{
			var list = Sys_ItemWindowGetAllItemGUIDList();
			var guid = LuaParam[1];
			for each(var v in list)
			{
				if(guid == v[0])
				{
					var tis = v[1];
					var ItemInitScript = WndGetProperty(tis, null, "SysItemInitScript");
					if(ItemInitScript == "")
					{
						RDItemCtrlClearGUIData(tis, null);
					}
					else
					{
						if(null != ItemInitScript)
						{
							var Init_ItemId = WndGetProperty(tis, null, "Init_ItemId");
							var Init_Count = WndGetProperty(tis, null, "Init_Count");
							var Init_IsBound = WndGetProperty(tis, null, "Init_IsBound");
							ItemInitScript(tis,null,Init_ItemId,Init_Count,Init_IsBound);
						}
					}
				}
			}
		}
	}
}