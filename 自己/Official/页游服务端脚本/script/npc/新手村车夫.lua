function main(npc,player)
	msg = "     #COLORCOLOR_GREENG#你想要离开村子，去其他地方闯荡么？我可以带你去巫山城哦。#COLOREND#\n \n \n \n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@MapMoveXYA#巫山城#237#303#3 *01*[传送到巫山城]>\n \n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@likai *01*[暂不离开]>\n"
	return msg
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	
	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	local mapname = {"巫山城", "东临城", "新手村", "龙城武器店", "龙城首饰店", "龙城书店", "龙城"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "巫山城".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "东临城".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "新手村".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "龙城武器店".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 128, 300, 1, "mvtx", "龙城首饰店".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "龙城书店".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "龙城".."#"..x.."#"..y)	
		end
	end


	
	if lualib:HasBuff(player,"摆摊") then
	lualib:SysWarnMsg(player,"你当前处于摆摊状态，无法传送")
	return false
	end

	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"巫山城", "东临城", "新手村", "龙城武器店", "龙城首饰店", "龙城书店", "龙城", "神歌城"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end


function likai(npc,player)
	return ""
end
