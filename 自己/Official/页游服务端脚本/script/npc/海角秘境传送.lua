local talk_t = {"相传有一艘满载珍宝的巨船沉没在幽暗的海底，至今也没有人知道那艘巨船为何会沉没。"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(player, npc)
	local msg = "    人类在海底深处发现了一艘古代的沉船，那里不仅有着生死轮图碎片的传说，还有无数失落于海底的宝藏！如果你想去探险，我可以为你带路。\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@jump#海底入口#36#71#3 *01*前往海角秘境>\n \n \n \n \n"
	msg = msg.." #OFFSET<X:0,Y:-4>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@leave *01*离开>\n"
	return msg
end

function leave(player,npc)
	return ""
end

function jump(npc, player, map_name, x, y, r)
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	if map_name == "海底入口" then
		local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
		if haidi_Open < 0 then
			return "海角秘境还未被勇士开启，当大陆出现".. 20 .."位47级的勇士时，海角秘境的探险之路将会开启！"
		end
	end
	
	
	if not lualib:Player_MapMoveXY(player, map_name, x, y, r) then return "跳地图失败！\n \n<@main *01*返回>" end
	return ""
end
