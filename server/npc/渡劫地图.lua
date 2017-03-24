local zhuanshu_t = {
	{"《渡劫筑基境》", 34, 70},--1级渡劫传送专属地图+坐标x，坐标y
	{"《渡劫融合境》", 34, 70},
	{"《渡劫金丹境》", 34, 70},
	{"《渡劫元婴境》", 34, 70},
	{"《渡劫洞虚境》", 34, 70},
	{"《渡劫大乘境》", 34, 70},
	{"《飞升渡劫境》", 34, 70},
	{"《散仙青云境》", 34, 70},
	{"《太乙真仙境》", 34, 70},
	{"《太乙玄仙境》", 34, 70},
	{"《大罗金仙境》", 34, 70},
	{"《混元金仙境》", 34, 70},

}




function main(npc,player)
	local lv = lualib:GetInt(player, "exerciselv")
	local msg = "\n\n"
	for k, v in ipairs(zhuanshu_t) do
		if k % 2 == 0 then
			if lv >= k then
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>#<@jinru#"..k.." *01*"..v[1].."[仙]> #COLORCOLOR_GREENG#←已激活\n\n"
			else
				msg = msg.."#POS<X:235>##OFFSET<Y:2>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[仙]#COLORCOLOR_DARK# ←未激活\n\n"
			end
		else
			if lv >= k then
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>#<@jinru#"..k.." *01*"..v[1].."[仙]> #COLORCOLOR_GREENG#←已激活"
			else
				msg = msg.."#POS<X:22>##IMAGE1902700014##OFFSET<Y:-2>##COLORCOLOR_RED#"..v[1].."[仙]#COLORCOLOR_DARK# ←未激活"
			end
		end
	end
	msg = msg .. "\n\n#POS<X:20>##COLORCOLOR_PURPLE#提示：晋升对应渡劫可进入对应的专属地图，渡劫越高进的地图越多。#COLOREND#\n"
	msg = msg .. "#OFFSET<Y:5>##POS<X:20>##COLORCOLOR_PURPLE#说明：本游戏所有BOSS均可爆终极，只要你努力一切皆有可能。#COLOREND#\n"
	local str = "<form default_parent=NpcTalk>"
	str = str.. "<wnd id=UI x=-5 y=-25>"
	str = str.. "<image id=图1 x=0 y=0 w=500 h=318 fitsize=1 image=1805900000/>"
	str = str.. "<image id=图2 x=18 y=39 w=465 h=268 fitsize=1 image=1804100000/>"
	str = str.. "<image id=Logo x=-100 y=-25 image=1084500000,150 type=animate/>"
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

function jinru(npc, player, idx)
	local idx = tonumber(idx)
	local lv = lualib:GetInt(player, "exerciselv")
	if lv < idx then
		lualib:MsgBox(player, "#COLORCOLOR_GREENG#您当前的爵位称号不具备进入该地图的权限，请先去进阶称号。#COLOREND#")
		return ""
	end
	lualib:Player_MapMoveXY(player, zhuanshu_t[idx][1], zhuanshu_t[idx][2], zhuanshu_t[idx][3], 3)
	local msg = "勇士["..lualib:Name(player).."]前往称号福利地图〖"..zhuanshu_t[idx][1].."·专属〗，大量BOSS等待着他（她）！"
	lualib:SysMsg_SendBroadcastMsg(msg, "最新情报")
	return ""
end
