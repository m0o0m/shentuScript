--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then	
		lualib:SetDBStr("nowActivityName", "˭������   12:40 - 13:20")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)	
		lualib:SysMsg_SendBoardMsg("0", "[˭������]", "#COLORCOLOR_YELLOW#[˭������]�ѿ��ţ�", 15000)
		lualib:SetDBStr("syzf_informed","hasnot")
		lualib:SetStr("", "˭������������","")
        local dgn = lualib:Map_CreateDgn("˭������", true, 2580)
        if dgn == "" then
            lualib:Error("������˭�����泡����ʧ�ܣ�")
            return
        end
        lualib:Debug("������˭�����洴���ɹ���")
			
		--lualib:Map_GenNpc(dgn, "˭������", 60, 67, 1, 4)
        lualib:Map_SetCustomVarStr(map, "active_stzf_dgn", dgn)
		lualib:SetInt(map, "stzf_time", lualib:GetAllTime())
		
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic7", "")
  
	else
		lualib:SysMsg_SendBoardMsg("0", "[˭������]", "#COLORCOLOR_YELLOW#[˭������]����"..math.floor(times / 60000).."���ӿ�ʼ�볡��", 15000)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 0)
        lualib:Map_SetCustomVarStr(map, "active_stzf_dgn", "")
		--lualib:SysMsg_SendBoardMsg("0", "[˭������]", "#COLORCOLOR_YELLOW#[˭������]�ѽ����볡��", 15000)
		local str = lualib:GetStr("", "˭������������")
		local tb = {}
		if str ~= "" then
			tb = json.decode(str)
			for i = 1, #tb do
				if lualib:Mail("˭��������뽱��", tb[i], "�����뱾��˭���������������Ľ��������պ�", 0, 0, {"��שС", 3, 1}) then
					
				end
			end
			lualib:SetStr("", "˭������������","")
		end

		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
		
    else
		lualib:SysMsg_SendBoardMsg("0", "[˭������]", "#COLORCOLOR_YELLOW#[˭������]����"..math.floor(times / 60000).."���Ӻ�����볡��", 15000)
    end
end

function Goto(id,player,map)
	local x = 94
	local y = 127
	local r = 3
	local map_key_name = "����"
	local gold = 0
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return ""
	end
	
	--lualib:Player_NpcMove(player, "����˭������",2) then
	lualib:Player_MapMoveXY(player, map_key_name, x, y, r)
	
	return ""
end