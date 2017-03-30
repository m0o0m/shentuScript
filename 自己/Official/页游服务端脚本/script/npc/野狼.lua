function main(npc,player)
	local msg = ""
	msg = msg .."\n     我就看看风景！\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@check *01*使用真鉴卷轴！>\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:0>#<@likai *01*离开！>\n"
	return msg
end

function likai(npc,player)
	return ""
end

function check(npc,player)
	local a = lualib:Player_GetItemCount(player, "真鉴卷轴")
	if a == 0 then return "需要物品：真鉴卷轴！"
	else
		if lualib:DelItem(player, "真鉴卷轴", 1, 2, "消耗", player) == true then
		lualib:ProgressBarStart(player, 2000, "鉴定", "catch_complete", "catch_abort", npc) end
		lualib:SysWarnMsg(player, "使用真鉴卷轴。")
	end	

	return true

end

function catch_complete(player, params)
	
	local map = lualib:MapGuid(params)
	local x = lualib:X(params)
	local y = lualib:Y(params)

	if lualib:Map_GenSingleMonster(map, x, y, 3, 1, lualib:KeyName(params), false) then
		lualib:SysWarnMsg(player, "发现恶魔头目探子！") 
	end
	return true
end

function catch_abort(player)

	return "使用真鉴卷轴被打断！"
end