--�¼�����
local i = 0
LUA_EVENT_NONE = i; i = i + 1				--()
LUA_EVENT_ONPLAYLEVELUP = i; i = i + 1	  	--��ҵȼ�����(INT _Level)
LUA_EVENT_ONLOGIN = i; i = i + 1		 		--��¼()
LUA_EVENT_INITRESCOMPLETE = i; i = i + 1		--���ڴ������()
LUA_EVENT_ONENTERMAP = i; i = i + 1	 		--�����ͼ(string _MapKeyName INT _XPos INT _YPos)
LUA_EVENT_ONADDSKILL = i; i = i + 1			--��Ӽ���(INT _SkillID)
LUA_EVENT_ONADDITEM = i; i = i + 1 			--�����Ʒ(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_ONDROPITEM = i; i = i + 1 			--������Ʒ(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_CHANGEATTACMODE = i; i = i + 1 	--�л�����ģʽ(INT _AttacMode)
LUA_EVENT_GETNEWQUEST = i; i = i + 1 		--��ȡ����(INT _QuestID)
LUA_EVENT_FINISHQUEST = i; i = i + 1 		--�������(INT _QuestID)
LUA_EVENT_READYQUEST = i; i = i + 1 			--��������(INT _QuestID)
LUA_EVENT_DROPQUEST = i; i = i + 1			--��������(INT _QuestID)
LUA_EVENT_ONADDBUFF = i; i = i + 1 			--���buff(INT _BuffID)
LUA_EVENT_ONPLAYERAPPEAR = i; i = i + 1		--��ҳ���(UINT64 _RoleID)
LUA_EVENT_ONFINISHMASTER = i; i = i + 1		--��ʦ���()
LUA_EVENT_ONFINISHMARRY = i; i = i + 1		--������()
LUA_EVENT_ONJOINFAMILY = i; i = i + 1		--�����л�()
LUA_EVENT_ONLEAVEFAMILY = i; i = i + 1		--�뿪�л�()
LUA_EVENT_ONACHIEVECASTLE = i; i = i + 1		--��óǱ�()
LUA_EVENT_ONLOSECASTLE = i; i = i + 1		--�رճǱ�()
LUA_EVENT_ONNEWMAIL = i; i = i + 1			--���ʼ�����()
LUA_EVENT_ONADDFRIEND = i; i = i + 1			--��Ӻ���()
LUA_EVENT_ONDELFRIEND = i; i = i + 1			--ɾ������()
LUA_EVENT_ONJOINTEAM = i; i = i + 1			--�������()
LUA_EVENT_ONLEAVETEAM = i; i = i + 1			--�뿪����()
LUA_EVENT_ONP2PTRADEOK = i; i = i + 1		--����()
LUA_EVENT_OPENPAKAGEGUI = i; i = i + 1		--�򿪰���()
LUA_EVENT_OPENSKILLGUI = i; i = i + 1		--�򿪼������()
LUA_EVENT_OPENROLEGUI = i; i = i + 1			--�򿪽�ɫ���()
LUA_EVENT_OPENMAILGUI = i; i = i + 1			--���ʼ�()
LUA_EVENT_OPENQUESTGUI = i; i = i + 1		--���������()
LUA_EVENT_OPENSYSSETGUI = i; i = i + 1		--���������()
LUA_EVENT_OPENFAMILYGUI = i; i = i + 1		--���л����()
LUA_EVENT_OPENVIPGUI = i; i = i + 1			--��VIP���()
LUA_EVENT_OPENRANKGUI = i; i = i + 1			--�����а����()
LUA_EVENT_OPENFRIENDGUI = i; i = i + 1		--�򿪺������()
LUA_EVENT_OPENBIGMAPGUI = i; i = i + 1		--�򿪴��ͼ���()
LUA_EVENT_OPENBIGCAMPAIGNGUI = i; i = i + 1	--�򿪻���()
LUA_EVENT_OPENWAREHOUSEGUI = i; i = i + 1	--�򿪲ֿ����()
LUA_EVENT_OPENADVWAREHOUSEGUI = i; i = i + 1	--�򿪸߼��ֿ����()
LUA_EVENT_OPENGAMEMALLGUI = i; i = i + 1		--���̳����()
LUA_EVENT_OPENGAMESETTINGGUI = i; i = i + 1	--����Ϸ�������()
LUA_EVENT_PROPERTYDATA = i; i = i + 1		--��ɫ���Ըı�(UINT64 _RoleID, INT _Type, INT _Data)
LUA_EVENT_CLOSEQUESTGUI = i; i = i + 1		--�ر����񴰿�()
LUA_EVENT_CLOSEPACKAGEGUI = i; i = i + 1		--�رհ�������()
LUA_EVENT_CLOSEROLEGUI = i; i = i + 1		--�رս�ɫ���()
LUA_EVENT_CLOSESKILLGUI = i; i = i + 1		--�رռ������()
LUA_EVENT_ONAPPLYITEM = i; i = i + 1			--ʹ����Ʒ(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_ONTEAMINVITE = i; i = i + 1		--���������()
LUA_EVENT_UPDATASCREENSIZE = i; i = i + 1	--���ڴ�С�ı�ʱ����(INT_XDiff,INT_YDiff)
LUA_EVENT_ONQUITEGAME = i; i = i + 1			--�ǳ�ʱ����()
LUA_EVENT_ONSHOWFORM = i; i = i + 1			--���յ���(string _FormName, string _FormContent)
LUA_EVENT_SUBMITFORMACK = i; i = i + 1		--�ύ������(string _ScriptName, string _FormRet)
LUA_EVENT_RELOADLUAEND = i; i = i + 1		--���¼��ؽű����()
LUA_EVENT_ONGUIDECREATE = i; i = i + 1		--������崴���¼�(GuideId)
LUA_EVENT_ONEQUIPMENT = i; i = i + 1			--����װ���¼�(name, guid, id, site)
LUA_EVENT_HORSEBUTTONCLICK = i; i = i + 1	--��������¼� flag:0���� 1:����(flag)
LUA_EVENT_WNDLOADLAYOUT = i; i = i + 1      	--���ڳɹ����ز����ļ�(string _LayOutFile, INT _pCurWnd)
LUA_EVENT_ITEMWNDMOVEITEMIN = i; i = i + 1	--�ӱ���Դ��Ʒ���ƶ����ߵ�Ŀ�괰��(INT _CurItemWindowType, DWORD _SrcItemGUIDataHandle)
LUA_EVENT_OPENNPCTALK = i; i = i + 1			--��NPC���(string _NpcName, UINT64 _NpcGUID, string _Text)
LUA_EVENT_CLICKNPCTALKITEM = i; i = i + 1	--���NPC����ϵ���Ŀ(string _NpcName, string _ItemInfo)
LUA_EVENT_CLICKTASKMAPLINK = i; i = i + 1	--�������׷������ϵ�����ͼ����(string _MapKeyName)
LUA_EVENT_CLICKTASKNPCLINK = i; i = i + 1	--�������׷������ϵ�NPC����(string _NpcKeyName)
LUA_EVENT_DEFENDICONINIT = i; i = i + 1		--������������ؼ���ʼ���¼�()
LUA_EVENT_UILINK = i; i = i + 1				--UILink����¼�,���ڵ�����Ӵ����򿪴���,�ύ��,��
LUA_EVENT_ONITEMUPDATE = i; i = i + 1		--��Ʒ�����¼�(string _ItemGUID)
LUA_EVENT_ONITEMATTRCHANGE = i; i = i + 1	--��Ʒ���Ըı��¼�(string _ItemGUID)
LUA_EVENT_ONITEMDESTROY = i; i = i + 1		--��Ʒɾ���¼�(string _ItemGUID)
LUA_EVENT_ONUISTYLECHANGE = i; i = i + 1		--���沼�ַ����仯(bool _UseNewStyle)
LUA_EVENT_ONHEROCREATE = i; i = i + 1		--Ӣ�۴����¼�(string _DummyGUID)
LUA_EVENT_ONHERODESTROY = i; i = i + 1		--Ӣ�������¼�(string _DummyGUID)
LUA_EVENT_ONMOUSEITEMCLEAR = i; i = i + 1	--�������Ʒ����¼�(DWORD _ItemGUIData)
LUA_EVENT_OFFEQUIPMENT = i; i = i + 1		--��װ���¼�(string GUID)
LUA_EVENT_AUTOATTACSTOP = i; i = i + 1		--����ͼ��һ�ֹͣ
LUA_EVENT_PLAYERADDBUFF = i; i = i + 1		--������buff(INT _BuffID)
LUA_EVENT_PLAYERDESTORYBUFF = i; i = i + 1	--�������buff(INT _BuffID)
LUA_EVENT_HEROADDBUFF = i; i = i + 1			--Ӣ�����buff(INT _BuffID)
LUA_EVENT_HERODESTORYBUFF = i; i = i + 1		--Ӣ������buff(INT _BuffID)
LUA_EVENT_HERO_CHANGESTATE = i; i = i + 1	--Ӣ��״̬�ı�
LUA_EVENT_ONHEROADDITEM = i; i = i + 1		--�����Ʒ(string _ItemName,UINT64 _ItemGUID,INT _ItemID)
LUA_EVENT_PLAYERATTREXTREF = i; i = i + 1	--(string _Info, INT _Type, INT _ChangeType)
LUA_EVENT_HEROATTREXTREF = i; i = i + 1		--(string _Info, INT _Type, INT _ChangeType)
LUA_EVENT_PLAYERERRORCODE = i; i = i + 1		--(int ErrorCode)
LUA_EVENT_HEROERRORCODE = i; i = i + 1		--(int ErrorCode)
LUA_EVENT_SHIELDREMOVE = i; i = i + 1		--(int ErrorCode)
LUA_EVENT_INATHLETICSREGION = i; i = i + 1	--(int ErrorCode)
LUA_EVENT_OUTATHLETICSREGION = i; i = i + 1	--(int ErrorCode)
LUA_EVENT_INITMAININTERFACE = i; i = i + 1	--()
LUA_EVENT_SWITICHSKILLACTIVE = i; i = i + 1	--(int skilltype, int active)
LUA_EVENT_STALLSELL = i; i = i + 1			--(string BuyerName, int ItemCount, string ItemName)
LUA_EVENT_ITEMCTRLIN = i; i = i + 1			--(INT _Handle, int ItemID, string ItemGUID)
LUA_EVENT_ITEMCTRLOUT = i; i = i + 1			--(INT _Handle, int ItemID, string ItemGUID)
LUA_EVENT_CUSTOMDATALOAD = i; i = i + 1		--()
LUA_EVENT_OPENHEROGUI = i; i = i + 1			--()
LUA_EVENT_OPENHEROPACKAGE = i; i = i + 1		--()
LUA_EVENT_OPENDESKWINODW = i; i = i + 1		--()
LUA_EVENT_CHATCHANNELCHANGE = i; i = i + 1	--�������͸ı�
LUA_EVENT_UPDATAMALLITEM = i; i = i + 1	
LUA_EVENT_PROPERTYDATA64 = i; i = i + 1         --��ɫ64λ���Ըı�
LUA_EVENT_CHOOSEPLAYER = i; i = i + 1			--ѡ�����
LUA_EVENT_HIDECHOOSEPLAYER = i; i = i + 1		--ȡ�����
LUA_EVENT_PACKAGECOUNT = i; i = i + 1			--�����ȵ��ߔ���
LUA_EVENT_SKILLPROFICIENCY = i; i = i + 1		--���������ȸ���
LUA_EVENT_RANKLIST = i; i = i + 1				--���а��б�
LUA_EVENT_MALLLIST = i; i = i + 1				--�̳��б�
LUA_EVENT_P2PINVITE = i; i = i + 1				--��������
LUA_EVENT_P2PLOCK = i; i = i + 1				--��������
LUA_EVENT_STALLSETPRICE = i; i = i + 1			--��̯׼���ϼ�֪ͨ
LUA_EVENT_VISITSTALLLIST = i; i = i + 1		--�鿴��̯�б�֪ͨ
LUA_EVENT_HIDEVISITSTALL = i; i = i + 1		--�رձ��˰�̯����
LUA_EVENT_VISITSTALLBUY = i; i = i + 1			--���˰�̯��Ʒ����
LUA_EVENT_TRANSFERLEADERTEAM = i; i = i + 1	--�ƽ��ӳ�
LUA_EVENT_DISMISSTEAM = i; i = i + 1 			--��ɢ����
LUA_EVENT_OPENTEAM = i; i = i + 1 				--��������
LUA_EVENT_CLOSETEAM = i; i = i + 1 			--�ر�������
LUA_EVENT_ONCHANGEFRIEND = i; i = i + 1		--���º�����Ϣ
LUA_EVENT_ONFINISHACHIVE = i; i = i + 1		--�����ĳ���ɾ�,id,״̬��1��δ��ɣ�2������ɣ�3����������ȡ
LUA_EVENT_ONACHIVELIST = i; i = i + 1			--�ɾ��б�
LUA_EVENT_JOINTEAM = i; i = i + 1				--������������
LUA_EVENT_CLOSESYSSETGUI = i; i = i + 1		--�ر��������()
LUA_EVENT_MAILLIST = i; i = i + 1				--�ʼ��б�()
LUA_EVENT_MAILDETAIL = i; i = i + 1			--�ʼ�����()
LUA_EVENT_MAILATTACHMENTOK = i; i = i + 1		--�ʼ���ȡ�ɹ�()
LUA_EVENT_NPCQUEST = i; i = i + 1         		--npc����id
LUA_EVENT_FAMILYINVITE = i; i = i + 1			--������Ҽ����л�
LUA_EVENT_FAMILYINVITENOTICE = i; i = i + 1	--���������л�֪ͨ
LUA_EVENT_QUICKCHANGE = i; i = i + 1			--��ݼ����
LUA_EVENT_STARTSTALL = i; i = i + 1			--��ʼ��̯�Ƿ�ɹ�
LUA_EVENT_OTHERROLEDATA = i; i = i + 1			--�����������
LUA_EVENT_OPENTRADEGUI = i; i = i + 1			--�򿪽������()
LUA_EVENT_OPENSTALLGUI = i; i = i + 1			--�򿪰�̯���()
LUA_EVENT_CLOSEGAMEMALLGUI = i; i = i + 1		--�ر��̳����()
LUA_EVENT_CLOSEWAREHOUSEGUI = i; i = i + 1		--�رղֿ����()
LUA_EVENT_CLOSEADVWAREHOUSEGUI = i; i = i + 1 	--�رո߼��ֿ����()
LUA_EVENT_CLOSETRADEGUI = i; i = i + 1			--�رս������()
LUA_EVENT_CLOSESTALLGUI = i; i = i + 1			--�رհ�̯���()
LUA_EVENT_CAMPAIGNLIST = i; i = i + 1			--��б�
LUA_EVENT_FAMILYNOTICECONFIRM = i; i = i + 1 	--�޸��л���Ϣȷ��
LUA_EVENT_ONLEAVETEAMEX = i; i = i + 1			--�뿪����EX,����ԭleave�¼�����
LUA_EVENT_ONJOINTEAMEX = i; i = i + 1			--�������EX,����ԭjoin�¼�����
LUA_EVENT_SKIllAPPLY = i; i = i + 1				--����ʹ�ã� �����һ� para[0] = LINKAGEID
LUA_EVENT_CALLBACKCOUNTCHANGE = i; i = i + 1	--�Ҽ����������Ϣ�����ı� key,count
LUA_EVENT_SETTINGPROPCHANGE = i; i = i + 1  	--ĳ���������Եı仯 ��1018ҳ������ģʽ���л� para[0] = id, para[1] = value
LUA_EVENT_OBJDISPEAR = i; i = i + 1				--������Ʒ��ʧ
LUA_EVENT_PROPERTYDATALIST = i; i = i + 1		--��ɫ32λ���Ըı��б�,ҳ��ʹ��,΢�˲�������¼�
LUA_EVENT_AUTOMOVEEND = i; i = i + 1			--�Զ�Ѱ·����
LUA_EVENT_COUNT = i; i = i + 1					--�¼����� 
EVENT_DEFAULT_TAG = "0"