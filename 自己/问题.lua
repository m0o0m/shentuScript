生肖合成金币扣除有BUG

--客户端不更新启动
Game.dat angle60=1
--git
https://github.com/zhuXunRun/shentuScript.git
--package maneger
import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())
50.116.33.29       sublime.wbond.net
function Sublime( setting )
{
	"color_scheme": "Packages/Color Scheme - Default/Cobalt.tmTheme",
	"font_face": "Fixedsys Excelsior 3.01",
	"font_size": 12,
	"ignored_packages":
	[
		"Vintage"
	],
	"show_encoding": true,
	"highlight_line": true,
}
end

function keybind( 快捷键 )
[
	{ "keys": ["ctrl+b"], "command": "new_file" },
	{ "keys": ["ctrl+q"], "command": "toggle_comment" },
	
]
end


function lua.sublime( 运行lua )
{
    "cmd": ["lua", "$file"],  
    "file_regex": "^(?:lua:)?[\t ](...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.lua"  
}
end

dsdsad

0原地复活功能
npc面板
左上角提示改不了
1--prompt表问题，已解决，----对应玩家错误码事件
	
2--聊天框红包
3--物品框特效 中心绘制
4--活动客户端不显示 每周活动看一下是不是不在那一天就不显示 周二看下镇魔宝塔就知道了,是的 周二就没有了
5-- 玩家名字下面还可以显示文字，怎么实现
	-- Player_SetAlias --服务端接口,设置称谓
	-- lualib:Player_SetAlias(player, "#IMAGE1900000001#神一样的男人") 不支持颜色和图片,试了没用
	strcpy_s(_AppearData.master_name, _CustomMap.GetVarStr("master_name").c_str());
	strcpy_s(_AppearData.lover_name, _CustomMap.GetVarStr("配偶姓名").c_str());
	_AppearData.LoverRelation = _CustomMap.GetVarInt("intimacy");
	_AppearData.Glory = _CustomMap.GetVarInt("jjc_rongyao");
	
6gamemainbar 时间
7摆摊
攻击超出后不显示
聊天框颜色


function 判断是否空表next()
	if next(MATERIAL) == nil then 
		win_msg_up("请放入宝石..");
	end
end
-----------------------------------------------------------------------------
--GlobalDefine.lua
--全局的定义
--颜色#
RDCOLOR={}
RDCOLOR["白"]=       4294967295--0xFFFFFFFF
RDCOLOR["橙"]=       4294352189--0xFFF69D3D
RDCOLOR["黄"]=       4294761476--0xFFFCDC04
RDCOLOR["蓝"]=       4279689899--0xFF16E2AB
RDCOLOR["天蓝"]=  4279689899--0xFF16E2AB
RDCOLOR["暗蓝"]=  4280602623--0xFF24CFFF
RDCOLOR["青"]=       4286185269--0xFF79FF35
RDCOLOR["暗青"]=  4286111031--0xFF78DD37
RDCOLOR["雅青"]=  4279755435--0xFF17E2AB
RDCOLOR["桔红"]=  4293935424--0xFFF04140
RDCOLOR["洋红"]=  4294705574--0xFFFC01A6
RDCOLOR["棕色"]=  4292790139--0xFFDEC77B
RDCOLOR["金"]=       4294894158--0xFFFEE24E
RDCOLOR["深金"]=  4294417725--0xFFF79D3D
RDCOLOR["紫"]=       4293018073--0xFFE241D9
RDCOLOR["灰"]=       4284637794--0xFF626262
RDCOLOR["粉"]=       4293882016--0xFFEF70A0
RDCOLOR["黑色"]=  4278190080--0xFF000000
RDCOLOR["浅棕色"]= 4284293124--0xFF5D2004

COLOR_WHITE=        4294967295--0xFFFFFFFF
COLOR_ORANGE=       4294352189--0xFFF69D3D
COLOR_YELLOW=       4294761476--0xFFFCDC04
COLOR_BLUE=         4279689899--0xFF16E2AB
COLOR_SKYBLUE=      4279689899--0xFF16E2AB
COLOR_DBLUE=        4280602623--0xFF24CFFF
COLOR_GREENG=       4286185269--0xFF79FF35
COLOR_DGREENG=      4286111031--0xFF78DD37
COLOR_BGREENG=      4279755435--0xFF17E2AB
COLOR_RED=          4293935424--0xFFF04140
COLOR_MAGENTA=      4294705574--0xFFFC01A6
COLOR_BROWN=        4292790139--0xFFDEC77B
COLOR_GOLD=         4294894158--0xFFFEE24E
COLOR_DARKGOLD=     4294417725--0xFFF79D3D
COLOR_PURPLE=       4293018073--0xFFE241D9
COLOR_GRAY=         4284637794--0xFF626262
COLOR_PINK=         4293882016--0xFFEF70A0
COLOR_BLACK=        4278190080--0xFF000000
COLOR_LIGHTBROWN=   4284293124--0xFF5D2004

#COLORCOLOR_WHITE#      
#COLORCOLOR_ORANGE#     
#COLORCOLOR_YELLOW#     
#COLORCOLOR_BLUE#           
#COLORCOLOR_SKYBLUE#        
#COLORCOLOR_DBLUE#      
#COLORCOLOR_GREENG#     
#COLORCOLOR_DGREENG#        
#COLORCOLOR_BGREENG#    
#COLORCOLOR_RED#            
#COLORCOLOR_MAGENTA#        
#COLORCOLOR_BROWN#      
#COLORCOLOR_GOLD#           
#COLORCOLOR_DARKGOLD#       
#COLORCOLOR_PURPLE#     
#COLORCOLOR_GRAY#           
#COLORCOLOR_PINK#           
#COLORCOLOR_BLACK#      
#COLORCOLOR_LIGHTBROWN# 



LuaGlobal["NpcFontName"] = "SIMLI18"    --npc名字的字体
LuaGlobal["NpcNameColor"] = 4294894158    --npc名字的颜色
LuaGlobal["NpcNameVOffset"] = 0    --npc名字的垂直方向偏移
LuaGlobal["TipsBackImgID_Normal"] = "1900190004,1900190006,1900190005,1900190007,1900190008,1900190000,1900190001,1900190002,1900190003"--物品装备Tips的背景图片,空为默认
LuaGlobal["TipsBackImgID_Focus"] = "1900180004,1900180006,1900180005,1900180007,1900180008,1900180000,1900180001,1900180002,1900180003"--当前物品Tips背景图片
LuaGlobal["RefineImage"] = "1096000100,1096000200,1096000300"    --1~5 5~10 10~ 三种强化等级特效ID
LuaGlobal["TipsDrawGrow"] = 1    --物品tips文本是否描边
LuaGlobal["AVATAR_EFFECTBLEND1"] = 0    --绘制人物身体特效参数,0是加亮,即默认.1是正常
LuaGlobal["AVATAR_EFFECTMASK1"] = MakeARGB(255,255,255,255)        --绘制人物身体特效参数,默认为MakeARGB(255,255,255,255)
LuaGlobal["AVATAR_EFFECTBLEND2"] = 0    --武器
LuaGlobal["AVATAR_EFFECTMASK2"] = MakeARGB(255,255,255,255)        --武器
LuaGlobal["AVATAR_EFFECTBLEND3"] = 0    --坐骑
LuaGlobal["AVATAR_EFFECTMASK3"] = MakeARGB(255,255,255,255)        --坐骑
LuaGlobal["AVATAR_EFFECTMASKFORCE"] = 0    --//在中毒等会改变模型颜色的情况下是否强制使用设定的遮罩,0:非强制;1:强制
LuaGlobal["TaskWindow_AutoQueryTask"] = 0    --在没有接主线任务时自动推荐一个主线任务
LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15    --自动推荐查询事件间隔
LuaGlobal["AutoMoveItemsStr"] = "逍遥游1天,逍遥游50次,逍遥游20次,逍遥游10次,逍遥游,逍遥游1小时,逍遥游500次,逍遥游7天,逍遥游100次"    --点击传送时额外判断背包中是否存在这些道具
LuaGlobal["ChatWindowUseGrow"] = 0 --聊天框字体描边
LuaGlobal["PlayerTextPosType"] = 1 --场景角色文本从上到下显示顺序为称号 行会名 名字,同页游相同
--RoleSkillKeyImageStr 为技能面板上快捷键图标,第一个为空,其次顺序为F1 ~ F8, CtrlF1 ~ CtrlF8
LuaGlobal["RoleSkillKeyImageStr"] = "1930200099,1930200035,1930200039,1930200043,1930200047,1930200051,1930200055,1930200059,1930200063,1930200067,1930200071,1930200075,1930200079,1930200083,1930200087,1930200091,1930200095"
LuaGlobal["NpcQuestHeadImage"] = "1043400000, 1043200000, 1043300000"    --npc头顶任务图标,1：任务可交，2：任务可接，3：任务已接不可交
LuaGlobal["NpcTalkBkAroundImg"] = "1903700034,1903700035,1903700036,1903700037,1903700039,1903700038,1903700040,1903700041,1903700042,1903700043"    --npctalk面板上,自定义面板大小时九宫格背景.前九张为九宫格,第十张为分割线
LuaGlobal["NpcTalkBKNoTaskImg"] = "1903700033"    --npctalk面板,没有任务时所用的单张背景图
LuaGlobal["NpcTalkBkTaskImg"] = "1903700044,1903700015"    --npctalk面板,有任务时背景图和选中时高亮图片
LuaGlobal["NpcTalkBkNameBottomImg"] = "1903700020"    --npctalk面板,npc名字底部背景图
LuaGlobal["NpcTalkBkTaskStatusImg"] = "1903700016, 1903700018, 1903700017"    --npctalk面板,任务选项上当前任务是可交,可接和不可交三种状态使用的图片
LuaGlobal["BigMapWindow_JumpNameFont"] = "SIMLI18"    --大地图跳转点文本的字体
LuaGlobal["BigMapWindow_JumpNameTxtColor"] = MakeARGB(255,255, 240, 0)    --大地图跳转点文本的颜色
LuaGlobal["PlayerDigImage"] = 0    --玩家挖肉时头顶的图片
LuaGlobal["PlayerTextPosOffset"] = 0    --玩家名称和血条整体偏移量
//组队
bool GetTeamPropByPlayerGUIDAll(const string& _RoleGUID, int _PropertyType);
void LogicTeamInviteEx(const std::string& _PlayerName);          //邀请组队,即使未开启组队也不再弹窗
bool CreateTeam( const std::string& _Tag, const std::string& _CallBack );            //创建队伍
bool LeaveTeam();                                                //离开队伍
bool GetTeamMemberGUIDList();                                    //获取我的队伍guid信息
bool GetRoleTeamStatus();                                        //获取当前组队状态: 1:自动组队,2:手动组队,3:拒绝组队
bool SetRoleTeamStatus( int _status );                            //设置当前组队状态: 1:自动组队,2:手动组队,3:拒绝组队
bool GetNearbyTeamInfo( const std::string& _Tag, const std::string&  _CallBack );                                        //获得周围队伍信息
bool GetNearPlayerList( const std::string&  _MapKeyName );        //获得周围玩家信息列表
bool ApplyForTeam( const std::string&  _LeaderName );            //申请入队
bool TransferTeamLeader( const std::string& _LeaderName );        //转移队长
bool KickOutOfTeam( const std::string& _TargetName );            //将某人踢出队伍
bool DismissTeam();                                                //解散队伍
void AcceptTeamInvite( const std::string& _SenderName, const bool& _accept );    //是否接受某人的邀请
bool AcceptApplyTeam( const std::string& _SenderName, const bool& _accept );        //是否接受入队申请

//行会
bool GetFamilyList(int startIndex, int count, const std::string& _Tag, const std::string& _CallBack);    //根据起始序号和获取数量获取现有行会
bool GetApplyPlayerList(int startIndex, int count, const std::string& _Tag, const std::string& _CallBack);    //根据起始序号和获取数量获取申请加入本行会的玩家列表
bool GetFamilyMenberList(int startIndex, int count, int title_id, const std::string& _Tag, const std::string& _CallBack);    //根据起始序号和获取数量获得本行特定称号会玩家列表
bool GetFamilyOnlineMenberList(int startIndex, int count, int title_id, const std::string& _Tag, const std::string& _CallBack);    //根据起始序号和获取数量获得本行在线的特定称号会玩家列表
bool GetFamilyAllMenberList(int startIndex, int count, const std::string& _Tag, const std::string& _CallBack);    //根据起始序号和获取数量获得本行会玩家列表
bool FamilyInfoRequest(INT _reqType,  const std::string& _Tag, const std::string& _CallBack );            //获取行会一些信息
bool FamilyJoinRequest(const std::string& _Guid);    //申请加入行会
bool FamilyCancelJoinReq(const std::string& _Guid, const std::string& _Tag, const std::string& _CallBack);        //取消申请加入行会
bool FamilyNoticeConfirm(const std::string& _Notice, const std::string& _Tag, const std::string& _CallBack );    //修改行会公告
bool FamilyDismiss(const std::string& _Tag, const std::string& _CallBack );    //解散行会
void FamilyOpenWarehouse();                    //打开用于贡献物品的行会仓库面板
bool FamilyJoinDenyOrAccept(int accept, const std::string& _Guid);    //通过或拒绝玩家加入行会的申请
bool FamilyQuitRequest(const std::string& _Content, const std::string& _Tag, const std::string& _CallBack );    //离开行会
bool FamilyEntitle(int title, const std::string &_Guid);    //给成员授予封号
bool FamilyCreateTitle(const std::string &_Name, const std::string& _Tag, const std::string& _CallBack );    //创建封号
bool FamilyEditTitle(int title, const std::string &_Name, const std::string& _Tag, const std::string& _CallBack );    //修改封号
bool FamilyDeleteTitle(int title, const std::string& _Tag, const std::string& _CallBack );//删除封号
bool FamilyRepealTitle(const std::string& guid, const std::string& _Tag, const std::string& _CallBack );    //撤销封号
bool FamilyInvite(const std::string& _Name); //邀请加入行会
bool FamilyKick(const std::string& _Guid);    //将玩家踢出行会

//锻造
//void OnOpenForge();
//翅膀
//void OnOpenWing();

//成就
void GetGloryList();        //获取成就列表
void GetGloryAward(int id);    //获取奖励

//好友
void GetFriendList(int type);

//邮件
void OpenMail(const std::string& _Guid);
void AttachmentMail(const std::string& _Guid, int index);
void DeleteMail(const std::string& _Guid);

//活动
void CampaignJoin(unsigned int _Id);
void GetCampaignDetail(unsigned int _Id, const std::string& _Tag, const std::string& _CallBack );

//交易
void AcceptP2pInvite(const std::string& _Guid, int _Accept);
void SetP2pGold(const std::string& _gold);    //设定交易金币数量
void OnCancelP2p();    //取消交易
void OnConfirmP2p();//确认交易
void OnLockP2p(int state);    //锁定

int GetMapOption();    //获取当前地图死亡后的复活方式
bool DoPlayerReliveByType(int type);    //角色使用什么方式复活 1：回到附近城市 2：回城或原地复活 3：回到副本门口 4：回到副本门口或原地复活

//任务
bool AcceptQuestByID(int questID);        //接受任务 
bool SubmitQuestByID(int questID);        //提交已完成的任务 -- LUA_EVENT_FINISHQUEST
bool GetQuestDataByID(UINT questID);    //获取任务具体信息  1
bool GetQuestAwardByID(int questID);    //获取奖励物品具体信息
bool DropQuestByID(int questID);    //放弃任务
bool GetNpcQuestStateByID(const std::string& npcGuidStr);

string GetTimeStrWithFormat(const std::string&, const std::string& _Format);    //根据给定的时间获取格式化日期

bool GetSelectRoleList(const std::string& _Tag, const std::string& _CallBack);    //获取角色选择界面中,角色列表信息
bool ShowCreateRoleWnd();
bool EnterGame(const std::string& _Name);    //使用给定角色名进入游戏
bool DeleteRole(const std::string& _Name, const std::string& _Tag, const std::string& _CallBack);    //需要删除的角色名
bool RecoverRole(const std::string& _Name, const std::string& _Tag, const std::string& _CallBack);    //恢复指定角色
bool GetRecoverRoleList();    //获取角色恢复列表

//仓库
bool WareHouseSetGold(int type, const std::string& numStr);

//摆摊
int GetStallState();
void StartStall();
void CloseStall();

INT  GetMountImageType(UINT _ImageID);

void SetCursorColor(UINT _Color);    //设置光标颜色
UINT GetCursorColor();

int GetRecordDevices();
bool StartRecord(const string& callback);
bool StopRecord();
bool IsRecording();
bool PlayRecord(string filename, string callback);
bool StopPlayRecord();
bool IsPlayRecording();
double GetRecordPlayVolume();
void SetRecordPlayVolume(double volume);

--客户端GUID转成服务端GUID
if UI:Lua_GUID2Str(item_guid) then 
	item_guid = LuaRet;
end
UI:Lua_SubmitForm("等级判断表单", "OnOpenForge", "")
UI:Lua_OpenWindow(TradeWnd._wnd, "");


--服务端GUID转成客户端GUID
if UI:Lua_Str2GUID(item_guid) then 
	item_guid = LuaRet;
	RDItemCtrlSetGUIDataPropByGUID(handle, "",  item_guid);
	self:OnEquipIn(handle, item_guid)
end
pyz9999
function 客户端事件()
OnLButtonDown
OnLButtonUp
OnLButtonClick
OnLButtonDbClick
OnRButtonDown
OnRButtonUp
OnRButtonClick
OnRButtonDbClick
OnMouseMove
OnMouseWheel
OnMouseIn
OnMouseOut
OnVisible
OnShow
OnEnable
OnActive
OnMove
OnChar
OnKeyDown
OnKeyUp
OnSizeChange
OnClose
OnDestroy
OnTipsInit
OnCheckChange
OnComboStrChange
OnDialogCLose
OnDialogMin
OnDialogCancel
OnDialogOk
OnEditKeyEnter
OnEditStrChange
OnEditLBtnDown
OnEditMouseIn
OnEditMouseOut
OnEditKeyDown
OnEditKeyUp
OnItemCtrlDbClick
OnItemMoveIn
OnItemMoveOut
OnListSelChange
OnListPosChange
OnMenuClick
OnRadioSelChange
OnRichEditKeyEnter
OnRichEditStrChange
OnRichEditPosChange
OnScrollChange
OnTreeClickItem
OnTreeTopChange
OnMessageBoxOk
OnMessageBoxCancel 
RDWndBaseCL_mouse_lbDown
RDWndBaseCL_mouse_lbUp
RDWndBaseCL_mouse_lbClick
RDWndBaseCL_mouse_lbDbClick
RDWndBaseCL_mouse_rbDown
RDWndBaseCL_mouse_rbUp
RDWndBaseCL_mouse_rbClick
RDWndBaseCL_mouse_rbDbClick
RDWndBaseCL_mouse_move
RDWndBaseCL_mouse_wheel
RDWndBaseCL_mouse_in
RDWndBaseCL_mouse_out
RDWndBaseCL_wnd_visible
RDWndBaseCL_wnd_show
RDWndBaseCL_wnd_enable
RDWndBaseCL_wnd_active
RDWndBaseCL_wnd_move
RDWndBaseCL_key_char
RDWndBaseCL_key_down
RDWndBaseCL_key_up
RDWndBaseCL_wnd_sizeChange
RDWndBaseCL_wnd_close
RDWndBaseCL_wnd_destroy
RDWnd2DBaseCL_wndtips_initilize
RDWnd2DCheckCL_check_change
RDWnd2DComboBoxCL_str_change
RDWnd2DDialogCL_dlgFunc_close
RDWnd2DDialogCL_dlgFunc_min
RDWnd2DDialogCL_dlgFunc_cancel
RDWnd2DDialogCL_dlgFunc_ok
RDWnd2DEditCL_key_enter
RDWnd2DEditCL_str_change
RDWnd2DEditCL_EDIT_LBTNDOWN
RDWnd2DEditCL_Mouse_In
RDWnd2DEditCL_Mouse_Out
RDWnd2DEditCL_key_downkey
RDWnd2DEditCL_key_upkey
RDWnd2DItemCtrl_mouse_DbClick
RDWnd2DListBoxCL_select_change
RDWnd2DListBoxCL_pos_change
RDWnd2DPopupMenuCL_click
RDWnd2DRadioCL_select_change
RDWnd2DRichEditCL_key_enter
RDWnd2DRichEditCL_str_change
RDWnd2DRichEditCL_pos_change
RDWnd2DScrollBarVCL_scroll_change
RDWnd2DTreeCtrlCL_click_item
RDWnd2DTreeCtrlCL_top_change
messageBox_closeOk
messageBox_closeCancel
RDWnd2DItemCtrl_ItemIn
RDWnd2DItemCtrl_ItemOut LUA_EVENT_NONE
LUA_EVENT_ONPLAYLEVELUP
LUA_EVENT_ONLOGIN
LUA_EVENT_INITRESCOMPLETE
LUA_EVENT_ONENTERMAP
LUA_EVENT_ONADDSKILL
LUA_EVENT_ONADDITEM
LUA_EVENT_ONDROPITEM
LUA_EVENT_CHANGEATTACMODE
LUA_EVENT_GETNEWQUEST
LUA_EVENT_FINISHQUEST
LUA_EVENT_READYQUEST
LUA_EVENT_DROPQUEST
LUA_EVENT_ONADDBUFF
LUA_EVENT_ONPLAYERAPPEAR
LUA_EVENT_ONFINISHMASTER
LUA_EVENT_ONFINISHMARRY
LUA_EVENT_ONJOINFAMILY
LUA_EVENT_ONLEAVEFAMILY
LUA_EVENT_ONACHIEVECASTLE
LUA_EVENT_ONLOSECASTLE
LUA_EVENT_ONNEWMAIL
LUA_EVENT_ONADDFRIEND
LUA_EVENT_ONDELFRIEND
LUA_EVENT_ONJOINTEAM
LUA_EVENT_ONLEAVETEAM
LUA_EVENT_ONP2PTRADEOK
LUA_EVENT_OPENPAKAGEGUI
LUA_EVENT_OPENSKILLGUI
LUA_EVENT_OPENROLEGUI
LUA_EVENT_OPENMAILGUI
LUA_EVENT_OPENQUESTGUI
LUA_EVENT_OPENSYSSETGUI
LUA_EVENT_OPENFAMILYGUI
LUA_EVENT_OPENVIPGUI
LUA_EVENT_OPENRANKGUI
LUA_EVENT_OPENFRIENDGUI
LUA_EVENT_OPENBIGMAPGUI
LUA_EVENT_OPENBIGCAMPAIGNGUI
LUA_EVENT_OPENWAREHOUSEGUI
LUA_EVENT_OPENADVWAREHOUSEGUI
LUA_EVENT_OPENGAMEMALLGUI
LUA_EVENT_OPENGAMESETTINGGUI
LUA_EVENT_PROPERTYDATA
LUA_EVENT_CLOSEQUESTGUI
LUA_EVENT_CLOSEPACKAGEGUI
LUA_EVENT_CLOSEROLEGUI
LUA_EVENT_CLOSESKILLGUI
LUA_EVENT_ONAPPLYITEM
LUA_EVENT_ONTEAMINVITE
LUA_EVENT_UPDATASCREENSIZE
LUA_EVENT_ONQUITEGAME
LUA_EVENT_ONSHOWFORM
LUA_EVENT_SUBMITFORMACK
LUA_EVENT_RELOADLUAEND
LUA_EVENT_ONGUIDECREATE
LUA_EVENT_ONEQUIPMENT
LUA_EVENT_HORSEBUTTONCLICK
LUA_EVENT_WNDLOADLAYOUT
LUA_EVENT_ITEMWNDMOVEITEMIN
LUA_EVENT_OPENNPCTALK
LUA_EVENT_CLICKNPCTALKITEM
LUA_EVENT_CLICKTASKMAPLINK
LUA_EVENT_CLICKTASKNPCLINK
LUA_EVENT_DEFENDICONINIT
LUA_EVENT_UILINK
LUA_EVENT_ONITEMUPDATE
LUA_EVENT_ONITEMATTRCHANGE
LUA_EVENT_ONITEMDESTROY
LUA_EVENT_ONUISTYLECHANGE
LUA_EVENT_ONHEROCREATE
LUA_EVENT_ONHERODESTROY
LUA_EVENT_ONMOUSEITEMCLEAR
LUA_EVENT_OFFEQUIPMENT
LUA_EVENT_AUTOATTACSTOP
LUA_EVENT_PLAYERADDBUFF
LUA_EVENT_PLAYERDESTORYBUFF
LUA_EVENT_HEROADDBUFF
LUA_EVENT_HERODESTORYBUFF
LUA_EVENT_HERO_CHANGESTATE
LUA_EVENT_ONHEROADDITEM
LUA_EVENT_PLAYERATTREXTREF
LUA_EVENT_HEROATTREXTREF
LUA_EVENT_PLAYERERRORCODE
LUA_EVENT_HEROERRORCODE
LUA_EVENT_SHIELDREMOVE
LUA_EVENT_INATHLETICSREGION
LUA_EVENT_OUTATHLETICSREGION
LUA_EVENT_INITMAININTERFACE
LUA_EVENT_SWITICHSKILLACTIVE
LUA_EVENT_STALLSELL
LUA_EVENT_ITEMCTRLIN
LUA_EVENT_ITEMCTRLOUT
LUA_EVENT_CUSTOMDATALOAD
LUA_EVENT_OPENHEROGUI
LUA_EVENT_OPENHEROPACKAGE
LUA_EVENT_OPENDESKWINODW
LUA_EVENT_CHATCHANNELCHANGE
LUA_EVENT_UPDATAMALLITEM
LUA_EVENT_PROPERTYDATA64
LUA_EVENT_CHOOSEPLAYER
LUA_EVENT_HIDECHOOSEPLAYER
LUA_EVENT_PACKAGECOUNT
LUA_EVENT_SKILLPROFICIENCY
LUA_EVENT_P2PINVITE
LUA_EVENT_P2PLOCK
LUA_EVENT_STALLSETPRICE
LUA_EVENT_VISITSTALLLIST
LUA_EVENT_HIDEVISITSTALL
LUA_EVENT_VISITSTALLBUY
LUA_EVENT_TRANSFERLEADERTEAM
LUA_EVENT_DISMISSTEAM
LUA_EVENT_OPENTEAM
LUA_EVENT_CLOSETEAM
LUA_EVENT_ONCHANGEFRIEND
LUA_EVENT_ONFINISHACHIVE
LUA_EVENT_ONACHIVELIST
LUA_EVENT_JOINTEAM
LUA_EVENT_CLOSESYSSETGUI
LUA_EVENT_MAILLIST
LUA_EVENT_MAILDETAIL
LUA_EVENT_MAILATTACHMENTOK
LUA_EVENT_NPCQUEST
LUA_EVENT_FAMILYINVITE
LUA_EVENT_FAMILYINVITENOTICE
LUA_EVENT_QUICKCHANGE
LUA_EVENT_STARTSTALL
LUA_EVENT_OTHERROLEDATA
LUA_EVENT_OPENTRADEGUI
LUA_EVENT_OPENSTALLGUI
LUA_EVENT_CLOSEGAMEMALLGUI
LUA_EVENT_CLOSEWAREHOUSEGUI
LUA_EVENT_CLOSEADVWAREHOUSEGUI
LUA_EVENT_CLOSETRADEGUI
LUA_EVENT_CLOSESTALLGUI
LUA_EVENT_CAMPAIGNLIST
LUA_EVENT_FAMILYNOTICECONFIRM
LUA_EVENT_ONLEAVETEAMEX
LUA_EVENT_ONJOINTEAMEX
LUA_EVENT_SKIllAPPLY
LUA_EVENT_CALLBACKCOUNTCHANGE
LUA_EVENT_SETTINGPROPCHANGE
LUA_EVENT_OBJDISPEAR
LUA_EVENT_PROPERTYDATALIST
LUA_EVENT_AUTOMOVEEND
LUA_EVENT_OTHERPLAYERINFO
LUA_EVENT_INNERFORCELEVELUP
LUA_EVENT_COUNT
end
function UI接口()
	GUI:WndSetEnableM(handle, false);
	CommonExample = {}
	function CommonExample.main()
		local _Parent = LuaGlobal["AttachPartent"]
		local _GUIHandle = 0
		local _CommonHandle = 0
		local _color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 0, 0) }

		_Parent = GUI:WndCreateWnd(_Parent,"GUI_Example",1900000003,200,200)
		if _Parent ~= 0 then 
			GUI:WndSetMoveWithLBM(_Parent)
			GUI:WndSetIsESCClose(_Parent,true)
			GUI:ImageSetFitSize(_Parent, true);
			--GUI:WndAttachParent(_Parent)
			GUI:WndCalSize(_Parent)
			GUI:WndInvalidate(_Parent)
			CenterWnd(_Handle)
			
			GUI:WndSetFlagsM(_GUIHandle,flg_dlgSysBtn_min)
			GUI:WndSetCanRevMsg(_GUIHandle,true)
			GUI:WndSetEnableM(_GUIHandle,true)
			GUI:WndSetVisible(_GUIHandle,true)
			GUI:WndSetParam(_GUIHandle,20)
			GUI:WndAddProperty(_GUIHandle, "1", "2")
			GUI:WndDelProperty(_GUIHandle, "1")
			GUI:WndSetPosM(_GUIHandle, 200, 200)
			--GUI:WndAddFlags(_GUIHandle, flg_dlgEdit_textInMid)
			--GUI:WndSetSizeM(_GUIHandle, 500, 500)
			GUI:WndSetImageID(_GUIHandle, 1900000034)
			GUI:WndSetFocusM(_GUIHandle)
			GUI:WndSetActiveM(_GUIHandle, false)
			GUI:WndSetKeyFocusM(_GUIHandle, false)
			GUI:WndSetTipFunction(_GUIHandle, "FuncName")
			--GUI:WndSetTipInfo(_GUIHandle, [{"image":1901600040}, {"name":"图片"}])
			--设置窗口Tips的重新加载属性标记，若设置为true，则当鼠标离开该控件是自动清空tips缓存，下一次进入会重新构造。
			GUI:WndSetTipAutoRemove(_GUIHandle, false)
			
			GUI:WndSetTextColorM(_GUIHandle,_color[false])
			GUI:WndSetTextM(_GUIHandle, "WindowText")
			GUI:WndSetMagicUI(_GUIHandle, 3)
			GUI:WndSetHint(_GUIHandle, "SetHint")
		end
		_CommonHandle =WndGetParentM(_GUIHandle)
		_CommonHandle =WndGetParentM(_GUIHandle)
		_CommonHandle = GUI:WndGetChildCount(_GUIHandle)
		_CommonHandle = GUI:WndGetChildWnd(_GUIHandle)
		_CommonHandle = GUI:WndFindWindow(_GUIHandle, "TestFindWindow")
		_CommonHandle = GUI:WndFindChildM(_GUIHandle, "3")
		_CommonHandle = GUI:WndGetMoveWithLBM(_GUIHandle)
		_CommonHandle = GUI:WndGetIsESCClose(_GUIHandle)
		_CommonHandle = GUI:WndGetCanRevMsg(_GUIHandle)
		_CommonHandle = GUI:WndIsLive(_GUIHandle)
		_CommonHandle = GUI:WndGetFlags(_GUIHandle)
		_CommonHandle = GUI:WndFlagMask(_GUIHandle, 1)
		_CommonHandle = GUI:WndPtInWindowM(_GUIHandle, 10, 10)
		_CommonHandle = GUI:WndGetEnableM(_GUIHandle)
		_CommonHandle = GUI:WndGetPosM(_GUIHandle)
		_CommonHandle = GUI:WndGetSizeM(_GUIHandle)
		_CommonHandle = GUI:WndGetVisible(_GUIHandle)
		_CommonHandle = GUI:WndGetIDM(_GUIHandle)
		_CommonHandle = GUI:WndGetImageID(_GUIHandle)
		_CommonHandle = GUI:WndGetProperty(_GUIHandle, "1")
		_CommonHandle = GUI:WndGetText(_GUIHandle)
		_CommonHandle = GUI:WndGetScreenPos(_GUIHandle)
		_CommonHandle = GUI:WndRegistScript(_GUIHandle, 3, "FuncName")
		_CommonHandle = GUI:WndClearScript(_GUIHandle, 3)
		_CommonHandle = GUI:WndGetRegistScript(_GUIHandle, 3)
		local Parentid = GUI:WndGetIDM(_Parent);
		dbg("Parentid======================="..Parentid);
		local ParentParent = GUI:WndGetParentM(_Parent);
		dbg("ParentParent======================="..ParentParent);
		local ParentParentId = GUI:WndGetIDM(ParentParent);
		dbg("ParentParentId======================="..ParentParentId);
		local ParentParentParent = GUI:WndGetParentM(ParentParent);
		dbg("ParentParentParent======================="..ParentParentParent);
		local ParentParentParentId = GUI:WndGetIDM(ParentParentParent);
		dbg("ParentParentParentIdId======================="..ParentParentParentId);
		
		--窗口定时器 
		bool WndAddTimer(this, nil, 1, 1000, "TimerGift.OnTimer")
		_CommonHandle = GUI:WndAddTimer(_GUIHandle, 1, 2, "ScriptHandle")   --定时器ID，若之前此定时器已存在则覆盖。
		_CommonHandle = GUI:WndAddTimerBrief(_GUIHandle, 1, "ScriptHandle")
		_CommonHandle = GUI:WndDelTimer(_GUIHandle, 1)
		_CommonHandle = GUI:WndDelAllTimer(_GUIHandle)
		
		_CommonHandle = GUI:WndGetItemGUIDataHandle(_GUIHandle)
		-- _CommonHandle = GUI:WndMoveToParentBottom(_GUIHandle)
		-- _CommonHandle = GUI:WndMoveToParentTop(_GUIHandle)
		_CommonHandle = GUI:WndGetTextColorM(_GUIHandle)
		_CommonHandle = GUI:WndGetMagicUI(_GUIHandle)
		_CommonHandle = GUI:WndGetHint(_GUIHandle)
		--_CommonHandle = GUI:WndClick(_GUIHandle)
		--_CommonHandle = GUI:WndRClick(_GUIHandle)
		--_CommonHandle = GUI:WndDbClick(_GUIHandle)
		--_CommonHandle = GUI:WndRDbClick(_GUIHandle)


	end
	
	-- _GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 1900001125, 100, 111, 42, 42)
	_GUIHandle = GUI:ItemCtrlCreate(_Parent, "ExampleItemCtrl0", 0, 100, 111, 42, 42)
	if _GUIHandle ~= 0 then

		GUI:WndRegistScript(_GUIHandle,RDWnd2DItemCtrl_mouse_DbClick, "ItemCtrlExample.OnMouseDbClick")
	   
		GUI:ItemCtrlSetItemDataAutoManager(_GUIHandle, true)
		GUI:ItemCtrlSetGUIDataPropByType(_GUIHandle, 2)
		_ItemCtrlHandle = CL:GetEquimentItemDataPart(14) --参数时装备位
		RDItemCtrlSetGUIDataEnable(_GUIHandle, nil, true);
		-- GUI:ItemCtrlSetGUIData(_GUIHandle, _ItemCtrlHandle)
		GUI:ItemCtrlSetRBtnUse(_GUIHandle, false)
		GUI:WndSetSizeM(_GUIHandle,100, 60)
		-- GUI:ItemCtrlSetBigIcon(_GUIHandle, 3)
		-- GUI:ItemCtrlSetBigIconOffset(_GUIHandle, 186, 198)
		-- GUI:ItemCtrlSetFrontImageID(_GUIHandle, 1800000138)
		GUI:ItemCtrlSetBackImageID(_GUIHandle, 1800000138)
		-- GUI:ItemCtrlSetHighlightImageID(_GUIHandle, 1900010041)
		GUI:ItemCtrlSetEffectImageID(_GUIHandle, 1096000200, 2);
		-- GUI:ItemCtrlSetJson(_GUIHandle, "SetJson")
		-- GUI:ItemCtrlClearItemData(_GUIHandle) 
		GUI:ImageSetDrawCenter(_GUIHandle, true); --尼玛这个接口只对物品框中的物品icon图片有效
		
		_ItemCtrlHandle = GUI:ItemCtrlGetItemDataAutoManager(_GUIHandle)
		_ItemCtrlHandle = GUI:ItemCtrlGetRBtnUse(_GUIHandle)
		_ItemCtrlHandle = GUI:ItemCtrlGetGUIData(_GUIHandle)

	end
	
	--EditCreate
	_GUIHandle = GUI:EditCreate(_Parent, "CrystalName",116,25,200,20)
	if _GUIHandle ~= 0 then
		GUI:WndSetEnableM(_GUIHandle, false);
		GUI:WndSetTextColorM(_GUIHandle, RDCOLOR[color]);
		GUI:EditSetTextM(_GUIHandle, Name);
		local str = GUI:EditGetTextM(_GUIHandle);
		EditGetTextM(_GUIHandle, "");
	end
	_GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit0",30,200,200,50)
  if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWnd2DRichEditCL_key_enter, "RichEditExample.OnKeyEnter")
    --GUI:RichEditSetEnable(_GUIHandle, true)
    GUI:RichEditClear(_GUIHandle)
    GUI:RichEditAppendString(_GUIHandle, "RichEdit0 ")
    GUI:RichEditAppendString(_GUIHandle, "RichEdit1 ")
    GUI:RichEditSetCurFont(_GUIHandle, "system")
    GUI:RichEditSetContentRect(_GUIHandle, 0, 0, 200, 50)
    GUI:RichEditSetTextItemAlpha(_GUIHandle, 0, 10, 255)
    GUI:RichEditSetDefaultTextColor(_GUIHandle, _color[false])
    GUI:RichEditSetTotalLine(_GUIHandle, 5)


    _RichEditHandle = GUI:RichEditGetSelectClickString(_GUIHandle)
    _RichEditHandle = GUI:RichEditGetTextItemCount(_GUIHandle)
    _RichEditHandle = GUI:RichEditGetAllString(_GUIHandle)

    --图片API
    _GUIHandle = GUI:ImageCreate(_Parent,"ExampleImage0",1903800017,110,200)
	  if _GUIHandle ~= 0 then

	    GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbDbClick, "ImageExample.OnlbDbClick")
	    GUI:ImageSetColor(_GUIHandle, _color[false])
	    GUI:ImageSetAlpha(_GUIHandle, 255)
	    GUI:ImageSetFitSize(_GUIHandle, true)
	    GUI:ImageSetParam(_GUIHandle, 5)
	    GUI:ImageSetCheckPoint(_GUIHandle, 3)
	    GUI:ImageSetAnimateEnable(_GUIHandle, false, 100)
	    GUI:ImageSetRenderState(_GUIHandle, 0)
	    GUI:ImageSetDrawCenter(_GUIHandle, true)
	    GUI:ImageSetDrawRect(_GUIHandle,0,0,0,0)
	    CL:SetAnimateData(1903800017,500)
	    GUI:ImageSetTransfrom(_GUIHandle,10000,10000,0)


	    _ImageHandle = GUI:ImageGetImageID(_GUIHandle)
	    _ImageHandle = GUI:ImageGetColor(_GUIHandle)
	    _ImageHandle = GUI:ImageGetAlpha(_GUIHandle)

	  end

	
	--按钮闪烁
	_GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CommonExample.OnExit")
		GUI:ButtonSetShine(_GUIHandle,true)
		GUI:WndSetTextM(_GUIHandle,"回收RMB点")
		GUI:WndSetHint(_GUIHandle,"寄售系统")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true);
		GUI:WndSetTextArrangeType(_GUIHandle, 0, 0, 0, 0);
		GUI:ButtonSetStateTextColor(_GUIHandle, 0, mkcolor("GRAY"));
		GUI:ButtonSetStateTextColor(_GUIHandle, 1, mkcolor("GOLD2"));
		GUI:ButtonSetStateTextColor(_GUIHandle, 2, mkcolor("GOLD2"));
		WndAddEffect(_GUIHandle, nil, 3020100700, -11, -8, 150);
	end
end
								
--------------------------------------------------------------------------------------------------------------------------------------  
	--Hint
	GUI:WndSetHintWidth(handle, 300)
	GUI:WndSetHint(handle, "奖励:\n"..AWARD[i][2]..AWARD[i][3].."个;\n      "..AWARD[i][4]..AWARD[i][5].."个;\n")
--------------------------------------------------------------------------------------------------------------------------------------  

	--GUIData---------------------------------------------------------
	ITEMGUIDATA_ITEMGUID       =0  --GUID
	ITEMGUIDATA_IMAGEID        =1  --ICON
	ITEMGUIDATA_TYPE           =2  --类型：1代表物品 2代表技能
	ITEMGUIDATA_ITEMID         =3  --模版ID
	ITEMGUIDATA_PARAM          =4  --自定义参数
	ITEMGUIDATA_ITEMCOUNT      =5  --数量
	ITEMGUIDATA_INVALIDATE     =6  --是否有效
	ITEMGUIDATA_ISSTACKITEM    =7  --是否可堆叠
	ITEMGUIDATA_ITEMPOS        =8  --绝对位置
	ITEMGUIDATA_CDTIME         =9  --CD时间
	ITEMGUIDATA_CDSTARTTICK    =10 --CD开始时间
	ITEMGUIDATA_INCDSTATE      =11 --是否CD状态
	ITEMGUIDATA_ITEMLOCK       =12 --是否锁定
	ITEMGUIDATA_ITEMPRICETYPE  =13 --价格类型：1代表金币2代表元宝
	ITEMGUIDATA_ITEMPRICE      =14 --价格
	ITEMGUIDATA_ISSHOWBIND     =15 --是否绑定
	--模板属性--------------------------------------------------------------
	ITEM_PROP_ID                            =0    -- 物品编号
	ITEM_PROP_NAME                          =1    -- 名称
	ITEM_PROP_KEYNAME                       =2    -- 索引名称
	ITEM_PROP_TYPE                          =3    -- 主类型
	ITEM_PROP_SUBTYPE                       =4    -- 子类型
	ITEM_PROP_WEAPONTYPE                    =5    -- 武器类型
	ITEM_PROP_JUJUTYPE                      =6    -- 符咒类别
	ITEM_PROP_LOGICTYPE                     =7    -- 逻辑排列类别
	ITEM_PROP_LOGICSUBTYPE                  =8    -- 逻辑排列子类别
	ITEM_PROP_LS2                           =9    -- 包裹排列
	ITEM_PROP_SHOPTYPE                      =10   -- 出售修理类型
	ITEM_PROP_SAVELOG                       =11   -- 是否写记录
	ITEM_PROP_COLOR                         =12   -- 道具颜色
	ITEM_PROP_QUALITY                       =13   -- 品质
	ITEM_PROP_BIGICON                       =14   -- 角色模型图片
	ITEM_PROP_TIPSICON                      =15   -- 大图标
	ITEM_PROP_ICON                          =16   -- 图标编号
	ITEM_PROP_DROPICON                      =17   -- 掉落图标编号
	ITEM_PROP_AVATARMAN                     =18   -- 外形男
	ITEM_PROP_AVATARWOMEN                   =19   -- 外形女
	ITEM_PROP_WINGAVATARMAN                 =20   -- 翅膀模型男
	ITEM_PROP_WINGAVATARWOMEN               =21   -- 翅膀模型女
	ITEM_PROP_SHADOWAVATARMAN               =22   -- 影子男模型
	ITEM_PROP_SHADOWAVATARWOMEN             =23   -- 影子女模型
	ITEM_PROP_BRIEF                         =24   -- 物品介绍
	ITEM_PROP_DESC                          =25   -- 物品说明
	ITEM_PROP_NAQISOUND                     =26   -- 拿起拾取音效
	ITEM_PROP_FANGXIASOUND                  =27   -- 放下音效
	ITEM_PROP_SHIYONGSOUND                  =28   -- 使用音效
	ITEM_PROP_DIAOLUOSOUND                  =29   -- 掉落音效
	ITEM_PROP_CUTSOUND                      =30   -- 挥砍音效
	ITEM_PROP_HITSOUND                      =31   -- 命中音效
	ITEM_PROP_SELFWEIGHT                    =32   -- 重量
	ITEM_PROP_DURABILITY                    =33   -- 配置耐久度
	ITEM_PROP_DURZEROAUTODEL                =34   -- 耐久为0是否自动消失
	ITEM_PROP_STACK                         =35   -- 叠加数量
	ITEM_PROP_BINDTYPE                      =36   -- 绑定类型
	ITEM_PROP_TRADABLE                      =37   -- 是否可交易
	ITEM_PROP_SPEDROP                       =38   -- 特殊掉落
	ITEM_PROP_TIPDROP                       =39   -- 掉落提示
	ITEM_PROP_TIPSELL                       =40   -- 出售提示
	ITEM_PROP_CONFIRMATION                  =41   -- 使用是否确认
	ITEM_PROP_USECOUNT                      =42   -- 使用数量
	ITEM_PROP_USEZEROAUTODEL                =43   -- 使用次数为0是否自动消失
	ITEM_PROP_LEVEL                         =44   -- 使用等级
	ITEM_PROP_JOB                           =45   -- 使用职业
	ITEM_PROP_GENDER                        =46   -- 使用性别
	ITEM_PROP_PHYLIMIT                      =47   -- 物攻限制
	ITEM_PROP_MAGLIMIT                      =48   -- 魔攻限制
	ITEM_PROP_TAOLIMIT                      =49   -- 道术限制
	ITEM_PROP_EFFECT                        =50   -- 使用特效编号
	ITEM_PROP_DROPABLE                      =51   -- 可否丢弃
	ITEM_PROP_STORABLE                      =52   -- 可否放入仓库
	ITEM_PROP_REPAIRABLE                    =53   -- 可否修理
	ITEM_PROP_SELLABLE                      =54   -- 可否出售
	ITEM_PROP_CANAUCTION                    =55   -- 可否拍卖
	ITEM_PROP_CANPURCHASE                   =56   -- 可否收购
	ITEM_PROP_CANSHORTCUT                   =57   -- 可否放入快捷栏
	ITEM_PROP_TIMELIMIT                     =58   -- 存在时限
	ITEM_PROP_USEABSTIME                    =59   -- 绝对时间或相对时间
	ITEM_PROP_TIMEUPAUTODEL                 =60   -- 存在时限是否消失
	ITEM_PROP_TRACK                         =61   -- 跟踪级别
	ITEM_PROP_SCRIPT                        =62   -- 脚本编号
	ITEM_PROP_SUIT                          =63   -- 套装编号
	ITEM_PROP_IDENTIFY                      =64   -- 可否鉴定
	ITEM_PROP_CANUNEQUIP                    =65   -- 可否卸下
	ITEM_PROP_DRILLABLE                     =66   -- 可否打孔
	ITEM_PROP_MAXDRILL                      =67   -- 配置打孔数量上限
	ITEM_PROP_CANENHANCE                    =68   -- 可否强化
	ITEM_PROP_CANREFINE                     =69   -- 可否精炼
	ITEM_PROP_REFINECOSTDUR                 =70   -- 精炼失败掉落耐久
	ITEM_PROP_BAGSIZE                       =71   -- 开启背包格子数
	ITEM_PROP_WAREHOUSESIZE                 =72   -- 开启仓库格子数
	ITEM_PROP_SKILLID                       =73   -- 触发技能
	ITEM_PROP_HP                            =74   -- 生命
	ITEM_PROP_MP                            =75   -- 魔法
	ITEM_PROP_MAXPHYDEF                     =76   -- 物防上限
	ITEM_PROP_MINPHYDEF                     =77   -- 物防下限
	ITEM_PROP_MAXMAGDEF                     =78   -- 魔防上限
	ITEM_PROP_MINMAGDEF                     =79   -- 魔防下限
	ITEM_PROP_MAXPHYATK                     =80   -- 攻击力上限
	ITEM_PROP_MINPHYATK                     =81   -- 攻击力下限
	ITEM_PROP_MAXMAGATK                     =82   -- 魔攻上限
	ITEM_PROP_MINMAGATK                     =83   -- 魔攻下限
	ITEM_PROP_MAXTAOATK                     =84   -- 道术上限
	ITEM_PROP_MINTAOATK                     =85   -- 道术下限
	ITEM_PROP_EA1                           =86   -- 金相性攻击
	ITEM_PROP_EA2                           =87   -- 木相性攻击
	ITEM_PROP_EA3                           =88   -- 水相性攻击
	ITEM_PROP_EA4                           =89   -- 火相性攻击
	ITEM_PROP_EA5                           =90   -- 土相性攻击
	ITEM_PROP_ED1                           =91   -- 金相性防御
	ITEM_PROP_ED2                           =92   -- 木相性防御
	ITEM_PROP_ED3                           =93   -- 水相性防御
	ITEM_PROP_ED4                           =94   -- 火相性防御
	ITEM_PROP_ED5                           =95   -- 土相性防御
	ITEM_PROP_WEIGHT                        =96   -- 配置背包负重
	ITEM_PROP_EQUIPWEIGHT                   =97   -- 配置穿戴负重
	ITEM_PROP_BRAWN                         =98   -- 腕力
	ITEM_PROP_HIT                           =99   -- 准确（命中）
	ITEM_PROP_MISS                          =100  -- 敏捷（闪避）
	ITEM_PROP_MAGMISS                       =101  -- 魔法躲避
	ITEM_PROP_BURST                         =102  -- 爆击率
	ITEM_PROP_LC                            =103  -- 幸运诅咒
	ITEM_PROP_MOVESPEED                     =104  -- 移动速度
	ITEM_PROP_ATTACKSPEED                   =105  -- 攻击速度
	ITEM_PROP_POISON                        =106  -- 中毒回复值
	ITEM_PROP_HPREC                         =107  -- 生命回复值
	ITEM_PROP_MPREC                         =108  -- 魔法回复值
	ITEM_PROP_INTENSITY                     =109  -- 强度
	ITEM_PROP_SUCKHP                        =110  -- 吸血
	ITEM_PROP_SUCKHPPCT                     =111  -- 吸血百分比
	ITEM_PROP_SUCKMAXHPPCT                  =112  -- 吸血上限百分比
	ITEM_PROP_SUCKMP                        =113  -- 吸魔
	ITEM_PROP_SUCKMPPCT                     =114  -- 吸魔百分比
	ITEM_PROP_SUCKMAXMPPCT                  =115  -- 吸魔上限百分比
	ITEM_PROP_REFPHY                        =116  -- 物理伤害反射
	ITEM_PROP_REFPHYPCT                     =117  -- 物理伤害反射百分比
	ITEM_PROP_REFMAG                        =118  -- 魔法伤害反射数值
	ITEM_PROP_REFMAGPCT                     =119  -- 魔法伤害反射百分比
	ITEM_PROP_IMMMAG                        =120  -- 魔法伤害减免数值
	ITEM_PROP_IMMMAGPCT                     =121  -- 魔法伤害减免百分比
	ITEM_PROP_IMMPHY                        =122  -- 物理伤害减免数值
	ITEM_PROP_IMMPHYPCT                     =123  -- 物理伤害减免百分比
	ITEM_PROP_ISPHYIMM                      =124  -- 物理免疫
	ITEM_PROP_ISMAGIMM                      =125  -- 魔法免疫
	ITEM_PROP_SELLPRICE                     =126  -- 出售价格
	ITEM_PROP_BUYPRICE                      =127  -- 买入价格
	ITEM_PROP_BUNDLE                        =128  -- 打捆数量
	ITEM_PROP_BUNDLEDSTID                   =129  -- 打捆对应物品ID
	ITEM_PROP_BUFFID1                       =130  -- 道具自身携带的Buff1
	ITEM_PROP_BUFFID2                       =131  -- 道具自身携带的Buff2
	ITEM_PROP_BUFFID3                       =132  -- 道具自身携带的Buff3
	ITEM_PROP_BUFFID4                       =133  -- 道具自身携带的Buff4
	ITEM_PROP_RATE                          =134  -- 材料的概率加成
	ITEM_PROP_GEMTYPE                       =135  -- 宝石效果类型
	ITEM_PROP_GEMMATCH                      =136  -- 宝石与装备子类型匹配关系
	ITEM_PROP_GEMATT1                       =137  -- 宝石属性类型
	ITEM_PROP_GEMATTVALUE1                  =138  -- 宝石属性数值
	ITEM_PROP_GEMWARRIOR                    =139  -- 战士生效比率
	ITEM_PROP_GEMMAGE                       =140  -- 法师生效比率
	ITEM_PROP_GEMTAO                        =141  -- 道士生效比率
	ITEM_PROP_GEMLEVEL                      =142  -- 宝石等级
	ITEM_PROP_GEMSYNTHESISLEVEL             =143  -- 宝石合成符等级
	ITEM_PROP_GEMDIGLEVEL                   =144  -- 宝石摘除符等级
	ITEM_PROP_SYNTHESISID                   =145  -- 合成后生成的新宝石id
	--实体属性--------------------------------------------------------------
	ITEM_PROP_ENTITY_GUID               =146  -- guid
	ITEM_PROP_ENTITY_ID                 =147  -- 模板Id
	ITEM_PROP_ENTITY_NAME               =148  -- 名称
	ITEM_PROP_ENTITY_ROLE               =149  -- 拥有者GUID
	ITEM_PROP_ENTITY_SITE               =150  -- 当前所在的位置
	ITEM_PROP_ENTITY_AMOUNT             =151  -- 当前的堆叠数量
	ITEM_PROP_ENTITY_DURABILITY         =152  -- 装备耐久
	ITEM_PROP_ENTITY_MAX_DURABILITY     =153  -- 装备最大耐久
	ITEM_PROP_ENTITY_USE_COUNT          =154  -- 当前的使用次数
	ITEM_PROP_ENTITY_IS_BOUND           =155  -- 是否已绑定
	ITEM_PROP_ENTITY_LIFE               =156  -- 绝对时间起始或存活时间
	ITEM_PROP_ENTITY_EXT_LEN            =157  -- 扩展数据长度
	ITEM_PROP_ENTITY_EXT_DATA           =158  -- 扩展数据
	ITEM_PROP_EQUIP_VERSION             =166  -- 版本
	ITEM_PROP_EQUIP_QUALITY             =167  -- 品质属性
	ITEM_PROP_EQUIP_SLOTNUM             =168  -- 当前孔数量
	ITEM_PROP_EQUIP_GEMSLOT             =169  -- 宝石槽位
	ITEM_PROP_EQUIP_GEMS                =170  -- 宝石属性加成
	ITEM_PROP_EQUIP_IDENTIFIES          =170  -- 鉴定属性
	ITEM_PROP_EQUIP_REFINELEVEL         =171  -- 精炼等级
	ITEM_PROP_EQUIP_REFINEDATA          =172  -- 精炼属性
	ITEM_PROP_EQUIP_LUCKCURSE           =173  -- 幸运诅咒
	ITEM_PROP_EQUIP_EXT                 =174  -- 其他扩展
	-------------------------------------------------------------------------
function ItemCtr_模板属性_实体属性()
	--Get
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
		if item_guid ~= 0 and item_guid ~= "0" then  --注意后面要加字符串0判断
		end
	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
	--Set 填充物品框
	RDItemCtrlSetGUIDataPropByGUID(self.WndHandle, "item"..index,  item_guid);
	RDItemCtrlSetGUIDataPropByItemID(self.WndHandle, "item"..index,  item_id);
	RDItemCtrlSetGUIDataPropByKeyName(self.WndHandle, "item"..index,  item_keyname);
	RDItemCtrlSetGUIDataPropByType(self.WndHandle, "item"..index, ITEMGUIDATA_INVALIDATE, true)--设置物品框中GUIData属性值
	RDItemCtrlSetGUIDataEnable(_Handle, _Info, _Enable)--设置物品框物品是否有效，一般需要设置为true
	
	--模板属性获取(当然只有获取)
	local temp = CL:GetItemTemplateHandleByKeyName(crystal_KeyName) --根据物品的KeyName获取模版句柄

	--实体属性获取
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME 错误false")
		return
	end
	local Name = LuaRet;
	
	--自定义变量获取
	local Entity = CL:GetItemEntityHandleByGUID(item_guid); --实体句柄
	local crystalExp = CL:GetItemEntityCustomVarInt(Entity, "crystalExp"..sign);--根据实体句柄获取整型自定义变量。
	local Gem_keyName = CL:GetItemEntityCustomVarStr(Entity,"EquipHole"..i);--根据实体句柄获取字符串自定义变量。
	

	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
	if 0 ~= _ItemDataHandle then
		local icon = ""
		if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_ICON) then 
			icon = LuaRet;
		end
		LuaArg = icon
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID) --和上面的一样,上面更方便
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME 错误false")
		return
	end
	local Name = LuaRet;
	--最标准写法
	if not CL:GetItemTemplatePropByID(item_id, ITEM_PROP_COLOR) then
		return
	end
	local color =  LuaRet;
	WndSetTextColorM(CrystalSynthesis.WndHandle, "name"..index, RDCOLOR[color]);
	EditSetText(CrystalSynthesis.WndHandle, "name"..index, Name);
	
end
--------------------------------------------------------------------------------------------
--玩家属性----------------基本属性
ROLE_PROP_ROLEID              =0  --角色ID
ROLE_PROP_ROLENAME            =1  --角色名
ROLE_PROP_SEX                 =2  --性别
ROLE_PROP_JOB                 =3  --职业
ROLE_PROP_STATUS              =4  --状态:0＝活着的，1＝死亡,尸体完整的， 2＝残骸,被挖过的
ROLE_PROP_POSX                =5  --位置X坐标
ROLE_PROP_POSY                =6  --位置Y坐标
ROLE_PROP_DIR                 =7  --方向
ROLE_PROP_RESTHP              =8  --HP百分比
ROLE_PROP_HELMETID            =9  --头盔ID
ROLE_PROP_CLOTHESID           =10 --衣服ID
ROLE_PROP_WEAPONID            =11 --武器ID
ROLE_PROP_WEAPONITEMID        =12 --武器ID
ROLE_PROP_WINGSID             =13 --翅膀ID
ROLE_PROP_MOUNTID             =14 --坐骑ID
ROLE_PROP_HAIRCOLOR           =15 --发型颜色
ROLE_PROP_HAIRSTYLE           =16 --发型
ROLE_PROP_HEADER              =17 --头像
ROLE_PROP_LEVEL               =18 --等级
ROLE_PROP_FAMILY_NAME         =19 --行会名称
ROLE_PROP_FAMILY_TITLE        =20 --行会称号
ROLE_PROP_ALIAS               =21 --别名 

--玩家属性-----------------32位属性
ROLE_PROP32_LEVEL                         
ROLE_PROP32_JOB                         
ROLE_PROP32_HP                          --hp 
ROLE_PROP32_MAX_HP                      
ROLE_PROP32_MP                          --mp 
ROLE_PROP32_MAX_MP                      
ROLE_PROP32_MAX_PHY_DEF                 --physical defense 
ROLE_PROP32_MIN_PHY_DEF                 
ROLE_PROP32_MAX_MAG_DEF                 --magical defense
ROLE_PROP32_MIN_MAG_DEF                
ROLE_PROP32_MAX_PHY_ATK                 --physical attack
ROLE_PROP32_MIN_PHY_ATK                 
ROLE_PROP32_MAX_MAG_ATK                 --magical attack
ROLE_PROP32_MIN_MAG_ATK                 
ROLE_PROP32_MAX_TAO_ATK                 --taoism attack
ROLE_PROP32_MIN_TAO_ATK                 
ROLE_PROP32_HIT                         --命中
ROLE_PROP32_MISS                        --闪避
ROLE_PROP32_MOVE_SPEED                  --移动速度，基准值
ROLE_PROP32_ATTACK_SPEED                --攻击速度，基准值
ROLE_PROP32_WEIGHT                      --背包负重
ROLE_PROP32_MAX_WEIGHT                  
ROLE_PROP32_EQUIP_WEIGHT                --装备负重
ROLE_PROP32_MAX_EQUIP_WEIGHT            
ROLE_PROP32_BRAWN                       --腕力
ROLE_PROP32_MAX_BRAWN                   
ROLE_PROP32_POINT                       --剩余属性点
ROLE_PROP32_POINT_HP                    --hp point
ROLE_PROP32_POINT_MP                    --mp point
ROLE_PROP32_POINT_PHY_ATK               --physical attack point
ROLE_PROP32_POINT_MAG_ATK               --magical attack point
ROLE_PROP32_POINT_TAO_ATK               --taoism attack point
ROLE_PROP32_POINT_PHY_DEF               --physical defense point
ROLE_PROP32_POINT_MAG_DEF               --magical defense point
ROLE_PROP32_ELE_1_ATK                   --属性攻击1
ROLE_PROP32_ELE_2_ATK                   --属性攻击2
ROLE_PROP32_ELE_3_ATK                   --属性攻击3
ROLE_PROP32_ELE_4_ATK                   --属性攻击4
ROLE_PROP32_ELE_5_ATK                   --属性攻击5
ROLE_PROP32_ELE_1_DEF                   --属性防御1
ROLE_PROP32_ELE_2_DEF                   --属性防御2
ROLE_PROP32_ELE_3_DEF                   --属性防御3
ROLE_PROP32_ELE_4_DEF                   --属性防御4
ROLE_PROP32_ELE_5_DEF                   --属性防御5
ROLE_PROP32_HP_REC                      --hp回复速度
ROLE_PROP32_MP_REC                      --mp回复速度
ROLE_PROP32_POISON_REC                  --中毒恢复速度
ROLE_PROP32_ENERGY                      --活力
ROLE_PROP32_MAX_ENERGY                  --活力上限
ROLE_PROP32_BURST                       --暴击率
ROLE_PROP32_LUCK_CURSE                  --幸运诅咒
ROLE_PROP32_PK                          --PK值
ROLE_PROP32_PRESTIGE                    --声望
ROLE_PROP32_MERITORIOUS                 --功勋
ROLE_PROP32_ACHIEVEMENT                 --成就
ROLE_PROP32_REINCARNATION               
ROLE_PROP32_REIN_HP                     
ROLE_PROP32_REIN_MP                     
ROLE_PROP32_REIN_MAX_PHY_DEF            --physical defense
ROLE_PROP32_REIN_MIN_PHY_DEF            
ROLE_PROP32_REIN_MAX_MAG_DEF            --magical defense
ROLE_PROP32_REIN_MIN_MAG_DEF            
ROLE_PROP32_REIN_MAX_PHY_ATK            --physical attack
ROLE_PROP32_REIN_MIN_PHY_ATK            
ROLE_PROP32_REIN_MAX_MAG_ATK            --magical attack
ROLE_PROP32_REIN_MIN_MAG_ATK            
ROLE_PROP32_REIN_MAX_TAO_ATK            --taoism attack
ROLE_PROP32_REIN_MIN_TAO_ATK            
ROLE_PROP32_REIN_HIT                    --命中
ROLE_PROP32_REIN_MISS                   --闪避
ROLE_PROP32_REIN_BURST                  --暴击率
ROLE_PROP32_REIN_WEIGHT                 --背包负重
ROLE_PROP32_REIN_EQUIP_WEIGHT           --装备负重
ROLE_PROP32_REIN_BRAWN                  --腕力
ROLE_PROP32_BAG_SIZE_0                  --包裹0大小
ROLE_PROP32_BAG_SIZE_1                  --包裹1大小
ROLE_PROP32_BAG_SIZE_2                  --包裹2大小
ROLE_PROP32_BAG_SIZE_3                  --包裹3大小
ROLE_PROP32_BAG_SIZE_4                  --包裹4大小
ROLE_PROP32_WAREHOUSE_SIZE              --玩家的仓库大小
ROLE_PROP32_WAREHOUSE_ADV_SIZE          --玩家高级仓库大小
ROLE_PROP32_MAX_HP_PCT                  --hp
ROLE_PROP32_MAX_MP_PCT                  --mp
ROLE_PROP32_MAX_PHY_DEF_PCT             --physical defense
ROLE_PROP32_MIN_PHY_DEF_PCT             
ROLE_PROP32_MAX_MAG_DEF_PCT             --magical defense
ROLE_PROP32_MIN_MAG_DEF_PCT             
ROLE_PROP32_MAX_PHY_ATK_PCT             --physical attack
ROLE_PROP32_MIN_PHY_ATK_PCT             
ROLE_PROP32_MAX_MAG_ATK_PCT             --magical attack
ROLE_PROP32_MIN_MAG_ATK_PCT             
ROLE_PROP32_MAX_TAO_ATK_PCT             --taoism attack
ROLE_PROP32_MIN_TAO_ATK_PCT             
ROLE_PROP32_ELE_1_ATK_PCT               --属性攻击1
ROLE_PROP32_ELE_2_ATK_PCT               --属性攻击2
ROLE_PROP32_ELE_3_ATK_PCT               --属性攻击3
ROLE_PROP32_ELE_4_ATK_PCT               --属性攻击4
ROLE_PROP32_ELE_5_ATK_PCT               --属性攻击5
ROLE_PROP32_ELE_1_DEF_PCT               --属性防御1
ROLE_PROP32_ELE_2_DEF_PCT               --属性防御2
ROLE_PROP32_ELE_3_DEF_PCT               --属性防御3
ROLE_PROP32_ELE_4_DEF_PCT               --属性防御4
ROLE_PROP32_ELE_5_DEF_PCT               --属性防御5
ROLE_PROP32_MAX_WEIGHT_PCT              --背包负重
ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT        --装备负重
ROLE_PROP32_MAX_BRAWN_PCT               --腕力
ROLE_PROP32_HP_REC_PCT                  --hp回复速度
ROLE_PROP32_MP_REC_PCT                  --mp回复速度
ROLE_PROP32_POISON_REC_PCT              --中毒恢复速度
ROLE_PROP32_MOVE_SPEED_PCT              --移动速度
ROLE_PROP32_ATTACK_SPEED_PCT            --攻击速度
ROLE_PROP32_SUCK_HP                     --吸当前hp - 数值
ROLE_PROP32_SUCK_HP_PCT                 --吸当前hp - 百分比
ROLE_PROP32_SUCK_MAX_HP_PCT             --吸hp上限 - 百分比
ROLE_PROP32_SUCK_MP                     --吸当前mp - 数值
ROLE_PROP32_SUCK_MP_PCT                 --吸当前mp - 百分比
ROLE_PROP32_SUCK_MAX_MP_PCT             --吸mp上限 - 百分比
ROLE_PROP32_REF_PHY                     --物理伤害反射 - 数值
ROLE_PROP32_REF_PHY_PCT                 --物理伤害反射 - 百分比
ROLE_PROP32_REF_MAG                     --魔法伤害反射 - 数值
ROLE_PROP32_REF_MAG_PCT                 --魔法伤害反射 - 百分比
ROLE_PROP32_IMM_MAG                     --魔法伤害减免 - 数值
ROLE_PROP32_IMM_MAG_PCT                 --魔法伤害减免 - 百分比
ROLE_PROP32_IMM_PHY                     --物理伤害减免 - 数值
ROLE_PROP32_IMM_PHY_PCT                 --物理伤害减免 - 百分比
ROLE_PROP32_ATK_MODE                    --攻击类型
ROLE_PROP32_CAN_WALK                    --能走路
ROLE_PROP32_CAN_RUN                     --能跑步
ROLE_PROP32_CAN_TURN                    --能转向
ROLE_PROP32_CAN_JUMP_MAP                --能跳地图
ROLE_PROP32_CAN_PHY_ATK                 --能物理攻击
ROLE_PROP32_CAN_MAG_ATK                 --能魔法攻击
ROLE_PROP32_CAN_USE_ITEM                --能使用道具(包括换装)
ROLE_PROP32_IS_PHY_IMM                  --物理免疫
ROLE_PROP32_IS_MAG_IMM                  --魔法免疫
ROLE_PROP32_IS_STEALTH                  --隐形
ROLE_PROP32_HAS_MANA_SHIELD             --有mana shield
ROLE_PROP32_HAS_COLLIDE                 --处于冲撞状态
ROLE_PROP32_HAS_REPELLED                --处于击退状态
ROLE_PROP32_CAN_PUSH                    --能被推
ROLE_PROP32_CAN_USE_SKILL               --能使用技能
ROLE_PROP32_IS_BLACK                    --是否为黑名
ROLE_PROP32_HAS_IMM_SHIELD              --有imm shield
ROLE_PROP32_IMM_SHIELD                  --imm shield 值
ROLE_PROP32_HAS_BAG_GUARD               --有包裹防掉落
ROLE_PROP32_HAS_EQUIP_GUARD             --有装备防掉落
ROLE_PROP32_IS_GRAY                     --灰名
ROLE_PROP32_IS_CHAOS                    --混沌
ROLE_PROP32_IS_POISONING                -- 是否中毒(绿毒, 红毒走减防BUFF, 没有属性)
ROLE_PROP32_HAS_TEAM                    --有队伍
ROLE_PROP32_GENDER                      --性别
ROLE_PROP32_HEAD                        --头像
ROLE_PROP32_HAIR                        --头发
ROLE_PROP32_HAIR_COLOR                  --头发颜色
ROLE_PROP32_GM_LEVEL                    --gm等级
ROLE_PROP32_IDENTIFY                    --鉴定积分
ROLE_PROP32_TITLE                       --称号
ROLE_PROP32_GOLD_SETTLEMENT             --金币结算: 1金币结算 0:绑币结算
ROLE_PROP32_STALL                       --0: 未摆摊 1: 摆摊准备 2: 摆摊中
ROLE_PROP32_FRIEND_SWITCH               --0: 不可加好友       1: 可加好友
ROLE_PROP32_TEAM_SWITCH                 --0: 不接收队伍邀请   1: 接收队伍邀请
ROLE_PROP32_HAS_FAMILY                  -- 有行会
ROLE_PROP32_EXP_PCT                     -- 经验倍数
ROLE_PROP32_MAG_MISS                    -- 魔法闪避
ROLE_PROP32_INTENSITY                   -- 强度 
--玩家属性------------------------64位属性
ROLE_PROP64_EXP                           =0  --经验 
ROLE_PROP64_INGOT                         =1  --元宝
ROLE_PROP64_BIND_INGOT                    =2  --绑定元宝
ROLE_PROP64_INTEGRAL                      =3  --积分
ROLE_PROP64_GOLD                          =4  --金币
ROLE_PROP64_BIND_GOLD                     =5  --绑定金币
ROLE_PROP64_GOLD_DEPOSIT                  =6  --仓库金币

function GetPlayer_获取玩家属性()
	--获取玩家基本属性
	bool CL:GetPlayerSelfPropBase(int _PropertyType)
	bool CL:GetPlayerPropBase(const string& _RoleGUID, int _PropertyType)
	--获取玩家32位属性
	bool CL:GetPlayerSelfProperty32(int _PropertyType) 
	bool CL:GetPlayerProperty32(const string& _RoleGUID, int _PropertyType) 
	--获取玩家64位属性
	bool CL:GetPlayerSelfProperty64(int _PropertyType) 
	bool CL:GetPlayerProperty64(const string& _RoleGUID, int _PropertyType)


	_ItemCtrlHandle = CL:GetEquimentItemDataPart(14) --参数时装备位
end

--------------------------------------------------------------------------------------------
function 关闭窗口._Close(this)
	GUI:WndClose(GUI:WndGetParentM(this));
end
--------------------------------------------------------------------------------------------
--取得物品的主类型和子类型，看看是否是
local item_type = lualib:Item_GetType(player,item_site[i]) 
local item_subtype = lualib:Item_GetSubType(player, item_site[i])   --判断主类型是否为装备，1表示主类型为装备
if item_type ~= 1 then
	lualib:MsgBox(player, "你的包裹前10格有物品不是装备，休想糊弄我！")
end
function zhul(_handle)
	local handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item1")	
	local item_guid1 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid1) == 0 or item_guid1 == nil then
		msg("请放入需要强化的装备")
		return
	end
	handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item2")	
	local item_guid2 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid2) == 0 or item_guid2 == nil then
		msg("请放入蕴魂石")
		return
	end
	if UI:Lua_GUID2Str(item_guid1) then 
		item_guid1 = LuaRet
	end
	if UI:Lua_GUID2Str(item_guid2) then 
		item_guid2 = LuaRet
	end
	
	UI:Lua_SubmitForm("注灵表单", "YunHun_item", ""..item_guid1.."#"..item_guid2)
	-- dbg("item_guid1=============="..item_guid1..";item_guid2======"..item_guid2);
end

function forge_item(player,item_guid,job,yb_y)
	

	lualib:SysPromptMsg(player, "item_guid="..item_guid..";job="..job..";yb_y="..yb_y);

	local job = tonumber(job)
	local item_level_index = GetItemLevelIndex(item_guid);

	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_n")
	if jl_level >= 20 then
		lualib:SysPromptMsg(player, "已经强化到最高等级");
        return ""
    end
	
	local xing_num = lualib:GetInt(item_guid,"xing_num")
	-- if jl_level >= xing_num then
		-- lualib:SysPromptMsg(player, "强化次数不足");
		-- return ""
	-- end
	
	local refine_next_level = jl_level + 1
	local gold = EXPEND[item_level_index][refine_next_level][1][2];
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:SysPromptMsg(player, "金币不足");
		return ""
	end	
	
	local succ_rate = EXPEND[item_level_index][refine_next_level][2] 
	if tonumber(yb_y) == 1 then
		--保证成功扣元宝
		local yb = EXPEND[item_level_index][refine_next_level][3]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"元宝不足\");")
			-- lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			lualib:SysPromptMsg(player, "元宝不足");
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "扣元宝:100%强化成功", "系统") then
			lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"元宝扣除失败\");")
			return ""
		end
		succ_rate = 100
	end
	
	

	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	end	
	
	local ran = lualib:GenRandom(1,100)
	if ran > succ_rate then
		OfferData(player, item_guid);
		return ""
	end	
	
	
	
	if not lualib:Equip_SetRefineLevel(player, item_guid, refine_next_level) then
		-- lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);ForgeWnd.msg_up(\"强化失败\");")
		return "设置精炼等级失败,强化失败"
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
	local subType = lualib:Item_GetSubType(player, item_guid)
	if subType == 1 or subType == 8 or subType == 9 then
		--攻击
		if job == 0 then 
			---三职业通用装备
			local k = 0;
			local a = 10;
			for i = 1, 3 do 
				local old_prop_max = get_old_prop(player, item_guid, k);
				lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
				k = k + 1;
				a = a + 1;
				local old_prop_min = get_old_prop(player, item_guid, k);
				lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
				k = k + 1;
				a = a + 1;
			end
		else

			local old_prop_max = get_old_prop(player, item_guid, 0);
			lualib:Equip_SetExtProp(player, item_guid, 0, attack_att_name_max, old_prop_max + ATT[attack_att_name_max][item_level_index])
			local old_prop_min = get_old_prop(player, item_guid, 1);
			lualib:Equip_SetExtProp(player, item_guid, 1, attack_att_name_min, old_prop_min + ATT[attack_att_name_min][item_level_index])	
		end
	elseif subType == 2 or subType == 3 or subType == 4 or subType == 6 or subType == 7 then
		--攻击, 物防, 魔防
		if job == 0 then 
			local k = 2;
			local a = 6;
			for i = 1, 3 do 
				if i == 1 then 
				
					local old_prop_max = get_old_prop(player, item_guid, 0);
					lualib:Equip_SetExtProp(player, item_guid, 0, 10, old_prop_max + ATT[10][item_level_index])
					local old_prop_min = get_old_prop(player, item_guid, 1);
					lualib:Equip_SetExtProp(player, item_guid, 1, 11, old_prop_min + ATT[11][item_level_index])	
				else
				
					local old_prop_max = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
					k = k + 1;
					a = a + 1;
					local old_prop_min = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
					k = k + 1;
					a = a + 1;
				end
			end
			
		else
			local k = 2;
			local a = 6;
			for i = 1, 3 do 
				if i == 1 then 
				
					local old_prop_max = get_old_prop(player, item_guid, 0);
					lualib:Equip_SetExtProp(player, item_guid, 0, attack_att_name_max, old_prop_max + ATT[attack_att_name_max][item_level_index])
					local old_prop_min = get_old_prop(player, item_guid, 1);
					lualib:Equip_SetExtProp(player, item_guid, 1, attack_att_name_min, old_prop_min + ATT[attack_att_name_min][item_level_index])	
				else
				
					local old_prop_max = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
					k = k + 1;
					a = a + 1;
					local old_prop_min = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
					k = k + 1;
					a = a + 1;
				end
			end
		end
		
	elseif subType == 15 then  
		--物防,魔防
		local k = 0;
		local a = 6
		for i = 1 , 2 do 
			local old_prop_max = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
			k = k + 1;
			a = a + 1;
			local old_prop_min = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
			k = k + 1;
			a = a + 1;
		end
		
	elseif subType == 10 or subType == 11 or subType == 13 or subType == 18 then 
		--三攻击
		local k = 0;
		local a = 10;
		for i = 1, 3 do 
			local old_prop_max = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
			k = k + 1;
			a = a + 1;
			local old_prop_min = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
			k = k + 1;
			a = a + 1;
		end
		
	end

	
	
	lualib:Item_NotifyUpdate(player, item_guid)
    lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item_guid, 0, "精炼", "")
	
	-- lualib:SetInt(player, "Qiang_tip2", lualib:GetInt(player, "Qiang_tip2") + 1)   
	-- lualib:NotifyVar(player,"Qiang_tip2") 
	OfferData(player, item_guid);
	lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd:Get_EquipUpdate()")
	return ""
end	
------------------------------------------------------------------- 
function forge_item(player,item_guid,job,yb_y)
	

	lualib:SysPromptMsg(player, "item_guid="..item_guid..";job="..job..";yb_y="..yb_y);

	local job = tonumber(job)
	local item_level_index = GetItemLevelIndex(item_guid);

	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_n")
	if jl_level >= 20 then
		lualib:SysPromptMsg(player, "已经强化到最高等级");
        return ""
    end
	
	local xing_num = lualib:GetInt(item_guid,"xing_num")
	-- if jl_level >= xing_num then
		-- lualib:SysPromptMsg(player, "强化次数不足");
		-- return ""
	-- end
	
	local refine_next_level = jl_level + 1
	local gold = EXPEND[item_level_index][refine_next_level][1][2];
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:SysPromptMsg(player, "金币不足");
		return ""
	end	
	
	local succ_rate = EXPEND[item_level_index][refine_next_level][2] 
	if tonumber(yb_y) == 1 then
		--保证成功扣元宝
		local yb = EXPEND[item_level_index][refine_next_level][3]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"元宝不足\");")
			-- lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.YbTopUP_Dlg()") 
			lualib:SysPromptMsg(player, "元宝不足");
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "扣元宝:100%强化成功", "系统") then
			lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"元宝扣除失败\");")
			return ""
		end
		succ_rate = 100
	end
	
	

	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "扣绑定金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "扣金币:强化", "系统") then
			-- lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd.msg_up(\"金币扣除失败\");")
			return "金币扣除失败"
		end
	end	
	
	local ran = lualib:GenRandom(1,100)
	if ran > succ_rate then
		OfferData(player, item_guid);
		return ""
	end	
	
	
	
	if not lualib:Equip_SetRefineLevel(player, item_guid, refine_next_level) then
		-- lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);ForgeWnd.msg_up(\"强化失败\");")
		return "设置精炼等级失败,强化失败"
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
	local subType = lualib:Item_GetSubType(player, item_guid)
	if subType == 1 or subType == 8 or subType == 9 then
		--攻击
		if job == 0 then 
			---三职业通用装备
			local k = 0;
			local a = 10;
			for i = 1, 3 do 
				local old_prop_max = get_old_prop(player, item_guid, k);
				lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
				k = k + 1;
				a = a + 1;
				local old_prop_min = get_old_prop(player, item_guid, k);
				lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
				k = k + 1;
				a = a + 1;
			end
		else

			local old_prop_max = get_old_prop(player, item_guid, 0);
			lualib:Equip_SetExtProp(player, item_guid, 0, attack_att_name_max, old_prop_max + ATT[attack_att_name_max][item_level_index])
			local old_prop_min = get_old_prop(player, item_guid, 1);
			lualib:Equip_SetExtProp(player, item_guid, 1, attack_att_name_min, old_prop_min + ATT[attack_att_name_min][item_level_index])	
		end
	elseif subType == 2 or subType == 3 or subType == 4 or subType == 6 or subType == 7 then
		--攻击, 物防, 魔防
		if job == 0 then 
			local k = 2;
			local a = 6;
			for i = 1, 3 do 
				if i == 1 then 
				
					local old_prop_max = get_old_prop(player, item_guid, 0);
					lualib:Equip_SetExtProp(player, item_guid, 0, 10, old_prop_max + ATT[10][item_level_index])
					local old_prop_min = get_old_prop(player, item_guid, 1);
					lualib:Equip_SetExtProp(player, item_guid, 1, 11, old_prop_min + ATT[11][item_level_index])	
				else
				
					local old_prop_max = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
					k = k + 1;
					a = a + 1;
					local old_prop_min = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
					k = k + 1;
					a = a + 1;
				end
			end
			
		else
			local k = 2;
			local a = 6;
			for i = 1, 3 do 
				if i == 1 then 
				
					local old_prop_max = get_old_prop(player, item_guid, 0);
					lualib:Equip_SetExtProp(player, item_guid, 0, attack_att_name_max, old_prop_max + ATT[attack_att_name_max][item_level_index])
					local old_prop_min = get_old_prop(player, item_guid, 1);
					lualib:Equip_SetExtProp(player, item_guid, 1, attack_att_name_min, old_prop_min + ATT[attack_att_name_min][item_level_index])	
				else
				
					local old_prop_max = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
					k = k + 1;
					a = a + 1;
					local old_prop_min = get_old_prop(player, item_guid, k);
					lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
					k = k + 1;
					a = a + 1;
				end
			end
		end
		
	elseif subType == 15 then  
		--物防,魔防
		local k = 0;
		local a = 6
		for i = 1 , 2 do 
			local old_prop_max = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
			k = k + 1;
			a = a + 1;
			local old_prop_min = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
			k = k + 1;
			a = a + 1;
		end
		
	elseif subType == 10 or subType == 11 or subType == 13 or subType == 18 then 
		--三攻击
		local k = 0;
		local a = 10;
		for i = 1, 3 do 
			local old_prop_max = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_max + ATT[a][item_level_index])
			k = k + 1;
			a = a + 1;
			local old_prop_min = get_old_prop(player, item_guid, k);
			lualib:Equip_SetExtProp(player, item_guid, k, a, old_prop_min + ATT[a][item_level_index])	
			k = k + 1;
			a = a + 1;
		end
		
	end

	
	
	lualib:Item_NotifyUpdate(player, item_guid)
    lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item_guid, 0, "精炼", "")
	
	-- lualib:SetInt(player, "Qiang_tip2", lualib:GetInt(player, "Qiang_tip2") + 1)   
	-- lualib:NotifyVar(player,"Qiang_tip2") 
	OfferData(player, item_guid);
	lualib:ShowFormWithContent(player,"脚本表单","ForgeWnd:Get_EquipUpdate()")
	return ""
end	
----------------------------------------------------------------------

8--装备耐久--攻击模式下面的字 --装备EquimentNoticWindow窗口在GameLogic.lua脚本中
GameLogic.lua 中的函数都是固定固定触发么?都没有看到注册事件啊......----------------看到了有事件注册的
LUA_EVENT_CUSTOMDATALOAD 事件什么意思?    中AddAttackAutoUseSkill这个接口什么功能?
DrawBrokenEquimentHint  CL:GetBrokenEquiment    CL:TextOut
OnMainUIInit UI:Lua_GetWindow("GameMainInterface,EquimentNoticWindow") UI:Lua_SetDownLoadMessageInfo(50, 60, "GREENG")

9-------------------------------------------------------------------
function 头像攻击模式()
	--头像的攻击模式变换 没有提示, 攻击模式改变的事件可以在32位属性改变里面获取到,LUA_EVENT_CHANGEATTACMODE这个事件也有用
	CL:ChangeAttacMod(GUI:WndGetParam(_h))
	function PlayerHeaderInfo.prop32DataChange()
		CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
		-- UI:Lua_ShowTypeMsg(4, "[攻击模式:全体模式]")
		-- dbg("prop32DataChange---------------"..LuaParam[2].."---"..LuaParam[3])
		if LuaParam[1] == LuaRet then
			if LuaParam[2] == ROLE_PROP32_LEVEL then
				local uih = GUI:WndFindChildM(PlayerHeaderInfo._wnd, "playerLevel")
				if uih ~= 0 then
					GUI:EditSetTextM(uih, "Lv."..tostring(LuaParam[3]))
				end
			elseif LuaParam[2] == 125 then
				UI:Lua_InitChannelTextColor(0, 41, 170, 66, 255);
				UI:Lua_InitChannelFillBackColor(0, 0, 0, 0, 0);
				local _SetAttackMode = LuaParam[3];
				if _SetAttackMode == atk_mode_all then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:全体模式]")
				elseif _SetAttackMode == atk_mode_peace then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:和平模式]")
				elseif _SetAttackMode == atk_mode_team then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:组队模式]")
				elseif _SetAttackMode == atk_mode_guild then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:行会模式]")
				elseif _SetAttackMode == atk_mode_pk then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:善恶模式]")
				elseif _SetAttackMode == atk_mode_alliance then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:联盟模式]")
				elseif _SetAttackMode == atk_mode_camp then
					UI:Lua_ShowTypeMsg(4, "[攻击模式:阵营模式]")
				end
			end
		end
	end
end
	
function OpenUrlUseIEByType_打开游戏网址()
   CL:OpenUrlUseIEByType(3)
   1 代表注册页面
   2 代表修改密码页面
   3 代表充值页面
end 
	
	
	
--------------------------------------------------------------------------------------------    
function 进度条()  
	local billin = DATA[3];
	handle = GetWindow(self.WndHandle,"ButtonWin1,editRechargeNum")
	if handle ~= 0 then 
		GUI:EditSetTextM(handle, ""..billin)
	end
	handle = GetWindow(self.WndHandle,"ButtonWin1,ProgressBar")
	if handle ~= 0 then 
		if billin > DATA[1][1] then 
			billin = DATA[1][1];
		end
		percent = billin/DATA[1][1];
		GUI:ImageSetDrawRect(handle, 0, percent, 0, 1);
	end
end

--根据keyname统计一堆物品数量最优算法,妈的搞死我了,留个物品框,要统计放了几个,还要知道他放了什么宝石,妈蛋的
function 统计数量()
	local MATERIAL = {};
	for i = 1, 6 do 
		local handle = GetWindow(CrystalSynthesis.WndHandle, "item"..i);
		if handle ~= 0 then 
			local item_guid0 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
			if item_guid0 ~= 0 and item_guid0 ~= "0" then 
				if not CL:GetItemEntityPropByGUID(item_guid0, ITEM_PROP_KEYNAME) then
					return
				end
				local KeyName0 = LuaRet;
				if MATERIAL[KeyName0] then 
					MATERIAL[KeyName0] = MATERIAL[KeyName0] + 1;
				else
					MATERIAL[KeyName0] = 1;
				end
			end
		end
	end
end

--------------------------------------------------------------------------------------------    
	
--------------------------------------------------------------------------------------------
------------------------------------服务端
function API_服务端() end    
--在什么时间,什么地点,什么对象,在什么事件,在什么条件,执行什么操作
--------------------------------------------------------------------------------------------    
--------------------------------------------------------------------------------------------
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


10-------------------------------------------------------------------
	--宝宝相关,重复召唤问题   --走技能流程的话,那添加 天庭之唤.lua
	Player_Summon接口中宝宝等级的问题
	int32  Player_GetServantCount( string  strPlayer ) 取得玩家的随从的数量

11-------------------------------------------------------------------
	--技能相关  
	-- 附加BUFF技能配置
	-- 需要消耗道具配置
	-- 组技能配置?----这个是难点
	local skillExp = lualib:GetSkillExp(player,tb1[tonumber(skillid)])
	lualib:SetSkillExp(player,tb1[tonumber(skillid)],skillExp + lualib:GenRandom(1, 3) )

11-------------------------------------------------------------------
	--BUFF相关
	宝石10buff
	
12-------------------------------------------------------------------

13

-------------------------------------------------------------------
function 充值排行()

	function main(player)
		local qingming_date =  "2015-4-2";
		local iStartTime = lualib:Str2Time(qingming_date);
		local qingming_deadline =  "2016-4-4 23:59:59";
		local iEndTime = lualib:Str2Time(qingming_deadline);
		if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin > 0 and time > " .. iStartTime .." and time < " .. iEndTime, "vOnDBEvtResult", player) then
		-- if not lualib:PostDBEvt("select * from tblbilllog", "vOnDBEvtResult", player) then
		-- if not lualib:PostDBEvt("select * from columns where table_name=tblbilllog", "vOnDBEvtResult", player) then
			return "操作失败！"
		else
			return ""
			-- return "数据读取中！！！"
		end
		return ""
	end

	function vOnDBEvtResult(bResult,dwError,strError,iResultNum,tRecordSets,player)
		local msg_error = ""
		if bResult == false then
			lualib:SysPromptMsg(player, "bResult查询错误"..dwError..strError..#tRecordSets);
			return
		end
		
		local duration_totle_billin = 0
		for k, v in pairs(tRecordSets) do
			duration_totle_billin = duration_totle_billin + tonumber(v[2]);
		end
		-- lualib:SysPromptMsg(player, "bResult="..dwError..strError..#tRecordSets);
	end
end

-------------------------------------------------------------------
--对于这种奖励可以累积的真是有点麻烦的
function 满足哪个档次以及是否可以领奖最优算法()
	
	--先判断等级满足哪个档次
	local level = 0
	for i = 1, #AWARD do 
		if duration_totle_billin >= AWARD[i][1] then 
			level = i;
		else
			break;
		end
	end
	
	local hasGot = 0; 
	if level > 0 then 
		--条件满足的,再判断有没有领取过奖励
		for i = 1, level do 
			hasGot = lualib:GetInt(player, "iHasGotRechargeAward"..i)
			if hasGot = 0 then 
				break;
			end
		end
	end
	

	local DATA = {}
	if level = 0 then 
		DATA[1] = AWARD[1];
	else
		DATA[1] = AWARD[level];
	end
	DATA[2] = iIsGetAward;
	DATA[3] = duration_totle_billin;
	lualib:ShowFormWithContent(player, "脚本表单", "QMActivities:Updata(".. serialize(DATA)..")")
end
--------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
function 系统消息_右侧卷轴()
	lualib:SysTriggerMsg(player,"你有镖车，无法启动传送！");
	lualib:SysPromptMsg(player, "元宝不足");
	lualib:SysMapMsg(strMap, "攻城开始10分钟以后就可以占领皇宫,目前还剩"..t_m.."分钟.");
	

	local str = "[挑战BOSS]还有"..math.floor(times / 60000).."分钟开启。"
	lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", str, 15000)
	lualib:SysMsg_SendBroadcastMsg(str, "系统通知") 
	lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
	lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#群英争霸活动已开启，请从龙城群英争霸NPC处进入。#COLOREND#", 11, 2)  --竟然是黄色
	--消息滚动次数  前景 背景
	--1 = 黄色 2 = 红色 3 = 粉红 4 = 蓝色 5 = 浅蓝 6 = 深粉 7 = 白色 8 = 深蓝 9 = 亮蓝 10 = 深黄 11 = 透明 12 = 黑色 13 = 绿色

	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#进入无尽深渊，无尽深渊可从巫山城NPC处进入！#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
end

------------------------------------------------------------------- 
function 玩家操作()

	--人物属性获取
	Player_GetIntProp Player_SetIntProp  Player_GetStrProp  Player_GetGuidProp
	
	--添加复活触发
	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")         
	function on_trigger_player_relive(player)
	   lualib:ProgressBarStart(player, 10000, "复活中...", "on_relive_complete", "on_relive_abort", "")     --进度条
	   return false --在这里先不让玩家复活,后面用脚本接口使玩家复活
	end
	--神途武斗场.lua
	function on_relive_complete(player, param)
		local x = lualib:GenRandom(15, 59);
		local y = lualib:GenRandom(24, 71);
		lualib:Player_Relive(player, "", x, y, 12, 50)       --玩家复活在当前地图，坐标为x，y，范围为12，复活后血量为%50
	end
	
	---------------------------------------------------------------
--装备服务端操作流程
	--验证道具是否足够
	local keyname = tbl[index - 1]
	if not keyname then
		return "表越界"
	end
	local count = lualib:ItemCount(player, keyname);
	if count < 2 then 
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up('数量不足,无法完成合成')")
		return material[index][1].."数量不足,无法完成合成"
	end
	--验证金币是否足够
	local cost = material[index][2]
	if not lualib:Player_IsGoldEnough(player, cost, false) then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up('金币不足')") 
		return "金币不足"
	end 
	--扣金币
	if not lualib:Player_SubGold(player, cost, false, "扣金币：法宝合成", player) then
		lualib:Error("扣金币失败！name="..lualib:Name(player));
		return ""
	end
	--扣道具
	if not lualib:TakeItem(player, keyname, 2, "删道具:法宝合成", player) then 
		lualib:Error("扣道具失败"..lualib:Name(player));
		lualib:SysPromptMsg(player, "扣道具失败");
		return ""
	end
	--给道具
	local Item = tbl[index]
	if not Item then
		return "表越界"
	end
	if not lualib:AddItem(player, Item, 1, false, "给道具:法宝合成", player) then --给物品
		lualib:Error("给物品失败！name="..lualib:Name(player));
		return "给物品失败"
	end
	lualib:ShowFormWithContent(player,"脚本表单","win_msg_up('合成成功！！')")
	-- lualib:Item_NotifyUpdate(player, item_guid)
	lualib:ShowFormWithContent(player,"脚本表单","Com_Hat:Refresh()")
	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#成功合成了法宝【#COLOREND##COLORCOLOR_BLUE#"..material[index+1][1].."】，雄霸天下之日可待！";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return "合成成功！！"
	
	
	---------------------------------------------------------------
	
	
	
	--是否拥有
	if lualib:HasTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")                  --判断是否有复活这个触发
		lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")                        --删除该触发
	end
	
	if not HasQuest(player, quest_id) then
		return "没有该任务"
	end
	
	if lualib:Player_HasDgnTicket(player, "镇魔殿") then --判断玩家是否拥有副本门票.
		msg = msg.."#IMAGE&lt;ID:1902700018&gt;#&lt;@jump_member *01*「继续挑战&gt;」\n"
	end
	
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	if lualib:HasSkill(actor, skill_table[i], false) == true then
		lualib:Player_RunGMCmd(actor, "sd", skill_table[i]) --让玩家执行GM指令.
		lualib:SysMsg_SendWarnMsg(actor, "你的实力已经大大提升，"..skill_name[skillid].."已删除！若想学到该永久的终极技能，你可到龙城的藏宝阁看看！")
	end 
	
	--领取称号前，先判断玩家是否有该称号。若无则添加，有则不添。
	if not lualib:HasTitle(player, 1) then
		lualib:AddTitle(player, 1);
		return "领取成功"
	else
		return "你已经有该称号了!"
	end
	
	if lualib:HasItem(player, item) then
		print("玩家拥有该道具")
	else
		print("玩家没有该道具")
	end

	--扣金币
	--扣金币
	if not lualib:Player_IsGoldEnough(player, cost, false) then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up('金币不足')") 
		return "金币不足"
	end 
	
	if not lualib:Player_SubGold(player, cost, false, "扣金币", player) then
		lualib:Error("扣金币失败！name="..lualib:Name(player));
		return ""
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
		msg = msg.."当前传送需要1500金币"
		lualib:NPCTalk(player, msg)
		return ""
	end 
	if not lualib:Player_SubGold(player, gold, false, "扣金币", player) then
		lualib:Error("扣金币失败！name="..lualib:Name(player));
		return ""
	end
	--扣元宝
	if not lualib:Player_IsIngotEnough(player, 200, false) then
		lualib:SysPromptMsg(player, "元宝不足") 
		return ""
	end
	if not lualib:Player_SubIngot(player, 200, false, "玛雅神殿表单", "玛雅神殿表单") then 
		lualib:Error("扣元宝失败！name="..lualib:Name(player));
		return ""
	end
	--扣道具
	if not lualib:TakeItem(player, "道具keyname", 1, "删道具:原因", "发起者") then 
		lualib:Error("扣道具失败"..lualib:Name(player));
		lualib:SysPromptMsg(player, "扣道具失败");
		return ""
	end
	lualib:TakeItemEx(player, "道具keyname", 100, 2, false, true, false, false, "删道具:原因", "发起者")
	if not lualib:DelItem(player, k, v, 2, "宝石升级", player) then 
		lualib:Error("扣道具失败"..lualib:Name(player));
		lualib:SysPromptMsg(player, "扣道具失败");
		return ""
	end
	if not lualib:Item_Destroy(player, item, "丢骰子", player) then
		lualib:Error("扣道具失败"..lualib:Name(player));
		lualib:SysPromptMsg(player, "扣道具失败");
	end
	--给道具
	if not lualib:AddItem(player, xun_tab[next_level], 1, true, "升级勋章", player) then --给物品
		lualib:Error("给物品失败！name="..lualib:Name(player));
		return "给物品失败"
	end
	--加金币
	if not lualib:Player_AddGold(player, 5000, false, "挑战BOSS", player) then 
		lualib:Error("给金币失败！name="..lualib:Name(player));
	end
	
	
	--取得角色非绑定金币.
	local gold = lualib:GetGold(player)
	--获取道具数据
	local count = lualib:ItemCount(player, k);
	if count < v then 
		lualib:SysPromptMsg(player, "000000000000000"..v);
		return k.."数量不足,无法完成吞噬"
	end

end



---------------------------------------------------------------------------------------------------------------
function 定时器()
	strObject
	类型: string
	名称: 对象的GUID,对象可以为玩家、怪物、NPC、地图、物品、系统.
	说明: 对象的GUID,对象可以为玩家、怪物、NPC、地图、物品、系统.
	iElapse
	类型: uint32
	名称: 延时时间 单位(毫秒).
	说明: 延时时间 单位(毫秒).
	strCallBack
	类型: string
	名称: 触发时,回调该函数.函数格式: 1 = 函数名 2 = 文件名:函数名.
	说明: 触发时,回调该函数.函数格式: 1 = 函数名 2 = 文件名:函数名.
	strParams 
	类型: string
	名称: 自定义参数.
	说明: 自定义参数.
	lualib:DelayCall(map, 1, "GenRed", "")          --下一帧触发,带参数
	lualib:DelayCall(map, 5*60*1000, "GenRed", "")
	
	
	strObject 
	类型: string
	名称: 对象的GUID,对象可以为玩家、怪物、NPC、地图、物品、系统.
	说明: 对象的GUID,对象可以为玩家、怪物、NPC、地图、物品、系统. 
	dwTimerID 
	类型: uint32
	名称: 定时器的ID,同一象对下ID必须唯一.
	说明: 定时器的ID,同一象对下ID必须唯一. 
	iElapse 
	类型: int32
	名称: 定时器的触发间隔,单位:"毫秒."
	说明: 定时器的触发间隔,单位:"毫秒." 
	iCount 
	类型: int32
	名称: 定时器的触发次数.设为-1时,无限触发.
	说明: 定时器的触发次数.设为-1时,无限触发. 
	strCallBack 
	类型: string
	名称: 定时器触发时,回调该函数.函数格式: 1 = 函数名 2 = 文件名:函数名.
	说明: 定时器触发时,回调该函数.函数格式: 1 = 函数名 2 = 文件名:函数名. 
	strParam  
	类型: string
	名称: 定义参数,函数回调时自动传回.方便脚本作者上下文切换.
	说明: 定义参数,函数回调时自动传回.方便脚本作者上下文切换. 
	lualib:AddTimer(player, 1, 3*60*1000,  1, "dsssyaonpc_ssyao") --不带上下文参数
	lualib:AddTimerEx(map,  1, 3*60*1000, -1, "Judge", "")      --带上下文参数
	function Judge(map, id)
	end
end

--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--计划任务的定时回调（玩法逻辑部分）
--------------------------------------------------------------------------------
function 活动玩法脚本() end

function on_start(id, map)
end

function on_start_decl(id, map, times)
-- lualib:Error(lualib:KeyName(map));
	times = tonumber(times)
	if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
		local str = "[挑战BOSS]已开始，请英雄们速速进入困兽之地！"
		lualib:SysMsg_SendBroadcastMsg(str, "[挑战BOSS]")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色

	else 
		if times == 300000 then 
			local dgn = lualib:Map_CreateDgn("困兽之地", true, 40*60)
			if dgn == "" then
				lualib:Error("副本：困兽之地战创建失败！")
				return
			end
			lualib:Debug("副本：挑战BOSS战创建成功！")
			
			lualib:GSRunScript("全服弹窗", id)
			
			lualib:SetStr(map, "guild_map_guid", dgn)
			-- local cur_time = lualib:GetAllTime()
			-- lualib:SetInt(map, "guild_active_time", cur_time + 3600)
		end
		local str = "[挑战BOSS]还有"..math.floor(times / 60000).."分钟开启。"
		lualib:SysMsg_SendBroadcastMsg(str, "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
	end
end

function on_end_decl(id, map, times)
	times = tonumber(times)
	if times == 0 then
		lualib:SetStr(map, "guild_map_guid", "")
		-- lualib:SetInt(map, "guild_active_time", 0)
		lualib:SysMsg_SendBroadcastMsg("[挑战BOSS]已停止进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", "[挑战BOSS]已停止进入！", 15000)
	else
		lualib:SysMsg_SendBroadcastMsg("[挑战BOSS]将在"..math.floor(times / 60000).."分钟后停止进入！", "系统通知")
		lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", "[挑战BOSS]将在"..math.floor(times / 60000).."分钟后停止进入！", 15000)
	end
end

function 参加活动Goto(id,player,map)

	local map_key_name = "天怒之城"
	local x = 266
	local y = 284
	local r = 8
	local gold = 1500
	local msg = ""

	
	if lualib:HasBuff(player,"摆摊") then
		lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
		return true
	end
	
	if not lualib:IsEscorterDied(player) then
		lualib:SysTriggerMsg(player,"你有镖车，无法启动传送！")
		return true
	end
	
	local player_登录擂台 = lualib:GetInt(player,"登录擂台")
	if player_登录擂台 > 0 then
		lualib:SysWarnMsg(player,"〖提示〗擂台比武中，无法传送")
		return false
	end

	if not lualib:Player_IsGoldEnough(player, gold, false) then
		msg = msg.."当前传送需要1500金币"
		lualib:NPCTalk(player, msg)
		return true
	end 
	
	if not lualib:Player_SubGold(player, gold, false, "扣金币", player) then
		msg = msg.."扣除金币失败"
		lualib:NPCTalk(player, msg)
		return true
	end
	
	local player_x = lualib:X(player);
	local player_y = lualib:Y(player);
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0");
	
	--进入普通地图
	if not lualib:Player_MapMoveXY(player, map_key_name, x, y, r) then
		lualib:Error("玩家跳地图失败！"..player)
	end
	
	--进入副本地图
	local dgn = lualib:GetStr(lualib:Map_GetMapGuid("天怒之城"), "guild_map_guid");
	if not lualib:Map_IsDgnExist(dgn) then
		lualib:SysMsg_SendBroadcastMsg("[挑战BOSS]活动还未开始，无法进入！", "系统通知")
		return
	end 
	

end
	
function 全服执行脚本_全服弹窗_传送(player, id)

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 45 then 
		return 
	end

	local player_登录擂台 = lualib:GetInt(player,"登录擂台") 
	if player_登录擂台 > 0 then 
		return 
	end
	local msg = ""
	msg = msg.."　\n"
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　活动提示,\n"    
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　每日活动：#COLORCOLOR_MAGENTA#天降元宝#COLOREND#已开始，你是否要参加该活动？\n"    
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　请选择.\n"
	msg = msg.."　\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#IMAGE1902700018# <@enter *01*报名参加>　　#IMAGE1902700034# <@leave *01*关闭窗口>\\n"
	msg = msg.."　\n"
	msg = msg.."　\n"
	msg = msg.."#OFFSET<X:-38,Y:-215>##IMAGE<ID:1990705608>#\n"
	lualib:NPCTalk(player, msg)
	return msg
end

function 进入地图enter(player)
	local x = lualib:GenRandom(266,276)
	local y = lualib:GenRandom(275,285)
	local playername = lualib:KeyName(player)
	lualib:Player_MapMoveXY(player, "龙城", x, y, 10)
	lualib:Map_JumpXY(map_guid, player, x, y, 10) --根据guid跳
	lualib:Player_SetDgnTicket(player, dgn);
	lualib:Player_EnterDgn(player, "擂台", 20, 60, 5);
	return ""
end
	 			                      												
------------------------------------------------------------------------------------------------------------------------
local monster_tbl = {
	{ "世界BOSS"  , 1 , false } , 
}
local item_tbl = {
	{ "武器1"  , 1 , true } , 
	{ "武器2"  , 1 , true } , 
	{ "武器3"  , 1 , true } , 
	{ "武器4"  , 1 , true } , 
	{ "武器5"  , 1 , true } , 
	{ "武器6"  , 1 , true } , 
}
   
function 副本脚本on_map_create(sMapID)
	lualib:AddTrigger(sMapID, lua_trigger_leave_map , "on_leave_map" )
	lualib:AddTrigger(sMapID, lua_trigger_enter_map, "on_enter_map") 
	lualib:AddTrigger(sMapID, lua_trigger_monster_post_die, "on_monster_post_die") 
	for i = 1, #monster_tbl do
		lualib:Map_GenMonster(sMapID, 62, 45, 8, 4, monster_tbl[i][1], monster_tbl[i][2], monster_tbl[i][3]);
		-- lualib:Map_BatchGenMonster( sMapID , monster_tbl[i][1] , monster_tbl[i][2] , monster_tbl[i][3] );
	end
	return ""
end


  
function on_enter_map(player)
	--控制玩家能否进入
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")
	if open_hhzb_jinru == 1 then
		return
	end
	
	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#进入困兽之地，挑战BOSS！#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return ""
end


function on_leave_map(player)
	if not lualib:Player_IsPlayer(player) then
		return ""
	end
	local sMapID = lualib:MapGuid(player)
	return ""
end


--怪物死亡后触发,还可以获取到monster的x,y,mapGuid
function 怪物死亡on_monster_post_die(monster, killer)
	local mon_keyname = lualib:KeyName(monster);
	if mon_keyname ~= "世界BOSS" then 
		return ""
	end
	local player = ""
	mapGuid = lualib:MapGuid(killer)
	if not lualib:Player_IsPlayer(killer) then
		if lualib:GUIDType(killer) == 2 then
			player = lualib:Name2Guid(lualib:Monster_GetMaster(killer))
		else
			player = lualib:GetHeroLord(killer)
		end
	else
		player = killer
	end
	
	if lualib:Player_AddGold(player, 5000, false, "挑战BOSS", player) then 
		local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#击杀BOSS获得5000金币奖励，另有一地极品装备爆出，2分钟后保护失效，先到先得！#COLOREND#";
		lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	end
	
	local x, y = lualib:X(monster), lualib:Y(monster);
	local sMapID = lualib:MapGuid(monster)
	for i = 1, #item_tbl do
		if "" == lualib:Map_GenItem(sMapID, x, y, item_tbl[i][1], item_tbl[i][2], item_tbl[i][3], 120) then
		   lualib:Error("困兽之地地图刷物品失败！")
		   return ""
		end
	end
	return ""
end

9---------------------------------------------------------------------------------------------------------------
function 地图随机刷道具()
	lualib:Map_GenItemRnd(map, 276, 279, 18, "50元宝", 1, true, 155) --有保护时间设置,秒
end


------------------------------------------------------------------------------------------------------------------------
function 挑战BOSS表单()


	local cs_tab = {
		{"天荒教主副本"       ,   89 ,    146 },
		{"祖玛教主副本"       ,   89 ,    100 },
		{"赤月恶魔副本"       ,   89 ,    146 },
		{"牛魔王副本"        ,   89 ,    100 },
		{"魔龙教主副本"       ,   57 ,    89 },
		{"火龙副本"     ,   89 ,    100 }
	}

	local personboss = {
		{       
			{"天荒教主","（60级）",62},{"邪皇","（70级）",63},{"噬月魇魔","（80级）",64},
			{"牛魔王","（100级）",80},{"蛮荒教主","（140级）","转生1级"},{"炎龙","（180级）","转生2级"}
		},
		{
			{0,0682700300,"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"},   --第一个参数已经不用
			{0,0681600300,"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},
			{0,0682900300,"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},
			{0,0682000300,"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},
			{0,0682400300,"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},
			{0,0682800300,"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"}
		}
	}

	----*****      修改 bosslist 时  要同时修改 item_tab  两表长度必须一样   *****--------
	local bosslist =  {
		{0681500300,"触龙神"      ,"（40级）"  ,"15分钟"  ,"蜈蚣洞三层","BOSS大厅"},
		{0681200300,"白色恶猪"   ,"（50级）"  ,"15分钟"  ,"猪洞三层","BOSS大厅","玛雅神殿一层"},
		{0682700300,"沃玛教主"   ,"（60级）"  ,"15分钟","沃玛寺庙二层","玛雅神殿一层"},
		{0681600300,"祖玛教主"   ,"（70级）"  ,"30分钟","祖玛寺庙二层","BOSS大厅","玛雅神殿一层"},
		{0682900300,"赤月恶魔"   ,"（80级）"  ,"30分钟","赤月神殿五层","BOSS大厅","玛雅神殿一层"},
		{0682000300,"牛魔王"     ,"（100级）" ,"60分钟","牛魔洞三层","BOSS大厅","玛雅神殿一层"},
		{0683500300,"黄泉教主"   ,"（120级）" ,"120分钟","骨魔洞三层","BOSS大厅","玛雅神殿二层"},
		{0684600300,"暗夜女巫"   ,"（120级）" ,"120分钟","玛雅神殿二层"},
		{0682500300,"尸霸"       ,"（120级）" ,"120分钟","尸魔洞三层","BOSS大厅"},
		{0682300300,"虹魔教主"   ,"（120级）" ,"120分钟","封魔洞三层","BOSS大厅"},
		{0682400300,"魔龙教主"   ,"（140级）" ,"150分钟","魔龙城三层"},
		{0683100300,"火尾黑狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
		{0631900300,"金爪赤狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
		{0685300300,"玉面素狐王" ,"（140级）" ,"150分钟","狐月神殿三层","玛雅神殿三层"},
		{0683200300,"雪域魔王"   ,"（140级）" ,"150分钟","雪域试炼三层","BOSS大厅二层", "玛雅神殿三层"},
		{0683400300,"雷炎蛛王"   ,"（160级）" ,"180分钟","BOSS大厅","雷炎洞穴三层"},
		{0682800300,"火龙"       ,"（180级）" ,"180分钟","火龙神殿三层","BOSS大厅二层"},
		{0683800300,"阿修罗神"   ,"（180级）" ,"180分钟","天空之城三层","玛雅神殿四层"},
		{0683000300,"蛇妖王"     ,"（180级）" ,"180分钟","玄冰殿三层","玛雅神殿四层"},
		{0685100300,"深渊蛟龙"   ,"（180级）" ,"180分钟","玄冰殿三层"},
		{0681700300,"寒荒海兽"   ,"（180级）" ,"180分钟","海底世界三层","BOSS大厅二层","玛雅神殿四层"},
		{0683600300,"深海巨魔"   ,"（180级）" ,"180分钟","海底世界三层","BOSS大厅二层"},
		{0683300300,"巫妖王"     ,"（200级）" ,"180分钟","海底世界三层","BOSS大厅二层"},
		{0684700300,"炼狱巨魔"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
		{0683700300,"灭世魔君"   ,"（200级）" ,"240分钟","BOSS大厅三层"},
		{0684400300,"铁血魔王"   ,"（200级）" ,"360分钟","BOSS大厅三层"},
	}
		
	local item_tab = {
		{"坚固手套","龙之手镯","三眼手镯","蓝翡翠项链","恶魔铃铛大","凤凰明珠","黑铁头盔","魔法头盔"},--触龙神
		{"圣战手镯","法神手镯","天尊手镯","圣战戒指","法神戒指","天尊戒指","圣战头盔","法神头盔"},--白色恶猪
		{"战将手镯","法灵手镯","散人手镯","战将头盔","法灵头盔","散人头盔","战将戒指","法灵戒指"},--沃玛教主
		{"武魂手镯","魔魂手镯","玄魂手镯","武魂戒指","魔魂戒指","玄魂戒指","武魂靴子","魔魂靴子"},--祖玛教主
		{"天武手镯","天魔手镯","天灵手镯","天武戒指","天魔戒指","天灵戒指","天武项链","天魔项链"},--赤月恶魔
		{"圣武手镯","圣魔手镯","圣灵手镯","圣武靴子","圣魔靴子","圣灵靴子","神武戒指","神魔戒指"},--牛魔王
		{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武腰带","幻神腰带"},--黄泉教主
		{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武靴子","幻神靴子"},--暗夜女巫
		{"威武手镯","幻神手镯","无量手镯","威武戒指","幻神戒指","无量戒指","威武靴子","幻神靴子"},--尸霸
		{"威武手镯","幻神手镯","无量手镯","威武腰带","幻神腰带","无量腰带","威武靴子","幻神靴子"},--虹魔教主
		{"威武手镯","幻神手镯","无量手镯","洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子"},--魔龙教主
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天项链","天地玄奇项链"},--火尾黑狐王
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天头盔","天地玄奇头盔"},--金爪赤狐王
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天戒指","天地玄奇戒指","玄天妙法戒指","洪武行天靴子","天地玄奇靴子"},--玉面素狐王
		{"洪武行天手镯","天地玄奇手镯","玄天妙法手镯","洪武行天靴子","天地玄奇靴子","玄天妙法靴子","洪武行天戒指","天地玄奇戒指"},--雪域魔王
		{"雄武震天手镯","天异玄奥手镯","混天广法手镯","雄武震天头盔","天异玄奥头盔","混天广法头盔","雄武震天项链","天异玄奥项链"},--雷炎蛛王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天头盔","天魁玄灵头盔"},--火龙
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--阿修罗神
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--蛇妖王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--深渊蛟龙
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--寒荒海兽
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天腰带","天魁玄灵腰带"},--深海巨魔
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--巫妖王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天靴子","天魁玄灵靴子"},--炼狱魔王
		{"尊武凌天手镯","天魁玄灵手镯","鸿天明法手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"},--灭世魔君
		{"神威亢天手镯","天暴玄宗手镯","昊天玄尊手镯","尊武凌天戒指","天魁玄灵戒指","鸿天明法戒指","尊武凌天项链","天魁玄灵项链"}--铁血魔王
	}
	-----------------------图标显示-----------------------------
	function openChallengeBoss_show(player)
		
		AddSEIcon(player, 1, -3, "ChallengeBOSS", 1800200015, "倒计时", "openChallenge","","杀BOSS狂爆装备")
		openChallengeBoss_magic(player)
		return ""
	end

	function openChallengeBoss_magic(player)
		AddIconMagic(player, "ChallengeBOSS",3020300700,-43,-44, 180)
		return ""
	end
	
	-------------------图标被点击-----------------------
	function openChallenge(player)
		lualib:ShowFormWithContent(player, "form文件表单", "BossWnd")
		return ""
	end

end
------------------------------------------------------------------------------------------------------------------------
function NPC对话框()
	lualib:NPCTalk(player, msg);lualib:NPCTalk(player, "灵元秘境尚未开启！\n \n&lt;@leave *01*确定&gt;"); --npc,物品对话框
	lualib:NPCTalkEx(npc, player, msg)
	lualib:NPCTalkDetail(player, msg, 500, 300) --自定义长宽
	lualib:NPCTalkDetailEx(npc, player, msg, 400, 200)
	lualib:NPCTalkDetailQuest(npc, player, msg, 400, 200)--打开NPC的对话框和任务,没试过,应该是打开任务对话框
	
	
	lualib:SysMsg_SendRoleTalk(monster, "梵天僧：魔之天道，听我梵歌&hellip;&hellip;") --角色说话

end

	local msg = [[
	#POS<Y:25>##COLORCOLOR_ORANGE#这里是一直被封锁的行会地图,你确定要进去吗?
	
	#COLORCOLOR_BROWN#行会争霸入口#COLORCOLOR_RED#19:00开通#COLOREND#于#COLORCOLOR_RED#19:30关闭#COLOREND#
	#COLORCOLOR_BROWN#地图封闭后,药迟早会被消耗光,胜负拒绝一切借口!
	#COLORCOLOR_RED#注意:#COLORCOLOR_BROWN#当入口关闭后!请不要提前离开此地图!直到胜利结果产生！#COLOREND#
	#COLORCOLOR_BROWN#当彻底击杀最后一名敌对行会成员后即可获得胜利!奖励由获胜行会会长领取（３万金币）!
	
	#IMAGE1902700018#<@jump *01*[进入行会战争地图]>     #IMAGE1902700032#<@award *01*[领取奖励]>
	]]
	lualib:SetPanelSize(npc, 380, 200) --设置npc面板大小
	return msg

------------------------------------------------------------------------------------------------------------------------
------生肖
千万不能改生肖装备的子类型，不然就乱穿了
------------------------------------------------------------------------------------------------------------------------
如果需要脚本中只能运行在指定的代理商下或指定的区下可以在加密的部分中写上如下判断:
local gid = lualib:GetGroupId()

if gid ~= 11 then 
	lualib:Error("脚本不允许运行在未授权的组ID下")
	return ""
end
获取当前区所属代理商ID, lualib:GetAgentId()
获取当前区ID, lualib:GetZoneId()
获取当前游戏区服务器组ID, lualib:GetGroupId() 

--ENBEG--
--ENEND--
ly8926796
lijia521    
@gmbox main
CL:LoadLuaFile("GameLogic")
--字符串_FileName  指定要加载的lua文件，只指明文件名即可，不能包含文件路径及扩展名等信息。
--文件须放到主目录下的GUIScript文件夹或附加目录的GUIScript文件夹下。
CL:LoadLuaFileForce("GameLogic")
CL:LoadLuaFileForce("LogicFunction")
@rcs com_sx