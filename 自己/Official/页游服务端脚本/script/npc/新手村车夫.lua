function main(npc,player)
	msg = "     #COLORCOLOR_GREENG#����Ҫ�뿪���ӣ�ȥ�����ط�����ô���ҿ��Դ���ȥ��ɽ��Ŷ��#COLOREND#\n \n \n \n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-1>#<@MapMoveXYA#��ɽ��#237#303#3 *01*[���͵���ɽ��]>\n \n"
	msg = msg.."#OFFSET<X:1,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@likai *01*[�ݲ��뿪]>\n"
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
		return "����ͼʧ��"
    end
	
	local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����������", "�������ε�", "�������", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "����������".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 128, 300, 1, "mvtx", "�������ε�".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "�������".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		end
	end


	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end

	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"��ɽ��", "���ٳ�", "���ִ�", "����������", "�������ε�", "�������", "����", "����"}
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
