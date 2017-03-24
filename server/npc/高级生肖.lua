local __items = {--第3套生肖索引名表
	"子鼠3",
	"丑牛3",
	"寅虎3",
	"卯兔3",
	"辰龙3",
	"巳蛇3",
	"午马3",
	"未羊3",
	"申猴3",
	"酉鸡3",
	"戌狗3",
	"亥猪3",
}


local map_t = {"《神魔战场》", 138, 198}	--传送地图索引名 + x + y


function main(npc, player)
	local mes = " NpcKeyName = \"【BOSS副本】\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)

	local msg = [[
#POS<X:35,Y:300>##COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#所有十二生肖，全部在各大地图爆，无任何NPC出售#COLOREND#
#POS<X:35,Y:320>##COLORCOLOR_PURPLE#提示：#COLORCOLOR_ORANGE#集齐十二生肖可进入，生肖专属地图#COLOREND#
#POS<X:170,Y:346>#<@enter *01*十二生肖专属地图>
	]]
	
	local str = "<form default_parent=NpcTalk>"
	str = str.. "<wnd id=窗口1 x=-5 y=-35>"
	str = str.. "<image id=图1 x=0 y=0 w=470 h=448 fitsize=1 image=1804100002/>"
	str = str.. "<image id=图2 x=23 y=68 w=427 h=363 fitsize=1 image=1804100000/>"
	str = str.. "<image id=Logo x=138 y=-22 image=1690000001,150 type=animate/>"
	str = str.. "<button id=关闭 x=418 y=28 image=1803400011 OnLButtonClick=NpcTalk.Close/>"
	str = str.. "</wnd>"
	for k, v in ipairs(items) do
		local x = (k - 1) % 4 * 102 + 30
		local y = math.floor((k - 1) / 4) * 88 + 35
		str = str.. "<image id=框"..k.." x="..x.." y="..y.." w=60 h=60 fitsize=1 image=1803500019 parent=NpcTalk,Container/>"
		str = str.. "<itemctrl id=物品"..k.." x="..(x + 13).." y="..(y + 11).." w=35 h=35 init_item="..v.." use_back=0 parent=NpcTalk,Container/>"
		str = str .."<image id=特效"..k.." x="..(x + 6).." y="..(y + 6).." image=1092600000 type=animate parent=NpcTalk,Container/>"
	end
	msg = str.. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetailEx(npc, player, msg, 458, 412)
	local script = [[
		local this = GetWindow(nil, "NpcTalk,Close")
		if this ~= 0 then
			WndSetPosM(this, nil, 50, 50)
		end
	]]
	lualib:ShowFormWithContent(player, "脚本表单", script)
	return ""
end


function enter(npc, player)
	if which(player, __items) then
		lualib:Player_MapMoveXY(player, map_t[1], map_t[2], map_t[3], 3)
	else
		lualib:MsgBox(player, "#COLORCOLOR_PURPLE#请将对应的生肖装备集齐并穿戴好。")
	end
	return ""
end


function which(player, tab)
	for _, v in ipairs(tab) do
		if lualib:ItemCountEx(player, v, 2, true, true, false, false) < 1 then
			return false
		end
	end
	return true
end