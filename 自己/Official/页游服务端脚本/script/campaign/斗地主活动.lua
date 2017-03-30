--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------
function on_start(id, map)
end

function on_start_decl(id, map, times)
	lualib:Error("on_start_decl map: " .. lualib:Map_GetMapKeyName(map))
	local time      = {["min"] = 15459, ["max"] = 15461}
	local day       = lualib:GetAllDays(0)
	local monOnTime = 
	{
		[15459] = {["monKey"] = "����֮��1", ["x"] = 50, ["y"] = 36, ["range"] = 2},
		[15460] = {["monKey"] = "����֮��2", ["x"] = 100, ["y"] = 100, ["range"] = 10},
		[15461] = {["monKey"] = "����֮��3", ["x"] = 100, ["y"] = 100, ["range"] = 10}
	}

	if (day < time.min) or (day > time.max) then
		return
	end
	
    times = tonumber(times)
    if times == 0 then
		if not lualib:Map_GenSingleMonster(map, monOnTime[day].x, monOnTime[day].y, monOnTime[day].range, lualib:GenRandom(0, 7), monOnTime[day].monKey, false) then
			lualib:Error("ˢ����֮��ʧ��")
		else
			--lualib:SysMsg_SendBroadcastMsg("����֮�������ھ�·�룡��", "ϵͳ֪ͨ")
			lualib:SysMsg_SendBoardMsg("0", "����֮��", "����֮�������ھ�·�룡��", 15000)
		end
    else
        --lualib:SysMsg_SendBroadcastMsg("����֮������20:00ˢ���ھ�·�룬�������֮�����Ի�÷��Ľ���", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "����֮��", "����֮������20:00ˢ���ھ�·�룬�������֮�����Ի�÷��Ľ���", 15000)
	end
end

function on_end_decl(id, map, times)
end