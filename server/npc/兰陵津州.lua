local tab = {
	{"散人打宝一", 0, 0, 0, 0},
}


function main(npc,player)
	local mes = " NpcKeyName = \"【兰陵津州】\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)
	lualib:SetPanelSize(npc, 400, 258)
	
	local msg = [[

#OFFSET<X:35,Y:10>##COLORCOLOR_ORANGE#一个追逐梦想的传奇故事，一份值得珍藏的兄弟情义
#OFFSET<X:35,Y:8>##COLORCOLOR_BLUE#青春的记忆里有着传奇的点点滴滴，不忘热血续写初心
#OFFSET<X:35,Y:8>##COLORCOLOR_MAGENTA#温馨提示：#COLORCOLOR_GREENG#BOSS装备全爆，一切靠打！#COLOREND#

#OFFSET<X:39,Y:0>##COLORCOLOR_BLUE#【进入条件】：#COLORCOLOR_GOLD2#等级无限制,#COLORCOLOR_RED#免费进入
#OFFSET<X:39,Y:0>##COLORCOLOR_BLUE#【主要怪物】：#COLORCOLOR_GREENG#海量BOSS..
#OFFSET<X:39,Y:0>##COLORCOLOR_BLUE#【主要产出】：#COLORCOLOR_MAGENTA#全服所有装备,各类材料均可爆出

#OFFSET<X:52,Y:0>##IMAGE1902700015##OFFSET<Y:-2>#<@enter#1 *01*《兰陵津州》>         
	]]
 
	return msg
end


function enter(npc, player, idx)
	
	local mes = " NpcKeyName = \"【兰陵津州】\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)
	lualib:SetPanelSize(npc, 400, 258)
	
	local idx = tonumber(idx)
	local name = lualib:Name(player)
	
	if lualib:Level(player) < tab[idx][4] then
		return "#POS<X:12,Y:25>##COLORCOLOR_RED#抱歉,您的等级不足"..tab[idx][4].."级,无法进入该地图!\n\n\n#POS<X:12>##IMAGE1902700019##OFFSET<Y:-2>#<@main *01*「返回首页」>"
	end
	
	if tab[idx][5] > 0 then
		if lualib:GetIngot(player) < tab[idx][5] then
			return "#POS<X:12,Y:25>##COLORCOLOR_RED#抱歉,您的元宝不足"..tab[idx][5]..",无法挑战藏宝阁一层!\n\n\n#POS<X:12>##IMAGE1902700019##OFFSET<Y:-2>#<@main *01*「返回首页」>"
		end
		if lualib:SubIngot(player, tab[idx][5], "挑战"..tab[idx][1], npc) == false then
			return "#POS<X:12,Y:25>##COLORCOLOR_RED#抱歉,您的元宝不足"..tab[idx][5]..",无法挑战藏宝阁一层!\n\n\n#POS<X:12>##IMAGE1902700019##OFFSET<Y:-2>#<@main *01*「返回首页」>"
		end
	end

	if tab[idx][2] == 0 or tab[idx][3] == 0 then
		lualib:Player_MapMove(player, tab[idx][1])
	else
		lualib:Player_MapMoveXY(player, tab[idx][1], tab[idx][2], tab[idx][3], 3)
	end

	lualib:SysMsg_SendBroadcastMsg("勇士【"..name.."】单枪匹马闯入了【".. lualib:KeyName2Name(tab[idx][1], 5) .."】，大家为他祈祷吧！", "系统消息")
	
	return ""
end