HintData =
{
	DefAliveTime = 80000,
	NewRoleLevel = 40,
	e = {},
	n = {},
	t = {},
}

HintData.e[LUA_EVENT_ONLOGIN]            =Event_OnLogin                 --玩家登录事件
HintData.e[LUA_EVENT_INITRESCOMPLETE]    =Event_InitResComplete         --资源初始化完毕事件
--HintData.e[LUA_EVENT_GETNEWQUIST]        =Event_GetNewTask              --接取新任务事件
--HintData.e[LUA_EVENT_FINISHQUEST]        =Event_FinishTask              --完成任务事件
--HintData.e[LUA_EVENT_OPENQUESTGUI]       =Event_OpenTaskWindow          --打开任务面板事件
--HintData.e[LUA_EVENT_CLOSEQUESTGUI]      =Event_CloseTaskWindow         --关闭任务面板事件
--HintData.e[LUA_EVENT_OPENPAKAGEGUI]      =Event_OpenPackageWindow       --打开包裹事件
--HintData.e[LUA_EVENT_CLOSEPACKAGEGUI]    =Event_ClosePackageWindow      --关闭包裹事件
--HintData.e[LUA_EVENT_ONAPPLYITEM]        =Event_OnApplyItem             --使用物品事件
--HintData.e[LUA_EVENT_ONADDSKILL]         =Event_OnAddSkill              --学习技能成功事件
--HintData.e[LUA_EVENT_OPENSKILLGUI]       =Event_OpenSkillWindow         --打开技能面板事件
--HintData.e[LUA_EVENT_CLOSESKILLGUI]      =Event_CloseSkillWindow        --关闭技能面板事件
--HintData.e[Lua_EVENT_ONTEAMINVITE]       =Event_OnTeamInvite            --被邀请组队事件
--HintData.e[LUA_EVENT_OPENWAREHOUSEGUI]   =Event_OpenWareHouse           --打开仓库事件
--HintData.e[LUA_EVENT_ONTASKCANACCEPTTIP] =Event_OnTaskCanAcceptTip      --可接任务的提示
--HintData.e[LUA_EVENT_IMAGEMOVINGEND]     =Event_OnImageMovingEnd        --图片移动结束时的处理事件
--HintData.e[LUA_EVENT_CLOSEROLEGUI]       =Event_CloseRoleWindow         --关闭角色面板事件
--HintData.e[LUA_EVENT_MONSTERDIE]         =Event_MonsterDie              --怪死亡事件
--HintData.e[LUA_EVENT_ONENTERMAP]         =Event_OnEnterMap              --进入地图事件

--[[
IMAGE FLAG DEFINED:
	drawNormal       普通绘制
	drawFlat         平铺
	drawScale        缩放
	drawAlpha        透明
	drawFlatLR       左右平铺
	drawFlatTB       上下平铺
	drawFlatAround   四周平铺
	drawRollLR       左至右滚动
	drawRollTB       上至下滚动
	drawRollRL       右至左滚动
	drawRollBT       下至上滚动
-----------------------------------------------------------------------------------------------------------------------------------------
【script】     功能：注册脚本事件
               用法： 窗口描述 | {事件ID} , 调用函数 ;                     example: "script = Package,Item0 | 1002, HINTFUNC_1_SCRIPT0;"
【alive_time】 功能：显示多长时间自动关闭
               用法：{vlaue}, [func_name] ;                                example: "alive_time = 8000; HINTFUNC_1_ATIME0;"
【timer】      功能：主定时器
               用法：{value}, [func_name] ;                                example: "timer = 1000; HINTFUNC_1_TIMER1;"
【ontimer】    功能：普通定时器
               用法：{timerid}, {value}, [func_name] ;                     example: "ontimer = 1, 1000; HINTFUNC_1_TIMER1;"
【oninit】     功能：初始化完毕时回调脚本函数
               用法：lua_func_name, ...                                    example: "oninit = HINTFUNC_1_INIT0, HINTFUNC_1_INIT1;"
【onclose】    功能：当关闭时回调脚本函数
               用法：lua_func_name, ...                                    example: "onclose = HINTFUNC_1_CLOSE0;"
【image】      功能：添加显示图片
               用法：{flag}, {imageid}, {x}, {y}, {w}, {h}, [{alpha}] ;    example: "image = 0, 1900300005, 400, 100, 120, 200;"
【position】   功能：设定窗口位置
               用法：{x}, {y}                                              example: "position = 20, 80;"
【edit】       功能：添加编辑框控件
               用法： name, {x}, {y}, {w}, {h}, [onclick], [text];         example: "edit = Edit1, 0, 0, 100, 220, HINTFUNC_1_EDIT0, 欢迎来到神途世界;"
【button】     功能：添加按钮控件
               用法： name, {x}, {y}, {imageid}, [onclick];                example: "button = button1, 0, 0, 1902900064, HINTFUNC_1_BUTTON0;"
-----------------------------------------------------------------------------------------------------------------------------------------
]]

HintData[0] = { "1|HintDialog_0",
				"image = 1,1904100005,0,0,0,0;				edit = edit_no_use, 0, 0, 0, 0;				oninit = HINTFUNC_0_INIT;				position = 0,0;				image = 0,1904100010,0,0,0,0,0;				edit = e, 220, 100, 357, 68,, #COLORCOLOR_BROWN#   欢迎来到《神途》您将踏上神途的旅途，请问您是\n否需要我来给您介绍下我们游戏呢？#COLOREND#;				edit = e1, 230, 160, 100, 30, HINTFUNC_0_EDIT, #SELECT##COLORCOLOR_YELLOW#我是老手，不需要#SELECTEND#;				button = b, 370, 165, 1904100074, HINTFUNC_0_BUTTON;"}

HintData[1] = { "1|HintDialog_1",
				"image = 1,1904100005,0,0,0,0; image = 5,1904100078,0,0,0,0;				oninit = HINTFUNC_1_INIT;				alive_time = 3000, HINTFUNC_1_ATIME;				timer = 10, HINTFUNC_1_TIMER;				edit = e, 0, 0, 1024, 0, HINTFUNC_1_EDIT;"}

HintData[2] = { "1|HintDialog_2",
				"image = 1,1904100005,0,0,0,0; image = 9,1904100092,10000,0,0,0;				oninit = HINTFUNC_2_INIT; timer = 10,HINTFUNC_2_TIMER;				alive_time = 60000,HINTFUNC_2_ATIME;				edit = e, 0, 0, 0, 0, HINTFUNC_2_ATIME;"}

HintData[20] = { "1|HintDialog_20",
				"image = 6,1904100001,0,0,244,70; image = 0,1904100013,10,0,0,0; image = 0,1904100016,98,65,0,0;				edit = e, 64, 0, 175, 64,, #COLORCOLOR_WHITE#\n请#COLORCOLOR_YELLOW#鼠标左键#COLORCOLOR_WHITE#点击移动到这里#COLOREND#;				edit = e1, 76, 80, 80, 80, HINTFUNC_20_EDIT;				timer = 300, HINTFUNC_20_TIMER;				oninit = HINTFUNC_20_INIT;"}
				
HintData[21] = { "1|HintDialog_21",
				"script = |1005,HINTFUNC_21_SCRIPT;				image = 6,1904100001,0,0,264,88; image = 0,1904100014,10,10,0,0; image = 0,1904100016,108,83,0,0; image = 0,1043000016,94,115,0,0;				edit = e, 66, 0, 188, 88,, #COLORCOLOR_WHITE#\n一直#COLORCOLOR_YELLOW#按住右键#COLORCOLOR_WHITE#，快速跑动到这里\n \n注意：当背包里东西超重时就不\n能跑步了。#COLOREND#;				timer = 300, HINTFUNC_21_TIMER; ontimer = 1, 30, HINTFUNC_21_TIMER1;				oninit = HINTFUNC_21_INIT;"}



HintData[500] = {}       --挖肉事件记录
