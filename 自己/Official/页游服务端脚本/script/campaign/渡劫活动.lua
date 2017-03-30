--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times_all = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times_all)

	local time_cha = times_all - StartServerTime_int
	
	if time_cha < 86400 * 2 then 	--(2��) 
		lualib:Debug("�ɽٻС�ڿ���2�죬���Բ�������")
		return
	end
	
    local times = tonumber(times)
    if times == 0 then
		local mapGuid = lualib:Map_GetMapGuid("����")
		lualib:SysMsg_SendBoardMsg("0", "[�ɽ�]", "[�ɽ�]�ѿ��ţ�", 15000)
		lualib:SetInt(mapGuid, "dujieTime", 1)
		lualib:GSRunScript("�ɽٻ:playerMove", "")
		
		local tiemid =  lualib:GenTimerId("0")
		lualib:AddTimerEx("0", tiemid, 360000, 10, "dujietishi", "")
    else
		lualib:SysMsg_SendBoardMsg("0", "[�ɽ�](ţ�ƾ���)", "[�ɽ�]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ�����NPC[�ɽ�][250.254]���룡", 15000)
    end
end

function on_end_decl(id, map, times)
    local times = tonumber(times)
    if times == 0 then
		local mapGuid = lualib:Map_GetMapGuid("����")
		lualib:SetInt(mapGuid, "dujieTime", 0)
		lualib:SysMsg_SendBoardMsg("0", "[�ɽ�]", "[�ɽ�]�ѹرգ�", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[�ɽ�]", "[�ɽ�]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
    end
end

function playerMove(player)
	local level = lualib:Level(player)
	if level < 30 then return end
	--[[
	local msg = "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ɽ�#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	msg = msg .. "�ɽٻ��ʼ�ˣ�ֻҪ�о����߳������飬���ܻ��ţ�Ƶĺ������飡\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##COLORCOLOR_GREENG#1.��ڼ���,ÿ�о�һ�Σ��ɻ��#COLOREND##COLORCOLOR_YELLOW#25W����#COLOREND##COLORCOLOR_GREENG#�����ٻ���һֻ�������ˢ�ڵ�ͼ�ڣ�#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#2.ÿ����(����)һֻ���飬��ɻ������ĺ������飡����ľ���Ϊ#COLOREND##COLORCOLOR_YELLOW#50W#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#3.����һ���õ����ȣ��о��߻������ϵͳ���͵�һ���־��飡��#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_RED#4.ÿ���ٻ����������ƣ�����Ϊ�ٻ��ߵȼ���ʮλ��������45�����ٻ�40ֻ��52�����ٻ�50ֻ#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ɽ�#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@enter *01*����[�ɽ�]���ţ�ƾ���>\n"
	lualib:NPCTalk(player, msg)
	]]--
end

function enter(player, dgn_id)
	lualib:Player_MapMoveXY(player, "����", 250, 254, 5)
	return ""
end

function dujietishi(player, timeid)
	lualib:SysMsg_SendBoardMsg("0", "[�ɽ�]", "�ɽ����ڽ����У�����ɻ�ó���飡\n             #UILINK<WND:�ύ��,PARAM:С��ʿ;dujie_cs;player,STR:[���̲���]#", 5000)
end

function leave(player)
	return ""
end

function Goto(id,player,map)
	 local x = 250
	 local y = 254
	 local r = 3
	 local map_key_name = "����"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ"..gold.."���"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	if not lualib:Player_SubGold(player, gold, false, "����", player) then
	msg = msg.."�۳����ʧ��"
	lualib:NPCTalk(player, msg)
    return true
    end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	
	 if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	 end
end