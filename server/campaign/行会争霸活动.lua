--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
        lualib:SysMsg_SendBroadcastMsg("[�л�����]�ѿ�ʼ����᳤����ǰ�����汨���μӣ�", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]�ѿ�ʼ��", 15000)

    else 
		if times == 300000 then 
			local dgn = lualib:Map_CreateDgn("�л����Ե�ͼ", true, 60*60)
			if dgn == "" then
				lualib:Error("�������л�����ս����ʧ�ܣ�")
				return
			end
			lualib:Debug("�������л�����ս�����ɹ���")
			local cur_time = lualib:GetAllTime()
			lualib:SetStr(map, "guild_map_guid", dgn)
			lualib:SetInt(map, "guild_active_time", cur_time + 3600)
		end
		local str = "[�л�����]����"..math.floor(times / 60000).."���ӿ�����"
		lualib:SysMsg_SendBroadcastMsg(str, "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�л�����]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:SetStr(map, "guild_map_guid", "")
		lualib:SetInt(map, "guild_active_time", 0)
        lualib:SysMsg_SendBroadcastMsg("[�л�����]��ֹͣ���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]��ֹͣ���룡", 15000)
    else
        lualib:SysMsg_SendBroadcastMsg("[�л�����]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�л�����]", "[�л�����]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", 15000)
    end
end

function Goto()
	local x = 80
	local y = 100
	local r = 10
	local map_key_name = "�л����Ե�ͼ"
	local gold = 0
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	
	-- if not lualib:Player_IsGoldEnough(player, gold, false) then
	-- msg = msg.."��ǰ������Ҫ1500���"
	-- lualib:NPCTalk(player, msg)
    -- return true
    -- end
	
	-- if not lualib:Player_SubGold(player, gold, false, "����", player) then
	-- msg = msg.."�۳����ʧ��"
	-- lualib:NPCTalk(player, msg)
    -- return true
    -- end
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	lualib:Player_SetDgnTicket(player, dgn);
	lualib:Player_EnterDgn(player, dgn_key_name, x, y, r);
end