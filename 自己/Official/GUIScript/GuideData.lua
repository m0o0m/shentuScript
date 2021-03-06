--[[
type = 1:
data:父窗口 X坐标 Y坐标 宽度 高度 美女图片 是否点穿 箭头方向(0无1↑2↓3←4→) 延时关闭(秒) 内容
type = 2:
data:MagicID X坐标 Y坐标 播放速度 播放时间

条件:     名称               值                类型
        接取任务            任务id             状态
        接取任务事件        任务id             事件
        完成任务            任务id             状态
        完成任务事件        任务id             事件
        激活任务            任务id             状态
        激活任务事件        任务id             事件
        放弃任务事件        任务id             事件
        追踪点击事件        点击文字           事件
        打开引导            引导名称           状态
        打开引导事件        引导名称           事件
        关闭引导事件        引导名称           事件
        打开NPC事件         NPC索引名          事件
        打开面板事件        lay文件名          事件
        点击NPC文字事件     链接文字           事件
        点击控件事件        控件字符串标识     事件
		学习技能事件        无                 事件
]]

local LLW = 64
local LLH = 32

--新手引导开关
GuideSwitch = true

Guide = 
{
--示例：
--[[
	["新手上线"] = 
	{
		{--显示
			type = 1,
			data = 
			{
			"GameMainInterface,TaskWindow", -255, 35, 140, 40, 1904100071, true, 4, 0, "点击#COLORCOLOR_GREENG#[邻家妹妹]#COLOREND#，自动寻找 NPC",
			},
			delay = 100,
			flag = 1,
			init = "",
		},
		{--触发条件
			{
				{"激活任务事件", 1},
			},
		},
		{--关闭条件
			{
				{"打开引导事件", "引导提交任务"},
			},
			{
				{"追踪点击事件", "邻家妹妹"},
			},
			{
				{"完成任务事件", 1},
			},
			{
				{"放弃任务事件", 1},
			},
			{
				{"打开NPC事件", "邻家妹妹"},
			},
		},
		{--完成条件
			{
				{"完成任务", 1},
			},
		},
	},
	["引导提交任务"] = 
	{
		{--显示
			type = 1,
			data = 
			{
			"NpcTalk", 10, 295, 100, 60, 1904100071, true, 1, 0, " \n 点击这里\n#COLORCOLOR_SKYBLUE#[提交任务]#COLOREND#",
			},
			pre_script = "GuideFunc.rectify_open(\"NpcTalk\", 200, 180);",
			delay = 100,
			flag = 2,
			init = "",
		},
		{--触发条件
			{
				{"激活任务", 1},
				{"打开NPC事件", "邻家妹妹"},
			},
		},
		{--关闭条件
			{
				{"完成任务事件", 1},
			},
			{
				{"打开引导事件", "引导提交任务2"},
			},
		},
		{--完成条件
			{
				{"完成任务事件", 1},
			},
		},
	},]]
}


