生肖合成金币扣除有BUG
强化属性没有加
RichEdit带下划线
--客户端不更新启动table.concat( tablename, ", ", start_index, end_index )
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
	{ "keys": ["ctrl+alt+shift+a"], "command": "alignment" }
	
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


WndSetPosAt(_Handle, _Info, XPerct, YPerct) --设置窗口位置比例
function UI接口()
	GUI:WndSetEnableM(handle, false);
	--超大背景适应屏幕大小，同时兼容ui编辑器
	local _DeviceSizeX = CL:GetScreenWidth()
	local _DeviceSizeY = CL:GetScreenHeight()
	local handle = GetWindow(_Handle, "BackImage0")
	if handle ~= 0 then 
		GUI:WndSetPosM(handle, (_DeviceSizeX-1136)/2, (_DeviceSizeY-640)/2)
	end	
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
			GUI:WndSetTextArrangeType(_GUIHandle, 5, 3, 0, 0); --按钮文字偏移和排列
			GUI:WndSetTextColorM(_GUIHandle, MakeARGB(255, 238, 199, 150))
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
		CL:AddDelayTask("CrystalWnd.ChangeTab()", 300, 1)
		

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
		-- GUI:ItemCtrlSetJson(_GUIHandle, "SetJson") --根据json填充物品框
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
		GUI:WndRegistScript(_GUIHandle, RDWnd2DEditCL_key_enter, "TradeWnd_5.OnLBtnDown")
		GUI:WndRegistScript(_GUIHandle,1002, "TradeWnd_5.OnLBtnDown")
		GUI:EditSetBNumber(_GUIHandle,true) --ok 先显示文字，点击进入后直接变成数字，吊B技巧，直接一个搞定，不要那么麻烦好不好
        GUI:EditSetTextColor(_GUIHandle, _color[false])
        GUI:EditGetInt(handle)
        GUI:EditSetInt(_GUIHandle, 10) --显示的数字
        GUI:EditSetFontCenter(_GUIHandle) --ok,居中
        GUI:EditSetIsPassWord(_GUIHandle, false)
        GUI:EditSetMaxCharNum(_GUIHandle, 50)  --字符数，最大长度 
        GUI:EditSetCanEdit(_GUIHandle, true)
        GUI:EditSetTextM(_GUIHandle, "EditText")
        GUI:EditSetMultiLineEdit(_GUIHandle, false)
        GUI:EditSetLimitStringSize(_GUIHandle, false)
        GUI:EditSetRememberStrNum(_GUIHandle, 20)
	end
	function TradeWnd_5.OnLBtnDown(_Handle,_Param)
		-- dbg("dsadasda")
		local _color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 0, 0)}
		GUI:EditSetTextColor(_Handle, _color[true])
		GUI:EditSetTextM(_Handle, "") --不能这样，要下面那样
        GUI:EditSetInt(_GUIHandle, 0) --显示的数字
	end

	_GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit0",30,200,200,50)
  if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWnd2DRichEditCL_key_enter, "RichEditExample.OnKeyEnter")
    --GUI:RichEditSetEnable(_GUIHandle, true)
    GUI:RichEditClear(_GUIHandle)
    GUI:RichEditAppendString(_GUIHandle, "RichEdit0 ")
    GUI:RichEditAppendString(_GUIHandle, "RichEdit1 ")
    GUI:RichEditSetCurFont(_GUIHandle, "system")
    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18") --字体
    GUI:RichEditSetContentRect(_GUIHandle, 0, 0, 200, 50)
    GUI:RichEditSetTextItemAlpha(_GUIHandle, 0, 10, 255)
    GUI:RichEditSetDefaultTextColor(_GUIHandle, _color[false])
    GUI:RichEditSetTotalLine(_GUIHandle, 5)


    _RichEditHandle = GUI:RichEditGetSelectClickString(_GUIHandle)
    _RichEditHandle = GUI:RichEditGetTextItemCount(_GUIHandle)
    _RichEditHandle = GUI:RichEditGetAllString(_GUIHandle)


	LuaGlobal["RichEdit_RI_ShowUnderline"] = 1 --logicfunction.lua里面配置richedit是否带下划线
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
		GUI:ButtonSetShine(_GUIHandle,true) --不吃
		GUI:WndSetTextM(_GUIHandle,"回收RMB点")
		GUI:WndSetHint(_GUIHandle,"寄售系统")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true);
		GUI:WndSetTextArrangeType(_GUIHandle, 0, 0, 0, 0); --要吃
		GUI:ButtonSetStateTextColor(_GUIHandle, 0, mkcolor("GRAY"));
		GUI:ButtonSetStateTextColor(_GUIHandle, 1, mkcolor("GOLD2"));
		GUI:ButtonSetStateTextColor(_GUIHandle, 2, mkcolor("GOLD2"));
		WndAddEffect(_GUIHandle, nil, 3020100700, -11, -8, 150);
	end
	_GUIHandle = GetWindow(_Parent, "TestWndChild_9");
	if _GUIHandle ~= 0 then 
		GUI:WndSetTextArrangeType(_GUIHandle, 0, -2, 0, 0);

	end
	_GUIHandle = GetWindow(_Parent, "TestWndChild_10");
	if _GUIHandle ~= 0 then 
		GUI:WndSetTextArrangeType(_GUIHandle, 0, -2, 0, 0);
	end


	--ComboBoxCreate 组合框
	_GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1800000172,100,200,100,30,200)  --这个图片id是那个按钮的资源id
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWnd2DComboBoxCL_str_change, "ComboBoxExample.OnStrChange")
		GUI:ComboBoxSetScrollBarImage(_GUIHandle, 1800000085, 1800000001, 1800000089, 1800000005)
		GUI:ComboBoxSetScrollBarImage(_GUIHandle, 1900100003, 1900100003, 1900100003, 1900100120)
		GUI:ComboBoxSetListFillImage(_GUIHandle, 1900102100)
		_GUIHandleHandle = GUI:ComboBoxGetCurSelect(_GUIHandle)
		_GUIHandleHandle = GUI:ComboBoxGetCurSelectID(_GUIHandle)
		_GUIHandleHandle = GUI:ComboBoxGetListHandle(_GUIHandle)
		_GUIHandleHandle = GUI:ComboBoxGetEdit(_GUIHandle)
	
	end

	local _color = { [true] = MakeARGB(255, 0, 255, 0), [false] = MakeARGB(255, 255, 255, 255)}
	local _GUIHandle = GUI:WndFindChildM(_GUIHandle,"Combox0")
	if _GUIHandle ~= 0 then
		GUI:ComboBoxClear(_GUIHandle)
	    GUI:ComboBoxSetEditSize(_GUIHandle, 100, 30)
	    GUI:ComboBoxSetListLength(_GUIHandle, 80)
		GUI:ComboBoxAddString(_GUIHandle, "全部", 0, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "其他", 1, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "武器", 2, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "衣服", 3, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "头盔", 4, _color[false])
        GUI:ComboBoxAddString(_GUIHandle, "项链", 5, _color[false])
        GUI:ComboBoxAddString(_GUIHandle, "护腕", 6, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "戒指", 7, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "靴子", 8, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "勋章", 9, _color[false])		  
		GUI:ComboBoxSetCurSelect(_GUIHandle, 0)	 --设置当前显示条目，不设置不显示
	end
	local index = ComboBoxGetCurSelect(TradeWnd_5._wnd, "Combox0")
	if index == -1 or index == 0 then 
		win_msg_up("请选择货币种类")
		msg("请选择货币种类")		
		return
	end
	 function ComboBoxExample.OnStrChange(_Handle)
	  if _Handle ~= 0 then
	   GUI:ComboBoxSetListFillImage(_Handle, 1900102100)
	  end
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
	local _ItemGUIDataHandle = GUI:ItemCtrlGetGUIData(handle)
	--获取GUIData句柄中的数据
	if not CL:GetItemGUIDataPropByType(_ItemGUIDataHandle, ITEMGUIDATA_ITEMGUID) then 
		return false;
	end
	local item = LuaRet;
	--Set 填充物品框
	RDItemCtrlSetGUIDataPropByGUID(self.WndHandle, "item"..index,  item_guid);
	RDItemCtrlSetGUIDataPropByItemID(self.WndHandle, "item"..index,  item_id);
	RDItemCtrlSetGUIDataPropByKeyName(self.WndHandle, "item"..index,  item_keyname);
	RDItemCtrlSetGUIDataPropByType(self.WndHandle, "item"..index, ITEMGUIDATA_INVALIDATE, true)--设置物品框中GUIData属性值
	RDItemCtrlSetGUIDataEnable(_Handle, _Info, _Enable)--设置物品框物品是否有效，一般需要设置为true
	
	--模板属性获取(当然只有获取)
	local Entity    = CL:GetItemEntityHandleByGUID(item_guid)
	local temp      = CL:GetItemTemplateHandleByGUID(item_guid)
	local temp = CL:GetItemTemplateHandleByKeyName(KeyName) --根据物品的KeyName获取模版句柄
	if not CL:GetItemTemplatePropByHandle(temp, index) then
		return 
	end
	local value_max = LuaRet;	--获取模板属性
	
	--实体属性获取
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME 错误false")
		return;
	end
	local Name = LuaRet;

	if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then--获取堆叠数量
	local count = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEM_PROP_ENTITY_AMOUNT)--获取堆叠数量
	
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_EXT) then --获取道具扩展属性，服务端存的时候是0-9，客户端取的时候是1-10
		dbg("ITEM_PROP_EQUIP_EXT客户端获取道具扩展属性失败 错误false")
		return;
	end
	local data = LuaRet
		
		
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
	
function DBE( 查表字段值 )
	
	bool UI:Lua_FindDBE(const string& _DbeName,const string& _Name,const string& _KeyName,const string& _KeyValue)
	Lua接口：function FindDBE(DBEName,FindName,KeyName,KeyValue)
	功能：
	    这两个函数功能相同，查找DBE文件中的符合条件的条目的值，将所有符合条件的结果返回。
	    根据已知字段名字KeyName和字段的值KeyValue查询DBEName内FindName字段的值。
	参数：
	    字符串_DbeName     DBE文件名，不包含路径不包含扩展名。 
	    字符串_Name        要查询的属性。 
	    字符串_KeyName     条件属性。 
	    字符串_KeyValue    条件值。 
	Lua_FindDBE返回值：
	    true 表示执行成功
	    false 表示执行失败
	    如果函数返回true，查询结果从LuaRet中获取，是一个Lua table 。
	FindDBE返回值：
	    符合条件的Lua table
	说明：
	    当DBE文件中某个条目属性名为_KeyName并且条件值为_KeyValue时，函数会把该条目中的_Name所对应的字段值添加到全局lua变量LuaRet中，最终LuaRet是一个table。  
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

-----------------------------------------------------------------------------------------
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
	lualib:SysMsg_SendWarnMsg(player, "不是装备类型不可强化")
	lualib:SysPromptMsg(player, "元宝不足");
	lualib:SysMapMsg(strMap, "攻城开始10分钟以后就可以占领皇宫,目前还剩"..t_m.."分钟.");

	lualib:SysTipsMsg(player,"经验丹使用成功")                  --通知客户端显示消息，页游右下角，微端左下角
	lualib:SysMsg_SendBottomColor(player, "您的VIP等级不足", 7, 2) ----发送客户端底部消息.个人

	local str = "[挑战BOSS]还有"..math.floor(times / 60000).."分钟开启。"
	lualib:SysMsg_SendBoardMsg("0", "[挑战BOSS]", str, 15000)
	lualib:SysMsg_SendBroadcastMsg(str, "系统通知") --广播
	lualib:SysMsg_SendTopColor(2, str, 11, 13) --竟然是红色
	lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#群英争霸活动已开启，请从龙城群英争霸NPC处进入。#COLOREND#", 11, 2)  --竟然是黄色
	--消息滚动次数  前景 背景
	--1 = 黄色 2 = 红色 3 = 粉红 4 = 蓝色 5 = 浅蓝 6 = 深粉 7 = 白色 8 = 深蓝 9 = 亮蓝 10 = 深黄 11 = 透明 12 = 黑色 13 = 绿色

	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#进入无尽深渊，无尽深渊可从巫山城NPC处进入！#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
end

------------------------------------------------------------------- 
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

local itemJson = lualib:Item2Json(itemGUID) --生成道具JSON串
----------------------------------------------------------------------
function player_玩家操作()
	--同一个账号只能一个角色领取逻辑
	local index1 = lualib:GetInt(player, "iHasGotRechargeRC_AWARD1")
	local AccountName = lualib:AccountName(player)
	local GUID = lualib:GetDBStr(AccountName.."QM");
	if GUID ~= "" then 
		if GUID ~=  player then 
			return "同一个账号只可以有一个角色参与领奖"
		end
	else
		lualib:SetDBStr(AccountName.."QM", player);
	end
	--人物属性获取
	lualib:God(lualib:Name2Guid("阿萨斯"))  --根据玩家名字获取guid
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
	----验证道具是否足够
	local require_count = EXPEND[item_level_index][refine_next_level][1][2]
	local count = lualib:ItemCount(player, material);
	if count < require_count then 
		local msg = string.format("%q", lualib:KeyName2Name(material, 4).."数量不足,无法完成合成")
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up("..msg..")")
		return lualib:KeyName2Name(material, 4).."数量不足,无法完成合成"
	end
	--验证金币是否足够
	local cost = material[index][2]
	if not lualib:Player_IsGoldEnough(player, cost, false) then
		lualib:ShowFormWithContent(player,"脚本表单","win_msg_up('金币不足')") 
		return "金币不足"
	end 
	--扣金币
	if not lualib:Player_SubGold(player, cost, false, "扣金币:法宝合成", player) then
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
	
	if not lualib:HasItem(player, item) then
		return "玩家没有该道具"
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
	--加元宝
   	if not lualib:Player_AddIngot(player, ingot[item_id], false, "加元宝：使用元宝道具", player) then
   		lualib:Error("给元宝失败！name="..lualib:Name(player));
        lualib:SysMsg_SendTipsMsg(player, "添加元宝失败！")
		lualib:SysMsg_SendWarnMsg(player, "添加元宝失败！")
        return ""
    end
	--加绑元
	local bind_ingot = lualib:GetBindIngot(player)
	if not lualib:AddBindIngot(player, ingot, "添加绑定元宝:原因", "发起者") then
		lualib:Error("给绑元失败！name="..lualib:Name(player));
	end
	--元宝是否足够
	if not lualib:Player_IsIngotEnough(player, ingot, false) then
    	return "元宝不足"
	end
	if not lualib:SubBindIngot(player, lualib:GetBindIngot(player), "扣除绑定元宝原因", lualib:Name(player)) then
		lualib:Error("扣绑元失败！name="..lualib:Name(player));
	end
	--取得角色非绑定金币.
	local gold = lualib:GetGold(player)
	--获取道具数据
	local count = lualib:ItemCount(player, k);
	if count < v then 
		lualib:SysPromptMsg(player, "000000000000000"..v);
		return k.."数量不足,无法完成吞噬"
	end


	--根据guid批量删除玩家道具
    local guids = {"5432GH32", "7472GH51"}
    local ret = lualib:DelItemsBatch(player, guids, "回收", "脚本")
    if not ret then
    	lualib:SysWarnMsg(player, "批量删除物品失败")
    end

    --根据keyname批量删除玩家道具
    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "事务操作：镖酬礼包奖励", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."使用失败，背包已满！")
        return false
    end


	--内功经验
/**
     * @b 添加角色内功经验.
     * 添加角色内功经验.
     * @param strPlayer 玩家的GUID.
     * @param iExp 经验数量.
     * @param strDesc 动作的原因.
     * @param strTarget 动作的发起者.
     * @return 成功或失败.
     * @remarks 无.
     * @warning 无.
     * @note@verbinclude Player_AddInnerForceExp.lua
     * @version 0.926及以上版本.
     */
    bool Player_AddInnerForceExp(const std::string& strPlayer, INT32 iExp,
                       const std::string& strDesc, const std::string& strTarget);

    /**
     * @b 扣除角色内功经验.
     * 扣除角色内功经验.
     * @param strPlayer 玩家的GUID.
     * @param iExp 经验数量.
     * @param strDesc 动作的原因.
     * @param strTarget 动作的发起者.
     * @return 成功或失败.
     * @remarks 无.
     * @warning 无.
     * @note@verbinclude Player_SubInnerForceExp.lua
     * @version 0.926及以上版本.
     */
    bool Player_SubInnerForceExp(const std::string& strPlayer, INT32 iExp,
    const std::string& strDesc, const std::string& strTarget);

end

--物品配置表信息
local table1 = lualib:Item_DataRow(zb_keyname1)  
local BuyPrice1 = table1["BuyPrice"]
--怪物配置表信息
table  Monster_DataRow( 
    string  strMonsterKey 
)

function monster_怪物宝宝操作(  )
	SetServantPickItem这个是宝宝自动拾取的接口
end

function object_对象操作(  )
	--uint8 对象类型 2=怪物 3=NPC 4=道具 5=地图 17=技能 18=Buff 其他无效.
	local name = lualib:KeyName2Name(material, 4); --根据keyname获取对象name
    local Guid = lualib:Name2Guid(toName)根据---name获取对象GUID,玩家如果不在线就找不到.
    if Guid == "" then
        lualib:SysMsg_SendTriggerMsg(player, "目标玩家不在线!")
   	 	return false
    end
    local item_id = lualib:KeyName2Id(keyname, 4); --根据keyname获取对象name

end

---------------------------------------------------------------------------------------------------------------
function Timer_定时器()
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
function campaign_活动玩法脚本() end

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
			
			lualib:GSRunScript("全服弹窗", id) --全服弹窗
			
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

function Goto_参加活动(id,player,map)

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

function enter_进入地图(player)
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
   
function on_map_create_副本脚本(sMapID)
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

lua_gender_null = 0 
lua_gender_male = 1            --- 男
lua_gender_female = 2          --- 女
lua_gender_max = 3

lua_job_null = 0 
lua_job_warrior = 1            --- 战士
lua_job_mage = 2               --- 法师
lua_job_tao = 3                --- 道士
lua_job_max = 4

lua_role_level = 0 
lua_role_job = 1
lua_role_hp = 2                    --- hp               
lua_role_max_hp = 3  
lua_role_mp = 4                    --- mp
lua_role_max_mp = 5 
lua_role_max_phy_def = 6           --- physical defense
lua_role_min_phy_def = 7 
lua_role_max_mag_def = 8           --- magical defense
lua_role_min_mag_def = 9   
lua_role_max_phy_atk = 10           --- physical attack
lua_role_min_phy_atk = 11 
lua_role_max_mag_atk = 12           --- magical attack
lua_role_min_mag_atk = 13  
lua_role_max_tao_atk = 14           --- taoism attack
lua_role_min_tao_atk = 15  

lua_role_hit = 16                   --- 命中
lua_role_miss = 17                  --- 闪避
lua_role_move_speed = 18            --- 移动速度，基准值
lua_role_attack_speed = 19	        --- 攻击速度，基准值

lua_role_weight = 20                --- 背包负重
lua_role_max_weight = 21
lua_role_equip_weight = 22          --- 装备负重
lua_role_max_equip_weight = 23
lua_role_brawn = 24                 --- 腕力
lua_role_max_brawn = 25

lua_role_point = 26                 --- 剩余属性点
lua_role_point_hp = 27              --- hp point
lua_role_point_mp = 28              --- mp point
lua_role_point_phy_atk = 29         --- physical attack point
lua_role_point_mag_atk = 30         --- magical attack point
lua_role_point_tao_atk = 31         --- taoism attack point
lua_role_point_phy_def = 32         --- physical defense point
lua_role_point_mag_def = 33         --- magical defense point

lua_role_ele_1_atk = 34             --- 属性攻击1
lua_role_ele_2_atk = 35             --- 属性攻击2
lua_role_ele_3_atk = 36             --- 属性攻击3
lua_role_ele_4_atk = 37             --- 属性攻击4
lua_role_ele_5_atk = 38             --- 属性攻击5

lua_role_ele_1_def = 39             --- 属性防御1
lua_role_ele_2_def = 40             --- 属性防御2
lua_role_ele_3_def = 41             --- 属性防御3
lua_role_ele_4_def = 42             --- 属性防御4
lua_role_ele_5_def = 43             --- 属性防御5

lua_role_hp_rec = 44                --- hp回复速度
lua_role_mp_rec = 45                --- mp回复速度
lua_role_poison_rec = 46            --- 中毒恢复速度

lua_role_energy = 47                --- 活力
lua_role_max_energy = 48            --- 活力上限

lua_role_burst = 49                 --- 暴击率
lua_role_luck_curse = 50            --- 幸运-诅咒
lua_role_pk = 51                    --- PK值
lua_role_prestige = 52              --- 声望
lua_role_meritorious = 53           --- 功勋
lua_role_achievement = 54           --- 成就

--------------------------------------------------------------------------
--- 转生
lua_role_reincarnation = 55         
lua_role_rein_hp = 56  
lua_role_rein_mp = 57 
lua_role_rein_max_phy_def = 58      --- physical defense
lua_role_rein_min_phy_def = 59 
lua_role_rein_max_mag_def = 60      --- magical defense
lua_role_rein_min_mag_def = 61   
lua_role_rein_max_phy_atk = 62      --- physical attack
lua_role_rein_min_phy_atk = 63 
lua_role_rein_max_mag_atk = 64      --- magical attack
lua_role_rein_min_mag_atk = 65  
lua_role_rein_max_tao_atk = 66      --- taoism attack
lua_role_rein_min_tao_atk = 67  
lua_role_rein_hit = 68              --- 命中
lua_role_rein_miss = 69             --- 闪避
lua_role_rein_burst = 70            --- 暴击率
lua_role_rein_weight = 71           --- 背包负重
lua_role_rein_equip_weight = 72     --- 装备负重
lua_role_rein_brawn = 73            --- 腕力
--------------------------------------------------------------------------

lua_role_bag_size_0 = 74            --- 包裹0大小
lua_role_bag_size_1 = 75            --- 包裹1大小
lua_role_bag_size_2 = 76            --- 包裹2大小
lua_role_bag_size_3 = 77            --- 包裹3大小
lua_role_bag_size_4 = 78            --- 包裹4大小

lua_role_warehouse_size = 79        --- 玩家的仓库大小
lua_role_warehouse_adv_size = 80    --- 玩家高级仓库大小
--------------------------------------------------------------------------

--- role 运行时百分比加成
lua_role_max_hp_pct = 81                --- hp 
lua_role_max_mp_pct = 82                --- mp
lua_role_max_phy_def_pct = 83           --- physical defense
lua_role_min_phy_def_pct = 84 
lua_role_max_mag_def_pct = 85           --- magical defense
lua_role_min_mag_def_pct = 86   
lua_role_max_phy_atk_pct = 87           --- physical attack
lua_role_min_phy_atk_pct = 88 
lua_role_max_mag_atk_pct = 89           --- magical attack
lua_role_min_mag_atk_pct = 90  
lua_role_max_tao_atk_pct = 91           --- taoism attack
lua_role_min_tao_atk_pct = 92  

lua_role_ele_1_atk_pct = 93             --- 属性攻击1
lua_role_ele_2_atk_pct = 94             --- 属性攻击2
lua_role_ele_3_atk_pct = 95             --- 属性攻击3
lua_role_ele_4_atk_pct = 96             --- 属性攻击4
lua_role_ele_5_atk_pct = 97             --- 属性攻击5

lua_role_ele_1_def_pct = 98             --- 属性防御1
lua_role_ele_2_def_pct = 99             --- 属性防御2
lua_role_ele_3_def_pct = 100             --- 属性防御3
lua_role_ele_4_def_pct = 101             --- 属性防御4
lua_role_ele_5_def_pct = 102             --- 属性防御5

lua_role_max_weight_pct = 103            --- 背包负重     
lua_role_max_equip_weight_pct = 104      --- 装备负重            
lua_role_max_brawn_pct = 105             --- 腕力

lua_role_hp_rec_pct = 106                --- hp回复速度
lua_role_mp_rec_pct = 107                --- mp回复速度
lua_role_poison_rec_pct = 108            --- 中毒恢复速度

--------------------------------------------------------------------------
--- 速度相关，另外一套运算
lua_role_move_speed_pct = 109            --- 移动速度
lua_role_attack_speed_pct = 110	        --- 攻击速度
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--- 战斗属性
--------------------------------------------------------------------------
lua_role_suck_hp = 111               ---	吸当前hp - 数值
lua_role_suck_hp_pct = 112           --- 吸当前hp - 百分比
lua_role_suck_max_hp_pct = 113       ---	吸hp上限 - 百分比

lua_role_suck_mp = 114               ---	吸当前mp - 数值
lua_role_suck_mp_pct = 115           --- 吸当前mp - 百分比
lua_role_suck_max_mp_pct = 116       ---	吸mp上限 - 百分比

lua_role_ref_phy = 117               --- 物理伤害反射 - 数值
lua_role_ref_phy_pct = 118           --- 物理伤害反射 - 百分比

lua_role_ref_mag = 119               --- 魔法伤害反射 - 数值
lua_role_ref_mag_pct = 120           --- 魔法伤害反射 - 百分比

lua_role_imm_mag = 121               --- 魔法伤害减免 - 数值
lua_role_imm_mag_pct = 122           --- 魔法伤害减免 - 百分比

lua_role_imm_phy = 123               --- 物理伤害减免 - 数值
lua_role_imm_phy_pct = 124           --- 物理伤害减免 - 百分比
--------------------------------------------------------------------------

lua_role_atk_mode = 125              --- 攻击类型

--------------------------------------------------------------------------
--- 状态开关
--------------------------------------------------------------------------
lua_role_can_walk = 126              --- 能走路
lua_role_can_run = 127               --- 能跑步
lua_role_can_turn = 128              --- 能转向
lua_role_can_jump_map = 129          --- 能跳地图
lua_role_can_phy_atk = 130           --- 能物理攻击
lua_role_can_mag_atk = 131           --- 能魔法攻击
lua_role_can_use_item = 132          --- 能使用道具(包括换装)

lua_role_is_phy_imm = 133            --- 物理免疫
lua_role_is_mag_imm = 134            --- 魔法免疫
lua_role_is_stealth = 135            --- 隐形

lua_role_has_mana_shield = 136       --- 有mana shield
lua_role_has_collide = 137           --- 处于冲撞状态
lua_role_has_repelled = 138          --- 处于击退状态
lua_role_can_push = 139              --- 能被推
lua_role_can_use_skill = 140         --- 能使用技能

lua_role_is_black = 141              --- 是否为黑名

lua_role_has_imm_shield = 142        --- 有imm shield
lua_role_imm_shield = 143            --- imm shield 值

lua_role_has_bag_guard = 144         --- 有包裹防掉落
lua_role_has_equip_guard = 145       --- 有装备防掉落
lua_role_is_gray = 146               --- 灰名
lua_role_is_chaos = 147              --- 混沌
lua_role_is_poisoning = 148          --- 是否中毒(绿毒, 红毒走减防BUFF, 没有属性)
lua_role_is_ghost = 149              --- 是否ghost
lua_role_is_pk = 150                 --- 是否pk状态

lua_role_inner_force = 155                 --- 角色内功值
lua_role_inner_force_lv = 156                 --- 角色内功等级
lua_role_inner_force_rec = 157                 --- 内功恢复速度
lua_role_inner_force_rec_pct = 158                 --- 内功恢复速度百分比

--------------------------------------------------------------------------
--- 注意: 以上枚举不可随意变更 = 151 新增需放在尾部 !!!
--------------------------------------------------------------------------

lua_role_has_team = 180         --- 有队伍
lua_role_gender = 181                --- 性别
lua_role_head = 182                  --- 头像
lua_role_hair = 183                  --- 头发
lua_role_hair_color = 184            --- 头发颜色
lua_role_gm_level = 185              --- gm等级
lua_role_identify = 186              --- 鉴定积分
lua_role_title = 187                 --- 称号
lua_role_gold_settlement = 188       --- 金币结算: 1金币结算 0:绑币结算
lua_role_stall = 189                 --- 0: 未摆摊 1: 摆摊准备 2: 摆摊中
lua_role_friend_switch = 190         --- 0: 不可加好友       1: 可加好友
lua_role_team_switch = 191           --- 0: 不接收队伍邀请   1: 接收队伍邀请
lua_role_has_family = 192            --- 有行会
lua_role_exp_pct = 193               --- 经验倍数
lua_role_mag_miss = 194              --- 魔法闪避
lua_role_intensity = 195             --- 强度
lua_role_attack_pct = 196            --- 攻击力倍数
lua_role_defense_pct = 197           --- 防御力倍数
lua_role_gp_runtime = 198            --- gp error in runtime
lua_role_gp = 199                    --- gp error in db
lua_role_ride_switch = 200           --- 骑马开关
lua_role_vip_level = 201             --- 角色vip等级
lua_role_vip_buytimes = 202          --- 角色vip购买时间
lua_role_lock_switch = 203           --- 锁开关(0: 未解锁 1: 已解锁)
lua_role_effect1 = 204               --- 特效
lua_role_effect2 = 205
lua_role_effect3 = 206
lua_role_effect4 = 207
lua_role_effect5 = 208
lua_role_camp = 209                  --- 阵营
lua_role_avatar = 210                --- avatar

--------------------------------------------------------------------------

--------------------------------------------------------------------------
--- 动态属性段
--------------------------------------------------------------------------
lua_role_dyn_att0 = 300 
lua_role_dyn_value0 = 301
lua_role_dyn_att1 = 302
lua_role_dyn_value1 = 303
lua_role_dyn_att2 = 304
lua_role_dyn_value2 = 305
lua_role_dyn_att3 = 306
lua_role_dyn_value3 = 307
lua_role_dyn_att4 = 308
lua_role_dyn_value4 = 309
lua_role_dyn_att5 = 310
lua_role_dyn_value5 = 311
lua_role_dyn_att6 = 312
lua_role_dyn_value6 = 313
lua_role_dyn_att7 = 314
lua_role_dyn_value7 = 315
lua_role_dyn_att8 = 316
lua_role_dyn_value8 = 317
lua_role_dyn_att9 = 318
lua_role_dyn_value9 = 319
lua_role_dyn_att10 = 320
lua_role_dyn_value10 = 321
lua_role_dyn_att11 = 322
lua_role_dyn_value11 = 323
lua_role_dyn_att12 = 324
lua_role_dyn_value12 = 325
lua_role_dyn_att13 = 326
lua_role_dyn_value13 = 327
lua_role_dyn_att14 = 328
lua_role_dyn_value14 = 329
lua_role_dyn_att15 = 330
lua_role_dyn_value15 = 331
lua_role_dyn_att16 = 332
lua_role_dyn_value16 = 333
lua_role_dyn_att17 = 334
lua_role_dyn_value17 = 335
lua_role_dyn_att18 = 336
lua_role_dyn_value18 = 337
lua_role_dyn_att19 = 338
lua_role_dyn_value19 = 339
lua_role_dyn_att20 = 340
lua_role_dyn_value20 = 341
lua_role_dyn_att21 = 342
lua_role_dyn_value21 = 343
lua_role_dyn_att22 = 344
lua_role_dyn_value22 = 345
lua_role_dyn_att23 = 346
lua_role_dyn_value23 = 347
lua_role_dyn_att24 = 348
lua_role_dyn_value24 = 349
lua_role_dyn_att25 = 350
lua_role_dyn_value25 = 351
lua_role_dyn_att26 = 352
lua_role_dyn_value26 = 353
lua_role_dyn_att27 = 354
lua_role_dyn_value27 = 355
lua_role_dyn_att28 = 356
lua_role_dyn_value28 = 357
lua_role_dyn_att29 = 358
lua_role_dyn_value29 = 359
lua_role_dyn_att30 = 360
lua_role_dyn_value30 = 361
lua_role_dyn_att31 = 362
lua_role_dyn_value31 = 363
lua_role_dyn_att32 = 364
lua_role_dyn_value32 = 365
lua_role_dyn_att33 = 366
lua_role_dyn_value33 = 367
lua_role_dyn_att34 = 368
lua_role_dyn_value34 = 369
lua_role_dyn_att35 = 370
lua_role_dyn_value35 = 371
lua_role_dyn_att36 = 372
lua_role_dyn_value36 = 373
lua_role_dyn_att37 = 374
lua_role_dyn_value37 = 375
lua_role_dyn_att38 = 376
lua_role_dyn_value38 = 377
lua_role_dyn_att39 = 378
lua_role_dyn_value39 = 379
lua_role_dyn_att40 = 380
lua_role_dyn_value40 = 381
lua_role_dyn_att41 = 382
lua_role_dyn_value41 = 383
lua_role_dyn_att42 = 384
lua_role_dyn_value42 = 385
lua_role_dyn_att43 = 386
lua_role_dyn_value43 = 387
lua_role_dyn_att44 = 388
lua_role_dyn_value44 = 389
lua_role_dyn_att45 = 390
lua_role_dyn_value45 = 391
lua_role_dyn_att46 = 392
lua_role_dyn_value46 = 393
lua_role_dyn_att47 = 394
lua_role_dyn_value47 = 395
lua_role_dyn_att48 = 396
lua_role_dyn_value48 = 397
lua_role_dyn_att49 = 398
lua_role_dyn_value49 = 399
lua_role_dyn_att50 = 400
lua_role_dyn_value50 = 401
lua_role_dyn_att51 = 402
lua_role_dyn_value51 = 403
lua_role_dyn_att52 = 404
lua_role_dyn_value52 = 405
lua_role_dyn_att53 = 406
lua_role_dyn_value53 = 407
lua_role_dyn_att54 = 408
lua_role_dyn_value54 = 409
lua_role_dyn_att55 = 410
lua_role_dyn_value55 = 411
lua_role_dyn_att56 = 412
lua_role_dyn_value56 = 413
lua_role_dyn_att57 = 414
lua_role_dyn_value57 = 415
lua_role_dyn_att58 = 416
lua_role_dyn_value58 = 417
lua_role_dyn_att59 = 418
lua_role_dyn_value59 = 419
lua_role_dyn_att60 = 420
lua_role_dyn_value60 = 421
lua_role_dyn_att61 = 422
lua_role_dyn_value61 = 423
lua_role_dyn_att62 = 424
lua_role_dyn_value62 = 425
lua_role_dyn_att63 = 426
lua_role_dyn_value63 = 427
lua_role_dyn_att64 = 428
lua_role_dyn_value64 = 429
lua_role_dyn_att65 = 430
lua_role_dyn_value65 = 431
lua_role_dyn_att66 = 432
lua_role_dyn_value66 = 433
lua_role_dyn_att67 = 434
lua_role_dyn_value67 = 435
lua_role_dyn_att68 = 436
lua_role_dyn_value68 = 437
lua_role_dyn_att69 = 438
lua_role_dyn_value69 = 439
lua_role_dyn_att70 = 440
lua_role_dyn_value70 = 441
lua_role_dyn_att71 = 442
lua_role_dyn_value71 = 443
lua_role_dyn_att72 = 444
lua_role_dyn_value72 = 445
lua_role_dyn_att73 = 446
lua_role_dyn_value73 = 447
lua_role_dyn_att74 = 448
lua_role_dyn_value74 = 449
lua_role_dyn_att75 = 450
lua_role_dyn_value75 = 451
lua_role_dyn_att76 = 452
lua_role_dyn_value76 = 453
lua_role_dyn_att77 = 454
lua_role_dyn_value77 = 455
lua_role_dyn_att78 = 456
lua_role_dyn_value78 = 457
lua_role_dyn_att79 = 458
lua_role_dyn_value79 = 459
lua_role_dyn_att80 = 460
lua_role_dyn_value80 = 461
lua_role_dyn_att81 = 462
lua_role_dyn_value81 = 463
lua_role_dyn_att82 = 464
lua_role_dyn_value82 = 465
lua_role_dyn_att83 = 466
lua_role_dyn_value83 = 467
lua_role_dyn_att84 = 468
lua_role_dyn_value84 = 469
lua_role_dyn_att85 = 470
lua_role_dyn_value85 = 471
lua_role_dyn_att86 = 472
lua_role_dyn_value86 = 473
lua_role_dyn_att87 = 474
lua_role_dyn_value87 = 475
lua_role_dyn_att88 = 476
lua_role_dyn_value88 = 477
lua_role_dyn_att89 = 478
lua_role_dyn_value89 = 479
lua_role_dyn_att90 = 480
lua_role_dyn_value90 = 481
lua_role_dyn_att91 = 482
lua_role_dyn_value91 = 483
lua_role_dyn_att92 = 484
lua_role_dyn_value92 = 485
lua_role_dyn_att93 = 486
lua_role_dyn_value93 = 487
lua_role_dyn_att94 = 488
lua_role_dyn_value94 = 489
lua_role_dyn_att95 = 490
lua_role_dyn_value95 = 491
lua_role_dyn_att96 = 492
lua_role_dyn_value96 = 493
lua_role_dyn_att97 = 494
lua_role_dyn_value97 = 495
lua_role_dyn_att98 = 496
lua_role_dyn_value98 = 497
lua_role_dyn_att99 = 498
lua_role_dyn_value99 = 499

lua_role_attr_max = 500

lua_role_app_body = 0            --- 身体
lua_role_app_weapon = 1         --- 武器
lua_role_app_wings = 2          --- 翅膀
lua_role_app_mount = 3          --- 坐骑
lua_role_app_max = 4

lua_item_type_null = 0 
lua_item_type_equip = 1	        --- 装备
lua_item_type_consumable = 2       --- 消耗品
lua_item_type_finite = 3           --- 有限品
lua_item_type_material = 4         --- 材料
lua_item_type_sundries = 5         --- 杂货
lua_item_type_bag = 6              --- 包裹
lua_item_type_warehouse_adv = 7    --- 高级仓库
lua_item_type_gold = 8             --- 金币
lua_item_type_bundle = 9           --- 打捆物品
lua_item_type_skill = 10            --- 技能特效类物品
lua_item_type_script = 11           --- 脚本物品

lua_item_type_max = 12

--装备子类型
lua_equip_null = 0 
lua_equip_weapon = 1		 	    --- 武器
lua_equip_helmet = 2				--- 头盔	
lua_equip_wrist = 3 				--- 护腕
lua_equip_armor = 4				    --- 衣服
lua_equip_juju = 5				    --- 符咒
lua_equip_shoes = 6			        --- 鞋子
lua_equip_shoulder = 7				--- 护肩
lua_equip_necklace = 8  			--- 项链
lua_equip_ring = 9  				--- 戒指
lua_equip_medal = 10				--- 勋章

lua_equip_gem    = 11  				--- 宝石
lua_equip_wings  = 12  				--- 翅膀
lua_equip_amulet = 13				--- 守护
lua_equip_mount  = 14		    	--- 坐骑
lua_equip_max    = 15

lua_material_null = 0 
lua_material_weapon_upgrade = 1        --- 升级武器材料
lua_material_reserved = 2		        --- (保留未使用)
lua_material_identify = 3 				--- 鉴定装备材料
lua_material_drill = 4				    --- 装备打孔材料
lua_material_lucky = 5				    --- 附加武器祝福材料
lua_material_gem = 6			        --- 宝石
lua_material_synthesis = 7			    --- 宝石合成符
lua_material_dig = 8			        --- 宝石摘除符
lua_material_embed = 9			        --- 宝石镶嵌符
lua_material_refine = 10			    --- 装备精练材料
lua_material_refine_lucky = 11			--- 装备精练幸运符材料
lua_material_speaker = 12			    --- 喇叭
lua_material_refine_transform = 13      --- 装备精练转移材料
lua_material_refine_imm = 14            --- 装备精练符
lua_material_identify_imm = 15          --- 装备鉴定符
lua_material_horse = 16                 --- 未开光马
lua_material_identify_horse = 17        --- 开光印
lua_material_max = 18

lua_weapon_null = 0             --- 通用类
lua_weapon_knife = 1               --- 刀类（战士类）
lua_weapon_sword = 2               --- 剑类（道士类）
lua_weapon_stick = 3               --- 仗类（法师类）
lua_weapon_max = 4

lua_juju_null = 0 
lua_juju_juju = 1                  --- 符咒类
lua_juju_poison = 2                --- 毒药类
lua_juju_max = 3

lua_bind_null = 0               --- 无绑定
lua_bind_on_use = 1                --- 使用绑定
lua_bind_on_pick_up = 2            --- 拾取绑定
lua_bind_max = 3                    


--装备位
lua_site_null = 0 
lua_site_weapon = 1            --- 武器
lua_site_helmet = 2            --- 头盔	
lua_site_wrist_0 = 3           --- 护腕0
lua_site_wrist_1 = 4           --- 护腕1
lua_site_armor = 5             --- 衣服
lua_site_juju = 6              --- 符咒
lua_site_shoes = 7             --- 鞋子
lua_site_shoulder = 8          --- 护肩
lua_site_necklace = 9          --- 项链
lua_site_ring_0 = 10            --- 戒指0
lua_site_ring_1 = 11            --- 戒指1
lua_site_medal = 12             --- 勋章

lua_site_gem = 13               --- 宝石
lua_site_wings = 14             --- 翅膀
lua_site_amulet = 15            --- 守护
lua_site_mount = 16             --- 坐骑

lua_site_expand_0 = 17          --- 背包0扩充位置
lua_site_expand_1 = 18          --- 背包1扩充位置
lua_site_expand_2 = 19          --- 背包2扩充位置
lua_site_expand_3 = 20          --- 背包3扩充位置
lua_site_expand_4 = 21          --- 背包4扩充位置

LUA_MAX_SLOT_PER_BAG = 40
LUA_MAX_WAREHOUSE_SIZE = 40
LUA_MAX_WAREHOUSE_ADV_SIZE = 144

lua_site_bag_0			= 22                                        		--- 第0背包
lua_site_bag_1			= lua_site_bag_0 + LUA_MAX_SLOT_PER_BAG             --- 第1背包
lua_site_bag_2			= lua_site_bag_1 + LUA_MAX_SLOT_PER_BAG             --- 第2背包
lua_site_bag_3			= lua_site_bag_2 + LUA_MAX_SLOT_PER_BAG             --- 第3背包
lua_site_bag_4          = lua_site_bag_3 + LUA_MAX_SLOT_PER_BAG             --- 第4背包

lua_site_warehouse      = lua_site_bag_4 + LUA_MAX_SLOT_PER_BAG             --- 仓库
lua_site_warehouse_adv  = lua_site_warehouse + LUA_MAX_WAREHOUSE_SIZE       --- 高级仓库

lua_site_end            = lua_site_warehouse_adv + LUA_MAX_WAREHOUSE_ADV_SIZE

lua_quality_general = 0       --- 普通, 白色

lua_item_att_pos = 0               ---这个是难点当前所在的位置
lua_item_att_amount = 1            --- 物品当前的堆叠数量
lua_item_att_durability = 2        --- 物品当前耐久
lua_item_att_max_durability = 3    --- 物品最大耐久
lua_item_att_use_count = 4         --- 物品当前的使用次数    
lua_item_att_is_bound = 5          --- 物品是否被绑定
lua_item_att_life = 6              --- 物品存活时间
lua_item_att_skill_id = 7          --- 技能id
lua_item_att_max = 8

lua_skill_type_null = 0 
lua_skill_type_fight = 1       --- 战斗技能
lua_skill_type_passive = 2     --- 被动技能
lua_skill_type_restore = 3     --- 治疗技能
lua_skill_type_life = 4        --- 生活技能
lua_skill_type_teleport = 5    --- 瞬移技能
lua_skill_type_special = 9  --- 特殊技能
lua_skill_type_max = 10

lua_teleport_null = 0 
lua_teleport_rand_limit = 1    --- 本地图限制随机
lua_teleport_rand = 2          --- 本地图随机
lua_teleport_relive = 3        --- 复活点
lua_teleport_relive_rand = 4   --- 复活点所在地图随机
lua_teleport_relive_max = 5

lua_repel_type_null = 0     --- 无
lua_repel_type_collide = 1     --- 冲撞
lua_repel_type_repelled = 2    --- 击退

lua_repel_collide_null = 0      --- 无
lua_repel_collide_with_target = 1  --- 带目标冲撞
lua_repel_collide_no_target = 2    --- 无目标冲撞

lua_role_exp = 0            --- 经验
lua_role_ingot = 1             --- 元宝      
lua_role_bind_ingot = 2        --- 绑定元宝     
lua_role_integral = 3          --- 积分   
lua_role_gold = 4              --- 金币      
lua_role_bind_gold = 5         --- 绑定金币
lua_role_gold_deposit = 6      --- 仓库金币
lua_role_inner_force_exp = 7	--内功经验
lua_role_attr_ext_max = 8

lua_atk_mode_all = 0 
lua_atk_mode_peace = 1
lua_atk_mode_team = 2
lua_atk_mode_guild = 3
lua_atk_mode_pk = 4
lua_atk_mode_alliance = 5
lua_atk_mode_camp = 6
lua_atk_mode_max = 7

lua_damage_type_null = 0 
lua_damage_type_phy = 1
lua_damage_type_mag = 2
lua_damage_type_tao = 3
lua_damage_type_max = 4

lua_restore_type_null = 0 
lua_restore_type_quick = 1
lua_restore_type_tao = 2
lua_restore_type_max = 3

lua_shape_type_null = 0 
lua_shape_type_line = 1
lua_shape_type_rect = 2
lua_shape_type_fan = 3
lua_shape_type_fan_ex = 4
lua_shape_type_max = 5

lua_buff_relation_null = 0 
lua_buff_relation_replace = 1
lua_buff_relation_offset = 2
lua_buff_relation_ignore = 3
lua_buff_relation_max = 4

lua_quick_bar_null = 0 
lua_quick_bar_item = 1
lua_quick_bar_skill = 2
lua_quick_bar_max = 3

lua_relive_skill = 0    --技能复活
lua_relive_local = 1       --原地复活
lua_relive_map = 2         --回城复活
lua_relive_dungeon = 3      --副本复活

lua_enhance_type_phy = 0 
lua_enhance_type_mag = 1
lua_enhance_type_tao = 2
lua_enhance_type_max = 3

lua_stall_state_null = 0    --- 未摆摊
lua_stall_state_ready = 1      --- 摆摊准备
lua_stall_state_ok = 2         --- 摆摊中
lua_stall_state_max = 3

lua_stall_price_gold = 0    --- 金币
lua_stall_price_ingot = 1      --- 元宝
lua_stall_price_max = 2

lua_item_drop_null = 0 
lua_item_drop_active = 1
lua_item_drop_player = 2
lua_item_drop_monster = 3
lua_item_drop_script = 4
lua_item_drop_map = 5
lua_item_drop_map_auto = 6
lua_item_drop_max = 7

lua_item_special_drop_never         = 1 
lua_item_special_drop_on_logout     = 2 
lua_item_special_drop_on_jump_map   = 4 
lua_item_special_drop_on_die        = 8 
lua_item_special_drop_max = 9

lua_servant_source_null = 0 
lua_servant_source_catch = 1   --- 捕捉
lua_servant_source_summon = 2  --- 召唤
lua_servant_source_max = 3

lua_pk_state_null = 0 
lua_pk_state_white = 1         --- 白名
lua_pk_state_yellow = 2        --- 黄名
lua_pk_state_gray = 3          --- 灰名
lua_pk_state_red = 4           --- 红名
lua_pk_state_max = 5

lua_region_safe =0      ---复活区         
lua_region_stall = 1       ---摆摊区
lua_region_athletics = 2   ---竞技区
lua_region_relive = 3      ---复活区
lua_region_red_name = 4    ---红名区
lua_region_born = 5        ---出生区域
lua_region_jump = 6        ---跳转区域
lua_region_num = 7

lua_player_switch_type_friend = 0 
lua_player_switch_type_team = 1
lua_player_switch_type_max = 2

lua_normal_attack_null = 0 
lua_normal_attack_liehuo = 1
lua_normal_attack_gongsha = 2
lua_normal_attack_cisha = 3
lua_normal_attack_banyue = 4
lua_normal_attack_self = 5
lua_normal_attack_max = 6

lua_skill_fly_dynamic = 0 
lua_skill_fly_fixed = 1
lua_skill_fly_dynamic_fixed = 2
lua_skill_fly_max = 3

lua_skill_find_target_on_spell = 0 
lua_skill_find_target_after_delay = 1
lua_skill_find_target_max = 2

lua_event_null = 0 
lua_event_fire_wall = 1
lua_event_max = 2

lua_repair_type_null = 0 
lua_repair_type_normal = 1
lua_repair_type_ex = 2
lua_repair_type_max = 3

lua_map_common = 0  --普通地图
lua_map_dungeon = 1    --副本地图

lua_role_last_login = 0      --角色最后登陆时间FLAG
lua_role_online = 1             --角色在线时间FLAG
lua_role_max_online = 2         --角色总在线时长FLAG
lua_role_last_attack = 3        --角色最后攻击时间FLAG
lua_role_last_move = 4          --角色最后移动时间FLAG
lua_role_last_chat = 5          --角色最后聊天时间FLAG
lua_role_today_online = 6       --角色当天在线时长
lua_role_last_logout = 7        --角色最后下线时间FLAG

lua_role_account_name = 0   --角色帐号名的FLAG
lua_role_ip = 1                --角色的IP地址
lua_role_user_name = 2         --角色用户名的FLAG
lua_role_home_map = 3          --角色回城地图的FLAG
lua_role_home_map_key = 4      --角色回城地图的keyname
lua_role_alias = 5             --角色称谓的FLAG
lua_role_guild = 6             --角色公会名的FLAG
lua_role_current_map = 7       --角色当前地图名的FLAG
lua_role_current_map_key = 8   --角色当前地图的keyname

lua_role_guild_id = 0       --角色公会ID的FLAG
lua_role_current_map_id = 1    --玩家所属地图ID的FLAG
lua_role_home_map_id = 2       --玩家回城地图ID(GUID)的FLAG

lua_role_attr_add = 10000   --角色属性增加
lua_role_attr_sub = 10001          --角色属性减少
lua_role_attr_equal = 10002        --角色属性设置

lua_param_type_null = 0 
lua_param_type_int8 = 1
lua_param_type_uint8 = 2
lua_param_type_int16 = 3
lua_param_type_uint16 = 4
lua_param_type_int32 = 5
lua_param_type_uint32 = 6
lua_param_type_int64 = 7
lua_param_type_uint64 = 8
lua_param_type_string = 9
lua_param_type_max = 10

lua_bind_require_false = 0  --- 必须非绑定
lua_bind_require_true = 1      --- 必须绑定
lua_bind_require_any = 2       --- 绑定非绑定都可以
lua_bind_require_max = 3

lua_rand_type_only_one = 0  --- only one
lua_rand_type_rand = 1         --- rand
lua_rand_type_max = 2

lua_trigger_null = 0 
lua_trigger_system_start = 1               --- system call, don't need to manually add
lua_trigger_first_in_game = 2
lua_trigger_login = 3
lua_trigger_logout = 4
lua_trigger_castle_war_start = 5
lua_trigger_castle_war_end = 6
lua_trigger_castle_war_init = 7
lua_trigger_gp = 8
lua_trigger_map_create = 200            --- system call, don't need to manually add
lua_trigger_map_destroy = 201                --- system call, don't need to manually add
lua_trigger_enter_map = 202
lua_trigger_leave_map = 203
lua_trigger_item_appear = 204
lua_trigger_item_disappear = 205
lua_trigger_monster_appear = 206
lua_trigger_monster_disappear = 207
lua_trigger_npc_appear = 208
lua_trigger_npc_disappear = 209
lua_trigger_level_up = 300 
lua_trigger_pre_equip = 301
lua_trigger_post_equip = 302
lua_trigger_pre_un_equip = 303
lua_trigger_post_un_equip = 304
lua_trigger_move = 305
lua_trigger_pre_spell = 306
lua_trigger_spell = 307
lua_trigger_pre_mining = 308
lua_trigger_mining = 309
lua_trigger_pre_item_apply = 310
lua_trigger_item_apply = 311
lua_trigger_pre_item_pickup = 312
lua_trigger_item_pickup = 313
lua_trigger_pre_item_drop = 314
lua_trigger_item_drop = 315      --扔东西的触发
lua_trigger_pre_die = 316
lua_trigger_post_die = 317
lua_trigger_kill = 318
lua_trigger_attack = 319
lua_trigger_hp = 320
lua_trigger_mp = 321
lua_trigger_damage_process = 322
lua_trigger_restore_process = 323
lua_trigger_teleport = 324
lua_trigger_pre_catch = 325
lua_trigger_catch = 326
lua_trigger_pre_dig_meat = 327
lua_trigger_dig_meat = 328
lua_trigger_add_buff = 329
lua_trigger_remove_buff = 330
lua_trigger_pre_drop = 331       --要不要爆东西
lua_trigger_post_drop = 332  
lua_trigger_pre_drop_one = 333
lua_trigger_post_drop_one = 334  --掉了某个具体的东西
lua_trigger_add_skill = 335
lua_trigger_switch_skill = 336
lua_trigger_summon = 337
lua_trigger_pre_process_pk = 338
lua_trigger_post_process_pk = 339
lua_trigger_create = 340
lua_trigger_destroy = 341
lua_trigger_npc_visit = 342
lua_trigger_pre_enter_jump = 343
lua_trigger_equip_suit = 344                 --- 套装穿齐
lua_trigger_un_equip_suit = 345              --- 套装不齐
lua_trigger_item_amount_zero = 346           --- amount为0删除
lua_trigger_item_use_zero = 347              --- 使用次数为0删除
lua_trigger_item_dur_zero = 348              --- 耐久为0删除
lua_trigger_item_timeup = 349                --- 时效过期删除
lua_trigger_add_exp = 350
lua_trigger_monster_born = 351
lua_trigger_player_relive = 352
lua_trigger_dungeon_end = 353				--- 副本结束时回调
lua_trigger_timer_check = 354                --- 定时检查
lua_trigger_add_exp_all = 355                --- 所有获取经验
lua_trigger_player_pre_die = 356             --- 人物死亡前触发
lua_trigger_player_post_die = 357            --- 人物死亡后触发
lua_trigger_monster_pre_die = 358            --- 怪物死亡前触发
lua_trigger_monster_post_die = 359           --- 怪物死亡后触发
lua_trigger_attack_ex = 360                  --- on_attack加强版，多了扣血值与技能参数
lua_trigger_system_stop = 361								--- system call, don't need to manually add
lua_trigger_pre_logout = 362								--- 玩家下线前触发
lua_trigger_ride_request = 363				--玩家上马触发
lua_trigger_ride_request = 364				--玩家下马触发
lua_trigger_billin = 365                     -- 充值触发，只有玩家在线才会触发
lua_trigger_mall = 366                         -- 商城消费触发
lua_trigger_max = 367

lua_quest_type_null = 0             --- null
lua_quest_type_main = 1
lua_quest_type_other = 2
lua_quest_type_max = 3

lua_quest_track_state_null = 0             --- null
lua_quest_track_state_group_hunting = 1
lua_quest_track_state_hunting = 2
lua_quest_track_state_huntlevel = 3
lua_quest_track_state_group_item = 4
lua_quest_track_state_item = 5
lua_quest_track_state_apply_item = 6
lua_quest_track_state_npc = 7
lua_quest_track_state_max = 8

lua_item_logic_type_all = 0 

lua_item_logic_type_money = 1
lua_item_logic_type_equip = 2
lua_item_logic_type_material = 3
lua_item_logic_type_book = 4
lua_item_logic_type_drug = 5
lua_item_logic_type_function = 6
lua_item_logic_type_other = 7

lua_item_logic_type_max = 8

lua_equip_logic_all = 0 
lua_equip_logic_weapon = 1		 	    --- 武器
lua_equip_logic_armor = 2				--- 衣服
lua_equip_logic_helmet = 3				--- 头盔	
lua_equip_logic_necklace = 4  			--- 项链
lua_equip_logic_wrist = 5 				--- 护腕
lua_equip_logic_ring = 6  				--- 戒指
lua_equip_logic_shoes = 7			    --- 鞋子

lua_equip_logic_max = 8

lua_material_logic_all = 0 
lua_material_logic_image = 1		 	    --- 图样
lua_material_logic_spirit = 2				--- 精元
lua_material_logic_mine = 3				--- 矿石	
lua_material_logic_refine = 4  			--- 精炼
lua_material_logic_other = 5 				--- 其他

lua_material_logic_max = 6

lua_book_logic_all = 0 
lua_book_logic_war = 1		 	    --- 战士类
lua_book_logic_mag = 2				--- 法师类
lua_book_logic_tao = 3				--- 道士类

lua_book_logic_max = 4

lua_drug_logic_all = 0 
lua_drug_logic_normal = 1		 	    --- 普通类
lua_drug_logic_immediate = 2			--- 瞬回类
lua_drug_logic_other = 3				--- 其他类

lua_drug_logic_max = 4

lua_function_logic_all = 0 
lua_function_logic_poison = 1		 	    --- 符毒
lua_function_logic_fly = 2			        --- 传送
lua_function_logic_bag = 3				    --- 格子扩展
lua_function_logic_other = 4				--- 其他

lua_function_logic_max = 5

lua_log_action_null = 0 
lua_log_action_item_site_fixed = 1         --- 位置已修正
lua_log_action_item_site_error = 2         --- 位置修正失败
lua_log_action_item_error = 3              --- 物品出现错误，系统自动删除
lua_log_action_buff_error = 4              --- buff出现错误
lua_log_action_item_stream = 5             --- 物品序列化删除
lua_log_action_crash = 6                   --- 程序异常
lua_log_action_item_to_json_one = 7        --- 物品紧急保存一个
lua_log_action_item_to_json = 8            --- 物品紧急保存
lua_log_action_bag_item_site_error = 9     --- 背包物品格子错误
lua_log_action_item_guid_error = 10         --- 物品guid错误
lua_log_action_item_guid_dup = 11           --- 物品guid重复
lua_log_action_player_die = 1000 
lua_log_action_player_chat = 1001
lua_log_action_player_level_up = 1002
lua_log_action_player_exp = 1003
lua_log_action_player_ingot = 1004
lua_log_action_player_bind_ingot = 1005
lua_log_action_player_integral = 1006
lua_log_action_player_gold = 1007
lua_log_action_player_bind_gold = 1008
lua_log_action_player_gold_deposit = 1009
lua_log_action_player_use_item = 1010
lua_log_action_player_buy_item = 1011
lua_log_action_player_sell_item = 1012
lua_log_action_player_drop_item = 1013
lua_log_action_player_pickup_item = 1014
lua_log_action_player_mall_item = 1015
lua_log_action_player_enter_map = 1016
lua_log_action_player_leave_map = 1017
lua_log_action_player_die_drop_item = 1018
lua_log_action_player_trade_p2p_item = 1019
lua_log_action_player_trade_stall_item = 1020
lua_log_action_player_login = 1021
lua_log_action_player_logout = 1022
lua_log_action_player_item_dur_zero = 1023
lua_log_action_player_item_usecount_zero = 1024
lua_log_action_player_item_time_zero = 1025
lua_log_action_player_user_cmd = 1026
lua_log_action_player_gm_cmd = 1027
lua_log_action_player_market_sell = 1028
lua_log_action_player_market_buy = 1029
lua_log_action_player_market_delegate = 1030
lua_log_action_player_mail_pick = 1031
lua_log_action_player_mail_send = 1032
lua_log_action_player_item_e2e = 1033
lua_log_action_player_item_e2b = 1034
lua_log_action_player_item_b2e = 1035
lua_log_action_player_item_b2b = 1036
lua_log_action_player_item_b2w = 1037
lua_log_action_player_item_b2wa = 1038
lua_log_action_player_item_be2be = 1039
lua_log_action_player_item_b2be = 1040
lua_log_action_player_item_be2b = 1041
lua_log_action_player_item_w2w = 1042
lua_log_action_player_item_w2b = 1043
lua_log_action_player_item_wa2wa = 1044
lua_log_action_player_item_wa2b = 1045
lua_log_action_player_item_amount_zero = 1046
lua_log_action_player_kick = 1047
lua_log_action_player_create = 1048
lua_log_action_player_delete = 1049
lua_log_action_player_recover = 1050
lua_log_action_player_dig_item = 1051
lua_log_action_player_mine_item = 1052
lua_log_action_player_gm_item = 1053
lua_log_action_player_gm_map_item = 1054
lua_log_action_player_item_drop_map_auto = 1055       --- 自动掉地板
lua_log_action_player_item_drop_unknown = 1056        --- 未知掉落
lua_log_action_player_identify_item = 1057
lua_log_action_player_modify_attr = 1058				---修改玩家属性
lua_log_action_player_arrange_b = 1500 
lua_log_action_player_arrange_w = 1501
lua_log_action_player_arrange_wa = 1502
lua_log_action_player_buff_add = 1600 
lua_log_action_player_buff_remove = 1601
lua_log_action_player_quest_accept = 1800 
lua_log_action_player_quest_accomplish = 1801
lua_log_action_player_quest_track_change = 1802
lua_log_action_player_quest_drop = 1803
lua_log_action_player_gp = 1804
lua_log_action_player_gp_drop = 1805
lua_log_action_player_gp_detail = 1806
lua_log_action_player_kill = 1807
lua_log_action_player_learn_skill = 1808      -- 玩家获取技能
lua_log_action_player_join_team = 1809        -- 玩家组队
lua_log_action_player_family_create = 1810
lua_log_action_player_family_join = 1811
lua_log_action_player_family_leave = 1812
lua_log_action_player_family_expell = 1813
lua_log_action_player_family_promote = 1814
lua_log_action_player_family_destroy = 1815
lua_log_action_monster_die = 2000 
lua_log_action_monster_die_drop_item = 2001
lua_log_action_monster_die_drop_gold = 2002
lua_log_action_script_add_item = 3000 
lua_log_action_script_remove_item = 3001
lua_log_action_map_drop_item = 4000 
lua_log_action_map_drop_gold = 4001
lua_log_action_map_item_expire = 4002
lua_log_action_castle_init_war = 5000 
lua_log_action_castle_starting_war = 5001
lua_log_action_castle_ending_war = 5002
lua_log_action_castle_stop_war = 5003
lua_log_action_castle_temp_family = 5004
lua_log_action_glory_finish = 5500 
lua_log_action_test = 10000 
lua_log_action_user_define_start = 30000 
lua_log_action_max = 30001

lua_castle_state_null = 0       --- 城堡战未定义
lua_castle_state_init = 1          --- 城堡初始化完成
lua_castle_state_starting = 2      --- 触发城堡战开启脚本回调
lua_castle_state_running = 3       --- 城堡脚本触发成功
lua_castle_state_ending = 4        --- 触发城堡战结束脚本回调
lua_castle_state_max = 5

lua_gp_data_type_move = 0 
lua_gp_data_type_spell = 1
lua_gp_data_type_max = 2

-- 等级榜
lua_sort_type_level = 0 
lua_sort_type_level_warrior = 1
lua_sort_type_level_mage = 2
lua_sort_type_level_tao = 3

-- 魅力榜
lua_sort_type_beauty = 4
lua_sort_type_beauty_male = 5
lua_sort_type_beauty_female = 6

-- 师徒榜
lua_sort_type_students = 7
lua_sort_type_students_warrior = 8
lua_sort_type_students_mage = 9
lua_sort_type_students_tao = 10

--兵器榜
lua_sort_type_weapon_warrior = 11
lua_sort_type_weapon_mage = 12
lua_sort_type_weapon_tao = 13

lua_sort_type_max = 14

lua_eMail_Type_System = 0 
lua_eMail_Type_User = 1

lua_eMail_Type_Num = 2

-- 代码里的操作
lua_glory_trigger_wield_equip = 1 
lua_glory_trigger_kill_monster = 2
lua_glory_trigger_level_up = 3
lua_glory_trigger_dig = 4
lua_glory_trigger_learn_skill = 5
lua_glory_trigger_use_item = 6
lua_glory_trigger_finish_glory = 7
lua_glory_trigger_join_team = 8
lua_glory_trigger_market_delegate = 9
lua_glory_trigger_enter_map = 10
lua_glory_trigger_trade_stall_sell = 11
lua_glory_trigger_join_family = 12
lua_glory_trigger_join_war = 13
lua_glory_trigger_join_castle = 14
lua_glory_trigger_vip = 15

-- 脚本里的操作
lua_glory_trigger_script_start = 1000 
lua_glory_trigger_offline_exp = 1001
lua_glory_trigger_taofa = 1002
lua_glory_trigger_jinglian = 1003
lua_glory_trigger_jianding = 1004
lua_glory_trigger_fengying = 1005
lua_glory_trigger_catch_horse = 1006
lua_glory_trigger_horse_kaiguang = 1007
lua_glory_trigger_biao = 1008
lua_glory_trigger_Login = 1009      --角色登陆游戏
lua_glory_trigger_OnlineTime = 1010 --角色在线时间
lua_glory_trigger_horse_level_top = 1011  --坐骑升级到顶

lua_wsc_map_bx_npc_timer = 10001	--巫山城宝箱NPC定时器
lua_jln_map_bx_npc_timer = 10002	--绝路岭宝箱NPC定时器
lua_jlg_map_bx_npc_timer = 10003	--绝路谷宝箱NPC定时器
lua_kld1_map_bx_npc_timer = 10004	--骷髅殿一层宝箱NPC定时器
lua_kld2_map_bx_npc_timer = 10005	--骷髅殿二层宝箱NPC定时器
lua_kld3_map_bx_npc_timer = 10006	--骷髅殿三层宝箱NPC定时器
lua_jsm1_map_bx_npc_timer = 10007	--僵尸墓一层宝箱NPC定时器
lua_jsm2_map_bx_npc_timer = 10008	--僵尸墓二层宝箱NPC定时器
lua_jsm3_map_bx_npc_timer = 10009	--僵尸墓三层宝箱NPC定时器
lua_jlc1_map_bx_npc_timer = 10010	--绝路城一层宝箱NPC定时器
lua_jlc2_map_bx_npc_timer = 10011	--绝路城二层宝箱NPC定时器
lua_jlc3_map_bx_npc_timer = 10012	--绝路城三层宝箱NPC定时器
lua_ysax1_map_bx_npc_timer = 10013	--妖山暗穴一层宝箱NPC定时器
lua_ysax2_map_bx_npc_timer = 10014	--妖山暗穴二层宝箱NPC定时器
lua_ysax3_map_bx_npc_timer = 10015	--妖山暗穴三层宝箱NPC定时器
lua_ysax4_map_bx_npc_timer = 10016	--妖山暗穴四层宝箱NPC定时器
lua_ysax5_map_bx_npc_timer = 10017	--妖山暗穴五层宝箱NPC定时器
lua_thz1_map_bx_npc_timer = 10018	--天荒阵一层宝箱NPC定时器
lua_thz2_map_bx_npc_timer = 10019	--天荒阵二层宝箱NPC定时器
lua_thz3_map_bx_npc_timer = 10020	--天荒阵三层宝箱NPC定时器
lua_thz4_map_bx_npc_timer = 10021	--天荒阵四层宝箱NPC定时器
lua_thz5_map_bx_npc_timer = 10022	--天荒阵五层宝箱NPC定时器
lua_thz6_map_bx_npc_timer = 10023	--天荒阵六层宝箱NPC定时器
lua_thxm1_map_bx_npc_timer = 10024	--天荒邪庙一层宝箱NPC定时器
lua_thxm2_map_bx_npc_timer = 10025	--天荒邪庙二层宝箱NPC定时器
lua_thxm3_map_bx_npc_timer = 10026	--天荒邪庙三层宝箱NPC定时器
lua_thxm4_map_bx_npc_timer = 10027	--天荒邪庙四层宝箱NPC定时器
lua_thxm71_map_bx_npc_timer = 10028--天荒邪庙七层一宝箱NPC定时器
lua_thxm72_map_bx_npc_timer = 10029--天荒邪庙七层二宝箱NPC定时器
lua_thxm73_map_bx_npc_timer = 10030--天荒邪庙七层三宝箱NPC定时器
lua_thxm4_map_cs_npc_timer = 10031	--天荒邪庙四层邪庙传送使者刷新定时器
lua_thxm4_map_cs_npc_destroy_timer = 10032	--天荒邪庙四层邪庙传送使者销毁定时器
lua_ysax_dgwf_timer = 10033			--妖山暗穴地宫玩法
lua_lc_map_bx_npc_timer = 10034		--龙城宝箱NPC定时器
lua_jyjjc_timer1 = 10035		--精英竞技场公告定时器1
lua_jyjjc_timer2 = 10036		--精英竞技场公告定时器2
lua_jyjjc_timer3 = 10037		--精英竞技场公告定时器3
lua_jyjjc_timer4 = 10038		--精英竞技场公告定时器4
lua_jyjjc_timer5 = 10039		--精英竞技场公告定时器5
lua_jyjjc_timer6 = 10040		--精英竞技场公告定时器6
lua_jyjjc_timer7 = 10041		--精英竞技场比赛结束定时器
lua_jyjjc_timer8 = 10042		--精英竞技场发放奖励定时器
lua_jyjjc_timer9 = 10043		--精英竞技场季军赛开始定时器
lua_tmsk1_map_bx_npc_timer = 10044		--天魔石窟一层宝箱定时器
lua_tmsk2_map_bx_npc_timer = 10045		--天魔石窟二层宝箱定时器
lua_tmsk3_map_bx_npc_timer = 10046		--天魔石窟三层宝箱定时器
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
CL:LoadLuaFileForce("TipLayout")
@rcs com_sx

@gmbox setint -s DB 变量名 
查询系统int变量


@gmbox setint -s DB 变量名 变量值 合区标记 --设置系统int变量,(变量值:清除变量则填0  合区标记:可选, 默认留空, 详见接口说明)


@gmbox setint -s 0 变量名 --查询系统临时int变量
@gmbox setint -s 0 变量名 变量值  --设置系统临时int变量(变量值:清除变量则填0)

@gmbox setstr -s DB 变量名 --查询系统str变量
@gmbox setstr -s DB Trade_Index1
@gmbox setstr -s DB 变量名 变量值 合区标记 --设置系统str变量 (变量值:清除变量则填nil  合区标记:可选, 默认留空, 详见接口说明)

@gmbox setstr -s 0 变量名 --查询系统临时str变量
@gmbox setstr -s 0 变量名 变量值 --设置系统临时str变量 (变量值:清除变量则填nil)


@gmbox delitem 绑定类型 道具索引名 道具数量
全区在线删道具


@gmbox detect
打开外挂检测列表


@gmbox kick 2 目标角色名 原因描述
按角色踢出游戏


@gmbox kick 3 玩家账号 原因描述
按账号踢出游戏


@gmbox fbl + 1 玩家IP 封号时间 原因描述
封ip(需手动踢)
(玩家IP:可通过指令[查询玩家信息]查询玩家详细登录信息)

@gmbox fbl + 2 目标角色名 封号时间 原因描述
封角色(自动踢)


@gmbox fbl + 3 玩家账号 封号时间 原因描述
封账号(自动踢)
(玩家账号:可通过指令[查询玩家信息]查询玩家详细登录信息)

@gmbox fbl + 4 玩家硬件码 封号时间 原因描述
封硬件码(需手动踢)
(玩家硬件码:可通过指令[查询玩家信息]查询玩家详细登录信息)

@gmbox fbl - 1 玩家IP
解封ip


@gmbox fbl - 2 目标角色名
解封角色


@gmbox fbl - 3 玩家账号
解封账号


@gmbox fbl - 4 玩家硬件码
解封硬件码


@gmbox gonggao 公告次数 公告内容
发布即时公告
(公告次数:要求1≤次数≤9)

@gmbox gonggao 10 开始时间 结束时间 播放间隔 公告颜色 公告内容
发布循环公告
(播放间隔:单位：秒  公告颜色:格式: 前景&背景; 常用颜色: 黄色:1/红色:2/粉色:3/蓝色:4/青色:5/深粉色:6/白色:7/深蓝色:8/亮蓝色:9/深黄色:10/无色透明:11/黑色:12/绿色:13)

@gmbox notice
打开公告列表


@gmbox gmmode 1
开启GM调试模式


@gmbox gmmode 0
关闭GM调试模式


@gmbox levellog 1 开始时间 结束时间 记录等级
开启升级记录
(记录等级:达到该等级的才记入升级记录)

@gmbox levellog 0 记录等级
关闭升级记录
(记录等级:关闭该等级的升级记录)

@gmbox levellog 2 记录等级
打印升级记录
(记录等级:打印该等级的升级记录)

@gmbox lualog 1
开启脚本性能记录


@gmbox lualog 0
关闭脚本性能记录


@gmbox lualog 2
打印脚本性能记录


@gmbox transout 目标角色名
合区导出(总区专用)


@gmbox transin 目标角色名
合区导入(总区专用)


@gmbox rename 玩家原角色名 玩家新角色名
合区改名(总区专用)
(玩家原角色名:原数据中的角色名  玩家新角色名:现游戏新建的角色名)

@gmbox shutup 0 目标角色名 禁言时间 禁言理由
角色禁言
(禁言时间:单位：秒，切勿过大，以免数据溢出)

@gmbox shutup 1 目标角色名
解除禁言


@gmbox status
查询引擎版本


@gmbox status -info
查询在线人数


@gmbox clearrank
清空排行榜


@gmbox fkick -u 玩家账号
强踢账号


@gmbox fkick -r 目标角色名
强踢角色


@gmbox setlog 日志类别 开关操作
开关后台日志


@gmbox proc 目标角色名
检测进程信息
(目标角色名:角色名留空则获取全服在线玩家)

@gmbox active
查询活跃点数


@gmbox info 玩家角色名
查询玩家信息


                                                  @gmbox setint 玩家角色名 变量名
                                                  查询玩家int变量


@gmbox setint 玩家角色名 变量名 变量值
设置玩家int变量
(变量值:清除变量则填0)

@gmbox setstr 玩家角色名 变量名
查询玩家str变量


@gmbox setstr 玩家角色名 变量名 变量值
设置玩家str变量
(变量值:清除变量则填nil)

@gmbox mv -t 目标角色名
跳转到玩家附近


@gmbox la 目标角色名
拉玩家到身边


@gmbox checkitem 玩家角色名 道具索引名
查找包裹道具
(道具索引名:留空则取所有道具)

@gmbox senditem 目标角色名
发送背包道具
(目标角色名:发送背包前10格道具)

@gmbox senditem 玩家角色名 道具json串
发送json串道具


@gmbox json2item 玩家角色名
json文本转道具
(玩家角色名:Data目录下需有相对应的txt文件)

@gmbox viewmap -p 查看范围
查找玩家
(查看范围:以当前角色为中心的范围)

@gmbox title 0 玩家角色名
查询称号


@gmbox title 1 玩家角色名 称号ID
添加称号
(称号ID:从角色称号模板表(title)中查询)

@gmbox title 2 玩家角色名 称号ID
删除称号
(称号ID:从角色称号模板表(title)中查询)

@gmbox buff 0 玩家角色名
查询buff


@gmbox buff 1 玩家角色名 BUFF索引名 Att1值
添加buff
(Att1值:可选，默认留空)

@gmbox buff 2 玩家角色名 BUFF索引名
删除buff


@gmbox skill 0 玩家角色名
查询技能


@gmbox skill 1 玩家角色名 技能索引名
添加技能


@gmbox skill 2 玩家角色名 技能索引名
删除技能


@gmbox skillexp 玩家角色名 技能索引名
查询技能熟练度


@gmbox skillexp 玩家角色名 技能索引名 技能熟练度
设置技能熟练度


@gmbox allskill 0 玩家角色名
添加所有技能


@gmbox allskill 1 玩家角色名
删除所有技能


@gmbox allskill 2 玩家角色名
删除非本职业技能


@gmbox point 玩家角色名 0
清除强化点数


@gmbox point 玩家角色名 属性ID 属性点数
设置强化点数
(属性点数:前缀+或-则在原数值上操作，无符号则设置为该数值)

@gmbox sae 0 + 经验数量 玩家角色名
添加经验
(玩家角色名:留空则给自己加经验)

@gmbox sae 1 + 元宝数量 玩家角色名
添加元宝
(玩家角色名:留空则给自己加元宝)

@gmbox sae 2 + 元宝数量 玩家角色名
添加绑定元宝
(玩家角色名:留空则给自己加绑定元宝)

@gmbox sae 3 + 积分数量 玩家角色名
添加积分
(玩家角色名:留空则给自己加积分)

@gmbox sae 4 + 金币数量 玩家角色名
添加金币
(玩家角色名:留空则给自己加金币)

@gmbox sae 5 + 金币数量 玩家角色名
添加绑定金币
(玩家角色名:留空则给自己加绑定金币)

@gmbox sae 6 + 金币数量 玩家角色名
添加仓库金币
(玩家角色名:留空则给自己加仓库金币)

@gmbox sae 0 - 经验数量 玩家角色名
扣除经验
(玩家角色名:留空则给自己扣除经验)

@gmbox sae 1 - 元宝数量 玩家角色名
扣除元宝
(玩家角色名:留空则给自己扣除元宝)

@gmbox sae 2 - 元宝数量 玩家角色名
扣除绑定元宝
(玩家角色名:留空则给自己扣除绑定元宝)

@gmbox sae 3 - 积分数量 玩家角色名
扣除积分
(玩家角色名:留空则给自己扣除积分)

@gmbox sae 4 - 金币数量 玩家角色名
扣除金币
(玩家角色名:留空则给自己扣除金币)

@gmbox sae 5 - 金币数量 玩家角色名
扣除绑定金币
(玩家角色名:留空则给自己扣除绑定金币)

@gmbox sae 6 - 金币数量 玩家角色名
扣除仓库金币
(玩家角色名:留空则给自己扣除仓库金币)

@gmbox warn 目标角色名 警告消息
发送警告消息


@gmbox vip 玩家角色名 VIP等级
设置VIP等级


@gmbox achieve 玩家角色名 成就触发类型
触发成就达成检测
(成就触发类型:详见成就表(achievement)中的触发条件1字段)

@gmbox takeoff 装备索引名 目标角色名
玩家脱装备
(装备索引名:多个装备以&分隔)

@gmbox takeoff 装备索引名
全区脱装备
(装备索引名:多个装备以&分隔)

@gmbox takeon 目标角色名 装备信息 装备位置
玩家穿装备
(装备信息:可填GUID或KeyName  装备位置:戒指护腕等分左右，其他装备忽略该参数)

@gmbox pearlexp 玩家角色名 聚灵珠索引名
聚灵珠充满经验
(聚灵珠索引名:多种聚灵珠以&分隔)

@gmbox setcheck 1 目标角色名
开启网络严格模式


@gmbox setcheck 0 目标角色名
关闭网络严格模式


@gmbox setstr 玩家角色名 _lock_pwd nil
清除仓库密码


@gmbox trace -custom 玩家角色名
查询自定义变量列表


@gmbox trace -att 玩家角色名 Att属性名
查询玩家Att属性
(Att属性名:可填属性ID或者Key)

@gmbox mail 系统名称 玩家角色名 邮件内容
发送文本邮件


@gmbox mail 系统名称 玩家角色名 邮件内容 金币元宝数 附件物品
发送带附件邮件
(金币元宝数:金币和元宝以空格隔开  附件物品:物品1,数量(不超过最大堆叠),绑定(0/1),物品2,数量,绑定 (参数以逗号隔开,最多5个物品))

@gmbox tempint 玩家角色名 变量名
查询玩家int临时变量


@gmbox tempint 玩家角色名 变量名 变量值
设置玩家int临时变量
(变量值:清除变量则填0)

@gmbox tempstr 玩家角色名 变量名
查询玩家str临时变量


@gmbox tempstr 玩家角色名 变量名 变量值
设置玩家str临时变量
(变量值:清除变量则填nil)

@gmbox dayint 玩家角色名 变量名
查询玩家int天变量


@gmbox dayint 玩家角色名 变量名 变量值
设置玩家int天变量
(变量值:清除变量则填0)

@gmbox daystr 玩家角色名 变量名
查询玩家str天变量


@gmbox daystr 玩家角色名 变量名 变量值
设置玩家str天变量
(变量值:清除变量则填nil)

@gmbox weekint 玩家角色名 变量名
查询玩家int周变量


@gmbox weekint 玩家角色名 变量名 变量值
设置玩家int周变量
(变量值:清除变量则填0)

@gmbox weekstr 玩家角色名 变量名
查询玩家str周变量


@gmbox weekstr 玩家角色名 变量名 变量值
设置玩家str周变量
(变量值:清除变量则填nil)

@gmbox camp -p 玩家角色名
查询玩家阵营


@gmbox camp -p 玩家角色名 阵营值
设置玩家阵营


@gmbox trace -lgp 玩家角色名
查询玩家超速信息


@gmbox ys 玩家角色名 操作类型
客户端延时检测
(操作类型:空表示开始，-t表示持续，-s表示结束)

@gmbox sa Att属性名 Att属性值 目标角色名
设置玩家Att属性
(Att属性名:可填属性ID或者Key  目标角色名:留空则设置自己)

@gmbox mv 地图关键词 地图坐标
跳转地图
(地图关键词:留空则在本地图跳转  地图坐标:X，Y以空格分隔，留空则为随机)

@gmbox viewmap -p 查看范围
查找周围玩家
(查看范围:以当前角色为中心的范围)

@gmbox viewmap -n 查看范围 NPC索引名
查找周围NPC
(查看范围:以当前角色为中心的范围  NPC索引名:可选，留空则查找所有NPC)

@gmbox viewmap -m 查看范围 怪物索引名
查找周围怪物
(查看范围:以当前角色为中心的范围  怪物索引名:可选，留空则查找所有怪物)

@gmbox clearmap -i 道具索引名
清理地图道具
(道具索引名:留空则清理地图所有道具(慎重使用))

@gmbox clearmap -n NPC索引名
清理地图NPC
(NPC索引名:留空则清理地图所有NPC(慎重使用))

@gmbox clearmap -m 怪物索引名
清理地图怪物
(怪物索引名:留空则清理地图所有怪物(慎重使用))

@gmbox clearmap -k 怪物索引名
杀死地图怪物
(怪物索引名:留空则杀死地图所有怪物(慎重使用))

@gmbox clearmap -p 范围 玩家类型
清理地图玩家
(范围:以当前角色为中心的范围，默认0表示全地图  玩家类型:0为所有玩家，1为真实在线玩家，2为离线挂机玩家)

@gmbox clearmap -t 范围 目标地图索引 目标坐标 玩家类型
转移地图玩家
(范围:以当前角色为中心的范围，默认0表示全地图  目标地图索引:将当前地图玩家转移到该目标地图  目标坐标:目标X 目标Y，以空格分隔，默认0为随机  玩家类型:0为所有玩家，1为真实在线玩家，2为离线挂机玩家)

@gmbox setint -d 地图索引名 变量名
查询地图int变量


@gmbox setint -d 地图索引名 变量名 变量值
设置地图int变量
(变量值:清除变量则填0)

@gmbox setstr -d 地图索引名 变量名
查询地图str变量


@gmbox setstr -d 地图索引名 变量名 变量值
设置地图str变量
(变量值:清除变量则填nil)

@gmbox dgnvar -i 副本索引名 玩家角色名 变量名
查询副本int变量
(玩家角色名:有该副本门票的玩家)

@gmbox dgnvar -i 副本索引名 玩家角色名 变量名 变量值
设置副本int变量
(玩家角色名:有该副本门票的玩家  变量值:清除变量则填0)

@gmbox dgnvar -s 副本索引名 玩家角色名 变量名
查询副本str变量
(玩家角色名:有该副本门票的玩家)

@gmbox dgnvar -s 副本索引名 玩家角色名 变量名 变量值
设置副本str变量
(玩家角色名:有该副本门票的玩家  变量值:清除变量则填nil)

@gmbox dayint -d 地图索引名 变量名
查询地图int天变量


@gmbox dayint -d 地图索引名 变量名 变量值
设置地图int天变量
(变量值:清除变量则填0)

@gmbox daystr -d 地图索引名 变量名
查询地图str天变量


@gmbox daystr -d 地图索引名 变量名 变量值
设置地图str天变量
(变量值:清除变量则填nil)

@gmbox weekint -d 地图索引名 变量名
查询地图int周变量


@gmbox weekint -d 地图索引名 变量名 变量值
设置地图int周变量
(变量值:清除变量则填0)

@gmbox weekstr -d 地图索引名 变量名
查询地图str周变量


@gmbox weekstr -d 地图索引名 变量名 变量值
设置地图str周变量
(变量值:清除变量则填nil)

@gmbox refine 精炼等级 属性名编号 属性值
设置精炼属性
(精炼等级:-1表示精炼等级不变  属性名编号:从att表中查询，-1表示属性名不变  属性值:-1表示属性值不变)

@gmbox identify 属性索引 属性名编号 属性值
设置鉴定属性
(属性索引:0~2共三条，0为第一条  属性名编号:从att表中查询，-1表示属性名不变  属性值:-1表示属性值不变)

@gmbox quality 属性索引 属性名编号 属性值
设置品质属性
(属性索引:0~5共六条，0为第一条  属性名编号:从att表中查询，-1表示属性名不变  属性值:-1表示属性值不变)

--@gmbox extend 属性索引 属性名编号 属性值
@gmbox extend 0 -1 -1
设置扩展属性
(属性索引:0~9共十条，0为第一条  属性名编号:从att表中查询，-1表示属性名不变  属性值:-1表示属性值不变)



@gmbox luck 幸运诅咒值
设置幸运诅咒
(幸运诅咒值:正数加幸运，负数加诅咒)

@gmbox setint -i 道具GUID 变量名
查询道具int变量


@gmbox setint -i 道具GUID 变量名 变量值
设置道具int变量
(变量值:清除变量则填0)

@gmbox setstr -i 道具GUID 变量名
查询道具str变量


@gmbox setstr -i 道具GUID 变量名 变量值
设置道具str变量
(变量值:清除变量则填nil)

@gmbox pinji 坐骑品级
设置坐骑品级


@gmbox horselv 坐骑等级 经验上限
设置坐骑等级
(经验上限:详见本服horse.lua中定义)

@gmbox setjson json字符串
修改道具json串


@gmbox tempint -i 道具GUID 变量名
查询道具int临时变量


@gmbox tempint -i 道具GUID 变量名 变量值
设置道具int临时变量
(变量值:清除变量则填0)

@gmbox tempstr -i 道具GUID 变量名
查询道具str临时变量


@gmbox tempstr -i 道具GUID 变量名 变量值
设置道具str临时变量
(变量值:清除变量则填nil)

@gmbox dayint -i 道具GUID 变量名
查询道具int天变量


@gmbox dayint -i 道具GUID 变量名 变量值
设置道具int天变量
(变量值:清除变量则填0)

@gmbox daystr -i 道具GUID 变量名
查询道具str天变量


@gmbox daystr -i 道具GUID 变量名 变量值
设置道具str天变量
(变量值:清除变量则填nil)

@gmbox weekint -i 道具GUID 变量名
查询道具int周变量


@gmbox weekint -i 道具GUID 变量名 变量值
设置道具int周变量
(变量值:清除变量则填0)

@gmbox weekstr -i 道具GUID 变量名
查询道具str周变量


@gmbox weekstr -i 道具GUID 变量名 变量值
设置道具str周变量
(变量值:清除变量则填nil)

@gmbox viewmap -n 查看范围 NPC索引名
查找NPC
(查看范围:以当前角色为中心的范围  NPC索引名:可选，留空则查找所有NPC)

@gmbox npc NPC索引名 X坐标 Y坐标 刷新范围 刷新方向
高级刷NPC
(X坐标:默认当前角色坐标  Y坐标:默认当前角色坐标)

@gmbox setint -n NPCGUID 变量名
查询NPCint变量


@gmbox setint -n NPCGUID 变量名 变量值
设置NPCint变量
(变量值:清除变量则填0)

@gmbox setstr -n NPCGUID 变量名
查询NPCstr变量


@gmbox setstr -n NPCGUID 变量名 变量值
设置NPCstr变量
(变量值:清除变量则填nil)

@gmbox dayint -n NPCGUID 变量名
查询NPCint天变量


@gmbox dayint -n NPCGUID 变量名 变量值
设置NPCint天变量
(变量值:清除变量则填0)

@gmbox daystr -n NPCGUID 变量名
查询NPCstr天变量


@gmbox daystr -n NPCGUID 变量名 变量值
设置NPCstr天变量
(变量值:清除变量则填nil)

@gmbox weekint -n NPCGUID 变量名
查询NPCint周变量


@gmbox weekint -n NPCGUID 变量名 变量值
设置NPCint周变量
(变量值:清除变量则填0)

@gmbox weekstr -n NPCGUID 变量名
查询NPCstr周变量


@gmbox weekstr -n NPCGUID 变量名 变量值
设置NPCstr周变量
(变量值:清除变量则填nil)

@gmbox camp -n NPCGUID
查询NPC阵营


@gmbox camp -n NPCGUID 阵营值
设置NPC阵营


@gmbox mv -n NPC关键词
跳转到NPC附近


@gmbox viewmap -m 查看范围 怪物索引名
查找怪物
(查看范围:以当前角色为中心的范围  怪物索引名:可选，留空则查找所有怪物)

@gmbox mob 怪物索引名 是否可重生 刷新数量 刷新坐标范围 刷新方向
高级刷怪
(刷新坐标范围:默认当前角色坐标周围3格，参数以空格分隔)

@gmbox setint -m 怪物GUID 变量名
查询怪物int变量


@gmbox setint -m 怪物GUID 变量名 变量值
设置怪物int变量
(变量值:清除变量则填0)

@gmbox setstr -m 怪物GUID 变量名
查询怪物str变量


@gmbox setstr -m 怪物GUID 变量名 变量值
设置怪物str变量
(变量值:清除变量则填nil)

@gmbox dayint -m 怪物GUID 变量名
查询怪物int天变量


@gmbox dayint -m 怪物GUID 变量名 变量值
设置怪物int天变量
(变量值:清除变量则填0)

@gmbox daystr -m 怪物GUID 变量名
查询怪物str天变量


@gmbox daystr -m 怪物GUID 变量名 变量值
设置怪物str天变量
(变量值:清除变量则填nil)

@gmbox weekint -m 怪物GUID 变量名
查询怪物int周变量


@gmbox weekint -m 怪物GUID 变量名 变量值
设置怪物int周变量
(变量值:清除变量则填0)

@gmbox weekstr -m 怪物GUID 变量名
查询怪物str周变量


@gmbox weekstr -m 怪物GUID 变量名 变量值
设置怪物str周变量
(变量值:清除变量则填nil)

@gmbox camp -m 怪物GUID
查询怪物阵营


@gmbox camp -m 怪物GUID 阵营值
设置怪物阵营


@gmbox mv -m 怪物关键词
跳转到怪物附近


@gmbox df 行会名
清理行会
(行会名:多个行会以&分隔)

@gmbox fa 行会名 目标角色名
加入行会


@gmbox fd 行会名 目标角色名
踢出行会


@gmbox setint -f 行会名 变量名
查询行会int变量


@gmbox setint -f 行会名 变量名 变量值
设置行会int变量
(变量值:清除变量则填0)

@gmbox setstr -f 行会名 变量名
查询行会str变量


@gmbox setstr -f 行会名 变量名 变量值
设置行会str变量
(变量值:清除变量则填nil)

@gmbox setleader 行会名 玩家角色名
设置行会会长
(玩家角色名:新会长的角色名)

@gmbox cf 行会名
创建行会


@gmbox startwar 城堡名 攻城时间 持续时间 攻城行会
开启攻城
(持续时间:单位：秒  攻城行会:多个行会以&分隔，默认为空，则取所有行会)

@gmbox stopwar 城堡名
停止攻城


@gmbox checkwar
查询攻城信息


@gmbox setowner 城堡名
查询城堡拥有者


@gmbox setowner 城堡名 行会名
设置城堡拥有者
(行会名:清除拥有者则填nil)

@gmbox settemper 城堡名
查询城堡临时拥有


@gmbox settemper 城堡名 行会名
设置城堡临时拥有
(行会名:清除拥有者则填nil)

@gmbox castlevar -i 城堡名 变量名
查询城堡int变量


@gmbox castlevar -i 城堡名 变量名 变量值
设置城堡int变量
(变量值:清除变量则填0)

@gmbox castlevar -s 城堡名 变量名
查询城堡str变量


@gmbox castlevar -s 城堡名 变量名 变量值
设置城堡str变量
(变量值:清除变量则填nil)

