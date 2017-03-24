function main(npc, player)
    local msg = "你是一只小小鸟……，呃……嗯嗯！欢迎来到神途的世界！不得不说，身为前辈的我，遇上了你，真是你的荣幸！所谓知识就是力量嘛……\n \n"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@wupin *01*物品使用指南    >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@caozuo *01*操作指南        >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@zhandou *01*战斗指南        >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@kuaijiejian *01*快捷键指南      >"
	msg = msg.."#OFFSET<X:1,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@mingling *01*发言指南        >"
	msg = msg.."#OFFSET<X:0,Y:1>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@jineng *01*技能指南        >"
	msg = msg.."<@web *01*                                      官方主页: www.173uu.com>\n"
    return msg
end

function wupin(npc, player)
   local msg = "首先，按下F9（包裹窗口）和F10（人物属性面板）打开对应面板。\n直接双击物品，你就可以将装备穿戴上去，如果是其他的功能道具，双击则使用该道具！\n道具移动：用鼠标左键点击提起，再点击放下\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function caozuo(npc, player)
   local msg = "鼠标左键 : 作为脚本的行动、移动、攻击，移动物品等。\n鼠标右键 : 在游戏界面内点击右键可以跑步\nShift+左键:强行攻击\nCTRL+右键 : CTRL+右键点击玩家可以查看对方信息\nAlt+左键 : 挖取怪物尸体可以获得物品\n左键双击或右键单击 : 使用物品，携带装备\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function zhandou(npc, player)
   local msg = "基本上来说，你都可以利用左键来进行攻击，如果你不能进行攻击，你可以按住Shift+左键来强行攻击\n 对于那些死去的鹿、鸡等，你可以在他们的尸体上采集获得相应物品。\n \n \n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function mingling(npc, player)
   local msg = "附近发言 : 在聊天框输入文字发送后为附近发言\n私聊 : 你可以右键点击目标头像选择私聊选项，或者以/ + 对象名称发送私聊\n喊话 : 以!开头输入文字发送后为喊话（信息颜色是黄色的，但有时间限制）\n组队发言 : 以!!开头输入文字发送后为只发送给组队成员\n行会发言 : 以!~开头输入文字发送后为只发送给行会成员\n喇叭发言 : 选择聊天框喇叭喊话，发送后在特殊频道显示，但每次需要消耗一个小喇叭\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function jineng(npc, player)
   local msg = "每个职业能够学习技能的等级要求都是7级，战士可以学习《基本剑术》，法师可以学习《炎球术》，道士可以学习《治愈术》。\n这些书都可以在各地的书店中买到的，等级提升之后，还可以学习其他更高级的技能。\n \n但这些书无法在书店买到，你只能通过击败怪物获得！\n \n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end

function kuaijiejian(npc, player)
   local msg = "#COLORCOLOR_YELLOW#0~9#COLOREND#   #OFFSET<X:2,Y:0>#：快捷栏按键（可以放置技能和辅助道具）\n#COLORCOLOR_YELLOW#F1~F8#COLOREND# #OFFSET<X:3,Y:0>#：技能绑定按键（可以设定为技能快捷键）\n#COLORCOLOR_YELLOW#F9#COLOREND#    #OFFSET<X:3,Y:0>#：打开包裹界面#COLORCOLOR_YELLOW#\nF10#COLOREND#   #OFFSET<X:4,Y:0>#：打开角色界面\n#COLORCOLOR_YELLOW#F11#COLOREND#   #OFFSET<X:5,Y:0>#：打开技能界面\n#COLORCOLOR_YELLOW#F12#COLOREND#   #OFFSET<X:4,Y:0>#：打开游戏性设置\n#COLORCOLOR_YELLOW#~#COLOREND#     #OFFSET<X:2,Y:0>#：快捷拾取物品\n#COLORCOLOR_YELLOW#TAB#COLOREND#   #OFFSET<X:2,Y:0>#：开启/关闭大地图窗口\n#COLORCOLOR_YELLOW#PAUSE#COLOREND# #OFFSET<X:1,Y:0>#：截屏按键\n#COLORCOLOR_YELLOW#SHIFT#COLOREND# #OFFSET<X:2,Y:0>#：按住强制攻击目标\n#COLORCOLOR_YELLOW#ALT#COLOREND#   #OFFSET<X:1,Y:0>#：按住显示地上的物品\n#COLORCOLOR_YELLOW#Enter#COLOREND# #OFFSET<X:2,Y:0>#：激活聊天窗口\n#COLORCOLOR_YELLOW#空格#COLOREND#  #OFFSET<X:1,Y:0>#：激活聊天窗口\n#COLORCOLOR_YELLOW#/#COLOREND#     #OFFSET<X:3,Y:0>#：激活私聊频道\n#COLORCOLOR_YELLOW#ESC#COLOREND#   #OFFSET<X:3,Y:0>#：关闭当前窗口\n#COLORCOLOR_YELLOW#CTRL+Q#COLOREND##OFFSET<X:1,Y:0>#：上下坐骑\n#COLORCOLOR_YELLOW#CTRL+S#COLOREND##OFFSET<X:1,Y:0>#：切换当前目标并锁定新目标\n#COLORCOLOR_YELLOW#CTRL+Z#COLOREND##OFFSET<X:1,Y:0>#：隐藏周围的其他玩家和怪物\n#COLORCOLOR_YELLOW#CTRL+B#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“商城”界面\n#COLORCOLOR_YELLOW#CTRL+A#COLOREND#：切换宠物AI模式（休息，攻击）\n#COLORCOLOR_YELLOW#CTRL+H#COLOREND#：切换攻击模式\n#COLORCOLOR_YELLOW#CTRL+T#COLOREND##OFFSET<X:1,Y:0>#：激活组队聊天窗口\n#COLORCOLOR_YELLOW#CTRL+D#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“队伍”窗口\n#COLORCOLOR_YELLOW#CTRL+F#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“社交”界面\n#COLORCOLOR_YELLOW#CTRL+G#COLOREND#：打开/关闭“行会”界面\n#COLORCOLOR_YELLOW#CTRL+Y#COLOREND##OFFSET<X:1,Y:0>#：打开/关闭“成就”界面\n#COLORCOLOR_YELLOW#CTRL+R#COLOREND#：打开/关闭“任务”界面\n#COLORCOLOR_YELLOW#CTRL+N#COLOREND#：打开/关闭“活动日历”界面\n#COLORCOLOR_YELLOW#CTRL+鼠标右键#COLOREND#：查看目标角色界面\n#COLORCOLOR_YELLOW#CTRL+鼠标左键#COLOREND#：选中目标\n#COLORCOLOR_YELLOW#ALT+~#COLOREND# ：锁定聊天窗口滚动\n#COLORCOLOR_YELLOW#ALT+S#COLOREND# #OFFSET<X:1,Y:0>#：将鼠标指向的目标角色加入仇人列表\n#COLORCOLOR_YELLOW#ALT+E#COLOREND# #OFFSET<X:1,Y:0>#：将鼠标指向的目标角色从队伍中移除\n#COLORCOLOR_YELLOW#ALT+F#COLOREND# #OFFSET<X:1,Y:0>#：将鼠标指向的目标加为好友\n#COLORCOLOR_YELLOW#ALT+T#COLOREND# #OFFSET<X:1,Y:0>#：向鼠标指向的目标角色发出交易请求\n#COLORCOLOR_YELLOW#ALT+W#COLOREND# #OFFSET<X:1,Y:0>#：向鼠标指向的目标角色发出组队请求\n#COLORCOLOR_YELLOW#ALT+Z#COLOREND# #OFFSET<X:1,Y:0>#：开启/关闭自动红绿毒\n#COLORCOLOR_YELLOW#ALT+X#COLOREND# #OFFSET<X:1,Y:0>#：退回角色选择界面\n"
   msg = msg.."                                                   #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
   return msg
end


function web(npc, player)
    local msg = "http://www.173uu.com"
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end
