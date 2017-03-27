HintData =
{
	DefAliveTime = 80000,
	NewRoleLevel = 40,
	e = {},
	n = {},
	t = {},
}

HintData.e[LUA_EVENT_ONLOGIN]            =Event_OnLogin                 --��ҵ�¼�¼�
HintData.e[LUA_EVENT_INITRESCOMPLETE]    =Event_InitResComplete         --��Դ��ʼ������¼�
--HintData.e[LUA_EVENT_GETNEWQUIST]        =Event_GetNewTask              --��ȡ�������¼�
--HintData.e[LUA_EVENT_FINISHQUEST]        =Event_FinishTask              --��������¼�
--HintData.e[LUA_EVENT_OPENQUESTGUI]       =Event_OpenTaskWindow          --����������¼�
--HintData.e[LUA_EVENT_CLOSEQUESTGUI]      =Event_CloseTaskWindow         --�ر���������¼�
--HintData.e[LUA_EVENT_OPENPAKAGEGUI]      =Event_OpenPackageWindow       --�򿪰����¼�
--HintData.e[LUA_EVENT_CLOSEPACKAGEGUI]    =Event_ClosePackageWindow      --�رհ����¼�
--HintData.e[LUA_EVENT_ONAPPLYITEM]        =Event_OnApplyItem             --ʹ����Ʒ�¼�
--HintData.e[LUA_EVENT_ONADDSKILL]         =Event_OnAddSkill              --ѧϰ���ܳɹ��¼�
--HintData.e[LUA_EVENT_OPENSKILLGUI]       =Event_OpenSkillWindow         --�򿪼�������¼�
--HintData.e[LUA_EVENT_CLOSESKILLGUI]      =Event_CloseSkillWindow        --�رռ�������¼�
--HintData.e[Lua_EVENT_ONTEAMINVITE]       =Event_OnTeamInvite            --����������¼�
--HintData.e[LUA_EVENT_OPENWAREHOUSEGUI]   =Event_OpenWareHouse           --�򿪲ֿ��¼�
--HintData.e[LUA_EVENT_ONTASKCANACCEPTTIP] =Event_OnTaskCanAcceptTip      --�ɽ��������ʾ
--HintData.e[LUA_EVENT_IMAGEMOVINGEND]     =Event_OnImageMovingEnd        --ͼƬ�ƶ�����ʱ�Ĵ����¼�
--HintData.e[LUA_EVENT_CLOSEROLEGUI]       =Event_CloseRoleWindow         --�رս�ɫ����¼�
--HintData.e[LUA_EVENT_MONSTERDIE]         =Event_MonsterDie              --�������¼�
--HintData.e[LUA_EVENT_ONENTERMAP]         =Event_OnEnterMap              --�����ͼ�¼�

--[[
IMAGE FLAG DEFINED:
	drawNormal       ��ͨ����
	drawFlat         ƽ��
	drawScale        ����
	drawAlpha        ͸��
	drawFlatLR       ����ƽ��
	drawFlatTB       ����ƽ��
	drawFlatAround   ����ƽ��
	drawRollLR       �����ҹ���
	drawRollTB       �����¹���
	drawRollRL       ���������
	drawRollBT       �����Ϲ���
-----------------------------------------------------------------------------------------------------------------------------------------
��script��     ���ܣ�ע��ű��¼�
               �÷��� �������� | {�¼�ID} , ���ú��� ;                     example: "script = Package,Item0 | 1002, HINTFUNC_1_SCRIPT0;"
��alive_time�� ���ܣ���ʾ�೤ʱ���Զ��ر�
               �÷���{vlaue}, [func_name] ;                                example: "alive_time = 8000; HINTFUNC_1_ATIME0;"
��timer��      ���ܣ�����ʱ��
               �÷���{value}, [func_name] ;                                example: "timer = 1000; HINTFUNC_1_TIMER1;"
��ontimer��    ���ܣ���ͨ��ʱ��
               �÷���{timerid}, {value}, [func_name] ;                     example: "ontimer = 1, 1000; HINTFUNC_1_TIMER1;"
��oninit��     ���ܣ���ʼ�����ʱ�ص��ű�����
               �÷���lua_func_name, ...                                    example: "oninit = HINTFUNC_1_INIT0, HINTFUNC_1_INIT1;"
��onclose��    ���ܣ����ر�ʱ�ص��ű�����
               �÷���lua_func_name, ...                                    example: "onclose = HINTFUNC_1_CLOSE0;"
��image��      ���ܣ������ʾͼƬ
               �÷���{flag}, {imageid}, {x}, {y}, {w}, {h}, [{alpha}] ;    example: "image = 0, 1900300005, 400, 100, 120, 200;"
��position��   ���ܣ��趨����λ��
               �÷���{x}, {y}                                              example: "position = 20, 80;"
��edit��       ���ܣ���ӱ༭��ؼ�
               �÷��� name, {x}, {y}, {w}, {h}, [onclick], [text];         example: "edit = Edit1, 0, 0, 100, 220, HINTFUNC_1_EDIT0, ��ӭ������;����;"
��button��     ���ܣ���Ӱ�ť�ؼ�
               �÷��� name, {x}, {y}, {imageid}, [onclick];                example: "button = button1, 0, 0, 1902900064, HINTFUNC_1_BUTTON0;"
-----------------------------------------------------------------------------------------------------------------------------------------
]]

HintData[0] = { "1|HintDialog_0",
				"image = 1,1904100005,0,0,0,0;				edit = edit_no_use, 0, 0, 0, 0;				oninit = HINTFUNC_0_INIT;				position = 0,0;				image = 0,1904100010,0,0,0,0,0;				edit = e, 220, 100, 357, 68,, #COLORCOLOR_BROWN#   ��ӭ��������;������̤����;����;����������\n����Ҫ��������������������Ϸ�أ�#COLOREND#;				edit = e1, 230, 160, 100, 30, HINTFUNC_0_EDIT, #SELECT##COLORCOLOR_YELLOW#�������֣�����Ҫ#SELECTEND#;				button = b, 370, 165, 1904100074, HINTFUNC_0_BUTTON;"}

HintData[1] = { "1|HintDialog_1",
				"image = 1,1904100005,0,0,0,0; image = 5,1904100078,0,0,0,0;				oninit = HINTFUNC_1_INIT;				alive_time = 3000, HINTFUNC_1_ATIME;				timer = 10, HINTFUNC_1_TIMER;				edit = e, 0, 0, 1024, 0, HINTFUNC_1_EDIT;"}

HintData[2] = { "1|HintDialog_2",
				"image = 1,1904100005,0,0,0,0; image = 9,1904100092,10000,0,0,0;				oninit = HINTFUNC_2_INIT; timer = 10,HINTFUNC_2_TIMER;				alive_time = 60000,HINTFUNC_2_ATIME;				edit = e, 0, 0, 0, 0, HINTFUNC_2_ATIME;"}

HintData[20] = { "1|HintDialog_20",
				"image = 6,1904100001,0,0,244,70; image = 0,1904100013,10,0,0,0; image = 0,1904100016,98,65,0,0;				edit = e, 64, 0, 175, 64,, #COLORCOLOR_WHITE#\n��#COLORCOLOR_YELLOW#������#COLORCOLOR_WHITE#����ƶ�������#COLOREND#;				edit = e1, 76, 80, 80, 80, HINTFUNC_20_EDIT;				timer = 300, HINTFUNC_20_TIMER;				oninit = HINTFUNC_20_INIT;"}
				
HintData[21] = { "1|HintDialog_21",
				"script = |1005,HINTFUNC_21_SCRIPT;				image = 6,1904100001,0,0,264,88; image = 0,1904100014,10,10,0,0; image = 0,1904100016,108,83,0,0; image = 0,1043000016,94,115,0,0;				edit = e, 66, 0, 188, 88,, #COLORCOLOR_WHITE#\nһֱ#COLORCOLOR_YELLOW#��ס�Ҽ�#COLORCOLOR_WHITE#�������ܶ�������\n \nע�⣺�������ﶫ������ʱ�Ͳ�\n���ܲ��ˡ�#COLOREND#;				timer = 300, HINTFUNC_21_TIMER; ontimer = 1, 30, HINTFUNC_21_TIMER1;				oninit = HINTFUNC_21_INIT;"}



HintData[500] = {}       --�����¼���¼
