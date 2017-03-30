local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/礼包激活码")

gQuestMap =
{
   {1101, "QuestAccept1101", "QuestAccomplish1101","*01*任务: 世界", "*01*完成任务: 世界（辟岭村）"},
   {1102, "QuestAccept1102", "QuestAccomplish1102","*01*任务: 天书", "*01*完成任务: 天书"},
   {1103, "QuestAccept1103", "QuestAccomplish1103","*01*任务: 操作", "*01*完成任务: 操作"},
   {1104, "QuestAccept1104", "QuestAccomplish1104","*01*任务: 战斗实践", "*01*完成任务: 战斗实践"},
   {1105, "QuestAccept1105", "","01*任务: 穿戴装备", ""},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"请点我，我可以告诉你很多事情哦。", "你有什么不明白的我都可以告诉你。", "请和我说说话吧，勇士，我可以引导你走上正确的道路。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 10000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end



function main(npc, player)

    local msg = "    你是一只小小鸟……，呃……嗯嗯！欢迎来到神途的世界！身为前辈的我，遇上了你，真是你的荣幸啊！因为从我这里，你可以尽快熟悉游戏哦！\n"
	msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
    msg = msg.."#OFFSET<X:10,Y:0>##IMAGE1902700017# <@wupin *01*物品使用指南>"
	msg = msg.."#OFFSET<X:17,Y:0>##IMAGE1902700017# <@caozuo *01*操作指南>"
    msg = msg.."#OFFSET<X:44,Y:0>##IMAGE1902700017# <@kuaijiejian *01*快捷键指南>\n"
	msg = msg.."#OFFSET<X:10,Y:0>##IMAGE1902700017# <@zhandou *01*战斗指南>"
	msg = msg.."#OFFSET<X:42,Y:0>##IMAGE1902700017# <@mingling *01*发言指南>"
	msg = msg.."#OFFSET<X:44,Y:0>##IMAGE1902700017# <@jineng *01*技能指南>\n"
--	msg = msg.."#OFFSET<X:36,Y:0>##IMAGE1902700031# <@jihuo *01*领取VIP礼包>"
--  msg = msg.."#OFFSET<X:10,Y:0>##IMAGE1902700031# <@huigui_libao *01*领取回归礼包>"
--  msg = msg.."#OFFSET<X:20,Y:0>##IMAGE1902700031# <@fengce *01*领取封测礼包>"
--  msg = msg.."#OFFSET<X:20,Y:0>##IMAGE1902700031# <@huangjin_libao *01*领取黄金大礼包> \n"
    msg = msg.."#COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."#OFFSET<X:40,Y:0>##IMAGE1902700017# <@lingqutianshu *01*领取天书>"
	msg = msg.."#OFFSET<X:150,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:0>#<@Lever *01*「离开」>\n"
--    msg = msg.."<@web *01*                                      官方主页: www.173uu.com>"

    return msg
end

function wupin(npc, player)
   msg = "首先，按下F9（包裹窗口）和F10（人物属性面板）打开对应面板。\n直接双击物品，你就可以将装备穿戴上去，如果是其他的功能道具，双击则使用该道具！\n道具移动：用鼠标左键点击提起，再点击放下\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function caozuo(npc, player)
   msg = "鼠标左键 : 作为脚本的行动、移动、攻击，移动物品等。\n鼠标右键 : 在游戏界面内点击右键可以跑步\nShift+左键:强行攻击\nCTRL+右键 : CTRL+右键点击玩家可以查看对方信息\nAlt+左键 : 挖取怪物尸体可以获得物品\n左键双击或右键单击 : 使用物品，携带装备\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function zhandou(npc, player)
   msg = "基本上来说，你都可以利用左键来进行攻击，如果你不能进行攻击，你可以按住Shift+左键来强行攻击\n 对于那些死去的鹿、鸡等，你可以在他们的尸体上采集获得相应物品。\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function mingling(npc, player)
   msg = "附近发言 : 在聊天框输入文字发送后为附近发言\n私聊 : 你可以右键点击目标头像选择私聊选项，或者以/ + 对象名称发送私聊\n喊话 : 以!开头输入文字发送后为喊话（信息颜色是黄色的，但有时间限制）\n组队发言 : 以!!开头输入文字发送后为只发送给组队成员\n行会发言 : 以!~开头输入文字发送后为只发送给行会成员\n喇叭发言 : 选择聊天框喇叭喊话，发送后在特殊频道显示，但每次需要消耗一个小喇叭\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function jineng(npc, player)
   msg = "每个职业能够学习技能的等级要求都是7级，战士可以学习《剑术心法》，法师可以学习《炎球术》，道士可以学习《治疗咒》。\n这些书都可以在各地的书店中买到的，等级提升之后，还可以学习其他更高级的技能。\n \n但这些书无法在书店买到，你只能通过击败怪物获得！\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function kuaijiejian(npc, player)
   msg = "#COLORCOLOR_YELLOW#0~9#COLOREND#   #OFFSET<X:2,Y:0>#：快捷栏按键（可以放置技能和辅助道具）\n#COLORCOLOR_YELLOW#F1~F8#COLOREND# #OFFSET<X:3,Y:0>#：技能绑定按键（可以设定为技能快捷键）\n#COLORCOLOR_YELLOW#F9#COLOREND#    #OFFSET<X:3,Y:0>#：打开包裹界面#COLORCOLOR_YELLOW#\nF10#COLOREND#   #OFFSET<X:4,Y:0>#：打开角色界面\n#COLORCOLOR_YELLOW#F11#COLOREND#   #OFFSET<X:5,Y:0>#：打开技能界面\n#COLORCOLOR_YELLOW#F12#COLOREND#   #OFFSET<X:4,Y:0>#：打开游戏性设置\n#COLORCOLOR_YELLOW#~#COLOREND#     #OFFSET<X:2,Y:0>#：快捷拾取物品\n#COLORCOLOR_YELLOW#TAB#COLOREND#   #OFFSET<X:2,Y:0>#：开启/关闭大地图窗口\n#COLORCOLOR_YELLOW#PAUSE#COLOREND# #OFFSET<X:1,Y:0>#：截屏按键\n#COLORCOLOR_YELLOW#SHIFT#COLOREND# #OFFSET<X:2,Y:0>#：按住强制攻击目标\n#COLORCOLOR_YELLOW#ALT#COLOREND#   #OFFSET<X:1,Y:0>#：按住显示地上的物品\n#COLORCOLOR_YELLOW#Enter#COLOREND# #OFFSET<X:2,Y:0>#：激活聊天窗口\n#COLORCOLOR_YELLOW#空格#COLOREND#  #OFFSET<X:1,Y:0>#：激活聊天窗口\n#COLORCOLOR_YELLOW#/#COLOREND#     #OFFSET<X:3,Y:0>#：激活私聊频道\n#COLORCOLOR_YELLOW#ESC#COLOREND#   #OFFSET<X:3,Y:0>#：关闭当前窗口\n#COLORCOLOR_YELLOW#CTRL+Q#COLOREND##OFFSET<X:1,Y:0>#：上下坐骑\n#COLORCOLOR_YELLOW#CTRL+S#COLOREND##OFFSET<X:1,Y:0>#：切换当前目标并锁定新目标\n#COLORCOLOR_YELLOW#CTRL+Z#COLOREND##OFFSET<X:1,Y:0>#：隐藏周围的其他玩家和怪物\n#COLORCOLOR_YELLOW#CTRL+B#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“商城”界面\n#COLORCOLOR_YELLOW#CTRL+A#COLOREND#：切换宠物AI模式（休息，攻击）\n#COLORCOLOR_YELLOW#CTRL+H#COLOREND#：切换攻击模式\n#COLORCOLOR_YELLOW#CTRL+T#COLOREND##OFFSET<X:1,Y:0>#：激活组队聊天窗口\n#COLORCOLOR_YELLOW#CTRL+D#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“队伍”窗口\n#COLORCOLOR_YELLOW#CTRL+F#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“社交”界面\n#COLORCOLOR_YELLOW#CTRL+G#COLOREND#：打开/关闭“行会”界面\n#COLORCOLOR_YELLOW#CTRL+Y#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“成就”界面\n#COLORCOLOR_YELLOW#CTRL+R#COLOREND#：打开/关闭“任务”界面\n#COLORCOLOR_YELLOW#CTRL+N#COLOREND#：打开/关闭“活动日历”界面\n#COLORCOLOR_YELLOW#CTRL+鼠标右键#COLOREND#：查看目标角色界面\n#COLORCOLOR_YELLOW#CTRL+鼠标左键#COLOREND#：选中目标\n#COLORCOLOR_YELLOW#ALT+~#COLOREND# ：锁定聊天窗口滚动\n#COLORCOLOR_YELLOW#ALT+S#COLOREND# #OFFSET<X:1,Y:0>#：将鼠标指向的目标角色加入仇人列表\n#COLORCOLOR_YELLOW#ALT+E#COLOREND# #OFFSET<X:1,Y:0>#：将鼠标指向的目标角色从队伍中移除\n#COLORCOLOR_YELLOW#ALT+F#COLOREND# #OFFSET<X:1,Y:0>#：将鼠标指向的目标加为好友\n#COLORCOLOR_YELLOW#ALT+T#COLOREND# #OFFSET<X:1,Y:0>#：向鼠标指向的目标角色发出交易请求\n#COLORCOLOR_YELLOW#ALT+W#COLOREND# #OFFSET<X:1,Y:0>#：向鼠标指向的目标角色发出组队请求\n#COLORCOLOR_YELLOW#ALT+Z#COLOREND# #OFFSET<X:1,Y:0>#：开启/关闭自动红绿毒\n#COLORCOLOR_YELLOW#ALT+X#COLOREND# #OFFSET<X:1,Y:0>#：退回角色选择界面\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function lingqutianshu(npc, player)
    local level = lualib:Player_GetIntProp(player, lua_role_level)
    if level > 71 then return "你已经不是新手了，无法领取！" end
    if lualib:Player_GetItemCount(player, "天书") < 1 then
        lualib:Player_GiveItemBind(player, "天书", 1, "给物品：天桑村引导员", player)
    end
    return "物品领取成功！\n \n \n \n \n \n \n                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
end

--function web(npc, player)
--    lualib:SysMsg_SendWebMsg(player, "神途官方网站", "http://www.173uu.com", "")
--    return ""
--end
-------1101接
function QuestAccept1101(npc,player)
    msg = "无数前辈以血肉铸建的龙城，如今再次遭到侵袭！我们要团结起来，保卫我们的家园，勇士，希望你能与我们一起去龙城，抵御怪物！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1101 *01*保家卫国，抵御妖魔！>\n"
	return msg
end

function Accept1101(npc, player)
    if lualib:AcceptQuest(player, 1101) == true then
        msg = "点击#COLORCOLOR_GREENG# #NPCLINK<STR:辟岭村引导员,NPCID:1001>##COLOREND#完成任务\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1101 *01*完成任务>\n"
		return msg
    else
        return "任务接取失败"
    end
end

-------1101交

function QuestAccomplish1101(npc, player)
    msg = "[F12]可祝你一臂之力，需要更多的帮助可以看看操作指南。\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1101a *01* F12>\n"
    return msg
end

function Accomplish1101a(npc, player)
    msg = "我会给你指点迷津，会赠送你一些天机之言！你可点击小地图旁边的【？】图标查看。同时你也可以打开包裹[F9]查看【天书】，上面记载着很多天机！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1101b *01* 【？】图标和包裹里的天书！我记住了！>\n"
    return msg
end

function Accomplish1101b(npc, player)
    if lualib:AccomplishQuest(player, 1101, 0) == true then
        msg = "任务完成，继续下一个任务！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1102 *01*知道了,接取任务 ： 天书>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1102接
function QuestAccept1102(npc,player)
    msg = "记住，你每升一级，天书里的内容都有变化！它会指引你去什么地方，打什么怪，学什么技能，以及穿戴什么装备！天书将陪伴你渡过22级，22级之后你就得靠自己的能力去探索了！这个世界有很多秘密需要你去开启……\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1102 *01*天书会指引我每级干什么！>\n"
	return msg
end

function Accept1102(npc, player)
    if lualib:AcceptQuest(player, 1102) == true then
        msg = "点击#COLORCOLOR_GREENG# #NPCLINK<STR:辟岭村引导员,NPCID:1001>##COLOREND#完成任务\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1102 *01*完成任务>\n"
		return msg
    else
        return "任务接取失败"
    end
end

-------1102交
function QuestAccomplish1102(npc, player)
    msg = "在去龙城保卫家园之前，我得训练你一些基本的操作：\n走路：用鼠标左键点击空地，可以朝空地的方向走动一步，长按左键，可一直朝那个方向走动\n跑步：用鼠标右键点击空地，可以朝空地的方向跑动两步，长按右键，可一直朝那个方向跑动\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1102 *01* 鼠标左键点空地走路，鼠标右键点空地跑步>\n"
    return msg
end

function Accomplish1102(npc, player)
    if lualib:AccomplishQuest(player, 1102, 0) == true then
        msg = "任务完成，以后如果有疑问可以查看天书！\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1103 *01*知道了,接取任务：操作>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1103接
function QuestAccept1103(npc,player)
    msg = "很好，学习得很快，接下来我得传授你一些生存相关的操作！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1103 *01*学习操作 >\n"
	return msg
end

function Accept1103(npc, player)
    if lualib:AcceptQuest(player, 1103) == true then
		msg = "点击#COLORCOLOR_GREENG# #NPCLINK<STR:辟岭村引导员,NPCID:1001>##COLOREND#完成任务\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccomplish1103 *01*完成任务 >\n"
        return msg
    else
        return "任务接取失败"
    end
end

-------1103交
function QuestAccomplish1103(npc, player)
    msg = "1.攻击怪物：用鼠标左键点击怪物，就会自动跑过去攻击\n2.探索怪物尸体：对着怪物的尸体，按住ALT+鼠标左键可获得怪物隐藏的物品！\n3.选择目标：按住CTRL+鼠标左键点击目标，目标的头像会出现在屏幕的上方；鼠标右键点击头像会弹出菜单。\n4.攻击其他玩家：用CTRL+H切换攻击模式，按SHIFT+鼠标左键点击目标，便可追击目标\n\n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1103 *01* 鼠标左键的各种操作很厉害呀！>\n"
    return msg
end

function Accomplish1103(npc, player)
    if lualib:AccomplishQuest(player, 1103, 0) == true then
        msg = "任务完成，你现在清楚如何操作了吗？\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1104 *01*知道了,接取任务：战斗实践>\n"
		return msg
    else
        msg = "任务失败\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1104接
function QuestAccept1104(npc,player)
    msg = "现在你已经了解了一些基本操作，若还有不明白的地方，可以去找天机老人。此刻是时候让你去实践了。近日家禽突变暴戾，好不怪哉，扰得乡亲不得安宁，原因不得而知，我需要在此地接待各路英雄脱不开身，劳烦你帮忙击败3只鸡，让别的家禽稍作安静！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1104 *01*好的，我这就去击败3只鸡 >\n"
	return msg
end

function Accept1104(npc, player)
    if lualib:AcceptQuest(player, 1104) == true then
        return "在村子附近击败3只 #COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:187,POSY:675,STR:鸡>##COLOREND# 练练手吧！"
    else
        return "任务接取失败"
    end
end

-------1104交
function QuestAccomplish1104(npc, player)
    msg = "记住，鼠标左键打怪物！\n \n"
    msg = msg.."#IMAGE1902700017# <@Accomplish1104 *01* 鼠标左键打怪物,记住了！>\n"
    return msg
end

function Accomplish1104(npc, player)
    if lualib:AccomplishQuest(player, 1104, 0) == true then
        msg = "任务完成，你知道如何打怪了吧？\n \n"
		msg = msg.."#IMAGE1902700017# <@QuestAccept1105 *01*知道了,接取任务：穿戴装备>\n"
		return msg
    else
        msg = "任务失败，你击败了3只 #COLORCOLOR_GREENG##LINK<MAP:巫山城,POSX:187,POSY:675,STR:鸡>##COLOREND# 了吗？\n \n"
		msg = msg.."<@Lever *01*我知道了>\n"
		return msg
    end
end

-------1105接
function QuestAccept1105(npc,player)
    msg = "你可安回，裁缝店老板之女外出经商三日未归，今竟寻其尸骨！其状惨烈，不像人类所为，快去裁缝店老板处了解情况！\n \n"
	msg = msg.."#IMAGE1902700017# <@Accept1105 *01*我这就去裁缝店找裁缝！ >\n"
	return msg
end

function Accept1105(npc, player)
    if lualib:AcceptQuest(player, 1105) == true then
        return "去找#COLORCOLOR_GREENG# #NPCLINK<STR:裁缝,NPCID:4>##COLOREND#对话，了解情况！"
    else
        return "任务接取失败"
    end
end

function Lever(npc,player)
	return ""
end

---激活
function jihuo(npc, player)
    if lualib:SysMsg_SendInputDlg(player, 1, "请输入网站上领取的激活码或推广员ID：", 60, 19, "InputJhCallback", "") == false then
	    lualib:SysMsg_SendPromptMsg(player, "输入「取消」中，请稍候再试！")
    end
    return ""
end

function InputJhCallback(id, player, str)
	local accountid = lualib:Player_GetAccountID(player);
	local serverid = lualib:GetZoneId();
	local groupid = lualib:GetGroupId();
	local code = str;

	local tgdb = lualib:Player_GetCustomVarInt(player, "tgdb")

	if tgdb == 0 then
		if lualib:BagFree(player, true, false, false) > 1 then
			lualib:Player_GiveItemBind(player, "VIP礼包", 1, "激活礼包赠送", player)
			lualib:SysMsg_SendPromptMsg(player, string.format("恭喜您，激活帐号成功，礼品已经发送到您的背包中!"))
			lualib:Player_SetCustomVarInt(player, "tgdb", 1)
		else
			lualib:SysMsg_SendPromptMsg(player, string.format("激活帐号失败，您的背包已满!"))
		end
	else
		lualib:SysMsg_SendPromptMsg(player, "您已经已经领取过礼包，不能重复领取！")
	end
end

--回归礼包
function huigui_libao(npc, player)

    if lualib:SysMsg_SendInputDlg(player, 1, "请输入获取到的激活码：", 60, 19, "InputHgCallback", npc) == false then
	    lualib:SysMsg_SendPromptMsg(player, "输入「取消」中，请稍候再试！")
    end
    return ""
end

--黄金大礼包
function huangjin_libao(npc, player)

    if lualib:SysMsg_SendInputDlg(player, 1, "请输入获取到的激活码：", 60, 19, "InputHgCallback_huangjin", npc) == false then
	    lualib:SysMsg_SendPromptMsg(player, "输入「取消」中，请稍候再试！")
    end
    return ""
end

--封测礼包

function fengce(npc, player)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	if times < StartServerTime_int then
		return "现在正在处于开服前常规测试阶段无法领取！"
	end

	local account_Name = tostring(lualib:AccountName(player))
	
	if not lualib:IO_CheckTextInFile("fengcehuikui.txt", account_Name) then
		return "你在封测区没有达到40级或已经领取过礼包，无法领取！"
	end
	
	if not lualib:IO_TextFileDeleteLineStr("fengcehuikui.txt", account_Name) then
		return "校验激活码失败！"
	end
	
	if not lualib:AddItem(player, "封测冲级礼包35级", 1, true, "封测冲级礼包35级", player) then
		return "添加回归礼包失败！"
	end

    return "领取成功！"
end

function InputHgCallback_huangjin(id, player, reg, npc)
	local huangjinlibao = lualib:GetInt(player, "huangjinlibao")
	if huangjinlibao == 1 then
		lualib:NPCTalkEx(npc, player, "你已经领取过一次了！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end
	
	if hj_table[reg] ~= 1 then
		lualib:NPCTalkEx(npc, player, "你输入的激活码不存在!\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	else
		lualib:AddItem(player, "回归礼包", 1, true, "激活码给礼包", player)
		lualib:SetInt(player, "huangjinlibao", 1)
		lualib:NPCTalkEx(npc, player, "领取礼包成功！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
		
	end
	
	return
end

function InputHgCallback(id, player, reg, npc)
	local huiguilibao = lualib:GetInt(player, "huiguilibao")
	if huiguilibao == 1 then
		lualib:NPCTalkEx(npc, player, "你已经领取过一次了！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	end
	
	if jhm_table[reg] ~= 1 then
		lualib:NPCTalkEx(npc, player, "你输入的激活码不存在!\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
	else
		lualib:AddItem(player, "回归礼包", 1, true, "激活码给礼包", player)
		lualib:SetInt(player, "huiguilibao", 1)
		lualib:NPCTalkEx(npc, player, "领取礼包成功！\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>")
		return
		
	end
	
	return
end