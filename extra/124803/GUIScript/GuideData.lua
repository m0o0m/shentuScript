Guide =
{
	e = {},
	newflag = true,
}

Guide.e[LUA_EVENT_RELOADLUAEND]       =ReloadLuaEnd                  --重新加载脚本
Guide.e[LUA_EVENT_ONGUIDECREATE]      =OnGuideCreate                 --新手引导创建事件
Guide.e[LUA_EVENT_ONLOGIN]            =Event_OnLogin                 --玩家登录事件
Guide.e[LUA_EVENT_INITRESCOMPLETE]    =Event_InitResComplete         --资源初始化完毕事件
Guide.e[LUA_EVENT_OPENPAKAGEGUI]      =Event_OpenPackage             --打开包裹事件
Guide.e[LUA_EVENT_OPENSKILLGUI]       =Event_OpenSkill               --打开技能面板事件
Guide.e[LUA_EVENT_OPENQUESTGUI]       =Event_OpenQuest               --打开任务面板事件
Guide.e[LUA_EVENT_ONADDITEM]          =Event_OnAddItem               --包裹添加物品事件
Guide.e[LUA_EVENT_ONEQUIPMENT]        =Event_OnEquipment             --穿戴装备事件
Guide.e[LUA_EVENT_ONAPPLYITEM]        =Event_OnApplyItem             --使用物品事件
Guide.e[LUA_EVENT_ONADDSKILL]         =Event_OnAddSkill              --添加技能事件
Guide.e[LUA_EVENT_HORSEBUTTONCLICK]   =Event_OnHorseButtonClick      --玩家骑马事件
Guide.e[LUA_EVENT_GETNEWQUEST]        =Event_GetTask                 --接取任务事件
Guide.e[LUA_EVENT_FINISHQUEST]        =Event_FinishTask              --提交任务事件
Guide.e[LUA_EVENT_DROPQUEST]          =Event_DropQuest               --放弃任务事件
Guide.e[LUA_EVENT_OPENNPCTALK]        =Event_OpenNpcTalk             --打开NPC面板事件
Guide.e[LUA_EVENT_CLICKNPCTALKITEM]   =Event_ClickNpcTalkItem        --点击NPC面板链接事件
Guide.e[LUA_EVENT_ONENTERMAP]         =Event_OnEnterMap              --进入地图事件


Guide[0] = {"Guide0", Guide0}
Guide[1] = {"Guide1", Guide1}
--Guide[2] = {"Guide2", Guide2}
Guide[3] = {"Guide3", Guide3}
Guide[4] = {"Guide4", Guide4}
Guide[5] = {"Guide5|GameMainInterface,TaskWindow", Guide5}
Guide[6] = {"Guide6|GameMainInterface", Guide6}
Guide[7] = {"Guide7|QuestDlg", Guide7}
Guide[8] = {"Guide8|GameMainInterface", Guide8}
Guide[9] = {"Guide9|Package", Guide9}
Guide[10] = {"Guide10", Guide10}
Guide[11] = {"Guide11", Guide11}
Guide[12] = {"Guide12|Package", Guide12}
Guide[13] = {"Guide13", Guide13}
Guide[14] = {"Guide14", Guide14}
Guide[15] = {"Guide15", Guide15}
Guide[16] = {"Guide16", Guide16}
Guide[17] = {"Guide17", Guide17}
Guide[18] = {"Guide18|Package", Guide18}
Guide[19] = {"Guide19|GameMainInterface,SkillBar", Guide19}
Guide[20] = {"Guide20", Guide20}
Guide[21] = {"Guide21|Package", Guide21}
Guide[22] = {"Guide22|GameMainInterface", Guide22}
Guide[23] = {"Guide23|RoleSkill", Guide23}
Guide[24] = {"Guide24", Guide24}
Guide[25] = {"Guide25", Guide25}
Guide[26] = {"Guide26|Package", Guide26}
Guide[27] = {"Guide27|GameMainInterface", Guide27}
Guide[28] = {"Guide28", Guide28}

Guide[201] = {"Guide201", Guide201}
Guide[202] = {"Guide202", Guide202}
Guide[203] = {"Guide203", Guide203}
Guide[204] = {"Guide204", Guide204}



Guide[0][3] = "#COLORCOLOR_BROWN#   欢迎来到大型PK类网络游戏《神途英雄传》您将踏上神奇之途，请问您是否需要我来给您介绍下我们游戏呢？#COLOREND#"
--Guide[2][3] = "主线：龙城危殆 逆天反击  在神战中差点毁 灭的天藏大陆， 因神途的消失已 渐渐平静了近两 百年； 恶魔集结，灾然 袭击龙城，渐有 轮廓的龙城再次 遭到毁灭性打击 ；除此之外，恶 魔四处出击，作 为人类最大集结 地的巫山城，周 边也邪恶肆虐， 即使是大后方的 新手村也被恶 魔重重围困； 两百年后，恶魔 再次将人类逼入 绝境！  作为热爱和平的 你，只是接受了 最基本的体能训 练，但是，当恶 魔来临，你拿起 木棒，决然地走 向了龙城救援军 的招募处； 不经意间，你将 走向拯救世界的 道路！"
--Guide[2][4] = "#COLORCOLOR_BROWN#(点击跳过文字介绍)#COLOREND#"
Guide[3][3] = "#COLORCOLOR_BROWN#一直按住#COLORCOLOR_YELLOW#鼠标左键#COLORCOLOR_BROWN#，可以走路#COLOREND#"
Guide[4][3] = "\n#COLORCOLOR_BROWN#一直按住#COLORCOLOR_YELLOW#鼠标右键#COLORCOLOR_BROWN#，可以快速跑动\n#COLORCOLOR_RED#注意：#COLORCOLOR_BROWN#当背包里东西过多时就不能跑步了#COLOREND#"
Guide[5][3] = "#COLORCOLOR_BROWN#点击右边的#COLORCOLOR_GREENG#NPC#COLORCOLOR_BROWN#名字可以自动跑到NPC旁边#COLOREND#"
Guide[6][3] = "#COLORCOLOR_BROWN#按#COLORCOLOR_YELLOW# Ctrl + R #COLORCOLOR_BROWN#可以快速打开任务面板\n点击下面的#COLORCOLOR_YELLOW# 任务按钮 #COLORCOLOR_BROWN#也能打开任务面板#COLOREND#"
Guide[7][3] = "#COLORCOLOR_BROWN#点击这里可以查看当前进行中任务的详细信息#COLOREND#"
Guide[8][3] = "#COLORCOLOR_BROWN#按#COLORCOLOR_YELLOW# F9 #COLORCOLOR_BROWN#可以快速打开背包\n点击下面的#COLORCOLOR_YELLOW# 包裹按钮 #COLORCOLOR_BROWN#也能打开背包#COLOREND#"
Guide[9][3] = "#COLORCOLOR_YELLOW#右键#COLORCOLOR_BROWN#点击装备可以穿戴上装备哦#COLOREND#"
Guide[10][3] = "#COLORCOLOR_BROWN#有这种闪光的怪物的尸体都可以挖取物品\n按住#COLORCOLOR_YELLOW# Alt+鼠标左键 #COLORCOLOR_BROWN#点击尸体就可以挖取物品了#COLOREND#"
Guide[11][3] = "#COLORCOLOR_BROWN#白茅人很凶恶，穿上衣服可以增加一定的防御力，#COLOREND##COLORCOLOR_BROWN#将裁缝赠送的衣服穿上#COLOREND##SELECT##COLORCOLOR_YELLOW#打开包裹#SELECTEND#"
Guide[12][3] = "#COLORCOLOR_YELLOW#右键#COLORCOLOR_BROWN#点击衣服可以穿戴到角色身上#COLOREND#"
Guide[14][3] = "#COLORCOLOR_BROWN#恭喜你获得了#COLORCOLOR_YELLOW#小护腕#COLORCOLOR_BROWN#和#COLORCOLOR_YELLOW#草鞋#COLORCOLOR_BROWN#，赶快#COLOREND##SELECT##COLORCOLOR_YELLOW#打开包裹#SELECTEND##COLORCOLOR_BROWN#进行装备吧。#COLOREND#"
Guide[15][3] = "#COLORCOLOR_BROWN#快把#COLORCOLOR_YELLOW#小护腕#COLORCOLOR_BROWN#和#COLORCOLOR_YELLOW#草鞋#COLORCOLOR_BROWN#装备上吧，可以增加你的属性呦#COLOREND#"
Guide[16][3] = "#COLORCOLOR_BROWN#恭喜你获得了#COLORCOLOR_YELLOW#黄金项链#COLORCOLOR_BROWN#，赶快#COLOREND##SELECT##COLORCOLOR_YELLOW#打开包裹#SELECTEND##COLORCOLOR_BROWN#进行装备吧。#COLOREND#"
Guide[18][3] = "#COLORCOLOR_YELLOW#右键#COLORCOLOR_BROWN#点击解开打捆的药#COLOREND#"
Guide[19][3] = "#COLORCOLOR_BROWN#可以将药物#OFFSET<X:32,Y:0>#拖入下\n#OFFSET<X:0,Y:-10>#方快捷栏处使用哦#COLOREND#"
Guide[20][3] = "#COLORCOLOR_BROWN#，请#COLOREND##SELECT##COLORCOLOR_YELLOW#打开背包#SELECTEND##COLORCOLOR_BROWN#学习自己的职业技能吧。#COLOREND#"
Guide[21][3] = "#COLORCOLOR_BROWN#双击#COLORCOLOR_YELLOW#技能书#COLORCOLOR_BROWN#就可以学习技能了哦#COLOREND#"
Guide[22][3] = "#COLORCOLOR_BROWN#按#COLORCOLOR_YELLOW# F11 #COLORCOLOR_BROWN#可以快速打开技能面板\n点击#COLORCOLOR_YELLOW# 技能按钮 #COLORCOLOR_BROWN#也可以打开技能面板#COLOREND#"
Guide[23][3] = "#COLORCOLOR_BROWN#可以点击该处设置技能的快捷键，也可以将技能拖入下方的快捷栏使用#COLOREND#"
Guide[24][3] = "#COLORCOLOR_BROWN#恭喜你获得#COLORCOLOR_YELLOW#随机传送包#COLORCOLOR_BROWN#和#COLORCOLOR_YELLOW#回城卷包#COLORCOLOR_BROWN#，它们都具有很神奇的力量哦，等你使用后就知道了#COLOREND#"
Guide[25][3] = "#COLORCOLOR_BROWN#恭喜你获得了#COLORCOLOR_YELLOW#汗血宝马(24小时)#COLORCOLOR_BROWN#，快快#COLOREND##SELECT##COLORCOLOR_YELLOW#打开背包#SELECTEND##COLORCOLOR_BROWN#骑上它欢快地跑吧~#COLOREND#"
Guide[26][3] = "#COLORCOLOR_BROWN#右键点击可以装备上坐骑哦#COLOREND#"
Guide[27][3] = "#COLORCOLOR_BROWN#坐骑已经装备上啦，但是还得骑上它才能跑哦，按#COLORCOLOR_YELLOW# Ctrl+Q #COLORCOLOR_BROWN#或者点击右边的#COLORCOLOR_YELLOW# 骑乘按钮 #COLORCOLOR_BROWN#骑上它飞奔吧~~#COLOREND#"
Guide[28][3] = "#COLORCOLOR_BROWN#神魂火符技能需要装备“护身符”道具才能使用，护身符道具可以在杂货商处购买#COLOREND#"
Guide[202][3] = "主线：刀口舔血 英雄之怒  意识到退无可退 的人类，终于爆 发出前所未有的 力量，试图争夺 末日下的一线生 机。没有实力的 平民，正日以继 夜地生产物质。 勇敢的年青人， 拿起了任何一件 只要能对恶魔造 成伤害的武器， 幸好，恶魔对巫 山城的阴谋被顺 利颠覆！而你， 在这个过程中迅 速成长，你的实 力得到了承认。  你来到了龙城， 但是，你将遭遇 更为艰难的处境 ！面对着破碎的 城池和危机濒发 的局势，你将不 得不承担起守护 龙城、对抗恶魔 的责任！所谓“ 时无危局，何必 英雄”，困境， 将成为英雄成长 的沃土！"
Guide[202][4] = "#COLORCOLOR_BROWN#(点击跳过文字介绍)#COLOREND#"
Guide[204][3] = "主线：剑指天遥 铁血铸城  人类复兴的脚步 无可阻挡，经过 卓绝的战斗，人 类终于击退邪恶 ，稳定了龙城。 这个在神战中近 乎毁灭的城市， 终于开始成为人 类的乐园。  在这种令人振奋 的形势下，人类 发出了收复失地 ，彻底消灭邪恶 的呐喊！在这个 反攻的狂潮之中 ，你与同伴进入 西方的荒漠之地 ，一片被恶魔和 神战彻底摧毁的 土地，一片因死 亡和恐惧而被遗 忘的死亡之地 ，废墟、荒芜、 枯骨，一个个让 人震撼的毁灭场 景出现在人类眼 前，让人荒冷和 悲伤，直到东临 城的发现。"
Guide[204][4] = "#COLORCOLOR_BROWN#(点击跳过文字介绍)#COLOREND#"





function Guide_PrepareString(str, x, y, hdisp, vdisp, fontsize)
	if str == nil then return false end
	if hdisp == nil then hdisp = 10 end
	if vdisp == nil then vdisp = 4 end
	if fontsize == nil then fontsize = 16 end
	Guide_PrepareString_str = str
	Guide_PrepareString_length = string.len(str)
	Guide_PrepareString_pos = 1
	Guide_PrepareString_xpos = x
	Guide_PrepareString_ypos = y
	Guide_PrepareString_y = y
	Guide_PrepareString_hdisp = hdisp
	Guide_PrepareString_vdisp = vdisp
	Guide_PrepareString_fontsize = fontsize
	return true
end

function Guide_GetString()
	if Guide_PrepareString_pos > Guide_PrepareString_length then return "",0 end
	local ret = ""
	local num = 0
	local flag = string.byte(Guide_PrepareString_str, Guide_PrepareString_pos)
	while flag ~= 0x20 do
		if Guide_PrepareString_pos > Guide_PrepareString_length then break end
		local s
		if flag < 0x80 then
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		else
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos + 1)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 2
		end
		num = num + 1
		ret = ret.."#POS<X:"..Guide_PrepareString_xpos..",Y:"..Guide_PrepareString_ypos..">#"..s
		Guide_PrepareString_ypos = Guide_PrepareString_ypos + Guide_PrepareString_fontsize + Guide_PrepareString_vdisp
		flag = string.byte(Guide_PrepareString_str, Guide_PrepareString_pos)
	end
	if Guide_PrepareString_pos <= Guide_PrepareString_length then
		Guide_PrepareString_xpos = Guide_PrepareString_xpos - Guide_PrepareString_fontsize - Guide_PrepareString_hdisp
		Guide_PrepareString_ypos = Guide_PrepareString_y
		Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		if ret == "" then return Guide_GetString() end
	end
	return ret, num
end

function Guide_GetString2()
	if Guide_PrepareString_pos > Guide_PrepareString_length then return "" end
	local ret = ""
	local flag = string.byte(Guide_PrepareString_str, Guide_PrepareString_pos)
	if flag == 0x20 then
		Guide_PrepareString_xpos = Guide_PrepareString_xpos - Guide_PrepareString_fontsize - Guide_PrepareString_hdisp
		Guide_PrepareString_ypos = Guide_PrepareString_y
		Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		return Guide_GetString()
	else
		local s
		if flag < 0x80 then
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 1
		else
			s = string.sub(Guide_PrepareString_str, Guide_PrepareString_pos, Guide_PrepareString_pos + 1)
			Guide_PrepareString_pos = Guide_PrepareString_pos + 2
		end
		ret = "#POS<X:"..Guide_PrepareString_xpos..",Y:"..Guide_PrepareString_ypos..">#"..s
		Guide_PrepareString_ypos = Guide_PrepareString_ypos + Guide_PrepareString_fontsize + Guide_PrepareString_vdisp
	end
	return ret
end


--[[
========================新手引导增强版table设计说明========================
示例： "键值" = {"父窗口描述", 是否辅助创建, X坐标, Y坐标, 宽度, 高度, 是否使用美女图片, 是否可点穿, 箭头方向, 存留时间, 关闭按钮, 初始化函数, 关联标记, 显示内容字符串}
说明：
     键值：任务名 也即窗口ID 须全局唯一
	 父窗口描述：基于哪个父窗口创建 通用窗口描述字符串 多层窗口之间用英文状态下的逗号隔开
	 是否辅助创建：此标记对后面的几个参数(X坐标, Y坐标, 宽度, 高度, 是否使用美女图片, 是否可点穿, 箭头方向, 显示内容字符串)有效 若为false则忽略这几个标记
	 X坐标：有效矩形框的水平坐标 不包括箭头
	 Y坐标：有效矩形框的垂直坐标 不包括箭头
	 宽度：文本框的宽度
     高度：文本框的高度
	 是否使用美女图片：若为true则添加美女图片的半身像
	 是否可点穿：标识有效矩形框是否可以点穿
	 箭头方向：标识箭头方向 1代表↑ 2代表↓ 3代表← 4代表→ 其它代表不使用箭头
	 存留时间：规定此引导窗口多长时间后自动关闭，单位秒。如果为0，则忽略此项
	 关闭按钮：是否添加默认关闭按钮，true表示添加 false表示不添加
	 初始化函数：若此项不为nil则当窗口创建完成后会回调此函数
	 关联标记：第一次标记 关联到文件GameEventFlag.dat文件
	 显示内容字符串：文本框显示的内容
]]

GuideEx =
{
	["挑战封魔阵"] = {"NpcTalk", true, 150, 160, 140, 40, 1904100071, true, 1, 0, false, GuideInit_Tiaozhanfengmozhen, nil, "点击这里进入#COLORCOLOR_YELLOW#封魔阵#COLOREND#\n  击败#COLORCOLOR_YELLOW#封魔阵#COLOREND#内的怪物可以获得大量#COLORCOLOR_YELLOW#经验#COLOREND#"},
	["进入封魔阵"] = {"NpcTalk", true, 160, 200, 150, 40, 1904100071, true, 1, 0, false,GuideInit_Jinrufengmozhen, 29, "入场需要消耗1个#COLORCOLOR_YELLOW#镇魂笛#COLOREND#\n  #COLORCOLOR_YELLOW#镇魂笛#COLOREND#在#COLORCOLOR_YELLOW#杂货商#COLOREND#处出售\n每天可进入封魔阵#COLORCOLOR_YELLOW#3次#COLOREND#		"},
	["挑战试炼场"] = {"NpcTalk", true, 178, 175, 140, 40, 1904100071, true, 1, 0, false,GuideInit_Tiaozhanshilianchang, nil, "点击这里进入#COLORCOLOR_YELLOW#试炼场#COLOREND#\n  场内的怪物有几率掉落#COLORCOLOR_YELLOW#试炼凭证#COLOREND#"},
	["进入试炼场"] = {"NpcTalk", true, 182, 190, 140, 53, 1904100071, true, 1, 0, false,GuideInit_Jinrushilianchang, 30, "#COLORCOLOR_YELLOW#试炼凭证#COLOREND#可以在#COLORCOLOR_YELLOW#试炼教头#COLOREND#处#COLORCOLOR_YELLOW#兑换经验#COLOREND#\n  每天可进入试炼场#COLORCOLOR_YELLOW#3次#COLOREND#，每场持续#COLORCOLOR_YELLOW#15分钟#COLOREND#"},
	["挑战秘海封印"] = {"NpcTalk", true, 127, 206, 160, 40, 1904100071, true, 1, 0, false,GuideInit_Tiaozhanmihaifengyin, 31, "点击这里进入#COLORCOLOR_YELLOW#秘海封印#COLOREND#\n #COLORCOLOR_YELLOW#前期#COLOREND#可获得大量#COLORCOLOR_YELLOW#经验#COLOREND#\n #COLORCOLOR_YELLOW#后期#COLOREND#可获得大量#COLORCOLOR_YELLOW#金币#COLOREND#"},
	["进入秘海封印"] = {"NpcTalk", true, 166, 135, 80, 40, 1904100071, true, 1, 0, false,GuideInit_Jinrumihaifengyin, 31, "进入秘海封印\n秘海封印哈哈"},
	["悬赏任务1"] = {"NpcTalk", true, 150, 128, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Xuanshangrenwu1, nil, "\n  进入悬赏任务界面"},
	["悬赏任务2"] = {"NpcTalk", true, 140, 185, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Xuanshangrenwu2, nil, "    查看悬赏任务\n任务有五种品质，#COLORCOLOR_YELLOW#品质越高#COLOREND#获得的#COLORCOLOR_YELLOW#经验越高#COLOREND#"},
	["悬赏任务3"] = {"NpcTalk", true, 122, 85, 150, 50, 1904100071, true, 1, 0, false,GuideInit_Xuanshangrenwu3, nil, "    点击领取悬赏任务\n  每日可做#COLORCOLOR_YELLOW#十次#COLOREND#悬赏任务，环数越高经验越高\n#COLORCOLOR_YELLOW#放弃任务环数则重新计数#COLOREND#"},
	["领取悬赏任务"] = {"NpcTalk", true, 140, 185, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Lingquxuanshangrenwu, 32, "确定#COLORCOLOR_YELLOW#领取#COLOREND#悬赏任务\n拥有#COLORCOLOR_YELLOW#循环魔咒#COLOREND#可以刷新任务品质"},
	["提交悬赏任务1"] = {"NpcTalk", true, 150, 131, 130, 40, 1904100071, true, 1, 0, false, GuideInit_Tijiaoxuanshangrenwu, nil, "悬赏任务已经完成，点击这里提交任务"},
	["提交悬赏任务"] = {"NpcTalk", true, 265, 185, 130, 40, 1904100071, true, 1, 0, false,GuideInit_Tijiaoxuanshangrenwu, 33, "\n  #COLORCOLOR_YELLOW#提交#COLOREND#悬赏任务"},
	["魔咒刷新"] = {"NpcTalk", true, 290, 180, 200, 40, 1904100071, true, 1, 0, false,GuideInit_Mozhoushuaxin, 34, "发现你包裹里有#COLORCOLOR_YELLOW#循环魔咒#COLOREND#\n点击这里#COLORCOLOR_YELLOW#刷新#COLOREND#任务品质\n#COLORCOLOR_YELLOW#任务品质越高#COLOREND#，获得的#COLORCOLOR_YELLOW#经验也越高#COLOREND#"},
	["完成悬赏任务"] = {"", true, 400, 400, 120, 60, 1904100071, true, 0, 10, false,GuideInit_Tongyongweizhitishikuang, 35, "恭喜你完成了悬赏任务\n#COLORCOLOR_YELLOW#循环魔咒#COLOREND#可以从妖山暗穴的怪物身上获得"},
	--["巫山城_1"] = {"", true, 0, 0, 120, 100, 1904100102, true, 0, 30, false,GuideInit_Tongyongweizhitishikuang, 36, "跳转到巫山城\n巫山城哈哈"},
	["秘海封印_1"] = {"", true, 0, 0, 120, 100, 1904100102, true, 0, 30, false,GuideInit_Tongyongweizhitishikuang, 37, "\n\n请打开包裹，右键点击#COLORCOLOR_YELLOW#召唤石#COLOREND#建造守护者进行防守"},
}

--[[
========================GuideEx函数说明========================
GuideEx.Open        显示新手引导
GuideEx.IsOpened    某新手引导是否正在显示
GudieEx.Close       关闭某新手引导
GuideEx.CloseAll    关闭所有引导
GuideEx.HasDone     某事件是否已经做过
GuideEx.Do          设置事件标记为已做
]]

GuideEx.Open = function(GuideID)
	if GuideID == nil then return end
	if GuideEx[GuideID] == nil then return end
	local tbl = GuideEx[GuideID]
	if tbl[1] == nil then return end
	local parent = GetWindow(nil, tbl[1])
	if parent == 0 then return end
	if WndFindChild(parent, nil, GuideID) ~= 0 then return end
	local assist = false
	if tbl[2] ~= nil and true == tbl[2] then
		assist = true
	end
	local this = CreateImage(parent, nil, 0, 0, 0, 0, 0, GuideID, 0, "")
	if this == 0 then return end
	if assist then
		local x = 0 --X坐标
		if nil ~= tbl[3] then
			x = tbl[3]
		end
		local y = 0 --Y坐标
		if nil ~= tbl[4] then
			y = tbl[4]
		end
		local cx = 0 --宽度
		if nil ~= tbl[5] then
			cx = tbl[5]
		end
		local cy = 0 --高度
		if nil ~= tbl[6] then
			cy = tbl[6]
		end
		local use_girl_picture = false --美女图片
		if nil ~= tbl[7] and true == tbl[7] then
			tbl[7] = 1904100071
		end
		if nil ~= tbl[7] and 0 ~= tbl[7] and UI:Lua_IsTextureExists(tbl[7]) then
			use_girl_picture = true
		end
		local can_mouse_through = false --是否可点穿
		if nil ~= tbl[8] and true == tbl[8] then
			can_mouse_through = true
		end
		local arrow_direction = 0 --箭头方向
		if nil ~= tbl[9] and tbl[9] >= 1 and tbl[9] <= 4 then
			arrow_direction = tbl[9]
		end
		local live_time = 0 --存留时间
		if nil ~= tbl[10] and 0 ~= tbl[10] then
			live_time = tbl[10] * 1000
		end
		local close_button = false --关闭按钮
		if nil ~= tbl[11] and true == tbl[11] then
			close_button = true
		end
		local text = "" --显示文本
		if nil ~= tbl[14] then
			text = tbl[14]
		end
		WndSetPos(this, nil, x, y)
		if live_time > 0 then
			WndAddTimerBrief(this, nil, live_time, "GuideCloseTimerProc")
		end

		local girl_width = 0
		local girl_height = 0
		if tbl[7] ~= 0 then
			if UI:Lua_GetTextureWidth(tbl[7]) then
				girl_width = LuaRet
			end
			if UI:Lua_GetTextureHeight(tbl[7]) then 
				girl_height = LuaRet
			end
			if tbl[7] == 1904100102 then
				girl_width = 180
			end
		end
		local margin = 10
		if true == close_button then
			margin = 12
		end
				
		local panel_width = cx + margin * 2 --底部面板控件
		if use_girl_picture then
			panel_width = panel_width + girl_width
		end
		local panel_height = cy + margin * 2
		local panel = CreateImage(this, nil, 0, 0, 0, panel_width, panel_height, "Panel", 0, "")
		ImageSetAroundImage(panel, nil, 1904100001, 1904100002, 1904100003, 1904100004, 1904100005, 1904100006, 1904100007, 1904100008, 1904100009)
		if can_mouse_through then
			WndSetCanRevMsg(panel, nil, false)
		end

		if true == close_button then --关闭按钮控件
			local close_posx = panel_width - 18
			local close_posy = -10
			local close_width = 28
			local close_height = 27
			local close = CreateButton(this, nil, 1900111000, close_posx, close_posy, close_width, close_height, "Close", 0, "")
			WndRegistScript(close, nil, RDWndBaseCL_mouse_lbUp, "GuideCloseLButtonUp")
		end

		if use_girl_picture then --美女图片控件
			local girl_posx = 0
			local girl_posy = cy + margin * 2 - girl_height
			local girl = CreateImage(this, nil, tbl[7], girl_posx, girl_posy, girl_width, girl_height, "Girl", 0, "")
			if can_mouse_through then
				WndSetCanRevMsg(girl, nil, false)
			end
		end

		if text ~= "" then --编辑框控件
			local edit_posx = margin
			if use_girl_picture then
				edit_posx = edit_posx + girl_width
			end
			local edit_posy = margin
			local edit = CreateRichEdit(this, nil, 0, edit_posx, edit_posy, cx, cy, "Edit", 0, "")
			RichEditSetEnable(edit, nil, false)
			WndSetCanRevMsg(edit, nil, false)
			RichEditAppendString(edit, nil, text)
		end

		if 0 ~= arrow_direction then --箭头控件
			local arrow_offset = 10
			local arrow_image = 0
			local arrow_posx = 0
			local arrow_posy = 0
			local arrow_width = 0
			local arrow_height = 0
			local arrow_next_posx = 0
			local arrow_next_posy = 0
			if arrow_direction == 1 then --向上↑
				arrow_image = 1904100100
				arrow_width = 57
				arrow_height = 57
				arrow_posx = (panel_width - arrow_width) / 2
				arrow_posy = -arrow_height + 8
				arrow_next_posx = arrow_posx
				arrow_next_posy = arrow_posy - arrow_offset
			elseif arrow_direction == 2 then --向下↓
				arrow_image = 1904100016
				arrow_width = 37
				arrow_height = 57
				arrow_posx = (panel_width - arrow_width) / 2
				arrow_posy = panel_height - 5
				arrow_next_posx = arrow_posx
				arrow_next_posy = arrow_posy + arrow_offset
			elseif arrow_direction == 3 then --向左←
				arrow_image = 1904100101
				arrow_width = 57
				arrow_height = 57
				arrow_posx = -arrow_width + 5
				arrow_posy = (panel_height - arrow_height) / 2
				arrow_next_posx = arrow_posx - arrow_offset
				arrow_next_posy = arrow_posy
			else --向右→
				arrow_image = 1904100099
				arrow_width = 57
				arrow_height = 57
				arrow_posx = panel_width - 5
				arrow_posy = (panel_height - arrow_height) / 2
				arrow_next_posx = arrow_posx + arrow_offset
				arrow_next_posy = arrow_posy
			end
			local arrow = CreateImage(this, nil, arrow_image, arrow_posx, arrow_posy, arrow_width, arrow_height, "Arrow", 0, "")
			WndSetCanRevMsg(arrow, nil, false)
			WndAddTimerBrief(arrow, nil, 300, "GuideArrowTimerProc")
			WndAddProperty(arrow, nil, "x", tostring(arrow_posx))
			WndAddProperty(arrow, nil, "y", tostring(arrow_posy))
			WndAddProperty(arrow, nil, "next_x", tostring(arrow_next_posx))
			WndAddProperty(arrow, nil, "next_y", tostring(arrow_next_posy))
			WndAddProperty(arrow, nil, "use_next", "1")
		end
	end
	if nil ~= tbl[12] then
		tbl[12](this)
	end
end

function GuideCloseTimerProc(handle)
	WndClose(handle)
end

function GuideCloseLButtonUp(handle, param, x, y)
	if not WndPtInWindow(handle, nil, x, y) then return end
	local this = WndGetParent(handle)
	if 0 ~= this then
		WndClose(this)
	end
end

function GuideArrowTimerProc(handle)
	local use_next = tonumber(WndGetProperty(handle, nil, "use_next"))
	local posx = 0
	local posy = 0
	if use_next == 0 then
		posx = tonumber(WndGetProperty(handle, nil, "x"))
		posy = tonumber(WndGetProperty(handle, nil, "y"))
		WndAddProperty(handle, nil, "use_next", "1")
	else
		posx = tonumber(WndGetProperty(handle, nil, "next_x"))
		posy = tonumber(WndGetProperty(handle, nil, "next_y"))
		WndAddProperty(handle, nil, "use_next", "0")
	end
	WndSetPos(handle, nil, posx, posy)
end

GuideEx.IsOpened = function(GuideID)
	if GuideID == nil or GuideEx[GuideID] == nil then return false end
	if WndFindChild(nil, GuideEx[GuideID][1], GuideID) == 0 then return false end
	return true
end

GuideEx.Close = function(GuideID)
	if GuideID == nil or GuideEx[GuideID] == nil then return end
	local this = WndFindChild(nil, GuideEx[GuideID][1], GuideID)
	if 0 ~= this then
		WndClose(this, nil)
	end
end

GuideEx.CloseAll = function()
	for k,v in pairs(GuideEx) do
		if type(v) == "table" and v[1] ~= nil then
			local this = WndFindChild(nil, v[1], k)
			if 0 ~= this then
				WndClose(this, nil)
			end
		end
	end
end

GuideEx.HasDone = function(GuideID)
	if GetFlag(1023) == 1 then return true end
	if GuideID == nil or GuideEx[GuideID] == nil then return true end
	local tbl = GuideEx[GuideID]
	if tbl[13] == nil then return true end
	local flag = tbl[13]
	return GetFlag(flag) == 1
end

GuideEx.Do = function(GuideID)
	if GuideID == nil or GuideEx[GuideID] == nil then return end
	local tbl = GuideEx[GuideID]
	if tbl[13] == nil then return end
	SetFlag(tbl[13])
end