--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
lualib:Error(lualib:KeyName(map));
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 0)
		local str = "[��սBOSS]�ѿ�ʼ����Ӣ�������ٽ�������֮�أ�"
        lualib:SysMsg_SendBroadcastMsg(str, "[��սBOSS]")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ

    else 
		if times == 300000 then 
			local dgn = lualib:Map_CreateDgn("����֮��", true, 40*60)
			if dgn == "" then
				lualib:Error("����������֮��ս����ʧ�ܣ�")
				return
			end
			lualib:Debug("��������սBOSSս�����ɹ���")
			local cur_time = lualib:GetAllTime()
			lualib:SetStr(map, "guild_map_guid", dgn)
			-- lualib:SetInt(map, "guild_active_time", cur_time + 3600)
		end
		local str = "[��սBOSS]����"..math.floor(times / 60000).."���ӿ�����"
		lualib:SysMsg_SendBroadcastMsg(str, "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:SetStr(map, "guild_map_guid", "")
		-- lualib:SetInt(map, "guild_active_time", 0)
        lualib:SysMsg_SendBroadcastMsg("[��սBOSS]��ֹͣ���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", "[��սBOSS]��ֹͣ���룡", 15000)
    else
        lualib:SysMsg_SendBroadcastMsg("[��սBOSS]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[��սBOSS]", "[��սBOSS]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", 15000)
    end
end

function Goto(id,player,map)
	local x = 62
	local y = 43
	local r = 8
	local dgn_key_name = "����֮��"
	local gold = 0
	local msg = ""
	
	local mapguid = lualib:MapGuid(player);
	local map_keyname = lualib:KeyName(mapguid);
	if map_keyname == "����֮��" then 
		lualib:SysPromptMsg(player, "�Ѿ�������֮�أ��޷��ظ�����")
		return "�Ѿ�������֮�أ��޷��ظ�����"
	end
	
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
	
	local dgn = lualib:GetStr(lualib:Map_GetMapGuid("��ŭ֮��"), "guild_map_guid");
	if not lualib:Map_IsDgnExist(dgn) then
		lualib:SysMsg_SendBroadcastMsg("[��սBOSS]���δ��ʼ���޷����룡", "ϵͳ֪ͨ")
		return
	end	

	local player_x = lualib:X(player);
	local player_y = lualib:Y(player);
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0");
	lualib:Player_SetDgnTicket(player, dgn);
	lualib:Player_EnterDgn(player, dgn_key_name, x, y, r);
	

	-- if not lualib:Player_MapMoveXY(player, map_key_name, x, y, r) then
		-- lualib:SysMsg_SendWarnMsg(player, "")
	-- end
end