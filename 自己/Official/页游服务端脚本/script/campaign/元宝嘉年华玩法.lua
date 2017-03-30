function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		local str = ""
		local a = lualib:Now()
		local start = string.find(a, " ") + 1
		local ending = string.find(a, ":") - 1
		local b = string.sub(a,start, ending)
		if tonumber(b) == 10 or tonumber(b) == 11 then
			str = "Ԫ�����껪   11:00 - 11:15"
		elseif tonumber(b) == 15 or tonumber(b) == 14 then
			str = "Ԫ�����껪   15:00 - 15:15"
		end
		lualib:SetDBStr("nowActivityName", str)
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[Ԫ�����껪]�ѿ�����Ӣ������������(69,113)�����룡", 11, 2)
		--lualib:SysMsg_SendBoardMsg("0", "[Ԫ�����껪]", "[Ԫ�����껪]�ѿ�����Ӣ������������(126,134)�����룡", 15000)
		local t_map = lualib:Map_GetMapGuid("����")
		lualib:Map_GenCampMonster(t_map, 69,113, 1, 8, "Ԫ��BOSS", 1, false, 0)
		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic4", "")
    else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[Ԫ�����껪]����"..math.floor(times / 60000).."���ӿ�����Ӣ������������(69,113)�����룡", 11, 2)
		--lualib:SysMsg_SendBoardMsg("0", "[Ԫ�����껪]", "[Ԫ�����껪]����"..math.floor(times / 60000).."���ӿ�����Ӣ������������(126,134)�����룡", 15000)
    end
end

function up_tip_msg(player, msg, color)
	if color == nil then
		color = "WHITE";
	end
	local str = "LuaUI[\"GameMainBar\"].SendMsg(\""..msg.."\", \""..color.."\")";
	lualib:ShowFormWithContent(player, "�ű���", str);
end

function on_end_decl(id, map, times)
    times = tonumber(times)
	local t_map = lualib:Map_GetMapGuid("����")
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
        lualib:Map_RemoveMonster(t_map, "Ԫ��BOSS")
		--lualib:SysMsg_SendBoardMsg("0", "[Ԫ�����껪]", "[Ԫ�����껪]�ѽ�����", 15000)
		--lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[Ԫ�����껪]�ѽ�����", 11, 2)
		
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
    else
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[Ԫ�����껪]����"..math.floor(times / 60000).."���Ӻ������", 11, 2)
		--lualib:SysMsg_SendBoardMsg("0", "[Ԫ�����껪]", "[Ԫ�����껪]����"..math.floor(times / 60000).."���Ӻ������", 15000)
    end
end

function Goto(id,player,map)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	if not lualib:Player_MapMoveXY(player, "����", 69, 113, 2) then
		lualib:Error("�����".. lualib:Name(player) .."���͵�����ʧ��")
	end
end