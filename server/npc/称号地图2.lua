local tab = {
	{"灭世武圣", 9, "《妖界》困兽祭坛", 20, 24},--文字 + 称号等级需求 + 跳转地图索引名 + x + y
	{"霸气侧漏", 10, "《冥界》黄泉不归路", 120, 168},
	{"威震九州", 11, "《冥界》魁拔养尸穴", 26, 29},
	{"九天揽月", 12, "《三生三世忘情台》", 87, 69},
}


function main(npc,player)

	local lv = lualib:GetInt(player, "nobility")
	local msg = "\n\n"
	for k, v in ipairs(tab) do
		if k % 2 == 0 then
			if lv >= v[2] then
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>#<@enter#"..k.." *01*"..v[1].."[专属]> #COLORCOLOR_GREENG#←已激活\n\n"
			else
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[专属]#COLORCOLOR_DARK# ←未激活\n\n"
			end
		else
			if lv >= v[2] then
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>#<@enter#"..k.." *01*"..v[1].."[专属]> #COLORCOLOR_GREENG#←已激活"
			else
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[专属]#COLORCOLOR_DARK# ←未激活"
			end
		end
	end
	msg = msg .. "\n\n#POS<X:22>##COLORCOLOR_PURPLE#提示：晋升对称号可进入对应的专属地图，晋升称号越多进的地图越多。#COLOREND#\n"
	msg = msg .. "#OFFSET<Y:5>##POS<X:22>##COLORCOLOR_PURPLE#说明：本游戏所有BOSS均可爆终极，只要你努力一切皆有可能。#COLOREND#\n"
	
	local str = "<form default_parent=NpcTalk>"
	str = str.. "<wnd id=UI x=-5 y=-25>"
	str = str.. "<image id=图1 x=0 y=0 w=500 h=318 fitsize=1 image=1805900000/>"
	str = str.. "<image id=图2 x=18 y=39 w=465 h=268 fitsize=1 image=1804100000/>"
	str = str.. "<image id=Logo x=138 y=-45 image=1690000001,150 type=animate/>"
	str = str.. "<button id=关闭 x=445 y=10 image=1803400011 OnLButtonClick=NpcTalk.Close/>"
	str = str.. "</wnd>"
	msg = str .."<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetailEx(npc, player, msg, 470, 292)
	local script = [[
		local this = GetWindow(nil, "NpcTalk,Close")
		if this ~= 0 then
			WndSetPosM(this, nil, 50, 50)
		end
	]]
	return ""
end


function enter(npc, player, idx)
	local idx = tonumber(idx)
	local lv = lualib:GetInt(player, "nobility")
	if lv < tab[idx][2] then
		lualib:MsgBox(player, "#COLORCOLOR_GREENG#您当前的爵位称号不具备进入该地图的权限，请先去进阶称号。#COLOREND#")
		return ""
	end
	lualib:Player_MapMoveXY(player, tab[idx][3], tab[idx][4], tab[idx][5], 3)
	local msg = "勇士["..lualib:Name(player).."]前往称号福利地图〖"..tab[idx][1].."称号·专属〗，大量BOSS等待着他（她）！"
	lualib:SysMsg_SendBroadcastMsg(msg, "最新情报")
	return ""
end


function leave(npc,player)
    return ""
end