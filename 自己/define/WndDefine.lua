--UI�ؼ�������
local i = -1
ENUM_UITYPE_CLASS			=i;i=i+1
ENUM_UITYPE_SELPOINT		=i;i=i+1
ENUM_UITYPE_BACKPIC			=i;i=i+1
ENUM_UITYPE_BUTTON			=i;i=i+1
ENUM_UITYPE_CHECKBOX		=i;i=i+1
ENUM_UITYPE_EDIT			=i;i=i+1
ENUM_UITYPE_COMBOBOX		=i;i=i+1
ENUM_UITYPE_LIST			=i;i=i+1
ENUM_UITYPE_RADIO			=i;i=i+1
ENUM_UITYPE_STATIC			=i;i=i+1
ENUM_UITYPE_HSCROLLBAR		=i;i=i+1
ENUM_UITYPE_VSCROLLBAR		=i;i=i+1
ENUM_UITYPE_TREECONTROL		=i;i=i+1
ENUM_UITYPE_RICHEIDT		=i;i=i+1
ENUM_UITYPE_ITEMCTRL		=i;i=i+1
ENUM_UITYPE_COUNT			=i;i=i+1


LuaUIEvent = {}
--RDWndBaseCL���¼�����
i = 1001
RDWndBaseCL_mouse_lbDown        =i;  LuaUIEvent[i] ="OnLButtonDown"		;i=i+1
RDWndBaseCL_mouse_lbUp		    =i;  LuaUIEvent[i] ="OnLButtonUp"		;i=i+1
RDWndBaseCL_mouse_lbClick	    =i;  LuaUIEvent[i] ="OnLButtonClick"	;i=i+1
RDWndBaseCL_mouse_lbDbClick	    =i;  LuaUIEvent[i] ="OnLButtonDbClick"	;i=i+1
RDWndBaseCL_mouse_rbDown	    =i;  LuaUIEvent[i] ="OnRButtonDown"		;i=i+1
RDWndBaseCL_mouse_rbUp		    =i;  LuaUIEvent[i] ="OnRButtonUp"		;i=i+1
RDWndBaseCL_mouse_rbClick	    =i;  LuaUIEvent[i] ="OnRButtonClick"	;i=i+1
RDWndBaseCL_mouse_rbDbClick	    =i;  LuaUIEvent[i] ="OnRButtonDbClick"	;i=i+1
RDWndBaseCL_mouse_move		    =i;  LuaUIEvent[i] ="OnMouseMove"		;i=i+1
RDWndBaseCL_mouse_wheel		    =i;  LuaUIEvent[i] ="OnMouseWheel"		;i=i+1
RDWndBaseCL_mouse_in		    =i;  LuaUIEvent[i] ="OnMouseIn"			;i=i+1
RDWndBaseCL_mouse_out		    =i;  LuaUIEvent[i] ="OnMouseOut"		;i=i+1
RDWndBaseCL_wnd_visible		    =i;  LuaUIEvent[i] ="OnVisible"			;i=i+1
RDWndBaseCL_wnd_show		    =i;  LuaUIEvent[i] ="OnShow"			;i=i+1
RDWndBaseCL_wnd_enable		    =i;  LuaUIEvent[i] ="OnEnable"			;i=i+1
RDWndBaseCL_wnd_active		    =i;  LuaUIEvent[i] ="OnActive"			;i=i+1
RDWndBaseCL_wnd_move		    =i;  LuaUIEvent[i] ="OnMove"			;i=i+1
RDWndBaseCL_key_char		    =i;  LuaUIEvent[i] ="OnChar"			;i=i+1
RDWndBaseCL_key_down		    =i;  LuaUIEvent[i] ="OnKeyDown"			;i=i+1
RDWndBaseCL_key_up			    =i;  LuaUIEvent[i] ="OnKeyUp"			;i=i+1
RDWndBaseCL_wnd_sizeChange	    =i;  LuaUIEvent[i] ="OnSizeChange"		;i=i+1
RDWndBaseCL_wnd_close		    =i;  LuaUIEvent[i] ="OnClose"			;i=i+1
RDWndBaseCL_wnd_destroy         =i;  LuaUIEvent[i] ="OnDestroy"         ;i=i+1
--RDWnd2DBaseCL
i = 1100
RDWnd2DBaseCL_wndtips_initilize =i;  LuaUIEvent[i] ="OnTipsInit"		;i=i+1
--RDWnd2DCheckCL
i = 1200
RDWnd2DCheckCL_check_change     =i;  LuaUIEvent[i] ="OnCheckChange"		;i=i+1
--RDWnd2DComboBoxCL
i = 1300
RDWnd2DComboBoxCL_str_change    =i;  LuaUIEvent[i] ="OnComboStrChange"  ;i=i+1
--RDWnd2DDialogCL
i = 1400
RDWnd2DDialogCL_dlgFunc_close   =i;  LuaUIEvent[i] ="OnDialogCLose"     ;i=i+1
RDWnd2DDialogCL_dlgFunc_min     =i;  LuaUIEvent[i] ="OnDialogMin"       ;i=i+1
RDWnd2DDialogCL_dlgFunc_cancel  =i;  LuaUIEvent[i] ="OnDialogCancel"    ;i=i+1
RDWnd2DDialogCL_dlgFunc_ok      =i;  LuaUIEvent[i] ="OnDialogOk"        ;i=i+1
--RDWnd2DEditCL
i = 1500
RDWnd2DEditCL_key_enter         =i;  LuaUIEvent[i] ="OnEditKeyEnter"    ;i=i+1
RDWnd2DEditCL_str_change        =i;  LuaUIEvent[i] ="OnEditStrChange"   ;i=i+1
RDWnd2DEditCL_EDIT_LBTNDOWN     =i;  LuaUIEvent[i] ="OnEditLBtnDown"    ;i=i+1
RDWnd2DEditCL_Mouse_In          =i;  LuaUIEvent[i] ="OnEditMouseIn"     ;i=i+1
RDWnd2DEditCL_Mouse_Out         =i;  LuaUIEvent[i] ="OnEditMouseOut"    ;i=i+1
RDWnd2DEditCL_key_downkey       =i;  LuaUIEvent[i] ="OnEditKeyDown"     ;i=i+1
RDWnd2DEditCL_key_upkey         =i;  LuaUIEvent[i] ="OnEditKeyUp"       ;i=i+1
--RDWnd2DItemCtrl
i = 1600
RDWnd2DItemCtrl_mouse_DbClick   =i;  LuaUIEvent[i] ="OnItemCtrlDbClick" ;i=i+1
RDWnd2DItemCtrl_ItemIn   =i;  LuaUIEvent[i] ="OnItemMoveIn" ;i=i+1
RDWnd2DItemCtrl_ItemOut   =i;  LuaUIEvent[i] ="OnItemMoveOut" ;i=i+1
--RDWnd2DListBoxCL
i = 1700
RDWnd2DListBoxCL_select_change  =i;  LuaUIEvent[i] ="OnListSelChange"   ;i=i+1
RDWnd2DListBoxCL_pos_change     =i;  LuaUIEvent[i] ="OnListPosChange"   ;i=i+1
--RDWnd2DPopupMenuCL
i = 1800
RDWnd2DPopupMenuCL_click        =i;  LuaUIEvent[i] ="OnMenuClick"	    ;i=i+1
--RDWnd2DRadioCL
i = 1900
RDWnd2DRadioCL_select_change    =i;  LuaUIEvent[i] ="OnRadioSelChange"  ;i=i+1
--RDWnd2DRichEditCL
i = 2000
RDWnd2DRichEditCL_key_enter     =i;  LuaUIEvent[i] ="OnRichEditKeyEnter"   ;i=i+1
RDWnd2DRichEditCL_str_change    =i;  LuaUIEvent[i] ="OnRichEditStrChange"  ;i=i+1
RDWnd2DRichEditCL_pos_change    =i;  LuaUIEvent[i] ="OnRichEditPosChange"  ;i=i+1
--RDWnd2DScrollBarVCL
i = 2100
RDWnd2DScrollBarVCL_scroll_change = i;  LuaUIEvent[i] ="OnScrollChange"    ;i=i+1
--RDWnd2DTreeCtrlCL
i = 2200
RDWnd2DTreeCtrlCL_click_item    =i;  LuaUIEvent[i] ="OnTreeClickItem"      ;i=i+1
RDWnd2DTreeCtrlCL_top_change    =i;  LuaUIEvent[i] ="OnTreeTopChange"      ;i=i+1
i = 4001
messageBox_closeOk              =i;  LuaUIEvent[i] ="OnMessageBoxOk"       ;i=i+1
messageBox_closeCancel          =i;  LuaUIEvent[i] ="OnMessageBoxCancel"   ;i=i+1



--Wnd�ؼ��ı��
flg_dlgSysBtn_func           = 0x00000001
flg_dlgSysBtn_min            = 0x00000002
flg_dlgSysBtn_close          = 0x00000004
flg_dlgProperty_changeSize   = 0x00000008
flg_dlgProperty_noBar        = 0x00000010
flg_wndBase_useSelfFont      = 0x00000020
flg_wndBase_useBkBuffer      = 0x00000040
flg_wndBase_fullInParent     = 0x00000080
flg_wndBase_autoTop          = 0x00000100
--Edit�ؼ��ı��
flg_dlgEdit_textInMid        = 0x00100000
flg_dlgEdit_noBackground     = 0x00200000
flg_dlgEdit_textInCenter     = 0x00400000
--Combo�ؼ��ı��
flg_comboBox_isCanChangeText = 0x00100000
--RichEdit�ؼ��ı��
richEdit_flg_noBack          = 0x00100000
richEdit_flg_textInCenter    = 0x00200000


--��Ʒ����(����ID)����
i = 0
ITEMWINDOW_NULL					=i;i=i+1--
ITEMWINDOW_WAREHOUSE			=i;i=i+1--�ֿ�
ITEMWINDOW_ADVWAREHOUSE			=i;i=i+1--�߼��ֿ�
ITEMWINDOW_FIXSELL				=i;i=i+1--���ۿ�
ITEMWINDOW_SELFSTALL			=i;i=i+1--�����̯
ITEMWINDOW_TRADE				=i;i=i+1--����
ITEMWINDOW_PACK					=i;i=i+1--����
ITEMWINDOW_EHANCE				=i;i=i+1--����
ITEMWINDOW_IDENTIFY				=i;i=i+1--��ӡ
ITEMWINDOW_ENHANCETRANSFER		=i;i=i+1--����ת��
ITEMWINDOW_HORSEIDENTIFY		=i;i=i+1--�����
ITEMWINDOW_HORSERESTORE			=i;i=i+1--���Ԫ
ITEMWINDOW_ENHANCECHANGE		=i;i=i+1--�����ı�
ITEMWINDOW_DELEGATESELL			=i;i=i+1--����

-- ITEMWINDOW_LUA_MIN ֮��ĺ���Ʒ�񴰿������ɽű�����
ITEMWINDOW_MAX = 100
ITEMWINDOW_LUA_MIN = 100
i = 101
ITEMWINDOW_FUMOXISHOU           =i;i=i+1--��ħʯ����
ITEMWINDOW_ZHUANGBEIFUMO        =i;i=i+1--װ����ħ
ITEMWINDOW_ZHUANGBEIHECHENG     =i;i=i+1--װ���ϳ�
ITEMWINDOW_DAOJUHECHENG         =i;i=i+1--���ߺϳ�
ITEMWINDOW_JIAOYIPINGTAI        =i;i=i+1--����ƽ̨
ITEMWINDOW_RONGYAODUIHUAN       =i;i=i+1--��ҫ�һ�

--
i = 201
ITEMWINDOW_NULL_LUA					=i;i=i+1--
ITEMWINDOW_WAREHOUSE_LUA			=i;i=i+1--�ֿ�
ITEMWINDOW_ADVWAREHOUSE_LUA			=i;i=i+1--�߼��ֿ�
ITEMWINDOW_FIXSELL_LUA				=i;i=i+1--���ۿ�
ITEMWINDOW_SELFSTALL_LUA			=i;i=i+1--�����̯
ITEMWINDOW_TRADE_LUA				=i;i=i+1--����
ITEMWINDOW_PACK_LUA					=i;i=i+1--����
ITEMWINDOW_EHANCE_LUA				=i;i=i+1--����
ITEMWINDOW_IDENTIFY_LUA				=i;i=i+1--��ӡ
ITEMWINDOW_ENHANCETRANSFER_LUA		=i;i=i+1--����ת��
ITEMWINDOW_HORSEIDENTIFY_LUA		=i;i=i+1--�����
ITEMWINDOW_HORSERESTORE_LUA			=i;i=i+1--���Ԫ
ITEMWINDOW_ENHANCECHANGE_LUA		=i;i=i+1--�����ı�
ITEMWINDOW_DELEGATESELL_LUA			=i;i=i+1--����





-- Hot Key ����-------
KEY_TRIGER_KEYUP          = 1
KEY_TRIGER_KEYDOWN        = 2
KEY_TRIGER_REPEAT         = 4
KEY_TRIGER_KEYDOWN_REPEAT = 6
KEY_TRIGER_KEYBOTH_UPDOWN = 3


-- MessageBoxCL ����-------
MESSAGE_STYLE_OK       = 0
MESSAGE_STYLE_OKCANCEL = 1
MESSAGE_STYLE_NULL     = 2


--���������URL���ӵ�����
OPENURL_TYPE_NONE 		= 0
OPENURL_TYPE_REGISTER 	= 1
OPENURL_TYPE_CHGEPSWD	= 2
OPENURL_TYPE_ADDYUANBAO	= 3


--�������Ͷ���-------
i = 0
SOUNDEFFECTTYPE_NONE             =i;i=i+1--�Ƿ�������
SOUNDEFFECTTYPE_2D_BGM           =i;i=i+1--2D��������,��:��ͼ�������򱳾�����
SOUNDEFFECTTYPE_3D_ESE           =i;i=i+1--3D������Ч,��:��ͼ�к�������Դ
SOUNDEFFECTTYPE_3D_SSE           =i;i=i+1--3D������Ч,��:������Ч,���򡢱�����
SOUNDEFFECTTYPE_3D_TSE           =i;i=i+1--3D������Ч,��:��ͬ��������·��Ч
SOUNDEFFECTTYPE_2D_WND           =i;i=i+1--2D������Ч,��:�����ť,�򿪹رմ���
SOUNDEFFECTTYPE_2D_EVT           =i;i=i+1--2D�¼���Ч,��:ȡ��������������ý���
SOUNDEFFECTTYPE_2D_NPC           =i;i=i+1--2D������Ч,��:NPC����


i = 0
ITEMGUIDATA_ITEMGUID			=i;i=i+1
ITEMGUIDATA_IMAGEID				=i;i=i+1
ITEMGUIDATA_TYPE				=i;i=i+1
ITEMGUIDATA_ITEMID				=i;i=i+1
ITEMGUIDATA_PARAM				=i;i=i+1
ITEMGUIDATA_ITEMCOUNT			=i;i=i+1
ITEMGUIDATA_INVALIDATE			=i;i=i+1
ITEMGUIDATA_ISSTACKITEM			=i;i=i+1
ITEMGUIDATA_ITEMPOS				=i;i=i+1
ITEMGUIDATA_CDTIME				=i;i=i+1
ITEMGUIDATA_CDSTARTTICK			=i;i=i+1
ITEMGUIDATA_INCDSTATE			=i;i=i+1
ITEMGUIDATA_ITEMLOCK			=i;i=i+1
ITEMGUIDATA_ITEMPRICETYPE		=i;i=i+1
ITEMGUIDATA_ITEMPRICE			=i;i=i+1
ITEMGUIDATA_ISSHOWBIND			=i;i=i+1

UIMessageTable = 
{
RDWndBaseCL_mouse_lbDown        ,
RDWndBaseCL_mouse_lbUp		    ,
RDWndBaseCL_mouse_lbClick	    ,
RDWndBaseCL_mouse_lbDbClick	    ,
RDWndBaseCL_mouse_rbDown	    ,
RDWndBaseCL_mouse_rbUp		    ,
RDWndBaseCL_mouse_rbClick	    ,
RDWndBaseCL_mouse_rbDbClick	    ,
RDWndBaseCL_mouse_move		    ,
RDWndBaseCL_mouse_wheel		    ,
RDWndBaseCL_mouse_in		    ,
RDWndBaseCL_mouse_out		    ,
RDWndBaseCL_key_char		    ,
RDWndBaseCL_key_down		    ,
RDWndBaseCL_key_up			    ,
RDWndBaseCL_wnd_close		    ,
RDWnd2DCheckCL_check_change     ,
RDWnd2DComboBoxCL_str_change    ,
RDWnd2DEditCL_key_enter         ,
RDWnd2DEditCL_str_change        ,
RDWnd2DEditCL_EDIT_LBTNDOWN     ,
RDWnd2DEditCL_Mouse_In          ,
RDWnd2DEditCL_Mouse_Out         ,
RDWnd2DEditCL_key_downkey       ,
RDWnd2DEditCL_key_upkey         ,
RDWnd2DItemCtrl_mouse_DbClick   ,
RDWnd2DItemCtrl_ItemIn			,
RDWnd2DItemCtrl_ItemOut			,
RDWnd2DListBoxCL_select_change  ,
RDWnd2DListBoxCL_pos_change     ,
RDWnd2DPopupMenuCL_click        ,
RDWnd2DRichEditCL_key_enter     ,
RDWnd2DRichEditCL_str_change    ,
RDWnd2DRichEditCL_pos_change	,
RDWnd2DScrollBarVCL_scroll_change
}
