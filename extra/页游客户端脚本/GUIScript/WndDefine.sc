package script
{
	public class WndDefine
	{
		//UI控件的类型
		var ENUM_UITYPE_CLASS				=0;
		var ENUM_UITYPE_SELPOINT			=0;
		var ENUM_UITYPE_BACKPIC				=0;
		var ENUM_UITYPE_BUTTON				=0;
		var ENUM_UITYPE_CHECKBOX			=0;
		var ENUM_UITYPE_EDIT				=0;
		var ENUM_UITYPE_COMBOBOX			=0;
		var ENUM_UITYPE_LIST				=0;
		var ENUM_UITYPE_RADIO				=0;
		var ENUM_UITYPE_STATIC				=0;
		var ENUM_UITYPE_HSCROLLBAR			=0;
		var ENUM_UITYPE_VSCROLLBAR			=0;
		var ENUM_UITYPE_TREECONTROL			=0;
		var ENUM_UITYPE_RICHEIDT			=0;
		var ENUM_UITYPE_ITEMCTRL			=0;
		var ENUM_UITYPE_COUNT				=0;

		var RDWndBaseCL_mouse_lbDown				=0;
		var RDWndBaseCL_mouse_lbUp					=0;
		var RDWndBaseCL_mouse_lbClick				=0;
		var RDWndBaseCL_mouse_lbDbClick				=0;
		var RDWndBaseCL_mouse_rbDown				=0;
		var RDWndBaseCL_mouse_rbUp					=0;
		var RDWndBaseCL_mouse_rbClick				=0;
		var RDWndBaseCL_mouse_rbDbClick				=0;
		var RDWndBaseCL_mouse_move					=0;
		var RDWndBaseCL_mouse_wheel					=0;
		var RDWndBaseCL_mouse_in					=0;
		var RDWndBaseCL_mouse_out					=0;
		var RDWndBaseCL_wnd_visible					=0;
		var RDWndBaseCL_wnd_show					=0;
		var RDWndBaseCL_wnd_enable					=0;
		var RDWndBaseCL_wnd_active					=0;
		var RDWndBaseCL_wnd_move					=0;
		var RDWndBaseCL_key_char					=0;
		var RDWndBaseCL_key_down					=0;
		var RDWndBaseCL_key_up						=0;
		var RDWndBaseCL_wnd_sizeChange				=0;
		var RDWndBaseCL_wnd_close					=0;
		var RDWndBaseCL_wnd_destroy					=0;
		var RDWnd2DBaseCL_wndtips_initilize			=0;
		var RDWnd2DCheckCL_check_change				=0;
		var RDWnd2DComboBoxCL_str_change			=0;
		var RDWnd2DDialogCL_dlgFunc_close			=0;
		var RDWnd2DDialogCL_dlgFunc_min				=0;
		var RDWnd2DDialogCL_dlgFunc_cancel			=0;
		var RDWnd2DDialogCL_dlgFunc_ok				=0;
		var RDWnd2DEditCL_key_enter					=0;
		var RDWnd2DEditCL_str_change				=0;
		var RDWnd2DEditCL_EDIT_LBTNDOWN				=0;
		var RDWnd2DEditCL_Mouse_In					=0;
		var RDWnd2DEditCL_Mouse_Out					=0;
		var RDWnd2DEditCL_key_downkey				=0;
		var RDWnd2DEditCL_key_upkey					=0;
		var RDWnd2DItemCtrl_mouse_DbClick			=0;
		var RDWnd2DItemCtrl_ItemIn					=0;
		var RDWnd2DItemCtrl_ItemOut					=0;
		var RDWnd2DListBoxCL_select_change			=0;
		var RDWnd2DListBoxCL_pos_change				=0;
		var RDWnd2DPopupMenuCL_click				=0;
		var RDWnd2DRadioCL_select_change			=0;
		var RDWnd2DRichEditCL_key_enter				=0;
		var RDWnd2DRichEditCL_str_change			=0;
		var RDWnd2DRichEditCL_pos_change			=0;
		var RDWnd2DScrollBarVCL_scroll_change		=0;
		var RDWnd2DTreeCtrlCL_click_item			=0;
		var RDWnd2DTreeCtrlCL_top_change			=0;
		var messageBox_closeOk						=0;
		var messageBox_closeCancel					=0;

		//Wnd控件的标记
		var flg_dlgSysBtn_func           					= 0;
		var flg_dlgSysBtn_min            					= 0;
		var flg_dlgSysBtn_close          					= 0;
		var flg_dlgProperty_changeSize   					= 0;
		var flg_dlgProperty_noBar        					= 0;
		var flg_wndBase_useSelfFont      					= 0;
		var flg_wndBase_useBkBuffer      					= 0;
		var flg_wndBase_fullInParent     					= 0;
		var flg_wndBase_autoTop          					= 0;
		//Edit控件的标记
		var flg_dlgEdit_textInMid        					= 0;
		var flg_dlgEdit_noBackground     					= 0;
		var flg_dlgEdit_textInCenter     					= 0;
		//Combo控件的标记
		var flg_comboBox_isCanChangeText 					= 0;
		//RichEdit控件的标记
		var richEdit_flg_noBack          					= 0;
		var richEdit_flg_textInCenter    					= 0;
		
		//物品窗口(类型ID)定义
		var ITEMWINDOW_NULL							=0;      
		var ITEMWINDOW_WAREHOUSE					=0;      //仓库
		var ITEMWINDOW_ADVWAREHOUSE					=0;      //高级仓库
		var ITEMWINDOW_FIXSELL						=0;      //出售框
		var ITEMWINDOW_SELFSTALL					=0;      //自身摆摊
		var ITEMWINDOW_TRADE						=0;      //交易
		var ITEMWINDOW_PACK							=0;      //背包
		var ITEMWINDOW_EHANCE						=0;      //精炼
		var ITEMWINDOW_IDENTIFY						=0;      //封印
		var ITEMWINDOW_ENHANCETRANSFER				=0;      //精炼转移
		var ITEMWINDOW_HORSEIDENTIFY				=0;      //马鉴定
		var ITEMWINDOW_HORSERESTORE					=0;      //马归元
		var ITEMWINDOW_ENHANCECHANGE				=0;    //精炼改变
		var ITEMWINDOW_DELEGATESELL					=0;     //寄售

		// ITEMWINDOW_LUA_MIN之后的含物品格窗口类型由脚本定义
		var ITEMWINDOW_MAX = 0;
		var ITEMWINDOW_LUA_MIN = 0;

		var ITEMWINDOW_FUMOXISHOU           		=0;      //附魔石吸收
		var ITEMWINDOW_ZHUANGBEIFUMO        		=0;      //装备附魔
		var ITEMWINDOW_ZHUANGBEIHECHENG    			=0;      //装备合成
		var ITEMWINDOW_DAOJUHECHENG         		=0;      //道具合成
		var ITEMWINDOW_JIAOYIPINGTAI        		=0;      //交易平台
		var ITEMWINDOW_RONGYAODUIHUAN      			=0;      //荣耀兑换

		var ITEMWINDOW_NULL_LUA							=0;      //
		var ITEMWINDOW_WAREHOUSE_LUA					=0;      //仓库
		var ITEMWINDOW_ADVWAREHOUSE_LUA					=0;      //高级仓库
		var ITEMWINDOW_FIXSELL_LUA						=0;      //出售框
		var ITEMWINDOW_SELFSTALL_LUA					=0;      //自身摆摊
		var ITEMWINDOW_TRADE_LUA						=0;      //交易
		var ITEMWINDOW_PACK_LUA							=0;      //背包
		var ITEMWINDOW_EHANCE_LUA						=0;     //精炼
		var ITEMWINDOW_IDENTIFY_LUA						=0;      //封印
		var ITEMWINDOW_ENHANCETRANSFER_LUA				=0;      //精炼转移
		var ITEMWINDOW_HORSEIDENTIFY_LUA				=0;      //马鉴定
		var ITEMWINDOW_HORSERESTORE_LUA					=0;      //马归元
		var ITEMWINDOW_ENHANCECHANGE_LUA				=0;      //精炼改变
		var ITEMWINDOW_DELEGATESELL_LUA					=0;     //寄售

		// Hot Key 定义
		var KEY_TRIGER_KEYUP          = 0;
		var KEY_TRIGER_KEYDOWN        = 0;
		var KEY_TRIGER_REPEAT         = 0;
		var KEY_TRIGER_KEYDOWN_REPEAT = 0;
		var KEY_TRIGER_KEYBOTH_UPDOWN = 0;
		 
		 
		// MessageBoxCL 定义
		var MESSAGE_STYLE_OK			= 0;
		var MESSAGE_STYLE_OKCANCEL		= 0;
		var MESSAGE_STYLE_NULL			= 0;
		 
		 
		//用浏览器打开URL链接的类型
		var OPENURL_TYPE_NONE				= 0;
		var OPENURL_TYPE_REGISTER			= 0;
		var OPENURL_TYPE_CHGEPSWD			= 0;
		var OPENURL_TYPE_ADDYUANBAO			= 0;
		 
		 
		//声音类型定义

		var SOUNDEFFECTTYPE_NONE		=0;						//非法的类型
		var SOUNDEFFECTTYPE_2D_BGM		=0;						//2D背景音乐,例:地图或者区域背景音乐
		var SOUNDEFFECTTYPE_3D_ESE		=0;						//3D环境音效,例:地图中湖泊点音源
		var SOUNDEFFECTTYPE_3D_SSE		=0;						//3D技能音效,例:技能音效,击打、被击打
		var SOUNDEFFECTTYPE_3D_TSE		=0;						//3D地质音效,例:不同地质上走路音效
		var SOUNDEFFECTTYPE_2D_WND		=0;						//2D界面音效,例:点击按钮,打开关闭窗口
		var SOUNDEFFECTTYPE_2D_EVT		=0;						//2D事件音效,例:取得任务、升级、获得奖励
		var SOUNDEFFECTTYPE_2D_NPC		=0;						//2D语音音效,例:NPC人声
		 

		var ITEMGUIDATA_ITEMGUID			=0;
		var ITEMGUIDATA_IMAGEID				=0;
		var ITEMGUIDATA_TYPE				=0;
		var ITEMGUIDATA_ITEMID				=0;
		var ITEMGUIDATA_PARAM				=0;
		var ITEMGUIDATA_ITEMCOUNT			=0;
		var ITEMGUIDATA_INVALIDATE			=0;
		var ITEMGUIDATA_ISSTACKITEM			=0;
		var ITEMGUIDATA_ITEMPOS				=0;
		var ITEMGUIDATA_CDTIME				=0;
		var ITEMGUIDATA_CDSTARTTICK			=0;
		var ITEMGUIDATA_INCDSTATE			=0;
		var ITEMGUIDATA_ITEMLOCK			=0;
		var ITEMGUIDATA_ITEMPRICETYPE		=0;
		var ITEMGUIDATA_ITEMPRICE			=0;
		var ITEMGUIDATA_ISSHOWBIND			=0;



		var UIMessageTable;

		var LuaUIEvent = {};

		public function WndDefine()
		{
			var i = -1;
			//UI控件的类型
			ENUM_UITYPE_CLASS			=i;i=i+1;
			ENUM_UITYPE_SELPOINT		=i;i=i+1;
			ENUM_UITYPE_BACKPIC			=i;i=i+1;
			ENUM_UITYPE_BUTTON			=i;i=i+1;
			ENUM_UITYPE_CHECKBOX		=i;i=i+1;
			ENUM_UITYPE_EDIT			=i;i=i+1;
			ENUM_UITYPE_COMBOBOX		=i;i=i+1;
			ENUM_UITYPE_LIST			=i;i=i+1;
			ENUM_UITYPE_RADIO			=i;i=i+1;
			ENUM_UITYPE_STATIC			=i;i=i+1;
			ENUM_UITYPE_HSCROLLBAR		=i;i=i+1;
			ENUM_UITYPE_VSCROLLBAR		=i;i=i+1;
			ENUM_UITYPE_TREECONTROL		=i;i=i+1;
			ENUM_UITYPE_RICHEIDT		=i;i=i+1;
			ENUM_UITYPE_ITEMCTRL		=i;i=i+1;
			ENUM_UITYPE_COUNT			=i;i=i+1;

			
			i = 1001;
			RDWndBaseCL_mouse_lbDown    	=i;	LuaUIEvent[i] ="OnLButtonDown"		;i=i+1;
			RDWndBaseCL_mouse_lbUp			=i;	LuaUIEvent[i] ="OnLButtonUp"		;i=i+1;
			RDWndBaseCL_mouse_lbClick		=i;	LuaUIEvent[i] ="OnLButtonClick"		;i=i+1;
			RDWndBaseCL_mouse_lbDbClick		=i;	LuaUIEvent[i] ="OnLButtonDbClick"	;i=i+1;
			RDWndBaseCL_mouse_rbDown		=i;	LuaUIEvent[i] ="OnRButtonDown"		;i=i+1;
			RDWndBaseCL_mouse_rbUp			=i;	LuaUIEvent[i] ="OnRButtonUp"		;i=i+1;
			RDWndBaseCL_mouse_rbClick		=i;	LuaUIEvent[i] ="OnRButtonClick"		;i=i+1;
			RDWndBaseCL_mouse_rbDbClick		=i;	LuaUIEvent[i] ="OnRButtonDbClick"	;i=i+1;
			RDWndBaseCL_mouse_move			=i;	LuaUIEvent[i] ="OnMouseMove"		;i=i+1;
			RDWndBaseCL_mouse_wheel			=i;	LuaUIEvent[i] ="OnMouseWheel"		;i=i+1;
			RDWndBaseCL_mouse_in			=i;	LuaUIEvent[i] ="OnMouseIn"			;i=i+1;
			RDWndBaseCL_mouse_out			=i;	LuaUIEvent[i] ="OnMouseOut"			;i=i+1;
			RDWndBaseCL_wnd_visible			=i;	LuaUIEvent[i] ="OnVisible"			;i=i+1;
			RDWndBaseCL_wnd_show			=i;	LuaUIEvent[i] ="OnShow"				;i=i+1;
			RDWndBaseCL_wnd_enable			=i;	LuaUIEvent[i] ="OnEnable"			;i=i+1;
			RDWndBaseCL_wnd_active			=i;	LuaUIEvent[i] ="OnActive"			;i=i+1;
			RDWndBaseCL_wnd_move			=i;	LuaUIEvent[i] ="OnMove"				;i=i+1;
			RDWndBaseCL_key_char			=i;	LuaUIEvent[i] ="OnChar"				;i=i+1;
			RDWndBaseCL_key_down			=i;	LuaUIEvent[i] ="OnKeyDown"			;i=i+1;
			RDWndBaseCL_key_up				=i;	LuaUIEvent[i] ="OnKeyUp"			;i=i+1;
			RDWndBaseCL_wnd_sizeChange		=i;	LuaUIEvent[i] ="OnSizeChange"		;i=i+1;
			RDWndBaseCL_wnd_close			=i;	LuaUIEvent[i] ="OnClose"			;i=i+1;
			RDWndBaseCL_wnd_destroy     	=i;	LuaUIEvent[i] ="OnDestroy"			;i=i+1;
			i = 1100;
			RDWnd2DBaseCL_wndtips_initilize =i;  LuaUIEvent[i] ="OnTipsInit"		;i=i+1;
			i = 1200;
			RDWnd2DCheckCL_check_change     =i;  LuaUIEvent[i] ="OnCheckChange"		;i=i+1;
			i = 1300;
			RDWnd2DComboBoxCL_str_change    =i;  LuaUIEvent[i] ="OnComboStrChange"  ;i=i+1;
			i = 1400;
			RDWnd2DDialogCL_dlgFunc_close   =i;  LuaUIEvent[i] ="OnDialogCLose"     ;i=i+1;
			RDWnd2DDialogCL_dlgFunc_min     =i;  LuaUIEvent[i] ="OnDialogMin"       ;i=i+1;
			RDWnd2DDialogCL_dlgFunc_cancel  =i;  LuaUIEvent[i] ="OnDialogCancel"    ;i=i+1;
			RDWnd2DDialogCL_dlgFunc_ok      =i;  LuaUIEvent[i] ="OnDialogOk"        ;i=i+1;
			i = 1500;
			RDWnd2DEditCL_key_enter         =i;  LuaUIEvent[i] ="OnEditKeyEnter"    ;i=i+1;
			RDWnd2DEditCL_str_change        =i;  LuaUIEvent[i] ="OnEditStrChange"   ;i=i+1;
			RDWnd2DEditCL_EDIT_LBTNDOWN     =i;  LuaUIEvent[i] ="OnEditLBtnDown"    ;i=i+1;
			RDWnd2DEditCL_Mouse_In          =i;  LuaUIEvent[i] ="OnEditMouseIn"     ;i=i+1;
			RDWnd2DEditCL_Mouse_Out         =i;  LuaUIEvent[i] ="OnEditMouseOut"    ;i=i+1;
			RDWnd2DEditCL_key_downkey       =i;  LuaUIEvent[i] ="OnEditKeyDown"     ;i=i+1;
			RDWnd2DEditCL_key_upkey         =i;  LuaUIEvent[i] ="OnEditKeyUp"       ;i=i+1;
			i = 1600;
			RDWnd2DItemCtrl_mouse_DbClick   =i;  LuaUIEvent[i] ="OnItemCtrlDbClick" ;i=i+1;
			RDWnd2DItemCtrl_ItemIn   =i;  LuaUIEvent[i] ="OnItemMoveIn" ;i=i+1;
			RDWnd2DItemCtrl_ItemOut   =i;  LuaUIEvent[i] ="OnItemMoveOut" ;i=i+1;
			i = 1700;
			RDWnd2DListBoxCL_select_change  =i;  LuaUIEvent[i] ="OnListSelChange"   ;i=i+1;
			RDWnd2DListBoxCL_pos_change     =i;  LuaUIEvent[i] ="OnListPosChange"   ;i=i+1;
			i = 1800;
			RDWnd2DPopupMenuCL_click        =i;  LuaUIEvent[i] ="OnMenuClick"	    ;i=i+1;
			i = 1900;
			RDWnd2DRadioCL_select_change    =i;  LuaUIEvent[i] ="OnRadioSelChange"  ;i=i+1;
			i = 2000;
			RDWnd2DRichEditCL_key_enter     =i;  LuaUIEvent[i] ="OnRichEditKeyEnter"   ;i=i+1;
			RDWnd2DRichEditCL_str_change    =i;  LuaUIEvent[i] ="OnRichEditStrChange"  ;i=i+1;
			RDWnd2DRichEditCL_pos_change    =i;  LuaUIEvent[i] ="OnRichEditPosChange"  ;i=i+1;
			i = 2100;
			RDWnd2DScrollBarVCL_scroll_change = i;  LuaUIEvent[i] ="OnScrollChange"    ;i=i+1;
			i = 2200;
			RDWnd2DTreeCtrlCL_click_item    =i;  LuaUIEvent[i] ="OnTreeClickItem"      ;i=i+1;
			RDWnd2DTreeCtrlCL_top_change    =i;  LuaUIEvent[i] ="OnTreeTopChange"      ;i=i+1;
			i = 4001;
			messageBox_closeOk              =i;  LuaUIEvent[i] ="OnMessageBoxOk"       ;i=i+1;
			messageBox_closeCancel          =i;  LuaUIEvent[i] ="OnMessageBoxCancel"   ;i=i+1;

			//Wnd控件的标记
			flg_dlgSysBtn_func           = 0x00000001;
			flg_dlgSysBtn_min            = 0x00000002;
			flg_dlgSysBtn_close          = 0x00000004;
			flg_dlgProperty_changeSize   = 0x00000008;
			flg_dlgProperty_noBar        = 0x00000010;
			flg_wndBase_useSelfFont      = 0x00000020;
			flg_wndBase_useBkBuffer      = 0x00000040;
			flg_wndBase_fullInParent     = 0x00000080;
			flg_wndBase_autoTop          = 0x00000100;
			//Edit控件的标记
			flg_dlgEdit_textInMid        = 0x00100000;
			flg_dlgEdit_noBackground     = 0x00200000;
			flg_dlgEdit_textInCenter     = 0x00400000;
			//Combo控件的标记
			flg_comboBox_isCanChangeText = 0x00100000;
			//RichEdit控件的标记
			richEdit_flg_noBack          = 0x00100000;
			richEdit_flg_textInCenter    = 0x00200000;


			//物品窗口(类型ID)定义
			i = 0;
			ITEMWINDOW_NULL					=i;i=i+1;
			ITEMWINDOW_WAREHOUSE			=i;i=i+1;		//仓库
			ITEMWINDOW_ADVWAREHOUSE			=i;i=i+1;//高级仓库
			ITEMWINDOW_FIXSELL				=i;i=i+1;//出售框
			ITEMWINDOW_SELFSTALL			=i;i=i+1;//自身摆摊
			ITEMWINDOW_TRADE				=i;i=i+1;//交易
			ITEMWINDOW_PACK					=i;i=i+1;//背包
			ITEMWINDOW_EHANCE				=i;i=i+1;//精炼
			ITEMWINDOW_IDENTIFY				=i;i=i+1;//封印
			ITEMWINDOW_ENHANCETRANSFER		=i;i=i+1;//精炼转移
			ITEMWINDOW_HORSEIDENTIFY		=i;i=i+1;//马鉴定
			ITEMWINDOW_HORSERESTORE			=i;i=i+1;//马归元
			ITEMWINDOW_ENHANCECHANGE		=i;i=i+1;//精炼改变
			ITEMWINDOW_DELEGATESELL			=i;i=i+1;//寄售

			// ITEMWINDOW_LUA_MIN 之后的含物品格窗口类型由脚本定义
			ITEMWINDOW_MAX = 100;
			ITEMWINDOW_LUA_MIN = 100;
			i = 101;
			ITEMWINDOW_FUMOXISHOU           =i;i=i+1;//附魔石吸收
			ITEMWINDOW_ZHUANGBEIFUMO        =i;i=i+1;//装备附魔
			ITEMWINDOW_ZHUANGBEIHECHENG     =i;i=i+1;//装备合成
			ITEMWINDOW_DAOJUHECHENG         =i;i=i+1;//道具合成
			ITEMWINDOW_JIAOYIPINGTAI        =i;i=i+1;//交易平台
			ITEMWINDOW_RONGYAODUIHUAN       =i;i=i+1;//荣耀兑换

			i = 201;
			ITEMWINDOW_NULL_LUA					=i;i=i+1;
			ITEMWINDOW_WAREHOUSE_LUA			=i;i=i+1;//仓库
			ITEMWINDOW_ADVWAREHOUSE_LUA			=i;i=i+1;//高级仓库
			ITEMWINDOW_FIXSELL_LUA				=i;i=i+1;//出售框
			ITEMWINDOW_SELFSTALL_LUA			=i;i=i+1;//自身摆摊
			ITEMWINDOW_TRADE_LUA				=i;i=i+1;//交易
			ITEMWINDOW_PACK_LUA					=i;i=i+1;//背包
			ITEMWINDOW_EHANCE_LUA				=i;i=i+1;//精炼
			ITEMWINDOW_IDENTIFY_LUA				=i;i=i+1;//封印
			ITEMWINDOW_ENHANCETRANSFER_LUA		=i;i=i+1;//精炼转移
			ITEMWINDOW_HORSEIDENTIFY_LUA		=i;i=i+1;//马鉴定
			ITEMWINDOW_HORSERESTORE_LUA			=i;i=i+1;//马归元
			ITEMWINDOW_ENHANCECHANGE_LUA		=i;i=i+1;//精炼改变
			ITEMWINDOW_DELEGATESELL_LUA			=i;i=i+1;//寄售





			// Hot Key 定义//////-
			KEY_TRIGER_KEYUP          = 1;
			KEY_TRIGER_KEYDOWN        = 2;
			KEY_TRIGER_REPEAT         = 4;
			KEY_TRIGER_KEYDOWN_REPEAT = 6;
			KEY_TRIGER_KEYBOTH_UPDOWN = 3;


			// MessageBoxCL 定义//////-
			MESSAGE_STYLE_OK       = 0;
			MESSAGE_STYLE_OKCANCEL = 1;
			MESSAGE_STYLE_NULL     = 2;


			//用浏览器打开URL链接的类型
			OPENURL_TYPE_NONE 		= 0;
			OPENURL_TYPE_REGISTER 	= 1;
			OPENURL_TYPE_CHGEPSWD	= 2;
			OPENURL_TYPE_ADDYUANBAO	= 3;


			//声音类型定义
			i = 0;
			SOUNDEFFECTTYPE_NONE             =i;i=i+1;//非法的类型
			SOUNDEFFECTTYPE_2D_BGM           =i;i=i+1;//2D背景音乐,例:地图或者区域背景音乐
			SOUNDEFFECTTYPE_3D_ESE           =i;i=i+1;//3D环境音效,例:地图中湖泊点音源
			SOUNDEFFECTTYPE_3D_SSE           =i;i=i+1;//3D技能音效,例:技能音效,击打、被击打
			SOUNDEFFECTTYPE_3D_TSE           =i;i=i+1;//3D地质音效,例:不同地质上走路音效
			SOUNDEFFECTTYPE_2D_WND           =i;i=i+1;//2D界面音效,例:点击按钮,打开关闭窗口
			SOUNDEFFECTTYPE_2D_EVT           =i;i=i+1;//2D事件音效,例:取得任务、升级、获得奖励
			SOUNDEFFECTTYPE_2D_NPC           =i;i=i+1;//2D语音音效,例:NPC人声


			i = 0;
			ITEMGUIDATA_ITEMGUID			=i;i=i+1;
			ITEMGUIDATA_IMAGEID				=i;i=i+1;
			ITEMGUIDATA_TYPE				=i;i=i+1;
			ITEMGUIDATA_ITEMID				=i;i=i+1;
			ITEMGUIDATA_PARAM				=i;i=i+1;
			ITEMGUIDATA_ITEMCOUNT			=i;i=i+1;
			ITEMGUIDATA_INVALIDATE			=i;i=i+1;
			ITEMGUIDATA_ISSTACKITEM			=i;i=i+1;
			ITEMGUIDATA_ITEMPOS				=i;i=i+1;
			ITEMGUIDATA_CDTIME				=i;i=i+1;
			ITEMGUIDATA_CDSTARTTICK			=i;i=i+1;
			ITEMGUIDATA_INCDSTATE			=i;i=i+1;
			ITEMGUIDATA_ITEMLOCK			=i;i=i+1;
			ITEMGUIDATA_ITEMPRICETYPE		=i;i=i+1;
			ITEMGUIDATA_ITEMPRICE			=i;i=i+1;
			ITEMGUIDATA_ISSHOWBIND			=i;i=i+1;

			UIMessageTable = [RDWndBaseCL_mouse_lbDown,RDWndBaseCL_mouse_lbUp,
			RDWndBaseCL_mouse_lbClick,RDWndBaseCL_mouse_lbDbClick,
			RDWndBaseCL_mouse_rbDown,RDWndBaseCL_mouse_rbUp,
			RDWndBaseCL_mouse_rbClick,RDWndBaseCL_mouse_rbDbClick,
			RDWndBaseCL_mouse_move,RDWndBaseCL_mouse_wheel,
			RDWndBaseCL_mouse_in,RDWndBaseCL_mouse_out,RDWndBaseCL_key_char,
			RDWndBaseCL_key_down,RDWndBaseCL_key_up,RDWndBaseCL_wnd_close,
			RDWnd2DCheckCL_check_change,RDWnd2DComboBoxCL_str_change,
			RDWnd2DEditCL_key_enter,RDWnd2DEditCL_str_change,
			RDWnd2DEditCL_EDIT_LBTNDOWN,RDWnd2DEditCL_Mouse_In,
			RDWnd2DEditCL_Mouse_Out,RDWnd2DEditCL_key_downkey,
			RDWnd2DEditCL_key_upkey,RDWnd2DItemCtrl_mouse_DbClick,
			RDWnd2DItemCtrl_ItemIn,RDWnd2DItemCtrl_ItemOut,
			RDWnd2DListBoxCL_select_change,RDWnd2DListBoxCL_pos_change,
			RDWnd2DPopupMenuCL_click,RDWnd2DRichEditCL_key_enter,
			RDWnd2DRichEditCL_str_change,RDWnd2DRichEditCL_pos_change,
			RDWnd2DScrollBarVCL_scroll_change];
			
			
			addApi("ENUM_UITYPE_CLASS",ENUM_UITYPE_CLASS);
			addApi("ENUM_UITYPE_SELPOINT",ENUM_UITYPE_SELPOINT);
			addApi("ENUM_UITYPE_BACKPIC",ENUM_UITYPE_BACKPIC);
			addApi("ENUM_UITYPE_BUTTON",ENUM_UITYPE_BUTTON);
			addApi("ENUM_UITYPE_CHECKBOX",ENUM_UITYPE_CHECKBOX);
			addApi("ENUM_UITYPE_EDIT",ENUM_UITYPE_EDIT);
			addApi("ENUM_UITYPE_COMBOBOX",ENUM_UITYPE_COMBOBOX);
			addApi("ENUM_UITYPE_LIST",ENUM_UITYPE_LIST);
			addApi("ENUM_UITYPE_RADIO",ENUM_UITYPE_RADIO);
			addApi("ENUM_UITYPE_STATIC",ENUM_UITYPE_STATIC);
			addApi("ENUM_UITYPE_HSCROLLBAR",ENUM_UITYPE_HSCROLLBAR);
			addApi("ENUM_UITYPE_VSCROLLBAR",ENUM_UITYPE_VSCROLLBAR);
			addApi("ENUM_UITYPE_TREECONTRO",ENUM_UITYPE_TREECONTRO);
			addApi("ENUM_UITYPE_RICHEIDT",ENUM_UITYPE_RICHEIDT);
			addApi("ENUM_UITYPE_ITEMCTRL",ENUM_UITYPE_ITEMCTRL);
			addApi("ENUM_UITYPE_COUNT",ENUM_UITYPE_COUNT);			
			
			addApi("RDWndBaseCL_mouse_lbDown",RDWndBaseCL_mouse_lbDown);
			addApi("RDWndBaseCL_mouse_lbUp",RDWndBaseCL_mouse_lbUp);
			addApi("RDWndBaseCL_mouse_lbClick",RDWndBaseCL_mouse_lbClick);
			addApi("RDWndBaseCL_mouse_lbDbClick",RDWndBaseCL_mouse_lbDbClick);
			addApi("RDWndBaseCL_mouse_rbDown",RDWndBaseCL_mouse_rbDown);
			addApi("RDWndBaseCL_mouse_rbUp",RDWndBaseCL_mouse_rbUp);
			addApi("RDWndBaseCL_mouse_rbClick",RDWndBaseCL_mouse_rbClick);
			addApi("RDWndBaseCL_mouse_rbDbClick",RDWndBaseCL_mouse_rbDbClick);
			addApi("RDWndBaseCL_mouse_move",RDWndBaseCL_mouse_move);
			addApi("RDWndBaseCL_mouse_wheel",RDWndBaseCL_mouse_wheel);
			addApi("RDWndBaseCL_mouse_in",RDWndBaseCL_mouse_in);
			addApi("RDWndBaseCL_mouse_out",RDWndBaseCL_mouse_out);
			addApi("RDWndBaseCL_wnd_visible",RDWndBaseCL_wnd_visible);
			addApi("RDWndBaseCL_wnd_show",RDWndBaseCL_wnd_show);
			addApi("RDWndBaseCL_wnd_enable",RDWndBaseCL_wnd_enable);
			addApi("RDWndBaseCL_wnd_active",RDWndBaseCL_wnd_active);
			addApi("RDWndBaseCL_wnd_move",RDWndBaseCL_wnd_move);
			addApi("RDWndBaseCL_key_char",RDWndBaseCL_key_char);
			addApi("RDWndBaseCL_key_down",RDWndBaseCL_key_down);
			addApi("RDWndBaseCL_key_up",RDWndBaseCL_key_up);
			addApi("RDWndBaseCL_wnd_sizeChange",RDWndBaseCL_wnd_sizeChange);
			addApi("RDWndBaseCL_wnd_close",RDWndBaseCL_wnd_close);
			addApi("RDWndBaseCL_wnd_destroy",RDWndBaseCL_wnd_destroy);
			addApi("RDWnd2DBaseCL_wndtips_initilize",RDWnd2DBaseCL_wndtips_initilize);
			addApi("RDWnd2DCheckCL_check_change",RDWnd2DCheckCL_check_change);
			addApi("RDWnd2DComboBoxCL_str_change",RDWnd2DComboBoxCL_str_change);
			addApi("RDWnd2DDialogCL_dlgFunc_close",RDWnd2DDialogCL_dlgFunc_close);
			addApi("RDWnd2DDialogCL_dlgFunc_min",RDWnd2DDialogCL_dlgFunc_min);
			addApi("RDWnd2DDialogCL_dlgFunc_cancel",RDWnd2DDialogCL_dlgFunc_cancel);
			addApi("RDWnd2DDialogCL_dlgFunc_ok",RDWnd2DDialogCL_dlgFunc_ok);
			addApi("RDWnd2DEditCL_key_enter",RDWnd2DEditCL_key_enter);
			addApi("RDWnd2DEditCL_str_change",RDWnd2DEditCL_str_change);
			addApi("RDWnd2DEditCL_EDIT_LBTNDOWN",RDWnd2DEditCL_EDIT_LBTNDOWN);
			addApi("RDWnd2DEditCL_Mouse_In",RDWnd2DEditCL_Mouse_In);
			addApi("RDWnd2DEditCL_Mouse_Out",RDWnd2DEditCL_Mouse_Out);
			addApi("RDWnd2DEditCL_key_downkey",RDWnd2DEditCL_key_downkey);
			addApi("RDWnd2DEditCL_key_upkey",RDWnd2DEditCL_key_upkey);
			addApi("RDWnd2DItemCtrl_mouse_DbClick",RDWnd2DItemCtrl_mouse_DbClick);
			addApi("RDWnd2DItemCtrl_ItemIn",RDWnd2DItemCtrl_ItemIn);
			addApi("RDWnd2DItemCtrl_ItemOut",RDWnd2DItemCtrl_ItemOut);
			addApi("RDWnd2DListBoxCL_select_change",RDWnd2DListBoxCL_select_change);
			addApi("RDWnd2DListBoxCL_pos_change",RDWnd2DListBoxCL_pos_change);
			addApi("RDWnd2DPopupMenuCL_click",RDWnd2DPopupMenuCL_click);
			addApi("RDWnd2DRadioCL_select_change",RDWnd2DRadioCL_select_change);
			addApi("RDWnd2DRichEditCL_key_enter",RDWnd2DRichEditCL_key_enter);
			addApi("RDWnd2DRichEditCL_str_change",RDWnd2DRichEditCL_str_change);
			addApi("RDWnd2DRichEditCL_pos_change",RDWnd2DRichEditCL_pos_change);
			addApi("RDWnd2DScrollBarVCL_scroll_change",RDWnd2DScrollBarVCL_scroll_change);
			addApi("RDWnd2DTreeCtrlCL_click_item",RDWnd2DTreeCtrlCL_click_item);
			addApi("RDWnd2DTreeCtrlCL_top_change",RDWnd2DTreeCtrlCL_top_change);
			addApi("messageBox_closeOk",messageBox_closeOk);
			addApi("messageBox_closeCancel",messageBox_closeCancel);

			addApi("flg_dlgSysBtn_func",flg_dlgSysBtn_func);
			addApi("flg_dlgSysBtn_min",flg_dlgSysBtn_min);
			addApi("flg_dlgSysBtn_close",flg_dlgSysBtn_close);
			addApi("flg_dlgProperty_changeSize",flg_dlgProperty_changeSize);
			addApi("flg_dlgProperty_noBar",flg_dlgProperty_noBar);
			addApi("flg_wndBase_useSelfFont",flg_wndBase_useSelfFont);
			addApi("flg_wndBase_useBkBuffer",flg_wndBase_useBkBuffer);
			addApi("flg_wndBase_fullInParent",flg_wndBase_fullInParent);
			addApi("flg_wndBase_autoTop",flg_wndBase_autoTop);
			addApi("flg_dlgEdit_textInMid",flg_dlgEdit_textInMid);
			addApi("flg_dlgEdit_noBackground",flg_dlgEdit_noBackground);
			addApi("flg_dlgEdit_textInCenter",flg_dlgEdit_textInCenter);
			addApi("flg_comboBox_isCanChangeText",flg_comboBox_isCanChangeText);
			addApi("richEdit_flg_noBack",richEdit_flg_noBack);
			addApi("richEdit_flg_textInCenter",richEdit_flg_textInCenter);
			addApi("ITEMWINDOW_NULL",ITEMWINDOW_NULL);
			addApi("ITEMWINDOW_WAREHOUSE",ITEMWINDOW_WAREHOUSE);
			addApi("ITEMWINDOW_ADVWAREHOUSE",ITEMWINDOW_ADVWAREHOUSE);
			addApi("ITEMWINDOW_FIXSELL",ITEMWINDOW_FIXSELL);
			addApi("ITEMWINDOW_SELFSTALL",ITEMWINDOW_SELFSTALL);
			addApi("ITEMWINDOW_TRADE",ITEMWINDOW_TRADE);
			addApi("ITEMWINDOW_PACK",ITEMWINDOW_PACK);
			addApi("ITEMWINDOW_EHANCE",ITEMWINDOW_EHANCE);
			addApi("ITEMWINDOW_IDENTIFY",ITEMWINDOW_IDENTIFY);
			addApi("ITEMWINDOW_ENHANCETRANSFER",ITEMWINDOW_ENHANCETRANSFER);
			addApi("ITEMWINDOW_HORSEIDENTIFY",ITEMWINDOW_HORSEIDENTIFY);
			addApi("ITEMWINDOW_HORSERESTORE",ITEMWINDOW_HORSERESTORE);
			addApi("ITEMWINDOW_ENHANCECHANGE",ITEMWINDOW_ENHANCECHANGE);
			addApi("ITEMWINDOW_DELEGATESELL",ITEMWINDOW_DELEGATESELL);
			addApi("ITEMWINDOW_MAX",ITEMWINDOW_MAX);
			addApi("ITEMWINDOW_LUA_MIN",ITEMWINDOW_LUA_MIN);
			addApi("ITEMWINDOW_FUMOXISHOU",ITEMWINDOW_FUMOXISHOU);
			addApi("ITEMWINDOW_ZHUANGBEIFUMO",ITEMWINDOW_ZHUANGBEIFUMO);
			addApi("ITEMWINDOW_ZHUANGBEIHECHENG",ITEMWINDOW_ZHUANGBEIHECHENG);
			addApi("ITEMWINDOW_DAOJUHECHENG",ITEMWINDOW_DAOJUHECHENG);
			addApi("ITEMWINDOW_JIAOYIPINGTAI",ITEMWINDOW_JIAOYIPINGTAI);
			addApi("ITEMWINDOW_RONGYAODUIHUAN",ITEMWINDOW_RONGYAODUIHUAN);
			addApi("ITEMWINDOW_NULL_LUA",ITEMWINDOW_NULL_LUA);
			addApi("ITEMWINDOW_WAREHOUSE_LUA",ITEMWINDOW_WAREHOUSE_LUA);
			addApi("ITEMWINDOW_ADVWAREHOUSE_LUA",ITEMWINDOW_ADVWAREHOUSE_LUA);
			addApi("ITEMWINDOW_FIXSELL_LUA",ITEMWINDOW_FIXSELL_LUA);
			addApi("ITEMWINDOW_SELFSTALL_LUA",ITEMWINDOW_SELFSTALL_LUA);
			addApi("ITEMWINDOW_TRADE_LUA",ITEMWINDOW_TRADE_LUA);
			addApi("ITEMWINDOW_PACK_LUA",ITEMWINDOW_PACK_LUA);
			addApi("ITEMWINDOW_EHANCE_LUA",ITEMWINDOW_EHANCE_LUA);
			addApi("ITEMWINDOW_IDENTIFY_LUA",ITEMWINDOW_IDENTIFY_LUA);
			addApi("ITEMWINDOW_ENHANCETRANSFER_LUA",ITEMWINDOW_ENHANCETRANSFER_LUA);
			addApi("ITEMWINDOW_HORSEIDENTIFY_LUA",ITEMWINDOW_HORSEIDENTIFY_LUA);
			addApi("ITEMWINDOW_HORSERESTORE_LUA",ITEMWINDOW_HORSERESTORE_LUA);
			addApi("ITEMWINDOW_ENHANCECHANGE_LUA",ITEMWINDOW_ENHANCECHANGE_LUA);
			addApi("ITEMWINDOW_DELEGATESELL_LUA",ITEMWINDOW_DELEGATESELL_LUA);
			addApi("KEY_TRIGER_KEYUP",KEY_TRIGER_KEYUP);
			addApi("KEY_TRIGER_KEYDOWN",KEY_TRIGER_KEYDOWN);
			addApi("KEY_TRIGER_REPEAT",KEY_TRIGER_REPEAT);
			addApi("KEY_TRIGER_KEYDOWN_REPEAT",KEY_TRIGER_KEYDOWN_REPEAT);
			addApi("KEY_TRIGER_KEYBOTH_UPDOWN",KEY_TRIGER_KEYBOTH_UPDOWN);
			addApi("MESSAGE_STYLE_OK",MESSAGE_STYLE_OK);
			addApi("MESSAGE_STYLE_OKCANCEL",MESSAGE_STYLE_OKCANCEL);
			addApi("MESSAGE_STYLE_NULL",MESSAGE_STYLE_NULL);
			addApi("OPENURL_TYPE_NONE",OPENURL_TYPE_NONE);
			addApi("OPENURL_TYPE_REGISTER",OPENURL_TYPE_REGISTER);
			addApi("OPENURL_TYPE_CHGEPSWD",OPENURL_TYPE_CHGEPSWD);
			addApi("OPENURL_TYPE_ADDYUANBAO",OPENURL_TYPE_ADDYUANBAO);
			addApi("SOUNDEFFECTTYPE_NONE",SOUNDEFFECTTYPE_NONE);
			addApi("SOUNDEFFECTTYPE_2D_BGM",SOUNDEFFECTTYPE_2D_BGM);
			addApi("SOUNDEFFECTTYPE_3D_ESE",SOUNDEFFECTTYPE_3D_ESE);
			addApi("SOUNDEFFECTTYPE_3D_SSE",SOUNDEFFECTTYPE_3D_SSE);
			addApi("SOUNDEFFECTTYPE_3D_TSE",SOUNDEFFECTTYPE_3D_TSE);
			addApi("SOUNDEFFECTTYPE_2D_WND",SOUNDEFFECTTYPE_2D_WND);
			addApi("SOUNDEFFECTTYPE_2D_EVT",SOUNDEFFECTTYPE_2D_EVT);
			addApi("SOUNDEFFECTTYPE_2D_NPC",SOUNDEFFECTTYPE_2D_NPC);
			addApi("ITEMGUIDATA_ITEMGUID",ITEMGUIDATA_ITEMGUID);
			addApi("ITEMGUIDATA_IMAGEID",ITEMGUIDATA_IMAGEID);
			addApi("ITEMGUIDATA_TYPE",ITEMGUIDATA_TYPE);
			addApi("ITEMGUIDATA_ITEMID",ITEMGUIDATA_ITEMID);
			addApi("ITEMGUIDATA_PARAM",ITEMGUIDATA_PARAM);
			addApi("ITEMGUIDATA_ITEMCOUNT",ITEMGUIDATA_ITEMCOUNT);
			addApi("ITEMGUIDATA_INVALIDATE",ITEMGUIDATA_INVALIDATE);
			addApi("ITEMGUIDATA_ISSTACKITEM",ITEMGUIDATA_ISSTACKITEM);
			addApi("ITEMGUIDATA_ITEMPOS",ITEMGUIDATA_ITEMPOS);
			addApi("ITEMGUIDATA_CDTIME",ITEMGUIDATA_CDTIME);
			addApi("ITEMGUIDATA_CDSTARTTICK",ITEMGUIDATA_CDSTARTTICK);
			addApi("ITEMGUIDATA_INCDSTATE",ITEMGUIDATA_INCDSTATE);
			addApi("ITEMGUIDATA_ITEMLOCK",ITEMGUIDATA_ITEMLOCK);
			addApi("ITEMGUIDATA_ITEMPRICETYPE",ITEMGUIDATA_ITEMPRICETYPE);
			addApi("ITEMGUIDATA_ITEMPRICE",ITEMGUIDATA_ITEMPRICE);
			addApi("ITEMGUIDATA_ISSHOWBIND",ITEMGUIDATA_ISSHOWBIND);
			
			addApi("UIMessageTable",UIMessageTable);
			addApi("LuaUIEvent",LuaUIEvent);
		}
	}
}