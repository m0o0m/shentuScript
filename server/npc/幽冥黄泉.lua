local level = 350	--进入副本等级需求

local mapkey = "《幽冥黄泉》"		--地图索引名

local x = 52--x坐标

local y = 65--y坐标

local ingot = 0--消耗元宝

function main(npc, player)
	local mes = " NpcKeyName = \"《幽冥黄泉》\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)
	lualib:SetPanelSize(npc, 430, 258)
	
    local msg = "\n#OFFSET<X:18,Y:15>##COLORCOLOR_MAGENTA#《天怒神途》 #COLORCOLOR_GOLD2#良心品质！#COLORCOLOR_SKYBLUE#请合理的安排时间，祝您游戏愉快！\n"
	msg = msg .. "#OFFSET<X:20>##COLORCOLOR_GRAY#-----------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#【地图难度】：#OFFSET<Y:2>##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293##IMAGE1900340293#\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#【地图设置】：#COLORCOLOR_GOLD2#《幽冥黄泉》隐藏着很多BOSS，专为散人打宝\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#【进入条件】：#COLORCOLOR_GREENG#350进入\n"
	msg = msg .. "#OFFSET<X:18>##COLORCOLOR_RED#【地图说明】：#COLORCOLOR_BLUE#步入新的世界开始崭新的挑战吧！\n"
	msg = msg .. "#OFFSET<X:20>##COLORCOLOR_GRAY#-----------------------------------------------------------\n"
	msg = msg .. "#OFFSET<X:78,Y:5>##IMAGE1902700015##OFFSET<Y:-2>#<@enter *01*[进入地图]>            #OFFSET<Y:2>##IMAGE1902700034##OFFSET<Y:-2>#<@leave *01*[关闭页面]>\n"
	local str = [[<form default_parent="NpcTalk,Container">]]
	str = str .. "<image id=x1 x=93 y=56 image=1044800000 />"
	str = str .. "<image id=x2 x=110 y=56 image=1044800000 />"
	str = str .. "<image id=x3 x=127 y=56 image=1044800000 />"
	str = str .. "<image id=x4 x=144 y=56 image=1044800000 />"
	str = str .. "<image id=x5 x=161 y=56 image=1044800000 />"
	str = str .. "<image id=x6 x=178 y=56 image=1044800000 />"
	str = str .. "<image id=x7 x=195 y=56 image=1044800000 />"
	str = str .. "<image id=x8 x=212 y=56 image=1044800000 />"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
    return msg
end

function enter(npc, player)
	local name = lualib:Name(player)
	
	local mes = " NpcKeyName = \"《幽冥黄泉》\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)
	lualib:SetPanelSize(npc, 430, 258)
	
	if lualib:Level(player) < level then
		return "#OFFSET<X:20,Y:35>#抱歉,您的等级不足"..level.."级,无法挑战《幽冥黄泉》!"
	end
	
	if lualib:GetIngot(player) < ingot then
		return "#OFFSET<X:20,Y:35>#抱歉,您的元宝不足"..ingot..",无法挑战《幽冥黄泉》!"
	end
	
	lualib:SubIngot(player, ingot, "挑战《幽冥黄泉》", npc)

	lualib:Player_MapMoveXY(player, mapkey, x, y, 3)

	lualib:SysMsg_SendBroadcastMsg("天怒勇士【"..name.."】驾着五彩祥云闯入了【"..mapkey.."】，大家为他祈祷吧！", "系统消息")
	return ""
end

function leave()
	return ""
end