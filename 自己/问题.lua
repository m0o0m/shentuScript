��Ф�ϳɽ�ҿ۳���BUG
ǿ������û�м�
RichEdit���»���
--�ͻ��˲���������table.concat( tablename, ", ", start_index, end_index )
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

function keybind( ��ݼ� )
[
	{ "keys": ["ctrl+b"], "command": "new_file" },
	{ "keys": ["ctrl+q"], "command": "toggle_comment" },
	{ "keys": ["ctrl+alt+shift+a"], "command": "alignment" }
	
]
end


function lua.sublime( ����lua )
{
    "cmd": ["lua", "$file"],  
    "file_regex": "^(?:lua:)?[\t ](...*?):([0-9]*):?([0-9]*)",  
    "selector": "source.lua"  
}
end

dsdsad

0ԭ�ظ����
npc���
���Ͻ���ʾ�Ĳ���
1--prompt�����⣬�ѽ����----��Ӧ��Ҵ������¼�
	
2--�������
3--��Ʒ����Ч ���Ļ���
4--��ͻ��˲���ʾ ÿ�ܻ��һ���ǲ��ǲ�����һ��Ͳ���ʾ �ܶ�������ħ������֪����,�ǵ� �ܶ���û����
5-- ����������滹������ʾ���֣���ôʵ��
	-- Player_SetAlias --����˽ӿ�,���ó�ν
	-- lualib:Player_SetAlias(player, "#IMAGE1900000001#��һ��������") ��֧����ɫ��ͼƬ,����û��
	strcpy_s(_AppearData.master_name, _CustomMap.GetVarStr("master_name").c_str());
	strcpy_s(_AppearData.lover_name, _CustomMap.GetVarStr("��ż����").c_str());
	_AppearData.LoverRelation = _CustomMap.GetVarInt("intimacy");
	_AppearData.Glory = _CustomMap.GetVarInt("jjc_rongyao");
	
6gamemainbar ʱ��
7��̯
������������ʾ
�������ɫ


function �ж��Ƿ�ձ�next()
	if next(MATERIAL) == nil then 
		win_msg_up("����뱦ʯ..");
	end
end
-----------------------------------------------------------------------------
--GlobalDefine.lua
--ȫ�ֵĶ���
--��ɫ#
RDCOLOR={}
RDCOLOR["��"]=       4294967295--0xFFFFFFFF
RDCOLOR["��"]=       4294352189--0xFFF69D3D
RDCOLOR["��"]=       4294761476--0xFFFCDC04
RDCOLOR["��"]=       4279689899--0xFF16E2AB
RDCOLOR["����"]=  4279689899--0xFF16E2AB
RDCOLOR["����"]=  4280602623--0xFF24CFFF
RDCOLOR["��"]=       4286185269--0xFF79FF35
RDCOLOR["����"]=  4286111031--0xFF78DD37
RDCOLOR["����"]=  4279755435--0xFF17E2AB
RDCOLOR["�ۺ�"]=  4293935424--0xFFF04140
RDCOLOR["���"]=  4294705574--0xFFFC01A6
RDCOLOR["��ɫ"]=  4292790139--0xFFDEC77B
RDCOLOR["��"]=       4294894158--0xFFFEE24E
RDCOLOR["���"]=  4294417725--0xFFF79D3D
RDCOLOR["��"]=       4293018073--0xFFE241D9
RDCOLOR["��"]=       4284637794--0xFF626262
RDCOLOR["��"]=       4293882016--0xFFEF70A0
RDCOLOR["��ɫ"]=  4278190080--0xFF000000
RDCOLOR["ǳ��ɫ"]= 4284293124--0xFF5D2004

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



LuaGlobal["NpcFontName"] = "SIMLI18"    --npc���ֵ�����
LuaGlobal["NpcNameColor"] = 4294894158    --npc���ֵ���ɫ
LuaGlobal["NpcNameVOffset"] = 0    --npc���ֵĴ�ֱ����ƫ��
LuaGlobal["TipsBackImgID_Normal"] = "1900190004,1900190006,1900190005,1900190007,1900190008,1900190000,1900190001,1900190002,1900190003"--��Ʒװ��Tips�ı���ͼƬ,��ΪĬ��
LuaGlobal["TipsBackImgID_Focus"] = "1900180004,1900180006,1900180005,1900180007,1900180008,1900180000,1900180001,1900180002,1900180003"--��ǰ��ƷTips����ͼƬ
LuaGlobal["RefineImage"] = "1096000100,1096000200,1096000300"    --1~5 5~10 10~ ����ǿ���ȼ���ЧID
LuaGlobal["TipsDrawGrow"] = 1    --��Ʒtips�ı��Ƿ����
LuaGlobal["AVATAR_EFFECTBLEND1"] = 0    --��������������Ч����,0�Ǽ���,��Ĭ��.1������
LuaGlobal["AVATAR_EFFECTMASK1"] = MakeARGB(255,255,255,255)        --��������������Ч����,Ĭ��ΪMakeARGB(255,255,255,255)
LuaGlobal["AVATAR_EFFECTBLEND2"] = 0    --����
LuaGlobal["AVATAR_EFFECTMASK2"] = MakeARGB(255,255,255,255)        --����
LuaGlobal["AVATAR_EFFECTBLEND3"] = 0    --����
LuaGlobal["AVATAR_EFFECTMASK3"] = MakeARGB(255,255,255,255)        --����
LuaGlobal["AVATAR_EFFECTMASKFORCE"] = 0    --//���ж��Ȼ�ı�ģ����ɫ��������Ƿ�ǿ��ʹ���趨������,0:��ǿ��;1:ǿ��
LuaGlobal["TaskWindow_AutoQueryTask"] = 0    --��û�н���������ʱ�Զ��Ƽ�һ����������
LuaGlobal["TaskWindow_AutoQueryTaskElapse"] = 15    --�Զ��Ƽ���ѯ�¼����
LuaGlobal["AutoMoveItemsStr"] = "��ң��1��,��ң��50��,��ң��20��,��ң��10��,��ң��,��ң��1Сʱ,��ң��500��,��ң��7��,��ң��100��"    --�������ʱ�����жϱ������Ƿ������Щ����
LuaGlobal["ChatWindowUseGrow"] = 0 --������������
LuaGlobal["PlayerTextPosType"] = 1 --������ɫ�ı����ϵ�����ʾ˳��Ϊ�ƺ� �л��� ����,ͬҳ����ͬ
--RoleSkillKeyImageStr Ϊ��������Ͽ�ݼ�ͼ��,��һ��Ϊ��,���˳��ΪF1 ~ F8, CtrlF1 ~ CtrlF8
LuaGlobal["RoleSkillKeyImageStr"] = "1930200099,1930200035,1930200039,1930200043,1930200047,1930200051,1930200055,1930200059,1930200063,1930200067,1930200071,1930200075,1930200079,1930200083,1930200087,1930200091,1930200095"
LuaGlobal["NpcQuestHeadImage"] = "1043400000, 1043200000, 1043300000"    --npcͷ������ͼ��,1������ɽ���2������ɽӣ�3�������ѽӲ��ɽ�
LuaGlobal["NpcTalkBkAroundImg"] = "1903700034,1903700035,1903700036,1903700037,1903700039,1903700038,1903700040,1903700041,1903700042,1903700043"    --npctalk�����,�Զ�������Сʱ�Ź��񱳾�.ǰ����Ϊ�Ź���,��ʮ��Ϊ�ָ���
LuaGlobal["NpcTalkBKNoTaskImg"] = "1903700033"    --npctalk���,û������ʱ���õĵ��ű���ͼ
LuaGlobal["NpcTalkBkTaskImg"] = "1903700044,1903700015"    --npctalk���,������ʱ����ͼ��ѡ��ʱ����ͼƬ
LuaGlobal["NpcTalkBkNameBottomImg"] = "1903700020"    --npctalk���,npc���ֵײ�����ͼ
LuaGlobal["NpcTalkBkTaskStatusImg"] = "1903700016, 1903700018, 1903700017"    --npctalk���,����ѡ���ϵ�ǰ�����ǿɽ�,�ɽӺͲ��ɽ�����״̬ʹ�õ�ͼƬ
LuaGlobal["BigMapWindow_JumpNameFont"] = "SIMLI18"    --���ͼ��ת���ı�������
LuaGlobal["BigMapWindow_JumpNameTxtColor"] = MakeARGB(255,255, 240, 0)    --���ͼ��ת���ı�����ɫ
LuaGlobal["PlayerDigImage"] = 0    --�������ʱͷ����ͼƬ
LuaGlobal["PlayerTextPosOffset"] = 0    --������ƺ�Ѫ������ƫ����
//���
bool GetTeamPropByPlayerGUIDAll(const string& _RoleGUID, int _PropertyType);
void LogicTeamInviteEx(const std::string& _PlayerName);          //�������,��ʹδ�������Ҳ���ٵ���
bool CreateTeam( const std::string& _Tag, const std::string& _CallBack );            //��������
bool LeaveTeam();                                                //�뿪����
bool GetTeamMemberGUIDList();                                    //��ȡ�ҵĶ���guid��Ϣ
bool GetRoleTeamStatus();                                        //��ȡ��ǰ���״̬: 1:�Զ����,2:�ֶ����,3:�ܾ����
bool SetRoleTeamStatus( int _status );                            //���õ�ǰ���״̬: 1:�Զ����,2:�ֶ����,3:�ܾ����
bool GetNearbyTeamInfo( const std::string& _Tag, const std::string&  _CallBack );                                        //�����Χ������Ϣ
bool GetNearPlayerList( const std::string&  _MapKeyName );        //�����Χ�����Ϣ�б�
bool ApplyForTeam( const std::string&  _LeaderName );            //�������
bool TransferTeamLeader( const std::string& _LeaderName );        //ת�ƶӳ�
bool KickOutOfTeam( const std::string& _TargetName );            //��ĳ���߳�����
bool DismissTeam();                                                //��ɢ����
void AcceptTeamInvite( const std::string& _SenderName, const bool& _accept );    //�Ƿ����ĳ�˵�����
bool AcceptApplyTeam( const std::string& _SenderName, const bool& _accept );        //�Ƿ�����������

//�л�
bool GetFamilyList(int startIndex, int count, const std::string& _Tag, const std::string& _CallBack);    //������ʼ��źͻ�ȡ������ȡ�����л�
bool GetApplyPlayerList(int startIndex, int count, const std::string& _Tag, const std::string& _CallBack);    //������ʼ��źͻ�ȡ������ȡ������뱾�л������б�
bool GetFamilyMenberList(int startIndex, int count, int title_id, const std::string& _Tag, const std::string& _CallBack);    //������ʼ��źͻ�ȡ������ñ����ض��ƺŻ�����б�
bool GetFamilyOnlineMenberList(int startIndex, int count, int title_id, const std::string& _Tag, const std::string& _CallBack);    //������ʼ��źͻ�ȡ������ñ������ߵ��ض��ƺŻ�����б�
bool GetFamilyAllMenberList(int startIndex, int count, const std::string& _Tag, const std::string& _CallBack);    //������ʼ��źͻ�ȡ������ñ��л�����б�
bool FamilyInfoRequest(INT _reqType,  const std::string& _Tag, const std::string& _CallBack );            //��ȡ�л�һЩ��Ϣ
bool FamilyJoinRequest(const std::string& _Guid);    //��������л�
bool FamilyCancelJoinReq(const std::string& _Guid, const std::string& _Tag, const std::string& _CallBack);        //ȡ����������л�
bool FamilyNoticeConfirm(const std::string& _Notice, const std::string& _Tag, const std::string& _CallBack );    //�޸��лṫ��
bool FamilyDismiss(const std::string& _Tag, const std::string& _CallBack );    //��ɢ�л�
void FamilyOpenWarehouse();                    //�����ڹ�����Ʒ���л�ֿ����
bool FamilyJoinDenyOrAccept(int accept, const std::string& _Guid);    //ͨ����ܾ���Ҽ����л������
bool FamilyQuitRequest(const std::string& _Content, const std::string& _Tag, const std::string& _CallBack );    //�뿪�л�
bool FamilyEntitle(int title, const std::string &_Guid);    //����Ա������
bool FamilyCreateTitle(const std::string &_Name, const std::string& _Tag, const std::string& _CallBack );    //�������
bool FamilyEditTitle(int title, const std::string &_Name, const std::string& _Tag, const std::string& _CallBack );    //�޸ķ��
bool FamilyDeleteTitle(int title, const std::string& _Tag, const std::string& _CallBack );//ɾ�����
bool FamilyRepealTitle(const std::string& guid, const std::string& _Tag, const std::string& _CallBack );    //�������
bool FamilyInvite(const std::string& _Name); //��������л�
bool FamilyKick(const std::string& _Guid);    //������߳��л�

//����
//void OnOpenForge();
//���
//void OnOpenWing();

//�ɾ�
void GetGloryList();        //��ȡ�ɾ��б�
void GetGloryAward(int id);    //��ȡ����

//����
void GetFriendList(int type);

//�ʼ�
void OpenMail(const std::string& _Guid);
void AttachmentMail(const std::string& _Guid, int index);
void DeleteMail(const std::string& _Guid);

//�
void CampaignJoin(unsigned int _Id);
void GetCampaignDetail(unsigned int _Id, const std::string& _Tag, const std::string& _CallBack );

//����
void AcceptP2pInvite(const std::string& _Guid, int _Accept);
void SetP2pGold(const std::string& _gold);    //�趨���׽������
void OnCancelP2p();    //ȡ������
void OnConfirmP2p();//ȷ�Ͻ���
void OnLockP2p(int state);    //����

int GetMapOption();    //��ȡ��ǰ��ͼ������ĸ��ʽ
bool DoPlayerReliveByType(int type);    //��ɫʹ��ʲô��ʽ���� 1���ص��������� 2���سǻ�ԭ�ظ��� 3���ص������ſ� 4���ص������ſڻ�ԭ�ظ���

//����
bool AcceptQuestByID(int questID);        //�������� 
bool SubmitQuestByID(int questID);        //�ύ����ɵ����� -- LUA_EVENT_FINISHQUEST
bool GetQuestDataByID(UINT questID);    //��ȡ���������Ϣ  1
bool GetQuestAwardByID(int questID);    //��ȡ������Ʒ������Ϣ
bool DropQuestByID(int questID);    //��������
bool GetNpcQuestStateByID(const std::string& npcGuidStr);

string GetTimeStrWithFormat(const std::string&, const std::string& _Format);    //���ݸ�����ʱ���ȡ��ʽ������

bool GetSelectRoleList(const std::string& _Tag, const std::string& _CallBack);    //��ȡ��ɫѡ�������,��ɫ�б���Ϣ
bool ShowCreateRoleWnd();
bool EnterGame(const std::string& _Name);    //ʹ�ø�����ɫ��������Ϸ
bool DeleteRole(const std::string& _Name, const std::string& _Tag, const std::string& _CallBack);    //��Ҫɾ���Ľ�ɫ��
bool RecoverRole(const std::string& _Name, const std::string& _Tag, const std::string& _CallBack);    //�ָ�ָ����ɫ
bool GetRecoverRoleList();    //��ȡ��ɫ�ָ��б�

//�ֿ�
bool WareHouseSetGold(int type, const std::string& numStr);

//��̯
int GetStallState();
void StartStall();
void CloseStall();

INT  GetMountImageType(UINT _ImageID);

void SetCursorColor(UINT _Color);    //���ù����ɫ
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

--�ͻ���GUIDת�ɷ����GUID
if UI:Lua_GUID2Str(item_guid) then 
	item_guid = LuaRet;
end
UI:Lua_SubmitForm("�ȼ��жϱ�", "OnOpenForge", "")
UI:Lua_OpenWindow(TradeWnd._wnd, "");




--�����GUIDת�ɿͻ���GUID
if UI:Lua_Str2GUID(item_guid) then 
	item_guid = LuaRet;
	RDItemCtrlSetGUIDataPropByGUID(handle, "",  item_guid);
	self:OnEquipIn(handle, item_guid)
end


WndSetPosAt(_Handle, _Info, XPerct, YPerct) --���ô���λ�ñ���
function UI�ӿ�()
	GUI:WndSetEnableM(handle, false);
	--���󱳾���Ӧ��Ļ��С��ͬʱ����ui�༭��
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
			--GUI:WndSetTipInfo(_GUIHandle, [{"image":1901600040}, {"name":"ͼƬ"}])
			--���ô���Tips�����¼������Ա�ǣ�������Ϊtrue��������뿪�ÿؼ����Զ����tips���棬��һ�ν�������¹��졣
			GUI:WndSetTipAutoRemove(_GUIHandle, false)
			
			GUI:WndSetTextColorM(_GUIHandle,_color[false])
			GUI:WndSetTextM(_GUIHandle, "WindowText")
			GUI:WndSetMagicUI(_GUIHandle, 3)
			GUI:WndSetHint(_GUIHandle, "SetHint")
			GUI:WndSetTextArrangeType(_GUIHandle, 5, 3, 0, 0); --��ť����ƫ�ƺ�����
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
		
		--���ڶ�ʱ�� 
		bool WndAddTimer(this, nil, 1, 1000, "TimerGift.OnTimer")
		_CommonHandle = GUI:WndAddTimer(_GUIHandle, 1, 2, "ScriptHandle")   --��ʱ��ID����֮ǰ�˶�ʱ���Ѵ����򸲸ǡ�
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
		_ItemCtrlHandle = CL:GetEquimentItemDataPart(14) --����ʱװ��λ
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
		-- GUI:ItemCtrlSetJson(_GUIHandle, "SetJson") --����json�����Ʒ��
		-- GUI:ItemCtrlClearItemData(_GUIHandle) 
		GUI:ImageSetDrawCenter(_GUIHandle, true); --��������ӿ�ֻ����Ʒ���е���ƷiconͼƬ��Ч
		
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
		GUI:EditSetBNumber(_GUIHandle,true) --ok ����ʾ���֣���������ֱ�ӱ�����֣���B���ɣ�ֱ��һ���㶨����Ҫ��ô�鷳�ò���
        GUI:EditSetTextColor(_GUIHandle, _color[false])
        GUI:EditGetInt(handle)
        GUI:EditSetInt(_GUIHandle, 10) --��ʾ������
        GUI:EditSetFontCenter(_GUIHandle) --ok,����
        GUI:EditSetIsPassWord(_GUIHandle, false)
        GUI:EditSetMaxCharNum(_GUIHandle, 50)  --�ַ�������󳤶� 
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
		GUI:EditSetTextM(_Handle, "") --����������Ҫ��������
        GUI:EditSetInt(_GUIHandle, 0) --��ʾ������
	end

	_GUIHandle = GUI:RichEditCreate(_Parent,"ExampleRichEdit0",30,200,200,50)
  if _GUIHandle ~= 0 then
    GUI:WndRegistScript(_GUIHandle,RDWnd2DRichEditCL_key_enter, "RichEditExample.OnKeyEnter")
    --GUI:RichEditSetEnable(_GUIHandle, true)
    GUI:RichEditClear(_GUIHandle)
    GUI:RichEditAppendString(_GUIHandle, "RichEdit0 ")
    GUI:RichEditAppendString(_GUIHandle, "RichEdit1 ")
    GUI:RichEditSetCurFont(_GUIHandle, "system")
    GUI:RichEditSetCurFont(_GUIHandle, "SIMLI18") --����
    GUI:RichEditSetContentRect(_GUIHandle, 0, 0, 200, 50)
    GUI:RichEditSetTextItemAlpha(_GUIHandle, 0, 10, 255)
    GUI:RichEditSetDefaultTextColor(_GUIHandle, _color[false])
    GUI:RichEditSetTotalLine(_GUIHandle, 5)


    _RichEditHandle = GUI:RichEditGetSelectClickString(_GUIHandle)
    _RichEditHandle = GUI:RichEditGetTextItemCount(_GUIHandle)
    _RichEditHandle = GUI:RichEditGetAllString(_GUIHandle)


	LuaGlobal["RichEdit_RI_ShowUnderline"] = 1 --logicfunction.lua��������richedit�Ƿ���»���
    --ͼƬAPI
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

	
	--��ť��˸
	_GUIHandle = GUI:ButtonCreate(_Parent,"ExampleBtn1",1900000047,225,0)
	if _GUIHandle ~= 0 then
		GUI:WndRegistScript(_GUIHandle,RDWndBaseCL_mouse_lbUp, "CommonExample.OnExit")
		GUI:ButtonSetShine(_GUIHandle,true) --����
		GUI:WndSetTextM(_GUIHandle,"����RMB��")
		GUI:WndSetHint(_GUIHandle,"����ϵͳ")
		GUI:ButtonSetDownTextPosChange(_GUIHandle, true);
		GUI:WndSetTextArrangeType(_GUIHandle, 0, 0, 0, 0); --Ҫ��
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


	--ComboBoxCreate ��Ͽ�
	_GUIHandle = GUI:ComboBoxCreate(_Parent,"Combox0",1800000172,100,200,100,30,200)  --���ͼƬid���Ǹ���ť����Դid
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
		GUI:ComboBoxAddString(_GUIHandle, "ȫ��", 0, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "����", 1, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "����", 2, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "�·�", 3, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "ͷ��", 4, _color[false])
        GUI:ComboBoxAddString(_GUIHandle, "����", 5, _color[false])
        GUI:ComboBoxAddString(_GUIHandle, "����", 6, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "��ָ", 7, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "ѥ��", 8, _color[false])
		GUI:ComboBoxAddString(_GUIHandle, "ѫ��", 9, _color[false])		  
		GUI:ComboBoxSetCurSelect(_GUIHandle, 0)	 --���õ�ǰ��ʾ��Ŀ�������ò���ʾ
	end
	local index = ComboBoxGetCurSelect(TradeWnd_5._wnd, "Combox0")
	if index == -1 or index == 0 then 
		win_msg_up("��ѡ���������")
		msg("��ѡ���������")		
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
	GUI:WndSetHint(handle, "����:\n"..AWARD[i][2]..AWARD[i][3].."��;\n      "..AWARD[i][4]..AWARD[i][5].."��;\n")
--------------------------------------------------------------------------------------------------------------------------------------  

	--GUIData---------------------------------------------------------
	ITEMGUIDATA_ITEMGUID       =0  --GUID
	ITEMGUIDATA_IMAGEID        =1  --ICON
	ITEMGUIDATA_TYPE           =2  --���ͣ�1������Ʒ 2������
	ITEMGUIDATA_ITEMID         =3  --ģ��ID
	ITEMGUIDATA_PARAM          =4  --�Զ������
	ITEMGUIDATA_ITEMCOUNT      =5  --����
	ITEMGUIDATA_INVALIDATE     =6  --�Ƿ���Ч
	ITEMGUIDATA_ISSTACKITEM    =7  --�Ƿ�ɶѵ�
	ITEMGUIDATA_ITEMPOS        =8  --����λ��
	ITEMGUIDATA_CDTIME         =9  --CDʱ��
	ITEMGUIDATA_CDSTARTTICK    =10 --CD��ʼʱ��
	ITEMGUIDATA_INCDSTATE      =11 --�Ƿ�CD״̬
	ITEMGUIDATA_ITEMLOCK       =12 --�Ƿ�����
	ITEMGUIDATA_ITEMPRICETYPE  =13 --�۸����ͣ�1������2����Ԫ��
	ITEMGUIDATA_ITEMPRICE      =14 --�۸�
	ITEMGUIDATA_ISSHOWBIND     =15 --�Ƿ��
	--ģ������--------------------------------------------------------------
	ITEM_PROP_ID                            =0    -- ��Ʒ���
	ITEM_PROP_NAME                          =1    -- ����
	ITEM_PROP_KEYNAME                       =2    -- ��������
	ITEM_PROP_TYPE                          =3    -- ������
	ITEM_PROP_SUBTYPE                       =4    -- ������
	ITEM_PROP_WEAPONTYPE                    =5    -- ��������
	ITEM_PROP_JUJUTYPE                      =6    -- �������
	ITEM_PROP_LOGICTYPE                     =7    -- �߼��������
	ITEM_PROP_LOGICSUBTYPE                  =8    -- �߼����������
	ITEM_PROP_LS2                           =9    -- ��������
	ITEM_PROP_SHOPTYPE                      =10   -- ������������
	ITEM_PROP_SAVELOG                       =11   -- �Ƿ�д��¼
	ITEM_PROP_COLOR                         =12   -- ������ɫ
	ITEM_PROP_QUALITY                       =13   -- Ʒ��
	ITEM_PROP_BIGICON                       =14   -- ��ɫģ��ͼƬ
	ITEM_PROP_TIPSICON                      =15   -- ��ͼ��
	ITEM_PROP_ICON                          =16   -- ͼ����
	ITEM_PROP_DROPICON                      =17   -- ����ͼ����
	ITEM_PROP_AVATARMAN                     =18   -- ������
	ITEM_PROP_AVATARWOMEN                   =19   -- ����Ů
	ITEM_PROP_WINGAVATARMAN                 =20   -- ���ģ����
	ITEM_PROP_WINGAVATARWOMEN               =21   -- ���ģ��Ů
	ITEM_PROP_SHADOWAVATARMAN               =22   -- Ӱ����ģ��
	ITEM_PROP_SHADOWAVATARWOMEN             =23   -- Ӱ��Ůģ��
	ITEM_PROP_BRIEF                         =24   -- ��Ʒ����
	ITEM_PROP_DESC                          =25   -- ��Ʒ˵��
	ITEM_PROP_NAQISOUND                     =26   -- ����ʰȡ��Ч
	ITEM_PROP_FANGXIASOUND                  =27   -- ������Ч
	ITEM_PROP_SHIYONGSOUND                  =28   -- ʹ����Ч
	ITEM_PROP_DIAOLUOSOUND                  =29   -- ������Ч
	ITEM_PROP_CUTSOUND                      =30   -- �ӿ���Ч
	ITEM_PROP_HITSOUND                      =31   -- ������Ч
	ITEM_PROP_SELFWEIGHT                    =32   -- ����
	ITEM_PROP_DURABILITY                    =33   -- �����;ö�
	ITEM_PROP_DURZEROAUTODEL                =34   -- �;�Ϊ0�Ƿ��Զ���ʧ
	ITEM_PROP_STACK                         =35   -- ��������
	ITEM_PROP_BINDTYPE                      =36   -- ������
	ITEM_PROP_TRADABLE                      =37   -- �Ƿ�ɽ���
	ITEM_PROP_SPEDROP                       =38   -- �������
	ITEM_PROP_TIPDROP                       =39   -- ������ʾ
	ITEM_PROP_TIPSELL                       =40   -- ������ʾ
	ITEM_PROP_CONFIRMATION                  =41   -- ʹ���Ƿ�ȷ��
	ITEM_PROP_USECOUNT                      =42   -- ʹ������
	ITEM_PROP_USEZEROAUTODEL                =43   -- ʹ�ô���Ϊ0�Ƿ��Զ���ʧ
	ITEM_PROP_LEVEL                         =44   -- ʹ�õȼ�
	ITEM_PROP_JOB                           =45   -- ʹ��ְҵ
	ITEM_PROP_GENDER                        =46   -- ʹ���Ա�
	ITEM_PROP_PHYLIMIT                      =47   -- �﹥����
	ITEM_PROP_MAGLIMIT                      =48   -- ħ������
	ITEM_PROP_TAOLIMIT                      =49   -- ��������
	ITEM_PROP_EFFECT                        =50   -- ʹ����Ч���
	ITEM_PROP_DROPABLE                      =51   -- �ɷ���
	ITEM_PROP_STORABLE                      =52   -- �ɷ����ֿ�
	ITEM_PROP_REPAIRABLE                    =53   -- �ɷ�����
	ITEM_PROP_SELLABLE                      =54   -- �ɷ����
	ITEM_PROP_CANAUCTION                    =55   -- �ɷ�����
	ITEM_PROP_CANPURCHASE                   =56   -- �ɷ��չ�
	ITEM_PROP_CANSHORTCUT                   =57   -- �ɷ��������
	ITEM_PROP_TIMELIMIT                     =58   -- ����ʱ��
	ITEM_PROP_USEABSTIME                    =59   -- ����ʱ������ʱ��
	ITEM_PROP_TIMEUPAUTODEL                 =60   -- ����ʱ���Ƿ���ʧ
	ITEM_PROP_TRACK                         =61   -- ���ټ���
	ITEM_PROP_SCRIPT                        =62   -- �ű����
	ITEM_PROP_SUIT                          =63   -- ��װ���
	ITEM_PROP_IDENTIFY                      =64   -- �ɷ����
	ITEM_PROP_CANUNEQUIP                    =65   -- �ɷ�ж��
	ITEM_PROP_DRILLABLE                     =66   -- �ɷ���
	ITEM_PROP_MAXDRILL                      =67   -- ���ô����������
	ITEM_PROP_CANENHANCE                    =68   -- �ɷ�ǿ��
	ITEM_PROP_CANREFINE                     =69   -- �ɷ���
	ITEM_PROP_REFINECOSTDUR                 =70   -- ����ʧ�ܵ����;�
	ITEM_PROP_BAGSIZE                       =71   -- ��������������
	ITEM_PROP_WAREHOUSESIZE                 =72   -- �����ֿ������
	ITEM_PROP_SKILLID                       =73   -- ��������
	ITEM_PROP_HP                            =74   -- ����
	ITEM_PROP_MP                            =75   -- ħ��
	ITEM_PROP_MAXPHYDEF                     =76   -- �������
	ITEM_PROP_MINPHYDEF                     =77   -- �������
	ITEM_PROP_MAXMAGDEF                     =78   -- ħ������
	ITEM_PROP_MINMAGDEF                     =79   -- ħ������
	ITEM_PROP_MAXPHYATK                     =80   -- ����������
	ITEM_PROP_MINPHYATK                     =81   -- ����������
	ITEM_PROP_MAXMAGATK                     =82   -- ħ������
	ITEM_PROP_MINMAGATK                     =83   -- ħ������
	ITEM_PROP_MAXTAOATK                     =84   -- ��������
	ITEM_PROP_MINTAOATK                     =85   -- ��������
	ITEM_PROP_EA1                           =86   -- �����Թ���
	ITEM_PROP_EA2                           =87   -- ľ���Թ���
	ITEM_PROP_EA3                           =88   -- ˮ���Թ���
	ITEM_PROP_EA4                           =89   -- �����Թ���
	ITEM_PROP_EA5                           =90   -- �����Թ���
	ITEM_PROP_ED1                           =91   -- �����Է���
	ITEM_PROP_ED2                           =92   -- ľ���Է���
	ITEM_PROP_ED3                           =93   -- ˮ���Է���
	ITEM_PROP_ED4                           =94   -- �����Է���
	ITEM_PROP_ED5                           =95   -- �����Է���
	ITEM_PROP_WEIGHT                        =96   -- ���ñ�������
	ITEM_PROP_EQUIPWEIGHT                   =97   -- ���ô�������
	ITEM_PROP_BRAWN                         =98   -- ����
	ITEM_PROP_HIT                           =99   -- ׼ȷ�����У�
	ITEM_PROP_MISS                          =100  -- ���ݣ����ܣ�
	ITEM_PROP_MAGMISS                       =101  -- ħ�����
	ITEM_PROP_BURST                         =102  -- ������
	ITEM_PROP_LC                            =103  -- ��������
	ITEM_PROP_MOVESPEED                     =104  -- �ƶ��ٶ�
	ITEM_PROP_ATTACKSPEED                   =105  -- �����ٶ�
	ITEM_PROP_POISON                        =106  -- �ж��ظ�ֵ
	ITEM_PROP_HPREC                         =107  -- �����ظ�ֵ
	ITEM_PROP_MPREC                         =108  -- ħ���ظ�ֵ
	ITEM_PROP_INTENSITY                     =109  -- ǿ��
	ITEM_PROP_SUCKHP                        =110  -- ��Ѫ
	ITEM_PROP_SUCKHPPCT                     =111  -- ��Ѫ�ٷֱ�
	ITEM_PROP_SUCKMAXHPPCT                  =112  -- ��Ѫ���ްٷֱ�
	ITEM_PROP_SUCKMP                        =113  -- ��ħ
	ITEM_PROP_SUCKMPPCT                     =114  -- ��ħ�ٷֱ�
	ITEM_PROP_SUCKMAXMPPCT                  =115  -- ��ħ���ްٷֱ�
	ITEM_PROP_REFPHY                        =116  -- �����˺�����
	ITEM_PROP_REFPHYPCT                     =117  -- �����˺�����ٷֱ�
	ITEM_PROP_REFMAG                        =118  -- ħ���˺�������ֵ
	ITEM_PROP_REFMAGPCT                     =119  -- ħ���˺�����ٷֱ�
	ITEM_PROP_IMMMAG                        =120  -- ħ���˺�������ֵ
	ITEM_PROP_IMMMAGPCT                     =121  -- ħ���˺�����ٷֱ�
	ITEM_PROP_IMMPHY                        =122  -- �����˺�������ֵ
	ITEM_PROP_IMMPHYPCT                     =123  -- �����˺�����ٷֱ�
	ITEM_PROP_ISPHYIMM                      =124  -- ��������
	ITEM_PROP_ISMAGIMM                      =125  -- ħ������
	ITEM_PROP_SELLPRICE                     =126  -- ���ۼ۸�
	ITEM_PROP_BUYPRICE                      =127  -- ����۸�
	ITEM_PROP_BUNDLE                        =128  -- ��������
	ITEM_PROP_BUNDLEDSTID                   =129  -- ������Ӧ��ƷID
	ITEM_PROP_BUFFID1                       =130  -- ��������Я����Buff1
	ITEM_PROP_BUFFID2                       =131  -- ��������Я����Buff2
	ITEM_PROP_BUFFID3                       =132  -- ��������Я����Buff3
	ITEM_PROP_BUFFID4                       =133  -- ��������Я����Buff4
	ITEM_PROP_RATE                          =134  -- ���ϵĸ��ʼӳ�
	ITEM_PROP_GEMTYPE                       =135  -- ��ʯЧ������
	ITEM_PROP_GEMMATCH                      =136  -- ��ʯ��װ��������ƥ���ϵ
	ITEM_PROP_GEMATT1                       =137  -- ��ʯ��������
	ITEM_PROP_GEMATTVALUE1                  =138  -- ��ʯ������ֵ
	ITEM_PROP_GEMWARRIOR                    =139  -- սʿ��Ч����
	ITEM_PROP_GEMMAGE                       =140  -- ��ʦ��Ч����
	ITEM_PROP_GEMTAO                        =141  -- ��ʿ��Ч����
	ITEM_PROP_GEMLEVEL                      =142  -- ��ʯ�ȼ�
	ITEM_PROP_GEMSYNTHESISLEVEL             =143  -- ��ʯ�ϳɷ��ȼ�
	ITEM_PROP_GEMDIGLEVEL                   =144  -- ��ʯժ�����ȼ�
	ITEM_PROP_SYNTHESISID                   =145  -- �ϳɺ����ɵ��±�ʯid
	--ʵ������--------------------------------------------------------------
	ITEM_PROP_ENTITY_GUID               =146  -- guid
	ITEM_PROP_ENTITY_ID                 =147  -- ģ��Id
	ITEM_PROP_ENTITY_NAME               =148  -- ����
	ITEM_PROP_ENTITY_ROLE               =149  -- ӵ����GUID
	ITEM_PROP_ENTITY_SITE               =150  -- ��ǰ���ڵ�λ��
	ITEM_PROP_ENTITY_AMOUNT             =151  -- ��ǰ�Ķѵ�����
	ITEM_PROP_ENTITY_DURABILITY         =152  -- װ���;�
	ITEM_PROP_ENTITY_MAX_DURABILITY     =153  -- װ������;�
	ITEM_PROP_ENTITY_USE_COUNT          =154  -- ��ǰ��ʹ�ô���
	ITEM_PROP_ENTITY_IS_BOUND           =155  -- �Ƿ��Ѱ�
	ITEM_PROP_ENTITY_LIFE               =156  -- ����ʱ����ʼ����ʱ��
	ITEM_PROP_ENTITY_EXT_LEN            =157  -- ��չ���ݳ���
	ITEM_PROP_ENTITY_EXT_DATA           =158  -- ��չ����
	ITEM_PROP_EQUIP_VERSION             =166  -- �汾
	ITEM_PROP_EQUIP_QUALITY             =167  -- Ʒ������
	ITEM_PROP_EQUIP_SLOTNUM             =168  -- ��ǰ������
	ITEM_PROP_EQUIP_GEMSLOT             =169  -- ��ʯ��λ
	ITEM_PROP_EQUIP_GEMS                =170  -- ��ʯ���Լӳ�
	ITEM_PROP_EQUIP_IDENTIFIES          =170  -- ��������
	ITEM_PROP_EQUIP_REFINELEVEL         =171  -- �����ȼ�
	ITEM_PROP_EQUIP_REFINEDATA          =172  -- ��������
	ITEM_PROP_EQUIP_LUCKCURSE           =173  -- ��������
	ITEM_PROP_EQUIP_EXT                 =174  -- ������չ
	-------------------------------------------------------------------------
function ItemCtr_ģ������_ʵ������()
	--Get
	local item_guid = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if item_guid ~= 0 and item_guid ~= "0" then  --ע�����Ҫ���ַ���0�ж�
	end
	local _ItemGUIDataHandle = GUI:ItemCtrlGetGUIData(handle)
	--��ȡGUIData����е�����
	if not CL:GetItemGUIDataPropByType(_ItemGUIDataHandle, ITEMGUIDATA_ITEMGUID) then 
		return false;
	end
	local item = LuaRet;
	--Set �����Ʒ��
	RDItemCtrlSetGUIDataPropByGUID(self.WndHandle, "item"..index,  item_guid);
	RDItemCtrlSetGUIDataPropByItemID(self.WndHandle, "item"..index,  item_id);
	RDItemCtrlSetGUIDataPropByKeyName(self.WndHandle, "item"..index,  item_keyname);
	RDItemCtrlSetGUIDataPropByType(self.WndHandle, "item"..index, ITEMGUIDATA_INVALIDATE, true)--������Ʒ����GUIData����ֵ
	RDItemCtrlSetGUIDataEnable(_Handle, _Info, _Enable)--������Ʒ����Ʒ�Ƿ���Ч��һ����Ҫ����Ϊtrue
	
	--ģ�����Ի�ȡ(��Ȼֻ�л�ȡ)
	local Entity    = CL:GetItemEntityHandleByGUID(item_guid)
	local temp      = CL:GetItemTemplateHandleByGUID(item_guid)
	local temp = CL:GetItemTemplateHandleByKeyName(KeyName) --������Ʒ��KeyName��ȡģ����
	if not CL:GetItemTemplatePropByHandle(temp, index) then
		return 
	end
	local value_max = LuaRet;	--��ȡģ������
	
	--ʵ�����Ի�ȡ
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME ����false")
		return;
	end
	local Name = LuaRet;

	if CL:GetItemEntityPropByGUID(DATA[i], ITEM_PROP_ENTITY_AMOUNT) then--��ȡ�ѵ�����
	local count = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEM_PROP_ENTITY_AMOUNT)--��ȡ�ѵ�����
	
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_EQUIP_EXT) then --��ȡ������չ���ԣ�����˴��ʱ����0-9���ͻ���ȡ��ʱ����1-10
		dbg("ITEM_PROP_EQUIP_EXT�ͻ��˻�ȡ������չ����ʧ�� ����false")
		return;
	end
	local data = LuaRet
		
		
	--�Զ��������ȡ
	local Entity = CL:GetItemEntityHandleByGUID(item_guid); --ʵ����
	local crystalExp = CL:GetItemEntityCustomVarInt(Entity, "crystalExp"..sign);--����ʵ������ȡ�����Զ��������
	local Gem_keyName = CL:GetItemEntityCustomVarStr(Entity,"EquipHole"..i);--����ʵ������ȡ�ַ����Զ��������
	

	local _ItemDataHandle = GUI:ItemCtrlGetGUIData(handle)
	if 0 ~= _ItemDataHandle then
		local icon = ""
		if CL:GetItemTemplatePropByID(item_id, ITEM_PROP_ICON) then 
			icon = LuaRet;
		end
		LuaArg = icon
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_IMAGEID) --�������һ��,���������
		LuaArg = 0xFFFF
		CL:SetItemGUIDataPropByType(_ItemDataHandle, ITEMGUIDATA_ITEMCOUNT)
	end
	if not CL:GetItemEntityPropByGUID(item_guid, ITEM_PROP_NAME) then
		dbg("ITEM_PROP_NAME ����false")
		return
	end
	local Name = LuaRet;
	--���׼д��
	if not CL:GetItemTemplatePropByID(item_id, ITEM_PROP_COLOR) then
		return
	end
	local color =  LuaRet;
	WndSetTextColorM(CrystalSynthesis.WndHandle, "name"..index, RDCOLOR[color]);
	EditSetText(CrystalSynthesis.WndHandle, "name"..index, Name);
	
end
--------------------------------------------------------------------------------------------
--�������----------------��������
ROLE_PROP_ROLEID              =0  --��ɫID
ROLE_PROP_ROLENAME            =1  --��ɫ��
ROLE_PROP_SEX                 =2  --�Ա�
ROLE_PROP_JOB                 =3  --ְҵ
ROLE_PROP_STATUS              =4  --״̬:0�����ŵģ�1������,ʬ�������ģ� 2���к�,���ڹ���
ROLE_PROP_POSX                =5  --λ��X����
ROLE_PROP_POSY                =6  --λ��Y����
ROLE_PROP_DIR                 =7  --����
ROLE_PROP_RESTHP              =8  --HP�ٷֱ�
ROLE_PROP_HELMETID            =9  --ͷ��ID
ROLE_PROP_CLOTHESID           =10 --�·�ID
ROLE_PROP_WEAPONID            =11 --����ID
ROLE_PROP_WEAPONITEMID        =12 --����ID
ROLE_PROP_WINGSID             =13 --���ID
ROLE_PROP_MOUNTID             =14 --����ID
ROLE_PROP_HAIRCOLOR           =15 --������ɫ
ROLE_PROP_HAIRSTYLE           =16 --����
ROLE_PROP_HEADER              =17 --ͷ��
ROLE_PROP_LEVEL               =18 --�ȼ�
ROLE_PROP_FAMILY_NAME         =19 --�л�����
ROLE_PROP_FAMILY_TITLE        =20 --�л�ƺ�
ROLE_PROP_ALIAS               =21 --���� 

--�������-----------------32λ����
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
ROLE_PROP32_HIT                         --����
ROLE_PROP32_MISS                        --����
ROLE_PROP32_MOVE_SPEED                  --�ƶ��ٶȣ���׼ֵ
ROLE_PROP32_ATTACK_SPEED                --�����ٶȣ���׼ֵ
ROLE_PROP32_WEIGHT                      --��������
ROLE_PROP32_MAX_WEIGHT                  
ROLE_PROP32_EQUIP_WEIGHT                --װ������
ROLE_PROP32_MAX_EQUIP_WEIGHT            
ROLE_PROP32_BRAWN                       --����
ROLE_PROP32_MAX_BRAWN                   
ROLE_PROP32_POINT                       --ʣ�����Ե�
ROLE_PROP32_POINT_HP                    --hp point
ROLE_PROP32_POINT_MP                    --mp point
ROLE_PROP32_POINT_PHY_ATK               --physical attack point
ROLE_PROP32_POINT_MAG_ATK               --magical attack point
ROLE_PROP32_POINT_TAO_ATK               --taoism attack point
ROLE_PROP32_POINT_PHY_DEF               --physical defense point
ROLE_PROP32_POINT_MAG_DEF               --magical defense point
ROLE_PROP32_ELE_1_ATK                   --���Թ���1
ROLE_PROP32_ELE_2_ATK                   --���Թ���2
ROLE_PROP32_ELE_3_ATK                   --���Թ���3
ROLE_PROP32_ELE_4_ATK                   --���Թ���4
ROLE_PROP32_ELE_5_ATK                   --���Թ���5
ROLE_PROP32_ELE_1_DEF                   --���Է���1
ROLE_PROP32_ELE_2_DEF                   --���Է���2
ROLE_PROP32_ELE_3_DEF                   --���Է���3
ROLE_PROP32_ELE_4_DEF                   --���Է���4
ROLE_PROP32_ELE_5_DEF                   --���Է���5
ROLE_PROP32_HP_REC                      --hp�ظ��ٶ�
ROLE_PROP32_MP_REC                      --mp�ظ��ٶ�
ROLE_PROP32_POISON_REC                  --�ж��ָ��ٶ�
ROLE_PROP32_ENERGY                      --����
ROLE_PROP32_MAX_ENERGY                  --��������
ROLE_PROP32_BURST                       --������
ROLE_PROP32_LUCK_CURSE                  --��������
ROLE_PROP32_PK                          --PKֵ
ROLE_PROP32_PRESTIGE                    --����
ROLE_PROP32_MERITORIOUS                 --��ѫ
ROLE_PROP32_ACHIEVEMENT                 --�ɾ�
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
ROLE_PROP32_REIN_HIT                    --����
ROLE_PROP32_REIN_MISS                   --����
ROLE_PROP32_REIN_BURST                  --������
ROLE_PROP32_REIN_WEIGHT                 --��������
ROLE_PROP32_REIN_EQUIP_WEIGHT           --װ������
ROLE_PROP32_REIN_BRAWN                  --����
ROLE_PROP32_BAG_SIZE_0                  --����0��С
ROLE_PROP32_BAG_SIZE_1                  --����1��С
ROLE_PROP32_BAG_SIZE_2                  --����2��С
ROLE_PROP32_BAG_SIZE_3                  --����3��С
ROLE_PROP32_BAG_SIZE_4                  --����4��С
ROLE_PROP32_WAREHOUSE_SIZE              --��ҵĲֿ��С
ROLE_PROP32_WAREHOUSE_ADV_SIZE          --��Ҹ߼��ֿ��С
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
ROLE_PROP32_ELE_1_ATK_PCT               --���Թ���1
ROLE_PROP32_ELE_2_ATK_PCT               --���Թ���2
ROLE_PROP32_ELE_3_ATK_PCT               --���Թ���3
ROLE_PROP32_ELE_4_ATK_PCT               --���Թ���4
ROLE_PROP32_ELE_5_ATK_PCT               --���Թ���5
ROLE_PROP32_ELE_1_DEF_PCT               --���Է���1
ROLE_PROP32_ELE_2_DEF_PCT               --���Է���2
ROLE_PROP32_ELE_3_DEF_PCT               --���Է���3
ROLE_PROP32_ELE_4_DEF_PCT               --���Է���4
ROLE_PROP32_ELE_5_DEF_PCT               --���Է���5
ROLE_PROP32_MAX_WEIGHT_PCT              --��������
ROLE_PROP32_MAX_EQUIP_WEIGHT_PCT        --װ������
ROLE_PROP32_MAX_BRAWN_PCT               --����
ROLE_PROP32_HP_REC_PCT                  --hp�ظ��ٶ�
ROLE_PROP32_MP_REC_PCT                  --mp�ظ��ٶ�
ROLE_PROP32_POISON_REC_PCT              --�ж��ָ��ٶ�
ROLE_PROP32_MOVE_SPEED_PCT              --�ƶ��ٶ�
ROLE_PROP32_ATTACK_SPEED_PCT            --�����ٶ�
ROLE_PROP32_SUCK_HP                     --����ǰhp - ��ֵ
ROLE_PROP32_SUCK_HP_PCT                 --����ǰhp - �ٷֱ�
ROLE_PROP32_SUCK_MAX_HP_PCT             --��hp���� - �ٷֱ�
ROLE_PROP32_SUCK_MP                     --����ǰmp - ��ֵ
ROLE_PROP32_SUCK_MP_PCT                 --����ǰmp - �ٷֱ�
ROLE_PROP32_SUCK_MAX_MP_PCT             --��mp���� - �ٷֱ�
ROLE_PROP32_REF_PHY                     --�����˺����� - ��ֵ
ROLE_PROP32_REF_PHY_PCT                 --�����˺����� - �ٷֱ�
ROLE_PROP32_REF_MAG                     --ħ���˺����� - ��ֵ
ROLE_PROP32_REF_MAG_PCT                 --ħ���˺����� - �ٷֱ�
ROLE_PROP32_IMM_MAG                     --ħ���˺����� - ��ֵ
ROLE_PROP32_IMM_MAG_PCT                 --ħ���˺����� - �ٷֱ�
ROLE_PROP32_IMM_PHY                     --�����˺����� - ��ֵ
ROLE_PROP32_IMM_PHY_PCT                 --�����˺����� - �ٷֱ�
ROLE_PROP32_ATK_MODE                    --��������
ROLE_PROP32_CAN_WALK                    --����·
ROLE_PROP32_CAN_RUN                     --���ܲ�
ROLE_PROP32_CAN_TURN                    --��ת��
ROLE_PROP32_CAN_JUMP_MAP                --������ͼ
ROLE_PROP32_CAN_PHY_ATK                 --��������
ROLE_PROP32_CAN_MAG_ATK                 --��ħ������
ROLE_PROP32_CAN_USE_ITEM                --��ʹ�õ���(������װ)
ROLE_PROP32_IS_PHY_IMM                  --��������
ROLE_PROP32_IS_MAG_IMM                  --ħ������
ROLE_PROP32_IS_STEALTH                  --����
ROLE_PROP32_HAS_MANA_SHIELD             --��mana shield
ROLE_PROP32_HAS_COLLIDE                 --���ڳ�ײ״̬
ROLE_PROP32_HAS_REPELLED                --���ڻ���״̬
ROLE_PROP32_CAN_PUSH                    --�ܱ���
ROLE_PROP32_CAN_USE_SKILL               --��ʹ�ü���
ROLE_PROP32_IS_BLACK                    --�Ƿ�Ϊ����
ROLE_PROP32_HAS_IMM_SHIELD              --��imm shield
ROLE_PROP32_IMM_SHIELD                  --imm shield ֵ
ROLE_PROP32_HAS_BAG_GUARD               --�а���������
ROLE_PROP32_HAS_EQUIP_GUARD             --��װ��������
ROLE_PROP32_IS_GRAY                     --����
ROLE_PROP32_IS_CHAOS                    --����
ROLE_PROP32_IS_POISONING                -- �Ƿ��ж�(�̶�, �춾�߼���BUFF, û������)
ROLE_PROP32_HAS_TEAM                    --�ж���
ROLE_PROP32_GENDER                      --�Ա�
ROLE_PROP32_HEAD                        --ͷ��
ROLE_PROP32_HAIR                        --ͷ��
ROLE_PROP32_HAIR_COLOR                  --ͷ����ɫ
ROLE_PROP32_GM_LEVEL                    --gm�ȼ�
ROLE_PROP32_IDENTIFY                    --��������
ROLE_PROP32_TITLE                       --�ƺ�
ROLE_PROP32_GOLD_SETTLEMENT             --��ҽ���: 1��ҽ��� 0:��ҽ���
ROLE_PROP32_STALL                       --0: δ��̯ 1: ��̯׼�� 2: ��̯��
ROLE_PROP32_FRIEND_SWITCH               --0: ���ɼӺ���       1: �ɼӺ���
ROLE_PROP32_TEAM_SWITCH                 --0: �����ն�������   1: ���ն�������
ROLE_PROP32_HAS_FAMILY                  -- ���л�
ROLE_PROP32_EXP_PCT                     -- ���鱶��
ROLE_PROP32_MAG_MISS                    -- ħ������
ROLE_PROP32_INTENSITY                   -- ǿ�� 
--�������------------------------64λ����
ROLE_PROP64_EXP                           =0  --���� 
ROLE_PROP64_INGOT                         =1  --Ԫ��
ROLE_PROP64_BIND_INGOT                    =2  --��Ԫ��
ROLE_PROP64_INTEGRAL                      =3  --����
ROLE_PROP64_GOLD                          =4  --���
ROLE_PROP64_BIND_GOLD                     =5  --�󶨽��
ROLE_PROP64_GOLD_DEPOSIT                  =6  --�ֿ���

function GetPlayer_��ȡ�������()
	--��ȡ��һ�������
	bool CL:GetPlayerSelfPropBase(int _PropertyType)
	bool CL:GetPlayerPropBase(const string& _RoleGUID, int _PropertyType)
	--��ȡ���32λ����
	bool CL:GetPlayerSelfProperty32(int _PropertyType) 
	bool CL:GetPlayerProperty32(const string& _RoleGUID, int _PropertyType) 
	--��ȡ���64λ����
	bool CL:GetPlayerSelfProperty64(int _PropertyType) 
	bool CL:GetPlayerProperty64(const string& _RoleGUID, int _PropertyType)


	_ItemCtrlHandle = CL:GetEquimentItemDataPart(14) --����ʱװ��λ
end

--------------------------------------------------------------------------------------------
function �رմ���._Close(this)
	GUI:WndClose(GUI:WndGetParentM(this));
end
--------------------------------------------------------------------------------------------


8--װ���;�--����ģʽ������� --װ��EquimentNoticWindow������GameLogic.lua�ű���
GameLogic.lua �еĺ������ǹ̶��̶�����ô?��û�п���ע���¼���......----------------���������¼�ע���
LUA_EVENT_CUSTOMDATALOAD �¼�ʲô��˼?    ��AddAttackAutoUseSkill����ӿ�ʲô����?
DrawBrokenEquimentHint  CL:GetBrokenEquiment    CL:TextOut
OnMainUIInit UI:Lua_GetWindow("GameMainInterface,EquimentNoticWindow") UI:Lua_SetDownLoadMessageInfo(50, 60, "GREENG")

9-------------------------------------------------------------------
function ͷ�񹥻�ģʽ()
	--ͷ��Ĺ���ģʽ�任 û����ʾ, ����ģʽ�ı���¼�������32λ���Ըı������ȡ��,LUA_EVENT_CHANGEATTACMODE����¼�Ҳ����
	CL:ChangeAttacMod(GUI:WndGetParam(_h))
	function PlayerHeaderInfo.prop32DataChange()
		CL:GetPlayerSelfPropBase(ROLE_PROP_ROLEID)
		-- UI:Lua_ShowTypeMsg(4, "[����ģʽ:ȫ��ģʽ]")
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
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:ȫ��ģʽ]")
				elseif _SetAttackMode == atk_mode_peace then
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:��ƽģʽ]")
				elseif _SetAttackMode == atk_mode_team then
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:���ģʽ]")
				elseif _SetAttackMode == atk_mode_guild then
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:�л�ģʽ]")
				elseif _SetAttackMode == atk_mode_pk then
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:�ƶ�ģʽ]")
				elseif _SetAttackMode == atk_mode_alliance then
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:����ģʽ]")
				elseif _SetAttackMode == atk_mode_camp then
					UI:Lua_ShowTypeMsg(4, "[����ģʽ:��Ӫģʽ]")
				end
			end
		end
	end
end
	
function OpenUrlUseIEByType_����Ϸ��ַ()
   CL:OpenUrlUseIEByType(3)
   1 ����ע��ҳ��
   2 �����޸�����ҳ��
   3 �����ֵҳ��
end 
	
function DBE( ����ֶ�ֵ )
	
	bool UI:Lua_FindDBE(const string& _DbeName,const string& _Name,const string& _KeyName,const string& _KeyValue)
	Lua�ӿڣ�function FindDBE(DBEName,FindName,KeyName,KeyValue)
	���ܣ�
	    ����������������ͬ������DBE�ļ��еķ�����������Ŀ��ֵ�������з��������Ľ�����ء�
	    ������֪�ֶ�����KeyName���ֶε�ֵKeyValue��ѯDBEName��FindName�ֶε�ֵ��
	������
	    �ַ���_DbeName     DBE�ļ�����������·����������չ���� 
	    �ַ���_Name        Ҫ��ѯ�����ԡ� 
	    �ַ���_KeyName     �������ԡ� 
	    �ַ���_KeyValue    ����ֵ�� 
	Lua_FindDBE����ֵ��
	    true ��ʾִ�гɹ�
	    false ��ʾִ��ʧ��
	    �����������true����ѯ�����LuaRet�л�ȡ����һ��Lua table ��
	FindDBE����ֵ��
	    ����������Lua table
	˵����
	    ��DBE�ļ���ĳ����Ŀ������Ϊ_KeyName��������ֵΪ_KeyValueʱ��������Ѹ���Ŀ�е�_Name����Ӧ���ֶ�ֵ��ӵ�ȫ��lua����LuaRet�У�����LuaRet��һ��table��  
end
	
	
--------------------------------------------------------------------------------------------    
function ������()  
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

--����keynameͳ��һ����Ʒ���������㷨,��ĸ�������,������Ʒ��,Ҫͳ�Ʒ��˼���,��Ҫ֪��������ʲô��ʯ,�走��
function ͳ������()
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
function �ͻ����¼�()
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
------------------------------------�����
function API_�����() end    
--��ʲôʱ��,ʲô�ص�,ʲô����,��ʲô�¼�,��ʲô����,ִ��ʲô����
--------------------------------------------------------------------------------------------    
--------------------------------------------------------------------------------------------
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")


10-------------------------------------------------------------------
	--�������,�ظ��ٻ�����   --�߼������̵Ļ�,����� ��֮ͥ��.lua
	Player_Summon�ӿ��б����ȼ�������
	int32  Player_GetServantCount( string  strPlayer ) ȡ����ҵ���ӵ�����

11-------------------------------------------------------------------
	--�������  
	-- ����BUFF��������
	-- ��Ҫ���ĵ�������
	-- �鼼������?----������ѵ�
	local skillExp = lualib:GetSkillExp(player,tb1[tonumber(skillid)])
	lualib:SetSkillExp(player,tb1[tonumber(skillid)],skillExp + lualib:GenRandom(1, 3) )

11-------------------------------------------------------------------
	--BUFF���
	��ʯ10buff
	
12-------------------------------------------------------------------

13

-------------------------------------------------------------------
function ��ֵ����()

	function main(player)
		local qingming_date =  "2015-4-2";
		local iStartTime = lualib:Str2Time(qingming_date);
		local qingming_deadline =  "2016-4-4 23:59:59";
		local iEndTime = lualib:Str2Time(qingming_deadline);
		if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin > 0 and time > " .. iStartTime .." and time < " .. iEndTime, "vOnDBEvtResult", player) then
		-- if not lualib:PostDBEvt("select * from tblbilllog", "vOnDBEvtResult", player) then
		-- if not lualib:PostDBEvt("select * from columns where table_name=tblbilllog", "vOnDBEvtResult", player) then
			return "����ʧ�ܣ�"
		else
			return ""
			-- return "���ݶ�ȡ�У�����"
		end
		return ""
	end

	function vOnDBEvtResult(bResult,dwError,strError,iResultNum,tRecordSets,player)
		local msg_error = ""
		if bResult == false then
			lualib:SysPromptMsg(player, "bResult��ѯ����"..dwError..strError..#tRecordSets);
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
--�������ֽ��������ۻ��������е��鷳��
function �����ĸ������Լ��Ƿ�����콱�����㷨()
	
	--���жϵȼ������ĸ�����
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
		--���������,���ж���û����ȡ������
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
	lualib:ShowFormWithContent(player, "�ű���", "QMActivities:Updata(".. serialize(DATA)..")")
end
--------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------------
function ϵͳ��Ϣ_�Ҳ����()
	lualib:SysTriggerMsg(player,"�����ڳ����޷��������ͣ�");
	lualib:SysMsg_SendWarnMsg(player, "����װ�����Ͳ���ǿ��")
	lualib:SysPromptMsg(player, "Ԫ������");
	lualib:SysMapMsg(strMap, "���ǿ�ʼ10�����Ժ�Ϳ���ռ��ʹ�,Ŀǰ��ʣ"..t_m.."����.");

	lualib:SysTipsMsg(player,"���鵤ʹ�óɹ�")                  --֪ͨ�ͻ�����ʾ��Ϣ��ҳ�����½ǣ�΢�����½�
	lualib:SysMsg_SendBottomColor(player, "����VIP�ȼ�����", 7, 2) ----���Ϳͻ��˵ײ���Ϣ.����

	local str = "[��սBOSS]����"..math.floor(times / 60000).."���ӿ�����"
	lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", str, 15000)
	lualib:SysMsg_SendBroadcastMsg(str, "ϵͳ֪ͨ") --�㲥
	lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ
	lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#ȺӢ���Ի�ѿ������������ȺӢ����NPC�����롣#COLOREND#", 11, 2)  --��Ȼ�ǻ�ɫ
	--��Ϣ��������  ǰ�� ����
	--1 = ��ɫ 2 = ��ɫ 3 = �ۺ� 4 = ��ɫ 5 = ǳ�� 6 = ��� 7 = ��ɫ 8 = ���� 9 = ���� 10 = ��� 11 = ͸�� 12 = ��ɫ 13 = ��ɫ

	local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#�����޾���Ԩ���޾���Ԩ�ɴ���ɽ��NPC�����룡#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
end

------------------------------------------------------------------- 
--ȡ����Ʒ�������ͺ������ͣ������Ƿ���
local item_type = lualib:Item_GetType(player,item_site[i]) 
local item_subtype = lualib:Item_GetSubType(player, item_site[i])   --�ж��������Ƿ�Ϊװ����1��ʾ������Ϊװ��
if item_type ~= 1 then
	lualib:MsgBox(player, "��İ���ǰ10������Ʒ����װ���������Ū�ң�")
end
function zhul(_handle)
	local handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item1")	
	local item_guid1 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid1) == 0 or item_guid1 == nil then
		msg("�������Ҫǿ����װ��")
		return
	end
	handle = GetWindow(nil,"ForgeWnd2,ZhulWnd,item2")	
	local item_guid2 = RDItemCtrlGetGUIDataPropByType(handle, nil, ITEMGUIDATA_ITEMGUID)
	if tonumber(item_guid2) == 0 or item_guid2 == nil then
		msg("������̻�ʯ")
		return
	end
	if UI:Lua_GUID2Str(item_guid1) then 
		item_guid1 = LuaRet
	end
	if UI:Lua_GUID2Str(item_guid2) then 
		item_guid2 = LuaRet
	end
	
	UI:Lua_SubmitForm("ע���", "YunHun_item", ""..item_guid1.."#"..item_guid2)
	-- dbg("item_guid1=============="..item_guid1..";item_guid2======"..item_guid2);
end

function forge_item(player,item_guid,job,yb_y)
	

	lualib:SysPromptMsg(player, "item_guid="..item_guid..";job="..job..";yb_y="..yb_y);

	local job = tonumber(job)
	local item_level_index = GetItemLevelIndex(item_guid);

	local jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
	local xing_n = lualib:GetInt(item_guid,"xing_n")
	if jl_level >= 20 then
		lualib:SysPromptMsg(player, "�Ѿ�ǿ������ߵȼ�");
        return ""
    end
	
	local xing_num = lualib:GetInt(item_guid,"xing_num")
	-- if jl_level >= xing_num then
		-- lualib:SysPromptMsg(player, "ǿ����������");
		-- return ""
	-- end
	
	local refine_next_level = jl_level + 1
	local gold = EXPEND[item_level_index][refine_next_level][1][2];
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:SysPromptMsg(player, "��Ҳ���");
		return ""
	end	
	
	local succ_rate = EXPEND[item_level_index][refine_next_level][2] 
	if tonumber(yb_y) == 1 then
		--��֤�ɹ���Ԫ��
		local yb = EXPEND[item_level_index][refine_next_level][3]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ������\");")
			-- lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			lualib:SysPromptMsg(player, "Ԫ������");
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "��Ԫ��:100%ǿ���ɹ�", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ���۳�ʧ��\");")
			return ""
		end
		succ_rate = 100
	end
	
	

	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	end	
	
	local ran = lualib:GenRandom(1,100)
	if ran > succ_rate then
		OfferData(player, item_guid);
		return ""
	end	
	
	
	
	if not lualib:Equip_SetRefineLevel(player, item_guid, refine_next_level) then
		-- lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);ForgeWnd.msg_up(\"ǿ��ʧ��\");")
		return "���þ����ȼ�ʧ��,ǿ��ʧ��"
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
		--����
		if job == 0 then 
			---��ְҵͨ��װ��
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
		--����, ���, ħ��
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
		--���,ħ��
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
		--������
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
    lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item_guid, 0, "����", "")
	
	-- lualib:SetInt(player, "Qiang_tip2", lualib:GetInt(player, "Qiang_tip2") + 1)   
	-- lualib:NotifyVar(player,"Qiang_tip2") 
	OfferData(player, item_guid);
	lualib:ShowFormWithContent(player,"�ű���","ForgeWnd:Get_EquipUpdate()")
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
		lualib:SysPromptMsg(player, "�Ѿ�ǿ������ߵȼ�");
        return ""
    end
	
	local xing_num = lualib:GetInt(item_guid,"xing_num")
	-- if jl_level >= xing_num then
		-- lualib:SysPromptMsg(player, "ǿ����������");
		-- return ""
	-- end
	
	local refine_next_level = jl_level + 1
	local gold = EXPEND[item_level_index][refine_next_level][1][2];
	local bind_gold = lualib:GetBindGold(player)
	local n_gold = lualib:GetGold(player)
	if gold > bind_gold + n_gold  then
		lualib:SysPromptMsg(player, "��Ҳ���");
		return ""
	end	
	
	local succ_rate = EXPEND[item_level_index][refine_next_level][2] 
	if tonumber(yb_y) == 1 then
		--��֤�ɹ���Ԫ��
		local yb = EXPEND[item_level_index][refine_next_level][3]
		local ingot = lualib:GetIngot(player)
		if yb > ingot then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ������\");")
			-- lualib:ShowFormWithContent(player,"�ű���","GameMainBar.YbTopUP_Dlg()") 
			lualib:SysPromptMsg(player, "Ԫ������");
			return ""
		end
		if not lualib:Player_SubIngot(player, yb, false, "��Ԫ��:100%ǿ���ɹ�", "ϵͳ") then
			lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"Ԫ���۳�ʧ��\");")
			return ""
		end
		succ_rate = 100
	end
	
	

	if bind_gold >= gold then
		if not lualib:Player_SubGold(player, gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	else
		if not lualib:Player_SubGold(player, bind_gold, true, "�۰󶨽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
		local jb = gold - bind_gold
		if not lualib:Player_SubGold(player, jb, false, "�۽��:ǿ��", "ϵͳ") then
			-- lualib:ShowFormWithContent(player,"�ű���","ForgeWnd.msg_up(\"��ҿ۳�ʧ��\");")
			return "��ҿ۳�ʧ��"
		end
	end	
	
	local ran = lualib:GenRandom(1,100)
	if ran > succ_rate then
		OfferData(player, item_guid);
		return ""
	end	
	
	
	
	if not lualib:Equip_SetRefineLevel(player, item_guid, refine_next_level) then
		-- lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,\"ForgeWnd,QianghWnd,item_magic\",3020200200,-215,-174,150,1);ForgeWnd.msg_up(\"ǿ��ʧ��\");")
		return "���þ����ȼ�ʧ��,ǿ��ʧ��"
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
		--����
		if job == 0 then 
			---��ְҵͨ��װ��
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
		--����, ���, ħ��
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
		--���,ħ��
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
		--������
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
    lualib:OnGloryTrigger(player, lua_glory_trigger_jinglian, item_guid, 0, "����", "")
	
	-- lualib:SetInt(player, "Qiang_tip2", lualib:GetInt(player, "Qiang_tip2") + 1)   
	-- lualib:NotifyVar(player,"Qiang_tip2") 
	OfferData(player, item_guid);
	lualib:ShowFormWithContent(player,"�ű���","ForgeWnd:Get_EquipUpdate()")
	return ""
end	

local itemJson = lualib:Item2Json(itemGUID) --���ɵ���JSON��
----------------------------------------------------------------------
function player_��Ҳ���()
	--ͬһ���˺�ֻ��һ����ɫ��ȡ�߼�
	local index1 = lualib:GetInt(player, "iHasGotRechargeRC_AWARD1")
	local AccountName = lualib:AccountName(player)
	local GUID = lualib:GetDBStr(AccountName.."QM");
	if GUID ~= "" then 
		if GUID ~=  player then 
			return "ͬһ���˺�ֻ������һ����ɫ�����콱"
		end
	else
		lualib:SetDBStr(AccountName.."QM", player);
	end
	--�������Ի�ȡ
	lualib:God(lualib:Name2Guid("����˹"))  --����������ֻ�ȡguid
	Player_GetIntProp Player_SetIntProp  Player_GetStrProp  Player_GetGuidProp
	
	--��Ӹ����
	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")         
	function on_trigger_player_relive(player)
	   lualib:ProgressBarStart(player, 10000, "������...", "on_relive_complete", "on_relive_abort", "")     --������
	   return false --�������Ȳ�����Ҹ���,�����ýű��ӿ�ʹ��Ҹ���
	end
	--��;�䶷��.lua
	function on_relive_complete(player, param)
		local x = lualib:GenRandom(15, 59);
		local y = lualib:GenRandom(24, 71);
		lualib:Player_Relive(player, "", x, y, 12, 50)       --��Ҹ����ڵ�ǰ��ͼ������Ϊx��y����ΧΪ12�������Ѫ��Ϊ%50
	end
	
	---------------------------------------------------------------
--װ������˲�������
	--��֤�����Ƿ��㹻
	local keyname = tbl[index - 1]
	if not keyname then
		return "��Խ��"
	end
	----��֤�����Ƿ��㹻
	local require_count = EXPEND[item_level_index][refine_next_level][1][2]
	local count = lualib:ItemCount(player, material);
	if count < require_count then 
		local msg = string.format("%q", lualib:KeyName2Name(material, 4).."��������,�޷���ɺϳ�")
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up("..msg..")")
		return lualib:KeyName2Name(material, 4).."��������,�޷���ɺϳ�"
	end
	--��֤����Ƿ��㹻
	local cost = material[index][2]
	if not lualib:Player_IsGoldEnough(player, cost, false) then
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up('��Ҳ���')") 
		return "��Ҳ���"
	end 
	--�۽��
	if not lualib:Player_SubGold(player, cost, false, "�۽��:�����ϳ�", player) then
		lualib:Error("�۽��ʧ�ܣ�name="..lualib:Name(player));
		return ""
	end
	--�۵���
	if not lualib:TakeItem(player, keyname, 2, "ɾ����:�����ϳ�", player) then 
		lualib:Error("�۵���ʧ��"..lualib:Name(player));
		lualib:SysPromptMsg(player, "�۵���ʧ��");
		return ""
	end
	--������
	local Item = tbl[index]
	if not Item then
		return "��Խ��"
	end
	if not lualib:AddItem(player, Item, 1, false, "������:�����ϳ�", player) then --����Ʒ
		lualib:Error("����Ʒʧ�ܣ�name="..lualib:Name(player));
		return "����Ʒʧ��"
	end
	lualib:ShowFormWithContent(player,"�ű���","win_msg_up('�ϳɳɹ�����')")
	-- lualib:Item_NotifyUpdate(player, item_guid)
	lualib:ShowFormWithContent(player,"�ű���","Com_Hat:Refresh()")
	local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#�ɹ��ϳ��˷�����#COLOREND##COLORCOLOR_BLUE#"..material[index+1][1].."�����۰�����֮�տɴ���";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	return "�ϳɳɹ�����"
	
	
	---------------------------------------------------------------
	
	
	
	--�Ƿ�ӵ��
	if lualib:HasTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")                  --�ж��Ƿ��и����������
		lualib:RemoveTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive")                        --ɾ���ô���
	end
	
	if not HasQuest(player, quest_id) then
		return "û�и�����"
	end
	
	if lualib:Player_HasDgnTicket(player, "��ħ��") then --�ж�����Ƿ�ӵ�и�����Ʊ.
		msg = msg.."#IMAGE&lt;ID:1902700018&gt;#&lt;@jump_member *01*��������ս&gt;��\n"
	end
	
	if lualib:HasBuff(player,"��̯") then
		lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	
	if lualib:HasSkill(actor, skill_table[i], false) == true then
		lualib:Player_RunGMCmd(actor, "sd", skill_table[i]) --�����ִ��GMָ��.
		lualib:SysMsg_SendWarnMsg(actor, "���ʵ���Ѿ����������"..skill_name[skillid].."��ɾ��������ѧ�������õ��ռ����ܣ���ɵ����ǵĲر��󿴿���")
	end 
	
	--��ȡ�ƺ�ǰ�����ж�����Ƿ��иóƺš���������ӣ�������
	if not lualib:HasTitle(player, 1) then
		lualib:AddTitle(player, 1);
		return "��ȡ�ɹ�"
	else
		return "���Ѿ��иóƺ���!"
	end
	
	if not lualib:HasItem(player, item) then
		return "���û�иõ���"
	end

	--�۽��
	--�۽��
	if not lualib:Player_IsGoldEnough(player, cost, false) then
		lualib:ShowFormWithContent(player,"�ű���","win_msg_up('��Ҳ���')") 
		return "��Ҳ���"
	end 
	
	if not lualib:Player_SubGold(player, cost, false, "�۽��", player) then
		lualib:Error("�۽��ʧ�ܣ�name="..lualib:Name(player));
		return ""
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
		msg = msg.."��ǰ������Ҫ1500���"
		lualib:NPCTalk(player, msg)
		return ""
	end 
	if not lualib:Player_SubGold(player, gold, false, "�۽��", player) then
		lualib:Error("�۽��ʧ�ܣ�name="..lualib:Name(player));
		return ""
	end
	--��Ԫ��
	if not lualib:Player_IsIngotEnough(player, 200, false) then
		lualib:SysPromptMsg(player, "Ԫ������") 
		return ""
	end

	if not lualib:Player_SubIngot(player, 200, false, "��������", "��������") then 
		lualib:Error("��Ԫ��ʧ�ܣ�name="..lualib:Name(player));
		return ""
	end
	--�۵���
	if not lualib:TakeItem(player, "����keyname", 1, "ɾ����:ԭ��", "������") then 
		lualib:Error("�۵���ʧ��"..lualib:Name(player));
		lualib:SysPromptMsg(player, "�۵���ʧ��");
		return ""
	end
	lualib:TakeItemEx(player, "����keyname", 100, 2, false, true, false, false, "ɾ����:ԭ��", "������")
	if not lualib:DelItem(player, k, v, 2, "��ʯ����", player) then 
		lualib:Error("�۵���ʧ��"..lualib:Name(player));
		lualib:SysPromptMsg(player, "�۵���ʧ��");
		return ""
	end
	if not lualib:Item_Destroy(player, item, "������", player) then
		lualib:Error("�۵���ʧ��"..lualib:Name(player));
		lualib:SysPromptMsg(player, "�۵���ʧ��");
	end
	--������
	if not lualib:AddItem(player, xun_tab[next_level], 1, true, "����ѫ��", player) then --����Ʒ
		lualib:Error("����Ʒʧ�ܣ�name="..lualib:Name(player));
		return "����Ʒʧ��"
	end
	--�ӽ��
	if not lualib:Player_AddGold(player, 5000, false, "��սBOSS", player) then 
		lualib:Error("�����ʧ�ܣ�name="..lualib:Name(player));
	end
	--��Ԫ��
   	if not lualib:Player_AddIngot(player, ingot[item_id], false, "��Ԫ����ʹ��Ԫ������", player) then
   		lualib:Error("��Ԫ��ʧ�ܣ�name="..lualib:Name(player));
        lualib:SysMsg_SendTipsMsg(player, "���Ԫ��ʧ�ܣ�")
		lualib:SysMsg_SendWarnMsg(player, "���Ԫ��ʧ�ܣ�")
        return ""
    end
	--�Ӱ�Ԫ
	local bind_ingot = lualib:GetBindIngot(player)
	if not lualib:AddBindIngot(player, ingot, "��Ӱ�Ԫ��:ԭ��", "������") then
		lualib:Error("����Ԫʧ�ܣ�name="..lualib:Name(player));
	end
	--Ԫ���Ƿ��㹻
	if not lualib:Player_IsIngotEnough(player, ingot, false) then
    	return "Ԫ������"
	end
	if not lualib:SubBindIngot(player, lualib:GetBindIngot(player), "�۳���Ԫ��ԭ��", lualib:Name(player)) then
		lualib:Error("�۰�Ԫʧ�ܣ�name="..lualib:Name(player));
	end
	--ȡ�ý�ɫ�ǰ󶨽��.
	local gold = lualib:GetGold(player)
	--��ȡ��������
	local count = lualib:ItemCount(player, k);
	if count < v then 
		lualib:SysPromptMsg(player, "000000000000000"..v);
		return k.."��������,�޷��������"
	end


	--����guid����ɾ����ҵ���
    local guids = {"5432GH32", "7472GH51"}
    local ret = lualib:DelItemsBatch(player, guids, "����", "�ű�")
    if not ret then
    	lualib:SysWarnMsg(player, "����ɾ����Ʒʧ��")
    end

    --����keyname����ɾ����ҵ���
    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "����������ڳ��������", keyname) then
        lualib:SysMsg_SendWarnMsg(player, keyname.."ʹ��ʧ�ܣ�����������")
        return false
    end


	--�ڹ�����
/**
     * @b ��ӽ�ɫ�ڹ�����.
     * ��ӽ�ɫ�ڹ�����.
     * @param strPlayer ��ҵ�GUID.
     * @param iExp ��������.
     * @param strDesc ������ԭ��.
     * @param strTarget �����ķ�����.
     * @return �ɹ���ʧ��.
     * @remarks ��.
     * @warning ��.
     * @note@verbinclude Player_AddInnerForceExp.lua
     * @version 0.926�����ϰ汾.
     */
    bool Player_AddInnerForceExp(const std::string& strPlayer, INT32 iExp,
                       const std::string& strDesc, const std::string& strTarget);

    /**
     * @b �۳���ɫ�ڹ�����.
     * �۳���ɫ�ڹ�����.
     * @param strPlayer ��ҵ�GUID.
     * @param iExp ��������.
     * @param strDesc ������ԭ��.
     * @param strTarget �����ķ�����.
     * @return �ɹ���ʧ��.
     * @remarks ��.
     * @warning ��.
     * @note@verbinclude Player_SubInnerForceExp.lua
     * @version 0.926�����ϰ汾.
     */
    bool Player_SubInnerForceExp(const std::string& strPlayer, INT32 iExp,
    const std::string& strDesc, const std::string& strTarget);

end

--��Ʒ���ñ���Ϣ
local table1 = lualib:Item_DataRow(zb_keyname1)  
local BuyPrice1 = table1["BuyPrice"]
--�������ñ���Ϣ
table  Monster_DataRow( 
    string  strMonsterKey 
)

function monster_���ﱦ������(  )
	SetServantPickItem����Ǳ����Զ�ʰȡ�Ľӿ�
end

function object_�������(  )
	--uint8 �������� 2=���� 3=NPC 4=���� 5=��ͼ 17=���� 18=Buff ������Ч.
	local name = lualib:KeyName2Name(material, 4); --����keyname��ȡ����name
    local Guid = lualib:Name2Guid(toName)����---name��ȡ����GUID,�����������߾��Ҳ���.
    if Guid == "" then
        lualib:SysMsg_SendTriggerMsg(player, "Ŀ����Ҳ�����!")
   	 	return false
    end
    local item_id = lualib:KeyName2Id(keyname, 4); --����keyname��ȡ����name

end

---------------------------------------------------------------------------------------------------------------
function Timer_��ʱ��()
	strObject
	����: string
	����: �����GUID,�������Ϊ��ҡ����NPC����ͼ����Ʒ��ϵͳ.
	˵��: �����GUID,�������Ϊ��ҡ����NPC����ͼ����Ʒ��ϵͳ.
	iElapse
	����: uint32
	����: ��ʱʱ�� ��λ(����).
	˵��: ��ʱʱ�� ��λ(����).
	strCallBack
	����: string
	����: ����ʱ,�ص��ú���.������ʽ: 1 = ������ 2 = �ļ���:������.
	˵��: ����ʱ,�ص��ú���.������ʽ: 1 = ������ 2 = �ļ���:������.
	strParams 
	����: string
	����: �Զ������.
	˵��: �Զ������.
	lualib:DelayCall(map, 1, "GenRed", "")          --��һ֡����,������
	lualib:DelayCall(map, 5*60*1000, "GenRed", "")
	
	
	strObject 
	����: string
	����: �����GUID,�������Ϊ��ҡ����NPC����ͼ����Ʒ��ϵͳ.
	˵��: �����GUID,�������Ϊ��ҡ����NPC����ͼ����Ʒ��ϵͳ. 
	dwTimerID 
	����: uint32
	����: ��ʱ����ID,ͬһ�����ID����Ψһ.
	˵��: ��ʱ����ID,ͬһ�����ID����Ψһ. 
	iElapse 
	����: int32
	����: ��ʱ���Ĵ������,��λ:"����."
	˵��: ��ʱ���Ĵ������,��λ:"����." 
	iCount 
	����: int32
	����: ��ʱ���Ĵ�������.��Ϊ-1ʱ,���޴���.
	˵��: ��ʱ���Ĵ�������.��Ϊ-1ʱ,���޴���. 
	strCallBack 
	����: string
	����: ��ʱ������ʱ,�ص��ú���.������ʽ: 1 = ������ 2 = �ļ���:������.
	˵��: ��ʱ������ʱ,�ص��ú���.������ʽ: 1 = ������ 2 = �ļ���:������. 
	strParam  
	����: string
	����: �������,�����ص�ʱ�Զ�����.����ű������������л�.
	˵��: �������,�����ص�ʱ�Զ�����.����ű������������л�. 
	lualib:AddTimer(player, 1, 3*60*1000,  1, "dsssyaonpc_ssyao") --���������Ĳ���
	lualib:AddTimerEx(map,  1, 3*60*1000, -1, "Judge", "")      --�������Ĳ���
	function Judge(map, id)
	end
end



--------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------
function campaign_��淨�ű�() end

function on_start(id, map)
end

function on_start_decl(id, map, times)
-- lualib:Error(lualib:KeyName(map));
	times = tonumber(times)
	if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
		local str = "[��սBOSS]�ѿ�ʼ����Ӣ�������ٽ�������֮�أ�"
		lualib:SysMsg_SendBroadcastMsg(str, "[��սBOSS]")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ

	else 
		if times == 300000 then 
			local dgn = lualib:Map_CreateDgn("����֮��", true, 40*60)
			if dgn == "" then
				lualib:Error("����������֮��ս����ʧ�ܣ�")
				return
			end
			lualib:Debug("��������սBOSSս�����ɹ���")
			
			lualib:GSRunScript("ȫ������", id) --ȫ������
			
			lualib:SetStr(map, "guild_map_guid", dgn)
			-- local cur_time = lualib:GetAllTime()
			-- lualib:SetInt(map, "guild_active_time", cur_time + 3600)
		end
		local str = "[��սBOSS]����"..math.floor(times / 60000).."���ӿ�����"
		lualib:SysMsg_SendBroadcastMsg(str, "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ
	end
end

function on_end_decl(id, map, times)
	times = tonumber(times)
	if times == 0 then
		lualib:SetStr(map, "guild_map_guid", "")
		-- lualib:SetInt(map, "guild_active_time", 0)
		lualib:SysMsg_SendBroadcastMsg("[��սBOSS]��ֹͣ���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", "[��սBOSS]��ֹͣ���룡", 15000)
	else
		lualib:SysMsg_SendBroadcastMsg("[��սBOSS]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", "[��սBOSS]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", 15000)
	end
end

function Goto_�μӻ(id,player,map)

	local map_key_name = "��ŭ֮��"
	local x = 266
	local y = 284
	local r = 8
	local gold = 1500
	local msg = ""

	
	if lualib:HasBuff(player,"��̯") then
		lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return true
	end
	
	if not lualib:IsEscorterDied(player) then
		lualib:SysTriggerMsg(player,"�����ڳ����޷��������ͣ�")
		return true
	end
	
	local player_��¼��̨ = lualib:GetInt(player,"��¼��̨")
	if player_��¼��̨ > 0 then
		lualib:SysWarnMsg(player,"����ʾ����̨�����У��޷�����")
		return false
	end

	if not lualib:Player_IsGoldEnough(player, gold, false) then
		msg = msg.."��ǰ������Ҫ1500���"
		lualib:NPCTalk(player, msg)
		return true
	end 
	
	if not lualib:Player_SubGold(player, gold, false, "�۽��", player) then
		msg = msg.."�۳����ʧ��"
		lualib:NPCTalk(player, msg)
		return true
	end
	
	local player_x = lualib:X(player);
	local player_y = lualib:Y(player);
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0");
	
	--������ͨ��ͼ
	if not lualib:Player_MapMoveXY(player, map_key_name, x, y, r) then
		lualib:Error("�������ͼʧ�ܣ�"..player)
	end
	
	--���븱����ͼ
	local dgn = lualib:GetStr(lualib:Map_GetMapGuid("��ŭ֮��"), "guild_map_guid");
	if not lualib:Map_IsDgnExist(dgn) then
		lualib:SysMsg_SendBroadcastMsg("[��սBOSS]���δ��ʼ���޷����룡", "ϵͳ֪ͨ")
		return
	end 
	

end
	
function ȫ��ִ�нű�_ȫ������_����(player, id)

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 45 then 
		return 
	end

	local player_��¼��̨ = lualib:GetInt(player,"��¼��̨") 
	if player_��¼��̨ > 0 then 
		return 
	end
	local msg = ""
	msg = msg.."��\n"
	msg = msg.."��\n"
	msg = msg.."�����������������������������������ʾ,\n"    
	msg = msg.."��\n"
	msg = msg.."��������������������������������ÿ�ջ��#COLORCOLOR_MAGENTA#�콵Ԫ��#COLOREND#�ѿ�ʼ�����Ƿ�Ҫ�μӸû��\n"    
	msg = msg.."��\n"
	msg = msg.."����������������������������������ѡ��.\n"
	msg = msg.."��\n"
	msg = msg.."��������������������������������������������#IMAGE1902700018# <@enter *01*�����μ�>����#IMAGE1902700034# <@leave *01*�رմ���>\\n"
	msg = msg.."��\n"
	msg = msg.."��\n"
	msg = msg.."#OFFSET<X:-38,Y:-215>##IMAGE<ID:1990705608>#\n"
	lualib:NPCTalk(player, msg)
	return msg
end

function enter_�����ͼ(player)
	local x = lualib:GenRandom(266,276)
	local y = lualib:GenRandom(275,285)
	local playername = lualib:KeyName(player)
	lualib:Player_MapMoveXY(player, "����", x, y, 10)
	lualib:Map_JumpXY(map_guid, player, x, y, 10) --����guid��
	lualib:Player_SetDgnTicket(player, dgn);
	lualib:Player_EnterDgn(player, "��̨", 20, 60, 5);
	return ""
end
	 			                      												
------------------------------------------------------------------------------------------------------------------------
local monster_tbl = {
	{ "����BOSS"  , 1 , false } , 
}
local item_tbl = {
	{ "����1"  , 1 , true } , 
	{ "����2"  , 1 , true } , 
	{ "����3"  , 1 , true } , 
	{ "����4"  , 1 , true } , 
	{ "����5"  , 1 , true } , 
	{ "����6"  , 1 , true } , 
}
   
function on_map_create_�����ű�(sMapID)
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
	--��������ܷ����
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")
	if open_hhzb_jinru == 1 then
		return
	end
	
	local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#��������֮�أ���սBOSS��#COLOREND#";
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


--���������󴥷�,�����Ի�ȡ��monster��x,y,mapGuid
function ��������on_monster_post_die(monster, killer)
	local mon_keyname = lualib:KeyName(monster);
	if mon_keyname ~= "����BOSS" then 
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
	
	if lualib:Player_AddGold(player, 5000, false, "��սBOSS", player) then 
		local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#��ɱBOSS���5000��ҽ���������һ�ؼ�Ʒװ��������2���Ӻ󱣻�ʧЧ���ȵ��ȵã�#COLOREND#";
		lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	end
	
	local x, y = lualib:X(monster), lualib:Y(monster);
	local sMapID = lualib:MapGuid(monster)
	for i = 1, #item_tbl do
		if "" == lualib:Map_GenItem(sMapID, x, y, item_tbl[i][1], item_tbl[i][2], item_tbl[i][3], 120) then
		   lualib:Error("����֮�ص�ͼˢ��Ʒʧ�ܣ�")
		   return ""
		end
	end
	return ""
end

9---------------------------------------------------------------------------------------------------------------
function ��ͼ���ˢ����()
	lualib:Map_GenItemRnd(map, 276, 279, 18, "50Ԫ��", 1, true, 155) --�б���ʱ������,��
end


------------------------------------------------------------------------------------------------------------------------
function ��սBOSS��()


	local cs_tab = {
		{"��Ľ�������"       ,   89 ,    146 },
		{"�����������"       ,   89 ,    100 },
		{"���¶�ħ����"       ,   89 ,    146 },
		{"ţħ������"        ,   89 ,    100 },
		{"ħ����������"       ,   57 ,    89 },
		{"��������"     ,   89 ,    100 }
	}

	local personboss = {
		{       
			{"��Ľ���","��60����",62},{"а��","��70����",63},{"������ħ","��80����",64},
			{"ţħ��","��100����",80},{"���Ľ���","��140����","ת��1��"},{"����","��180����","ת��2��"}
		},
		{
			{0,0682700300,"ս������","��������","ɢ������","ս��ͷ��","����ͷ��","ɢ��ͷ��","ս����ָ","�����ָ"},   --��һ�������Ѿ�����
			{0,0681600300,"�������","ħ������","��������","����ָ","ħ���ָ","�����ָ","���ѥ��","ħ��ѥ��"},
			{0,0682900300,"��������","��ħ����","��������","�����ָ","��ħ��ָ","�����ָ","��������","��ħ����"},
			{0,0682000300,"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��","ʥ��ѥ��","�����ָ","��ħ��ָ"},
			{0,0682400300,"��������","��������","��������","������������","�����������","���������","��������ѥ��","�������ѥ��"},
			{0,0682800300,"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ͷ��","�������ͷ��"}
		}
	}

	----*****      �޸� bosslist ʱ  Ҫͬʱ�޸� item_tab  �����ȱ���һ��   *****--------
	local bosslist =  {
		{0681500300,"������"      ,"��40����"  ,"15����"  ,"��򼶴����","BOSS����"},
		{0681200300,"��ɫ����"   ,"��50����"  ,"15����"  ,"������","BOSS����","�������һ��"},
		{0682700300,"�������"   ,"��60����"  ,"15����","�����������","�������һ��"},
		{0681600300,"�������"   ,"��70����"  ,"30����","�����������","BOSS����","�������һ��"},
		{0682900300,"���¶�ħ"   ,"��80����"  ,"30����","����������","BOSS����","�������һ��"},
		{0682000300,"ţħ��"     ,"��100����" ,"60����","ţħ������","BOSS����","�������һ��"},
		{0683500300,"��Ȫ����"   ,"��120����" ,"120����","��ħ������","BOSS����","����������"},
		{0684600300,"��ҹŮ��"   ,"��120����" ,"120����","����������"},
		{0682500300,"ʬ��"       ,"��120����" ,"120����","ʬħ������","BOSS����"},
		{0682300300,"��ħ����"   ,"��120����" ,"120����","��ħ������","BOSS����"},
		{0682400300,"ħ������"   ,"��140����" ,"150����","ħ��������"},
		{0683100300,"��β�ں���" ,"��140����" ,"150����","�����������","�����������"},
		{0631900300,"��צ�����" ,"��140����" ,"150����","�����������","�����������"},
		{0685300300,"�����غ���" ,"��140����" ,"150����","�����������","�����������"},
		{0683200300,"ѩ��ħ��"   ,"��140����" ,"150����","ѩ����������","BOSS��������", "�����������"},
		{0683400300,"��������"   ,"��160����" ,"180����","BOSS����","���׶�Ѩ����"},
		{0682800300,"����"       ,"��180����" ,"180����","�����������","BOSS��������"},
		{0683800300,"��������"   ,"��180����" ,"180����","���֮������","��������Ĳ�"},
		{0683000300,"������"     ,"��180����" ,"180����","����������","��������Ĳ�"},
		{0685100300,"��Ԩ����"   ,"��180����" ,"180����","����������"},
		{0681700300,"���ĺ���"   ,"��180����" ,"180����","������������","BOSS��������","��������Ĳ�"},
		{0683600300,"���ħ"   ,"��180����" ,"180����","������������","BOSS��������"},
		{0683300300,"������"     ,"��200����" ,"180����","������������","BOSS��������"},
		{0684700300,"������ħ"   ,"��200����" ,"240����","BOSS��������"},
		{0683700300,"����ħ��"   ,"��200����" ,"240����","BOSS��������"},
		{0684400300,"��Ѫħ��"   ,"��200����" ,"360����","BOSS��������"},
	}
		
	local item_tab = {
		{"�������","��֮����","��������","���������","��ħ������","�������","����ͷ��","ħ��ͷ��"},--������
		{"ʥս����","��������","��������","ʥս��ָ","�����ָ","�����ָ","ʥսͷ��","����ͷ��"},--��ɫ����
		{"ս������","��������","ɢ������","ս��ͷ��","����ͷ��","ɢ��ͷ��","ս����ָ","�����ָ"},--�������
		{"�������","ħ������","��������","����ָ","ħ���ָ","�����ָ","���ѥ��","ħ��ѥ��"},--�������
		{"��������","��ħ����","��������","�����ָ","��ħ��ָ","�����ָ","��������","��ħ����"},--���¶�ħ
		{"ʥ������","ʥħ����","ʥ������","ʥ��ѥ��","ʥħѥ��","ʥ��ѥ��","�����ָ","��ħ��ָ"},--ţħ��
		{"��������","��������","��������","�����ָ","�����ָ","������ָ","��������","��������"},--��Ȫ����
		{"��������","��������","��������","�����ָ","�����ָ","������ָ","����ѥ��","����ѥ��"},--��ҹŮ��
		{"��������","��������","��������","�����ָ","�����ָ","������ָ","����ѥ��","����ѥ��"},--ʬ��
		{"��������","��������","��������","��������","��������","��������","����ѥ��","����ѥ��"},--��ħ����
		{"��������","��������","��������","������������","�����������","���������","��������ѥ��","�������ѥ��"},--ħ������
		{"������������","�����������","���������","���������ָ","��������ָ","�������ָ","������������","�����������"},--��β�ں���
		{"������������","�����������","���������","���������ָ","��������ָ","�������ָ","��������ͷ��","�������ͷ��"},--��צ�����
		{"������������","�����������","���������","���������ָ","��������ָ","�������ָ","��������ѥ��","�������ѥ��"},--�����غ���
		{"������������","�����������","���������","��������ѥ��","�������ѥ��","�����ѥ��","���������ָ","��������ָ"},--ѩ��ħ��
		{"������������","������������","����㷨����","��������ͷ��","��������ͷ��","����㷨ͷ��","������������","������������"},--��������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ͷ��","�������ͷ��"},--����
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ѥ��","�������ѥ��"},--��������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--��Ԩ����
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ѥ��","�������ѥ��"},--���ĺ���
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--���ħ
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--������
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","��������ѥ��","�������ѥ��"},--����ħ��
		{"������������","�����������","������������","���������ָ","��������ָ","����������ָ","������������","�����������"},--����ħ��
		{"������������","�챩��������","�����������","���������ָ","��������ָ","����������ָ","������������","�����������"}--��Ѫħ��
	}
	-----------------------ͼ����ʾ-----------------------------
	function openChallengeBoss_show(player)
		
		AddSEIcon(player, 1, -3, "ChallengeBOSS", 1800200015, "����ʱ", "openChallenge","","ɱBOSS��װ��")
		openChallengeBoss_magic(player)
		return ""
	end

	function openChallengeBoss_magic(player)
		AddIconMagic(player, "ChallengeBOSS",3020300700,-43,-44, 180)
		return ""
	end
	
	-------------------ͼ�걻���-----------------------
	function openChallenge(player)
		lualib:ShowFormWithContent(player, "form�ļ���", "BossWnd")
		return ""
	end

end
------------------------------------------------------------------------------------------------------------------------
function NPC�Ի���()
	lualib:NPCTalk(player, msg);lualib:NPCTalk(player, "��Ԫ�ؾ���δ������\n \n&lt;@leave *01*ȷ��&gt;"); --npc,��Ʒ�Ի���
	lualib:NPCTalkEx(npc, player, msg)
	lualib:NPCTalkDetail(player, msg, 500, 300) --�Զ��峤��
	lualib:NPCTalkDetailEx(npc, player, msg, 400, 200)
	lualib:NPCTalkDetailQuest(npc, player, msg, 400, 200)--��NPC�ĶԻ��������,û�Թ�,Ӧ���Ǵ�����Ի���
	
	
	lualib:SysMsg_SendRoleTalk(monster, "����ɮ��ħ֮������������&hellip;&hellip;") --��ɫ˵��

end

	local msg = [[
	#POS<Y:25>##COLORCOLOR_ORANGE#������һֱ���������л��ͼ,��ȷ��Ҫ��ȥ��?
	
	#COLORCOLOR_BROWN#�л��������#COLORCOLOR_RED#19:00��ͨ#COLOREND#��#COLORCOLOR_RED#19:30�ر�#COLOREND#
	#COLORCOLOR_BROWN#��ͼ��պ�,ҩ����ᱻ���Ĺ�,ʤ���ܾ�һ�н��!
	#COLORCOLOR_RED#ע��:#COLORCOLOR_BROWN#����ڹرպ�!�벻Ҫ��ǰ�뿪�˵�ͼ!ֱ��ʤ�����������#COLOREND#
	#COLORCOLOR_BROWN#�����׻�ɱ���һ���ж��л��Ա�󼴿ɻ��ʤ��!�����ɻ�ʤ�л�᳤��ȡ�������ң�!
	
	#IMAGE1902700018#<@jump *01*[�����л�ս����ͼ]>     #IMAGE1902700032#<@award *01*[��ȡ����]>
	]]
	lualib:SetPanelSize(npc, 380, 200) --����npc����С
	return msg

------------------------------------------------------------------------------------------------------------------------

lua_gender_null = 0 
lua_gender_male = 1            --- ��
lua_gender_female = 2          --- Ů
lua_gender_max = 3

lua_job_null = 0 
lua_job_warrior = 1            --- սʿ
lua_job_mage = 2               --- ��ʦ
lua_job_tao = 3                --- ��ʿ
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

lua_role_hit = 16                   --- ����
lua_role_miss = 17                  --- ����
lua_role_move_speed = 18            --- �ƶ��ٶȣ���׼ֵ
lua_role_attack_speed = 19	        --- �����ٶȣ���׼ֵ

lua_role_weight = 20                --- ��������
lua_role_max_weight = 21
lua_role_equip_weight = 22          --- װ������
lua_role_max_equip_weight = 23
lua_role_brawn = 24                 --- ����
lua_role_max_brawn = 25

lua_role_point = 26                 --- ʣ�����Ե�
lua_role_point_hp = 27              --- hp point
lua_role_point_mp = 28              --- mp point
lua_role_point_phy_atk = 29         --- physical attack point
lua_role_point_mag_atk = 30         --- magical attack point
lua_role_point_tao_atk = 31         --- taoism attack point
lua_role_point_phy_def = 32         --- physical defense point
lua_role_point_mag_def = 33         --- magical defense point

lua_role_ele_1_atk = 34             --- ���Թ���1
lua_role_ele_2_atk = 35             --- ���Թ���2
lua_role_ele_3_atk = 36             --- ���Թ���3
lua_role_ele_4_atk = 37             --- ���Թ���4
lua_role_ele_5_atk = 38             --- ���Թ���5

lua_role_ele_1_def = 39             --- ���Է���1
lua_role_ele_2_def = 40             --- ���Է���2
lua_role_ele_3_def = 41             --- ���Է���3
lua_role_ele_4_def = 42             --- ���Է���4
lua_role_ele_5_def = 43             --- ���Է���5

lua_role_hp_rec = 44                --- hp�ظ��ٶ�
lua_role_mp_rec = 45                --- mp�ظ��ٶ�
lua_role_poison_rec = 46            --- �ж��ָ��ٶ�

lua_role_energy = 47                --- ����
lua_role_max_energy = 48            --- ��������

lua_role_burst = 49                 --- ������
lua_role_luck_curse = 50            --- ����-����
lua_role_pk = 51                    --- PKֵ
lua_role_prestige = 52              --- ����
lua_role_meritorious = 53           --- ��ѫ
lua_role_achievement = 54           --- �ɾ�

--------------------------------------------------------------------------
--- ת��
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
lua_role_rein_hit = 68              --- ����
lua_role_rein_miss = 69             --- ����
lua_role_rein_burst = 70            --- ������
lua_role_rein_weight = 71           --- ��������
lua_role_rein_equip_weight = 72     --- װ������
lua_role_rein_brawn = 73            --- ����
--------------------------------------------------------------------------

lua_role_bag_size_0 = 74            --- ����0��С
lua_role_bag_size_1 = 75            --- ����1��С
lua_role_bag_size_2 = 76            --- ����2��С
lua_role_bag_size_3 = 77            --- ����3��С
lua_role_bag_size_4 = 78            --- ����4��С

lua_role_warehouse_size = 79        --- ��ҵĲֿ��С
lua_role_warehouse_adv_size = 80    --- ��Ҹ߼��ֿ��С
--------------------------------------------------------------------------

--- role ����ʱ�ٷֱȼӳ�
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

lua_role_ele_1_atk_pct = 93             --- ���Թ���1
lua_role_ele_2_atk_pct = 94             --- ���Թ���2
lua_role_ele_3_atk_pct = 95             --- ���Թ���3
lua_role_ele_4_atk_pct = 96             --- ���Թ���4
lua_role_ele_5_atk_pct = 97             --- ���Թ���5

lua_role_ele_1_def_pct = 98             --- ���Է���1
lua_role_ele_2_def_pct = 99             --- ���Է���2
lua_role_ele_3_def_pct = 100             --- ���Է���3
lua_role_ele_4_def_pct = 101             --- ���Է���4
lua_role_ele_5_def_pct = 102             --- ���Է���5

lua_role_max_weight_pct = 103            --- ��������     
lua_role_max_equip_weight_pct = 104      --- װ������            
lua_role_max_brawn_pct = 105             --- ����

lua_role_hp_rec_pct = 106                --- hp�ظ��ٶ�
lua_role_mp_rec_pct = 107                --- mp�ظ��ٶ�
lua_role_poison_rec_pct = 108            --- �ж��ָ��ٶ�

--------------------------------------------------------------------------
--- �ٶ���أ�����һ������
lua_role_move_speed_pct = 109            --- �ƶ��ٶ�
lua_role_attack_speed_pct = 110	        --- �����ٶ�
--------------------------------------------------------------------------

--------------------------------------------------------------------------
--- ս������
--------------------------------------------------------------------------
lua_role_suck_hp = 111               ---	����ǰhp - ��ֵ
lua_role_suck_hp_pct = 112           --- ����ǰhp - �ٷֱ�
lua_role_suck_max_hp_pct = 113       ---	��hp���� - �ٷֱ�

lua_role_suck_mp = 114               ---	����ǰmp - ��ֵ
lua_role_suck_mp_pct = 115           --- ����ǰmp - �ٷֱ�
lua_role_suck_max_mp_pct = 116       ---	��mp���� - �ٷֱ�

lua_role_ref_phy = 117               --- �����˺����� - ��ֵ
lua_role_ref_phy_pct = 118           --- �����˺����� - �ٷֱ�

lua_role_ref_mag = 119               --- ħ���˺����� - ��ֵ
lua_role_ref_mag_pct = 120           --- ħ���˺����� - �ٷֱ�

lua_role_imm_mag = 121               --- ħ���˺����� - ��ֵ
lua_role_imm_mag_pct = 122           --- ħ���˺����� - �ٷֱ�

lua_role_imm_phy = 123               --- �����˺����� - ��ֵ
lua_role_imm_phy_pct = 124           --- �����˺����� - �ٷֱ�
--------------------------------------------------------------------------

lua_role_atk_mode = 125              --- ��������

--------------------------------------------------------------------------
--- ״̬����
--------------------------------------------------------------------------
lua_role_can_walk = 126              --- ����·
lua_role_can_run = 127               --- ���ܲ�
lua_role_can_turn = 128              --- ��ת��
lua_role_can_jump_map = 129          --- ������ͼ
lua_role_can_phy_atk = 130           --- ��������
lua_role_can_mag_atk = 131           --- ��ħ������
lua_role_can_use_item = 132          --- ��ʹ�õ���(������װ)

lua_role_is_phy_imm = 133            --- ��������
lua_role_is_mag_imm = 134            --- ħ������
lua_role_is_stealth = 135            --- ����

lua_role_has_mana_shield = 136       --- ��mana shield
lua_role_has_collide = 137           --- ���ڳ�ײ״̬
lua_role_has_repelled = 138          --- ���ڻ���״̬
lua_role_can_push = 139              --- �ܱ���
lua_role_can_use_skill = 140         --- ��ʹ�ü���

lua_role_is_black = 141              --- �Ƿ�Ϊ����

lua_role_has_imm_shield = 142        --- ��imm shield
lua_role_imm_shield = 143            --- imm shield ֵ

lua_role_has_bag_guard = 144         --- �а���������
lua_role_has_equip_guard = 145       --- ��װ��������
lua_role_is_gray = 146               --- ����
lua_role_is_chaos = 147              --- ����
lua_role_is_poisoning = 148          --- �Ƿ��ж�(�̶�, �춾�߼���BUFF, û������)
lua_role_is_ghost = 149              --- �Ƿ�ghost
lua_role_is_pk = 150                 --- �Ƿ�pk״̬

lua_role_inner_force = 155                 --- ��ɫ�ڹ�ֵ
lua_role_inner_force_lv = 156                 --- ��ɫ�ڹ��ȼ�
lua_role_inner_force_rec = 157                 --- �ڹ��ָ��ٶ�
lua_role_inner_force_rec_pct = 158                 --- �ڹ��ָ��ٶȰٷֱ�

--------------------------------------------------------------------------
--- ע��: ����ö�ٲ��������� = 151 ���������β�� !!!
--------------------------------------------------------------------------

lua_role_has_team = 180         --- �ж���
lua_role_gender = 181                --- �Ա�
lua_role_head = 182                  --- ͷ��
lua_role_hair = 183                  --- ͷ��
lua_role_hair_color = 184            --- ͷ����ɫ
lua_role_gm_level = 185              --- gm�ȼ�
lua_role_identify = 186              --- ��������
lua_role_title = 187                 --- �ƺ�
lua_role_gold_settlement = 188       --- ��ҽ���: 1��ҽ��� 0:��ҽ���
lua_role_stall = 189                 --- 0: δ��̯ 1: ��̯׼�� 2: ��̯��
lua_role_friend_switch = 190         --- 0: ���ɼӺ���       1: �ɼӺ���
lua_role_team_switch = 191           --- 0: �����ն�������   1: ���ն�������
lua_role_has_family = 192            --- ���л�
lua_role_exp_pct = 193               --- ���鱶��
lua_role_mag_miss = 194              --- ħ������
lua_role_intensity = 195             --- ǿ��
lua_role_attack_pct = 196            --- ����������
lua_role_defense_pct = 197           --- ����������
lua_role_gp_runtime = 198            --- gp error in runtime
lua_role_gp = 199                    --- gp error in db
lua_role_ride_switch = 200           --- ������
lua_role_vip_level = 201             --- ��ɫvip�ȼ�
lua_role_vip_buytimes = 202          --- ��ɫvip����ʱ��
lua_role_lock_switch = 203           --- ������(0: δ���� 1: �ѽ���)
lua_role_effect1 = 204               --- ��Ч
lua_role_effect2 = 205
lua_role_effect3 = 206
lua_role_effect4 = 207
lua_role_effect5 = 208
lua_role_camp = 209                  --- ��Ӫ
lua_role_avatar = 210                --- avatar

--------------------------------------------------------------------------

--------------------------------------------------------------------------
--- ��̬���Զ�
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

lua_role_app_body = 0            --- ����
lua_role_app_weapon = 1         --- ����
lua_role_app_wings = 2          --- ���
lua_role_app_mount = 3          --- ����
lua_role_app_max = 4

lua_item_type_null = 0 
lua_item_type_equip = 1	        --- װ��
lua_item_type_consumable = 2       --- ����Ʒ
lua_item_type_finite = 3           --- ����Ʒ
lua_item_type_material = 4         --- ����
lua_item_type_sundries = 5         --- �ӻ�
lua_item_type_bag = 6              --- ����
lua_item_type_warehouse_adv = 7    --- �߼��ֿ�
lua_item_type_gold = 8             --- ���
lua_item_type_bundle = 9           --- ������Ʒ
lua_item_type_skill = 10            --- ������Ч����Ʒ
lua_item_type_script = 11           --- �ű���Ʒ

lua_item_type_max = 12

--װ��������
lua_equip_null = 0 
lua_equip_weapon = 1		 	    --- ����
lua_equip_helmet = 2				--- ͷ��	
lua_equip_wrist = 3 				--- ����
lua_equip_armor = 4				    --- �·�
lua_equip_juju = 5				    --- ����
lua_equip_shoes = 6			        --- Ь��
lua_equip_shoulder = 7				--- ����
lua_equip_necklace = 8  			--- ����
lua_equip_ring = 9  				--- ��ָ
lua_equip_medal = 10				--- ѫ��

lua_equip_gem    = 11  				--- ��ʯ
lua_equip_wings  = 12  				--- ���
lua_equip_amulet = 13				--- �ػ�
lua_equip_mount  = 14		    	--- ����
lua_equip_max    = 15

lua_material_null = 0 
lua_material_weapon_upgrade = 1        --- ������������
lua_material_reserved = 2		        --- (����δʹ��)
lua_material_identify = 3 				--- ����װ������
lua_material_drill = 4				    --- װ����ײ���
lua_material_lucky = 5				    --- ��������ף������
lua_material_gem = 6			        --- ��ʯ
lua_material_synthesis = 7			    --- ��ʯ�ϳɷ�
lua_material_dig = 8			        --- ��ʯժ����
lua_material_embed = 9			        --- ��ʯ��Ƕ��
lua_material_refine = 10			    --- װ����������
lua_material_refine_lucky = 11			--- װ���������˷�����
lua_material_speaker = 12			    --- ����
lua_material_refine_transform = 13      --- װ������ת�Ʋ���
lua_material_refine_imm = 14            --- װ��������
lua_material_identify_imm = 15          --- װ��������
lua_material_horse = 16                 --- δ������
lua_material_identify_horse = 17        --- ����ӡ
lua_material_max = 18

lua_weapon_null = 0             --- ͨ����
lua_weapon_knife = 1               --- ���ࣨսʿ�ࣩ
lua_weapon_sword = 2               --- ���ࣨ��ʿ�ࣩ
lua_weapon_stick = 3               --- ���ࣨ��ʦ�ࣩ
lua_weapon_max = 4

lua_juju_null = 0 
lua_juju_juju = 1                  --- ������
lua_juju_poison = 2                --- ��ҩ��
lua_juju_max = 3

lua_bind_null = 0               --- �ް�
lua_bind_on_use = 1                --- ʹ�ð�
lua_bind_on_pick_up = 2            --- ʰȡ��
lua_bind_max = 3                    


--װ��λ
lua_site_null = 0 
lua_site_weapon = 1            --- ����
lua_site_helmet = 2            --- ͷ��	
lua_site_wrist_0 = 3           --- ����0
lua_site_wrist_1 = 4           --- ����1
lua_site_armor = 5             --- �·�
lua_site_juju = 6              --- ����
lua_site_shoes = 7             --- Ь��
lua_site_shoulder = 8          --- ����
lua_site_necklace = 9          --- ����
lua_site_ring_0 = 10            --- ��ָ0
lua_site_ring_1 = 11            --- ��ָ1
lua_site_medal = 12             --- ѫ��

lua_site_gem = 13               --- ��ʯ
lua_site_wings = 14             --- ���
lua_site_amulet = 15            --- �ػ�
lua_site_mount = 16             --- ����

lua_site_expand_0 = 17          --- ����0����λ��
lua_site_expand_1 = 18          --- ����1����λ��
lua_site_expand_2 = 19          --- ����2����λ��
lua_site_expand_3 = 20          --- ����3����λ��
lua_site_expand_4 = 21          --- ����4����λ��

LUA_MAX_SLOT_PER_BAG = 40
LUA_MAX_WAREHOUSE_SIZE = 40
LUA_MAX_WAREHOUSE_ADV_SIZE = 144

lua_site_bag_0			= 22                                        		--- ��0����
lua_site_bag_1			= lua_site_bag_0 + LUA_MAX_SLOT_PER_BAG             --- ��1����
lua_site_bag_2			= lua_site_bag_1 + LUA_MAX_SLOT_PER_BAG             --- ��2����
lua_site_bag_3			= lua_site_bag_2 + LUA_MAX_SLOT_PER_BAG             --- ��3����
lua_site_bag_4          = lua_site_bag_3 + LUA_MAX_SLOT_PER_BAG             --- ��4����

lua_site_warehouse      = lua_site_bag_4 + LUA_MAX_SLOT_PER_BAG             --- �ֿ�
lua_site_warehouse_adv  = lua_site_warehouse + LUA_MAX_WAREHOUSE_SIZE       --- �߼��ֿ�

lua_site_end            = lua_site_warehouse_adv + LUA_MAX_WAREHOUSE_ADV_SIZE

lua_quality_general = 0       --- ��ͨ, ��ɫ

lua_item_att_pos = 0               ---������ѵ㵱ǰ���ڵ�λ��
lua_item_att_amount = 1            --- ��Ʒ��ǰ�Ķѵ�����
lua_item_att_durability = 2        --- ��Ʒ��ǰ�;�
lua_item_att_max_durability = 3    --- ��Ʒ����;�
lua_item_att_use_count = 4         --- ��Ʒ��ǰ��ʹ�ô���    
lua_item_att_is_bound = 5          --- ��Ʒ�Ƿ񱻰�
lua_item_att_life = 6              --- ��Ʒ���ʱ��
lua_item_att_skill_id = 7          --- ����id
lua_item_att_max = 8

lua_skill_type_null = 0 
lua_skill_type_fight = 1       --- ս������
lua_skill_type_passive = 2     --- ��������
lua_skill_type_restore = 3     --- ���Ƽ���
lua_skill_type_life = 4        --- �����
lua_skill_type_teleport = 5    --- ˲�Ƽ���
lua_skill_type_special = 9  --- ���⼼��
lua_skill_type_max = 10

lua_teleport_null = 0 
lua_teleport_rand_limit = 1    --- ����ͼ�������
lua_teleport_rand = 2          --- ����ͼ���
lua_teleport_relive = 3        --- �����
lua_teleport_relive_rand = 4   --- ��������ڵ�ͼ���
lua_teleport_relive_max = 5

lua_repel_type_null = 0     --- ��
lua_repel_type_collide = 1     --- ��ײ
lua_repel_type_repelled = 2    --- ����

lua_repel_collide_null = 0      --- ��
lua_repel_collide_with_target = 1  --- ��Ŀ���ײ
lua_repel_collide_no_target = 2    --- ��Ŀ���ײ

lua_role_exp = 0            --- ����
lua_role_ingot = 1             --- Ԫ��      
lua_role_bind_ingot = 2        --- ��Ԫ��     
lua_role_integral = 3          --- ����   
lua_role_gold = 4              --- ���      
lua_role_bind_gold = 5         --- �󶨽��
lua_role_gold_deposit = 6      --- �ֿ���
lua_role_inner_force_exp = 7	--�ڹ�����
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

lua_relive_skill = 0    --���ܸ���
lua_relive_local = 1       --ԭ�ظ���
lua_relive_map = 2         --�سǸ���
lua_relive_dungeon = 3      --��������

lua_enhance_type_phy = 0 
lua_enhance_type_mag = 1
lua_enhance_type_tao = 2
lua_enhance_type_max = 3

lua_stall_state_null = 0    --- δ��̯
lua_stall_state_ready = 1      --- ��̯׼��
lua_stall_state_ok = 2         --- ��̯��
lua_stall_state_max = 3

lua_stall_price_gold = 0    --- ���
lua_stall_price_ingot = 1      --- Ԫ��
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
lua_servant_source_catch = 1   --- ��׽
lua_servant_source_summon = 2  --- �ٻ�
lua_servant_source_max = 3

lua_pk_state_null = 0 
lua_pk_state_white = 1         --- ����
lua_pk_state_yellow = 2        --- ����
lua_pk_state_gray = 3          --- ����
lua_pk_state_red = 4           --- ����
lua_pk_state_max = 5

lua_region_safe =0      ---������         
lua_region_stall = 1       ---��̯��
lua_region_athletics = 2   ---������
lua_region_relive = 3      ---������
lua_region_red_name = 4    ---������
lua_region_born = 5        ---��������
lua_region_jump = 6        ---��ת����
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

lua_map_common = 0  --��ͨ��ͼ
lua_map_dungeon = 1    --������ͼ

lua_role_last_login = 0      --��ɫ����½ʱ��FLAG
lua_role_online = 1             --��ɫ����ʱ��FLAG
lua_role_max_online = 2         --��ɫ������ʱ��FLAG
lua_role_last_attack = 3        --��ɫ��󹥻�ʱ��FLAG
lua_role_last_move = 4          --��ɫ����ƶ�ʱ��FLAG
lua_role_last_chat = 5          --��ɫ�������ʱ��FLAG
lua_role_today_online = 6       --��ɫ��������ʱ��
lua_role_last_logout = 7        --��ɫ�������ʱ��FLAG

lua_role_account_name = 0   --��ɫ�ʺ�����FLAG
lua_role_ip = 1                --��ɫ��IP��ַ
lua_role_user_name = 2         --��ɫ�û�����FLAG
lua_role_home_map = 3          --��ɫ�سǵ�ͼ��FLAG
lua_role_home_map_key = 4      --��ɫ�سǵ�ͼ��keyname
lua_role_alias = 5             --��ɫ��ν��FLAG
lua_role_guild = 6             --��ɫ��������FLAG
lua_role_current_map = 7       --��ɫ��ǰ��ͼ����FLAG
lua_role_current_map_key = 8   --��ɫ��ǰ��ͼ��keyname

lua_role_guild_id = 0       --��ɫ����ID��FLAG
lua_role_current_map_id = 1    --���������ͼID��FLAG
lua_role_home_map_id = 2       --��һسǵ�ͼID(GUID)��FLAG

lua_role_attr_add = 10000   --��ɫ��������
lua_role_attr_sub = 10001          --��ɫ���Լ���
lua_role_attr_equal = 10002        --��ɫ��������

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

lua_bind_require_false = 0  --- ����ǰ�
lua_bind_require_true = 1      --- �����
lua_bind_require_any = 2       --- �󶨷ǰ󶨶�����
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
lua_trigger_item_drop = 315      --�Ӷ����Ĵ���
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
lua_trigger_pre_drop = 331       --Ҫ��Ҫ������
lua_trigger_post_drop = 332  
lua_trigger_pre_drop_one = 333
lua_trigger_post_drop_one = 334  --����ĳ������Ķ���
lua_trigger_add_skill = 335
lua_trigger_switch_skill = 336
lua_trigger_summon = 337
lua_trigger_pre_process_pk = 338
lua_trigger_post_process_pk = 339
lua_trigger_create = 340
lua_trigger_destroy = 341
lua_trigger_npc_visit = 342
lua_trigger_pre_enter_jump = 343
lua_trigger_equip_suit = 344                 --- ��װ����
lua_trigger_un_equip_suit = 345              --- ��װ����
lua_trigger_item_amount_zero = 346           --- amountΪ0ɾ��
lua_trigger_item_use_zero = 347              --- ʹ�ô���Ϊ0ɾ��
lua_trigger_item_dur_zero = 348              --- �;�Ϊ0ɾ��
lua_trigger_item_timeup = 349                --- ʱЧ����ɾ��
lua_trigger_add_exp = 350
lua_trigger_monster_born = 351
lua_trigger_player_relive = 352
lua_trigger_dungeon_end = 353				--- ��������ʱ�ص�
lua_trigger_timer_check = 354                --- ��ʱ���
lua_trigger_add_exp_all = 355                --- ���л�ȡ����
lua_trigger_player_pre_die = 356             --- ��������ǰ����
lua_trigger_player_post_die = 357            --- ���������󴥷�
lua_trigger_monster_pre_die = 358            --- ��������ǰ����
lua_trigger_monster_post_die = 359           --- ���������󴥷�
lua_trigger_attack_ex = 360                  --- on_attack��ǿ�棬���˿�Ѫֵ�뼼�ܲ���
lua_trigger_system_stop = 361								--- system call, don't need to manually add
lua_trigger_pre_logout = 362								--- �������ǰ����
lua_trigger_ride_request = 363				--���������
lua_trigger_ride_request = 364				--���������
lua_trigger_billin = 365                     -- ��ֵ������ֻ��������߲Żᴥ��
lua_trigger_mall = 366                         -- �̳����Ѵ���
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
lua_equip_logic_weapon = 1		 	    --- ����
lua_equip_logic_armor = 2				--- �·�
lua_equip_logic_helmet = 3				--- ͷ��	
lua_equip_logic_necklace = 4  			--- ����
lua_equip_logic_wrist = 5 				--- ����
lua_equip_logic_ring = 6  				--- ��ָ
lua_equip_logic_shoes = 7			    --- Ь��

lua_equip_logic_max = 8

lua_material_logic_all = 0 
lua_material_logic_image = 1		 	    --- ͼ��
lua_material_logic_spirit = 2				--- ��Ԫ
lua_material_logic_mine = 3				--- ��ʯ	
lua_material_logic_refine = 4  			--- ����
lua_material_logic_other = 5 				--- ����

lua_material_logic_max = 6

lua_book_logic_all = 0 
lua_book_logic_war = 1		 	    --- սʿ��
lua_book_logic_mag = 2				--- ��ʦ��
lua_book_logic_tao = 3				--- ��ʿ��

lua_book_logic_max = 4

lua_drug_logic_all = 0 
lua_drug_logic_normal = 1		 	    --- ��ͨ��
lua_drug_logic_immediate = 2			--- ˲����
lua_drug_logic_other = 3				--- ������

lua_drug_logic_max = 4

lua_function_logic_all = 0 
lua_function_logic_poison = 1		 	    --- ����
lua_function_logic_fly = 2			        --- ����
lua_function_logic_bag = 3				    --- ������չ
lua_function_logic_other = 4				--- ����

lua_function_logic_max = 5

lua_log_action_null = 0 
lua_log_action_item_site_fixed = 1         --- λ��������
lua_log_action_item_site_error = 2         --- λ������ʧ��
lua_log_action_item_error = 3              --- ��Ʒ���ִ���ϵͳ�Զ�ɾ��
lua_log_action_buff_error = 4              --- buff���ִ���
lua_log_action_item_stream = 5             --- ��Ʒ���л�ɾ��
lua_log_action_crash = 6                   --- �����쳣
lua_log_action_item_to_json_one = 7        --- ��Ʒ��������һ��
lua_log_action_item_to_json = 8            --- ��Ʒ��������
lua_log_action_bag_item_site_error = 9     --- ������Ʒ���Ӵ���
lua_log_action_item_guid_error = 10         --- ��Ʒguid����
lua_log_action_item_guid_dup = 11           --- ��Ʒguid�ظ�
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
lua_log_action_player_item_drop_map_auto = 1055       --- �Զ����ذ�
lua_log_action_player_item_drop_unknown = 1056        --- δ֪����
lua_log_action_player_identify_item = 1057
lua_log_action_player_modify_attr = 1058				---�޸��������
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
lua_log_action_player_learn_skill = 1808      -- ��һ�ȡ����
lua_log_action_player_join_team = 1809        -- ������
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

lua_castle_state_null = 0       --- �Ǳ�սδ����
lua_castle_state_init = 1          --- �Ǳ���ʼ�����
lua_castle_state_starting = 2      --- �����Ǳ�ս�����ű��ص�
lua_castle_state_running = 3       --- �Ǳ��ű������ɹ�
lua_castle_state_ending = 4        --- �����Ǳ�ս�����ű��ص�
lua_castle_state_max = 5

lua_gp_data_type_move = 0 
lua_gp_data_type_spell = 1
lua_gp_data_type_max = 2

-- �ȼ���
lua_sort_type_level = 0 
lua_sort_type_level_warrior = 1
lua_sort_type_level_mage = 2
lua_sort_type_level_tao = 3

-- ������
lua_sort_type_beauty = 4
lua_sort_type_beauty_male = 5
lua_sort_type_beauty_female = 6

-- ʦͽ��
lua_sort_type_students = 7
lua_sort_type_students_warrior = 8
lua_sort_type_students_mage = 9
lua_sort_type_students_tao = 10

--������
lua_sort_type_weapon_warrior = 11
lua_sort_type_weapon_mage = 12
lua_sort_type_weapon_tao = 13

lua_sort_type_max = 14

lua_eMail_Type_System = 0 
lua_eMail_Type_User = 1

lua_eMail_Type_Num = 2

-- ������Ĳ���
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

-- �ű���Ĳ���
lua_glory_trigger_script_start = 1000 
lua_glory_trigger_offline_exp = 1001
lua_glory_trigger_taofa = 1002
lua_glory_trigger_jinglian = 1003
lua_glory_trigger_jianding = 1004
lua_glory_trigger_fengying = 1005
lua_glory_trigger_catch_horse = 1006
lua_glory_trigger_horse_kaiguang = 1007
lua_glory_trigger_biao = 1008
lua_glory_trigger_Login = 1009      --��ɫ��½��Ϸ
lua_glory_trigger_OnlineTime = 1010 --��ɫ����ʱ��
lua_glory_trigger_horse_level_top = 1011  --������������

lua_wsc_map_bx_npc_timer = 10001	--��ɽ�Ǳ���NPC��ʱ��
lua_jln_map_bx_npc_timer = 10002	--��·�뱦��NPC��ʱ��
lua_jlg_map_bx_npc_timer = 10003	--��·�ȱ���NPC��ʱ��
lua_kld1_map_bx_npc_timer = 10004	--���õ�һ�㱦��NPC��ʱ��
lua_kld2_map_bx_npc_timer = 10005	--���õ���㱦��NPC��ʱ��
lua_kld3_map_bx_npc_timer = 10006	--���õ����㱦��NPC��ʱ��
lua_jsm1_map_bx_npc_timer = 10007	--��ʬĹһ�㱦��NPC��ʱ��
lua_jsm2_map_bx_npc_timer = 10008	--��ʬĹ���㱦��NPC��ʱ��
lua_jsm3_map_bx_npc_timer = 10009	--��ʬĹ���㱦��NPC��ʱ��
lua_jlc1_map_bx_npc_timer = 10010	--��·��һ�㱦��NPC��ʱ��
lua_jlc2_map_bx_npc_timer = 10011	--��·�Ƕ��㱦��NPC��ʱ��
lua_jlc3_map_bx_npc_timer = 10012	--��·�����㱦��NPC��ʱ��
lua_ysax1_map_bx_npc_timer = 10013	--��ɽ��Ѩһ�㱦��NPC��ʱ��
lua_ysax2_map_bx_npc_timer = 10014	--��ɽ��Ѩ���㱦��NPC��ʱ��
lua_ysax3_map_bx_npc_timer = 10015	--��ɽ��Ѩ���㱦��NPC��ʱ��
lua_ysax4_map_bx_npc_timer = 10016	--��ɽ��Ѩ�Ĳ㱦��NPC��ʱ��
lua_ysax5_map_bx_npc_timer = 10017	--��ɽ��Ѩ��㱦��NPC��ʱ��
lua_thz1_map_bx_npc_timer = 10018	--�����һ�㱦��NPC��ʱ��
lua_thz2_map_bx_npc_timer = 10019	--�������㱦��NPC��ʱ��
lua_thz3_map_bx_npc_timer = 10020	--��������㱦��NPC��ʱ��
lua_thz4_map_bx_npc_timer = 10021	--������Ĳ㱦��NPC��ʱ��
lua_thz5_map_bx_npc_timer = 10022	--�������㱦��NPC��ʱ��
lua_thz6_map_bx_npc_timer = 10023	--��������㱦��NPC��ʱ��
lua_thxm1_map_bx_npc_timer = 10024	--���а��һ�㱦��NPC��ʱ��
lua_thxm2_map_bx_npc_timer = 10025	--���а����㱦��NPC��ʱ��
lua_thxm3_map_bx_npc_timer = 10026	--���а�����㱦��NPC��ʱ��
lua_thxm4_map_bx_npc_timer = 10027	--���а���Ĳ㱦��NPC��ʱ��
lua_thxm71_map_bx_npc_timer = 10028--���а���߲�һ����NPC��ʱ��
lua_thxm72_map_bx_npc_timer = 10029--���а���߲������NPC��ʱ��
lua_thxm73_map_bx_npc_timer = 10030--���а���߲�������NPC��ʱ��
lua_thxm4_map_cs_npc_timer = 10031	--���а���Ĳ�а����ʹ��ˢ�¶�ʱ��
lua_thxm4_map_cs_npc_destroy_timer = 10032	--���а���Ĳ�а����ʹ�����ٶ�ʱ��
lua_ysax_dgwf_timer = 10033			--��ɽ��Ѩ�ع��淨
lua_lc_map_bx_npc_timer = 10034		--���Ǳ���NPC��ʱ��
lua_jyjjc_timer1 = 10035		--��Ӣ���������涨ʱ��1
lua_jyjjc_timer2 = 10036		--��Ӣ���������涨ʱ��2
lua_jyjjc_timer3 = 10037		--��Ӣ���������涨ʱ��3
lua_jyjjc_timer4 = 10038		--��Ӣ���������涨ʱ��4
lua_jyjjc_timer5 = 10039		--��Ӣ���������涨ʱ��5
lua_jyjjc_timer6 = 10040		--��Ӣ���������涨ʱ��6
lua_jyjjc_timer7 = 10041		--��Ӣ����������������ʱ��
lua_jyjjc_timer8 = 10042		--��Ӣ���������Ž�����ʱ��
lua_jyjjc_timer9 = 10043		--��Ӣ��������������ʼ��ʱ��
lua_tmsk1_map_bx_npc_timer = 10044		--��ħʯ��һ�㱦�䶨ʱ��
lua_tmsk2_map_bx_npc_timer = 10045		--��ħʯ�߶��㱦�䶨ʱ��
lua_tmsk3_map_bx_npc_timer = 10046		--��ħʯ�����㱦�䶨ʱ��
------��Ф
ǧ���ܸ���Фװ���������ͣ���Ȼ���Ҵ���
------------------------------------------------------------------------------------------------------------------------
�����Ҫ�ű���ֻ��������ָ���Ĵ������»�ָ�������¿����ڼ��ܵĲ�����д�������ж�:
local gid = lualib:GetGroupId()

if gid ~= 11 then 
	lualib:Error("�ű�������������δ��Ȩ����ID��")
	return ""
end
��ȡ��ǰ������������ID, lualib:GetAgentId()
��ȡ��ǰ��ID, lualib:GetZoneId()
��ȡ��ǰ��Ϸ����������ID, lualib:GetGroupId() 

--ENBEG--
--ENEND--
ly8926796
lijia521    
@gmbox main
CL:LoadLuaFile("GameLogic")
--�ַ���_FileName  ָ��Ҫ���ص�lua�ļ���ָֻ���ļ������ɣ����ܰ����ļ�·������չ������Ϣ��
--�ļ���ŵ���Ŀ¼�µ�GUIScript�ļ��л򸽼�Ŀ¼��GUIScript�ļ����¡�
CL:LoadLuaFileForce("GameLogic")
CL:LoadLuaFileForce("LogicFunction")
CL:LoadLuaFileForce("TipLayout")
@rcs com_sx

@gmbox setint -s DB ������ 
��ѯϵͳint����


@gmbox setint -s DB ������ ����ֵ ������� --����ϵͳint����,(����ֵ:�����������0  �������:��ѡ, Ĭ������, ����ӿ�˵��)


@gmbox setint -s 0 ������ --��ѯϵͳ��ʱint����
@gmbox setint -s 0 ������ ����ֵ  --����ϵͳ��ʱint����(����ֵ:�����������0)

@gmbox setstr -s DB ������ --��ѯϵͳstr����
@gmbox setstr -s DB Trade_Index1
@gmbox setstr -s DB ������ ����ֵ ������� --����ϵͳstr���� (����ֵ:�����������nil  �������:��ѡ, Ĭ������, ����ӿ�˵��)

@gmbox setstr -s 0 ������ --��ѯϵͳ��ʱstr����
@gmbox setstr -s 0 ������ ����ֵ --����ϵͳ��ʱstr���� (����ֵ:�����������nil)


@gmbox delitem ������ ���������� ��������
ȫ������ɾ����


@gmbox detect
����Ҽ���б�


@gmbox kick 2 Ŀ���ɫ�� ԭ������
����ɫ�߳���Ϸ


@gmbox kick 3 ����˺� ԭ������
���˺��߳���Ϸ


@gmbox fbl + 1 ���IP ���ʱ�� ԭ������
��ip(���ֶ���)
(���IP:��ͨ��ָ��[��ѯ�����Ϣ]��ѯ�����ϸ��¼��Ϣ)

@gmbox fbl + 2 Ŀ���ɫ�� ���ʱ�� ԭ������
���ɫ(�Զ���)


@gmbox fbl + 3 ����˺� ���ʱ�� ԭ������
���˺�(�Զ���)
(����˺�:��ͨ��ָ��[��ѯ�����Ϣ]��ѯ�����ϸ��¼��Ϣ)

@gmbox fbl + 4 ���Ӳ���� ���ʱ�� ԭ������
��Ӳ����(���ֶ���)
(���Ӳ����:��ͨ��ָ��[��ѯ�����Ϣ]��ѯ�����ϸ��¼��Ϣ)

@gmbox fbl - 1 ���IP
���ip


@gmbox fbl - 2 Ŀ���ɫ��
����ɫ


@gmbox fbl - 3 ����˺�
����˺�


@gmbox fbl - 4 ���Ӳ����
���Ӳ����


@gmbox gonggao ������� ��������
������ʱ����
(�������:Ҫ��1�ܴ�����9)

@gmbox gonggao 10 ��ʼʱ�� ����ʱ�� ���ż�� ������ɫ ��������
����ѭ������
(���ż��:��λ����  ������ɫ:��ʽ: ǰ��&����; ������ɫ: ��ɫ:1/��ɫ:2/��ɫ:3/��ɫ:4/��ɫ:5/���ɫ:6/��ɫ:7/����ɫ:8/����ɫ:9/���ɫ:10/��ɫ͸��:11/��ɫ:12/��ɫ:13)

@gmbox notice
�򿪹����б�


@gmbox gmmode 1
����GM����ģʽ


@gmbox gmmode 0
�ر�GM����ģʽ


@gmbox levellog 1 ��ʼʱ�� ����ʱ�� ��¼�ȼ�
����������¼
(��¼�ȼ�:�ﵽ�õȼ��Ĳż���������¼)

@gmbox levellog 0 ��¼�ȼ�
�ر�������¼
(��¼�ȼ�:�رոõȼ���������¼)

@gmbox levellog 2 ��¼�ȼ�
��ӡ������¼
(��¼�ȼ�:��ӡ�õȼ���������¼)

@gmbox lualog 1
�����ű����ܼ�¼


@gmbox lualog 0
�رսű����ܼ�¼


@gmbox lualog 2
��ӡ�ű����ܼ�¼


@gmbox transout Ŀ���ɫ��
��������(����ר��)


@gmbox transin Ŀ���ɫ��
��������(����ר��)


@gmbox rename ���ԭ��ɫ�� ����½�ɫ��
��������(����ר��)
(���ԭ��ɫ��:ԭ�����еĽ�ɫ��  ����½�ɫ��:����Ϸ�½��Ľ�ɫ��)

@gmbox shutup 0 Ŀ���ɫ�� ����ʱ�� ��������
��ɫ����
(����ʱ��:��λ���룬������������������)

@gmbox shutup 1 Ŀ���ɫ��
�������


@gmbox status
��ѯ����汾


@gmbox status -info
��ѯ��������


@gmbox clearrank
������а�


@gmbox fkick -u ����˺�
ǿ���˺�


@gmbox fkick -r Ŀ���ɫ��
ǿ�߽�ɫ


@gmbox setlog ��־��� ���ز���
���غ�̨��־


@gmbox proc Ŀ���ɫ��
��������Ϣ
(Ŀ���ɫ��:��ɫ���������ȡȫ���������)

@gmbox active
��ѯ��Ծ����


@gmbox info ��ҽ�ɫ��
��ѯ�����Ϣ


                                                  @gmbox setint ��ҽ�ɫ�� ������
                                                  ��ѯ���int����


@gmbox setint ��ҽ�ɫ�� ������ ����ֵ
�������int����
(����ֵ:�����������0)

@gmbox setstr ��ҽ�ɫ�� ������
��ѯ���str����


@gmbox setstr ��ҽ�ɫ�� ������ ����ֵ
�������str����
(����ֵ:�����������nil)

@gmbox mv -t Ŀ���ɫ��
��ת����Ҹ���


@gmbox la Ŀ���ɫ��
����ҵ����


@gmbox checkitem ��ҽ�ɫ�� ����������
���Ұ�������
(����������:������ȡ���е���)

@gmbox senditem Ŀ���ɫ��
���ͱ�������
(Ŀ���ɫ��:���ͱ���ǰ10�����)

@gmbox senditem ��ҽ�ɫ�� ����json��
����json������


@gmbox json2item ��ҽ�ɫ��
json�ı�ת����
(��ҽ�ɫ��:DataĿ¼���������Ӧ��txt�ļ�)

@gmbox viewmap -p �鿴��Χ
�������
(�鿴��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ)

@gmbox title 0 ��ҽ�ɫ��
��ѯ�ƺ�


@gmbox title 1 ��ҽ�ɫ�� �ƺ�ID
��ӳƺ�
(�ƺ�ID:�ӽ�ɫ�ƺ�ģ���(title)�в�ѯ)

@gmbox title 2 ��ҽ�ɫ�� �ƺ�ID
ɾ���ƺ�
(�ƺ�ID:�ӽ�ɫ�ƺ�ģ���(title)�в�ѯ)

@gmbox buff 0 ��ҽ�ɫ��
��ѯbuff


@gmbox buff 1 ��ҽ�ɫ�� BUFF������ Att1ֵ
���buff
(Att1ֵ:��ѡ��Ĭ������)

@gmbox buff 2 ��ҽ�ɫ�� BUFF������
ɾ��buff


@gmbox skill 0 ��ҽ�ɫ��
��ѯ����


@gmbox skill 1 ��ҽ�ɫ�� ����������
��Ӽ���


@gmbox skill 2 ��ҽ�ɫ�� ����������
ɾ������


@gmbox skillexp ��ҽ�ɫ�� ����������
��ѯ����������


@gmbox skillexp ��ҽ�ɫ�� ���������� ����������
���ü���������


@gmbox allskill 0 ��ҽ�ɫ��
������м���


@gmbox allskill 1 ��ҽ�ɫ��
ɾ�����м���


@gmbox allskill 2 ��ҽ�ɫ��
ɾ���Ǳ�ְҵ����


@gmbox point ��ҽ�ɫ�� 0
���ǿ������


@gmbox point ��ҽ�ɫ�� ����ID ���Ե���
����ǿ������
(���Ե���:ǰ׺+��-����ԭ��ֵ�ϲ������޷���������Ϊ����ֵ)

@gmbox sae 0 + �������� ��ҽ�ɫ��
��Ӿ���
(��ҽ�ɫ��:��������Լ��Ӿ���)

@gmbox sae 1 + Ԫ������ ��ҽ�ɫ��
���Ԫ��
(��ҽ�ɫ��:��������Լ���Ԫ��)

@gmbox sae 2 + Ԫ������ ��ҽ�ɫ��
��Ӱ�Ԫ��
(��ҽ�ɫ��:��������Լ��Ӱ�Ԫ��)

@gmbox sae 3 + �������� ��ҽ�ɫ��
��ӻ���
(��ҽ�ɫ��:��������Լ��ӻ���)

@gmbox sae 4 + ������� ��ҽ�ɫ��
��ӽ��
(��ҽ�ɫ��:��������Լ��ӽ��)

@gmbox sae 5 + ������� ��ҽ�ɫ��
��Ӱ󶨽��
(��ҽ�ɫ��:��������Լ��Ӱ󶨽��)

@gmbox sae 6 + ������� ��ҽ�ɫ��
��Ӳֿ���
(��ҽ�ɫ��:��������Լ��Ӳֿ���)

@gmbox sae 0 - �������� ��ҽ�ɫ��
�۳�����
(��ҽ�ɫ��:��������Լ��۳�����)

@gmbox sae 1 - Ԫ������ ��ҽ�ɫ��
�۳�Ԫ��
(��ҽ�ɫ��:��������Լ��۳�Ԫ��)

@gmbox sae 2 - Ԫ������ ��ҽ�ɫ��
�۳���Ԫ��
(��ҽ�ɫ��:��������Լ��۳���Ԫ��)

@gmbox sae 3 - �������� ��ҽ�ɫ��
�۳�����
(��ҽ�ɫ��:��������Լ��۳�����)

@gmbox sae 4 - ������� ��ҽ�ɫ��
�۳����
(��ҽ�ɫ��:��������Լ��۳����)

@gmbox sae 5 - ������� ��ҽ�ɫ��
�۳��󶨽��
(��ҽ�ɫ��:��������Լ��۳��󶨽��)

@gmbox sae 6 - ������� ��ҽ�ɫ��
�۳��ֿ���
(��ҽ�ɫ��:��������Լ��۳��ֿ���)

@gmbox warn Ŀ���ɫ�� ������Ϣ
���;�����Ϣ


@gmbox vip ��ҽ�ɫ�� VIP�ȼ�
����VIP�ȼ�


@gmbox achieve ��ҽ�ɫ�� �ɾʹ�������
�����ɾʹ�ɼ��
(�ɾʹ�������:����ɾͱ�(achievement)�еĴ�������1�ֶ�)

@gmbox takeoff װ�������� Ŀ���ɫ��
�����װ��
(װ��������:���װ����&�ָ�)

@gmbox takeoff װ��������
ȫ����װ��
(װ��������:���װ����&�ָ�)

@gmbox takeon Ŀ���ɫ�� װ����Ϣ װ��λ��
��Ҵ�װ��
(װ����Ϣ:����GUID��KeyName  װ��λ��:��ָ����ȷ����ң�����װ�����Ըò���)

@gmbox pearlexp ��ҽ�ɫ�� ������������
�������������
(������������:���־�������&�ָ�)

@gmbox setcheck 1 Ŀ���ɫ��
���������ϸ�ģʽ


@gmbox setcheck 0 Ŀ���ɫ��
�ر������ϸ�ģʽ


@gmbox setstr ��ҽ�ɫ�� _lock_pwd nil
����ֿ�����


@gmbox trace -custom ��ҽ�ɫ��
��ѯ�Զ�������б�


@gmbox trace -att ��ҽ�ɫ�� Att������
��ѯ���Att����
(Att������:��������ID����Key)

@gmbox mail ϵͳ���� ��ҽ�ɫ�� �ʼ�����
�����ı��ʼ�


@gmbox mail ϵͳ���� ��ҽ�ɫ�� �ʼ����� ���Ԫ���� ������Ʒ
���ʹ������ʼ�
(���Ԫ����:��Һ�Ԫ���Կո����  ������Ʒ:��Ʒ1,����(���������ѵ�),��(0/1),��Ʒ2,����,�� (�����Զ��Ÿ���,���5����Ʒ))

@gmbox tempint ��ҽ�ɫ�� ������
��ѯ���int��ʱ����


@gmbox tempint ��ҽ�ɫ�� ������ ����ֵ
�������int��ʱ����
(����ֵ:�����������0)

@gmbox tempstr ��ҽ�ɫ�� ������
��ѯ���str��ʱ����


@gmbox tempstr ��ҽ�ɫ�� ������ ����ֵ
�������str��ʱ����
(����ֵ:�����������nil)

@gmbox dayint ��ҽ�ɫ�� ������
��ѯ���int�����


@gmbox dayint ��ҽ�ɫ�� ������ ����ֵ
�������int�����
(����ֵ:�����������0)

@gmbox daystr ��ҽ�ɫ�� ������
��ѯ���str�����


@gmbox daystr ��ҽ�ɫ�� ������ ����ֵ
�������str�����
(����ֵ:�����������nil)

@gmbox weekint ��ҽ�ɫ�� ������
��ѯ���int�ܱ���


@gmbox weekint ��ҽ�ɫ�� ������ ����ֵ
�������int�ܱ���
(����ֵ:�����������0)

@gmbox weekstr ��ҽ�ɫ�� ������
��ѯ���str�ܱ���


@gmbox weekstr ��ҽ�ɫ�� ������ ����ֵ
�������str�ܱ���
(����ֵ:�����������nil)

@gmbox camp -p ��ҽ�ɫ��
��ѯ�����Ӫ


@gmbox camp -p ��ҽ�ɫ�� ��Ӫֵ
���������Ӫ


@gmbox trace -lgp ��ҽ�ɫ��
��ѯ��ҳ�����Ϣ


@gmbox ys ��ҽ�ɫ�� ��������
�ͻ�����ʱ���
(��������:�ձ�ʾ��ʼ��-t��ʾ������-s��ʾ����)

@gmbox sa Att������ Att����ֵ Ŀ���ɫ��
�������Att����
(Att������:��������ID����Key  Ŀ���ɫ��:�����������Լ�)

@gmbox mv ��ͼ�ؼ��� ��ͼ����
��ת��ͼ
(��ͼ�ؼ���:�������ڱ���ͼ��ת  ��ͼ����:X��Y�Կո�ָ���������Ϊ���)

@gmbox viewmap -p �鿴��Χ
������Χ���
(�鿴��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ)

@gmbox viewmap -n �鿴��Χ NPC������
������ΧNPC
(�鿴��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ  NPC������:��ѡ���������������NPC)

@gmbox viewmap -m �鿴��Χ ����������
������Χ����
(�鿴��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ  ����������:��ѡ��������������й���)

@gmbox clearmap -i ����������
�����ͼ����
(����������:�����������ͼ���е���(����ʹ��))

@gmbox clearmap -n NPC������
�����ͼNPC
(NPC������:�����������ͼ����NPC(����ʹ��))

@gmbox clearmap -m ����������
�����ͼ����
(����������:�����������ͼ���й���(����ʹ��))

@gmbox clearmap -k ����������
ɱ����ͼ����
(����������:������ɱ����ͼ���й���(����ʹ��))

@gmbox clearmap -p ��Χ �������
�����ͼ���
(��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ��Ĭ��0��ʾȫ��ͼ  �������:0Ϊ������ң�1Ϊ��ʵ������ң�2Ϊ���߹һ����)

@gmbox clearmap -t ��Χ Ŀ���ͼ���� Ŀ������ �������
ת�Ƶ�ͼ���
(��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ��Ĭ��0��ʾȫ��ͼ  Ŀ���ͼ����:����ǰ��ͼ���ת�Ƶ���Ŀ���ͼ  Ŀ������:Ŀ��X Ŀ��Y���Կո�ָ���Ĭ��0Ϊ���  �������:0Ϊ������ң�1Ϊ��ʵ������ң�2Ϊ���߹һ����)

@gmbox setint -d ��ͼ������ ������
��ѯ��ͼint����


@gmbox setint -d ��ͼ������ ������ ����ֵ
���õ�ͼint����
(����ֵ:�����������0)

@gmbox setstr -d ��ͼ������ ������
��ѯ��ͼstr����


@gmbox setstr -d ��ͼ������ ������ ����ֵ
���õ�ͼstr����
(����ֵ:�����������nil)

@gmbox dgnvar -i ���������� ��ҽ�ɫ�� ������
��ѯ����int����
(��ҽ�ɫ��:�иø�����Ʊ�����)

@gmbox dgnvar -i ���������� ��ҽ�ɫ�� ������ ����ֵ
���ø���int����
(��ҽ�ɫ��:�иø�����Ʊ�����  ����ֵ:�����������0)

@gmbox dgnvar -s ���������� ��ҽ�ɫ�� ������
��ѯ����str����
(��ҽ�ɫ��:�иø�����Ʊ�����)

@gmbox dgnvar -s ���������� ��ҽ�ɫ�� ������ ����ֵ
���ø���str����
(��ҽ�ɫ��:�иø�����Ʊ�����  ����ֵ:�����������nil)

@gmbox dayint -d ��ͼ������ ������
��ѯ��ͼint�����


@gmbox dayint -d ��ͼ������ ������ ����ֵ
���õ�ͼint�����
(����ֵ:�����������0)

@gmbox daystr -d ��ͼ������ ������
��ѯ��ͼstr�����


@gmbox daystr -d ��ͼ������ ������ ����ֵ
���õ�ͼstr�����
(����ֵ:�����������nil)

@gmbox weekint -d ��ͼ������ ������
��ѯ��ͼint�ܱ���


@gmbox weekint -d ��ͼ������ ������ ����ֵ
���õ�ͼint�ܱ���
(����ֵ:�����������0)

@gmbox weekstr -d ��ͼ������ ������
��ѯ��ͼstr�ܱ���


@gmbox weekstr -d ��ͼ������ ������ ����ֵ
���õ�ͼstr�ܱ���
(����ֵ:�����������nil)

@gmbox refine �����ȼ� ��������� ����ֵ
���þ�������
(�����ȼ�:-1��ʾ�����ȼ�����  ���������:��att���в�ѯ��-1��ʾ����������  ����ֵ:-1��ʾ����ֵ����)

@gmbox identify �������� ��������� ����ֵ
���ü�������
(��������:0~2��������0Ϊ��һ��  ���������:��att���в�ѯ��-1��ʾ����������  ����ֵ:-1��ʾ����ֵ����)

@gmbox quality �������� ��������� ����ֵ
����Ʒ������
(��������:0~5��������0Ϊ��һ��  ���������:��att���в�ѯ��-1��ʾ����������  ����ֵ:-1��ʾ����ֵ����)

--@gmbox extend �������� ��������� ����ֵ
@gmbox extend 0 -1 -1
������չ����
(��������:0~9��ʮ����0Ϊ��һ��  ���������:��att���в�ѯ��-1��ʾ����������  ����ֵ:-1��ʾ����ֵ����)



@gmbox luck ��������ֵ
������������
(��������ֵ:���������ˣ�����������)

@gmbox setint -i ����GUID ������
��ѯ����int����


@gmbox setint -i ����GUID ������ ����ֵ
���õ���int����
(����ֵ:�����������0)

@gmbox setstr -i ����GUID ������
��ѯ����str����


@gmbox setstr -i ����GUID ������ ����ֵ
���õ���str����
(����ֵ:�����������nil)

@gmbox pinji ����Ʒ��
��������Ʒ��


@gmbox horselv ����ȼ� ��������
��������ȼ�
(��������:�������horse.lua�ж���)

@gmbox setjson json�ַ���
�޸ĵ���json��


@gmbox tempint -i ����GUID ������
��ѯ����int��ʱ����


@gmbox tempint -i ����GUID ������ ����ֵ
���õ���int��ʱ����
(����ֵ:�����������0)

@gmbox tempstr -i ����GUID ������
��ѯ����str��ʱ����


@gmbox tempstr -i ����GUID ������ ����ֵ
���õ���str��ʱ����
(����ֵ:�����������nil)

@gmbox dayint -i ����GUID ������
��ѯ����int�����


@gmbox dayint -i ����GUID ������ ����ֵ
���õ���int�����
(����ֵ:�����������0)

@gmbox daystr -i ����GUID ������
��ѯ����str�����


@gmbox daystr -i ����GUID ������ ����ֵ
���õ���str�����
(����ֵ:�����������nil)

@gmbox weekint -i ����GUID ������
��ѯ����int�ܱ���


@gmbox weekint -i ����GUID ������ ����ֵ
���õ���int�ܱ���
(����ֵ:�����������0)

@gmbox weekstr -i ����GUID ������
��ѯ����str�ܱ���


@gmbox weekstr -i ����GUID ������ ����ֵ
���õ���str�ܱ���
(����ֵ:�����������nil)

@gmbox viewmap -n �鿴��Χ NPC������
����NPC
(�鿴��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ  NPC������:��ѡ���������������NPC)

@gmbox npc NPC������ X���� Y���� ˢ�·�Χ ˢ�·���
�߼�ˢNPC
(X����:Ĭ�ϵ�ǰ��ɫ����  Y����:Ĭ�ϵ�ǰ��ɫ����)

@gmbox setint -n NPCGUID ������
��ѯNPCint����


@gmbox setint -n NPCGUID ������ ����ֵ
����NPCint����
(����ֵ:�����������0)

@gmbox setstr -n NPCGUID ������
��ѯNPCstr����


@gmbox setstr -n NPCGUID ������ ����ֵ
����NPCstr����
(����ֵ:�����������nil)

@gmbox dayint -n NPCGUID ������
��ѯNPCint�����


@gmbox dayint -n NPCGUID ������ ����ֵ
����NPCint�����
(����ֵ:�����������0)

@gmbox daystr -n NPCGUID ������
��ѯNPCstr�����


@gmbox daystr -n NPCGUID ������ ����ֵ
����NPCstr�����
(����ֵ:�����������nil)

@gmbox weekint -n NPCGUID ������
��ѯNPCint�ܱ���


@gmbox weekint -n NPCGUID ������ ����ֵ
����NPCint�ܱ���
(����ֵ:�����������0)

@gmbox weekstr -n NPCGUID ������
��ѯNPCstr�ܱ���


@gmbox weekstr -n NPCGUID ������ ����ֵ
����NPCstr�ܱ���
(����ֵ:�����������nil)

@gmbox camp -n NPCGUID
��ѯNPC��Ӫ


@gmbox camp -n NPCGUID ��Ӫֵ
����NPC��Ӫ


@gmbox mv -n NPC�ؼ���
��ת��NPC����


@gmbox viewmap -m �鿴��Χ ����������
���ҹ���
(�鿴��Χ:�Ե�ǰ��ɫΪ���ĵķ�Χ  ����������:��ѡ��������������й���)

@gmbox mob ���������� �Ƿ������ ˢ������ ˢ�����귶Χ ˢ�·���
�߼�ˢ��
(ˢ�����귶Χ:Ĭ�ϵ�ǰ��ɫ������Χ3�񣬲����Կո�ָ�)

@gmbox setint -m ����GUID ������
��ѯ����int����


@gmbox setint -m ����GUID ������ ����ֵ
���ù���int����
(����ֵ:�����������0)

@gmbox setstr -m ����GUID ������
��ѯ����str����


@gmbox setstr -m ����GUID ������ ����ֵ
���ù���str����
(����ֵ:�����������nil)

@gmbox dayint -m ����GUID ������
��ѯ����int�����


@gmbox dayint -m ����GUID ������ ����ֵ
���ù���int�����
(����ֵ:�����������0)

@gmbox daystr -m ����GUID ������
��ѯ����str�����


@gmbox daystr -m ����GUID ������ ����ֵ
���ù���str�����
(����ֵ:�����������nil)

@gmbox weekint -m ����GUID ������
��ѯ����int�ܱ���


@gmbox weekint -m ����GUID ������ ����ֵ
���ù���int�ܱ���
(����ֵ:�����������0)

@gmbox weekstr -m ����GUID ������
��ѯ����str�ܱ���


@gmbox weekstr -m ����GUID ������ ����ֵ
���ù���str�ܱ���
(����ֵ:�����������nil)

@gmbox camp -m ����GUID
��ѯ������Ӫ


@gmbox camp -m ����GUID ��Ӫֵ
���ù�����Ӫ


@gmbox mv -m ����ؼ���
��ת�����︽��


@gmbox df �л���
�����л�
(�л���:����л���&�ָ�)

@gmbox fa �л��� Ŀ���ɫ��
�����л�


@gmbox fd �л��� Ŀ���ɫ��
�߳��л�


@gmbox setint -f �л��� ������
��ѯ�л�int����


@gmbox setint -f �л��� ������ ����ֵ
�����л�int����
(����ֵ:�����������0)

@gmbox setstr -f �л��� ������
��ѯ�л�str����


@gmbox setstr -f �л��� ������ ����ֵ
�����л�str����
(����ֵ:�����������nil)

@gmbox setleader �л��� ��ҽ�ɫ��
�����л�᳤
(��ҽ�ɫ��:�»᳤�Ľ�ɫ��)

@gmbox cf �л���
�����л�


@gmbox startwar �Ǳ��� ����ʱ�� ����ʱ�� �����л�
��������
(����ʱ��:��λ����  �����л�:����л���&�ָ���Ĭ��Ϊ�գ���ȡ�����л�)

@gmbox stopwar �Ǳ���
ֹͣ����


@gmbox checkwar
��ѯ������Ϣ


@gmbox setowner �Ǳ���
��ѯ�Ǳ�ӵ����


@gmbox setowner �Ǳ��� �л���
���óǱ�ӵ����
(�л���:���ӵ��������nil)

@gmbox settemper �Ǳ���
��ѯ�Ǳ���ʱӵ��


@gmbox settemper �Ǳ��� �л���
���óǱ���ʱӵ��
(�л���:���ӵ��������nil)

@gmbox castlevar -i �Ǳ��� ������
��ѯ�Ǳ�int����


@gmbox castlevar -i �Ǳ��� ������ ����ֵ
���óǱ�int����
(����ֵ:�����������0)

@gmbox castlevar -s �Ǳ��� ������
��ѯ�Ǳ�str����


@gmbox castlevar -s �Ǳ��� ������ ����ֵ
���óǱ�str����
(����ֵ:�����������nil)

