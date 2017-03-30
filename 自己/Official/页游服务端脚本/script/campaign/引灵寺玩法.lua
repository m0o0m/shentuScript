--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
	end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[������]", "[������]�ѿ��ţ�", 15000)

        local dgn = lualib:Map_CreateDgn("������", true, 1800)
        if dgn == "" then
            lualib:Error("�����������´���ʧ�ܣ�")
            return
        end
        lualib:Debug("�����������´����ɹ���")

        lualib:Map_SetCustomVarStr(map, "scheduled_ylsfb_dgn_guid", dgn)
    else  
		lualib:SysMsg_SendBoardMsg("0", "[������]", "[������]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ���������[235.240]���룡", 15000)
	end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
        lualib:Map_SetCustomVarStr(map, "scheduled_ylsfb_dgn_guid", "")
		lualib:SysMsg_SendBoardMsg("0", "[������]", "[������]�ѹرգ�", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[������]", "[������]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
    end
end

--[[local campaign_10006_id = 6000
	
function on_scheduled_timer(param)
    local param_table = lualib:StrSplit(param, "#")
    if param_table == nil then return end
    
    local campaign_10006 = campaign_impl:new() 
    campaign_10006.cur = deserialize(param_table[2])
    if campaign_10006.cur == nil then return end
    
    campaign_10006:set_begin_timer(param_table[1])
    campaign_10006:set_end_timer(param_table[1])
end

function on_timer_campaign_begin_declare(map, timer_id)
    timer_id = timer_id - campaign_10006_id
    lualib:SysMsg_SendTopMsg(1, "[������]�漱���������ֻص����������һ��������飬���Ҿ���������������������Ű��������١�Ӣ�������ٴ�������������[242.224]������ѹ���飡"..timer_id.."���Ӻ�����")
    lualib:SysMsg_SendBroadcastMsg("[������]�漱���������ֻص����������һ��������飬���Ҿ���������������������Ű��������١�Ӣ�������ٴ�������������[242.224]������ѹ���飡"..timer_id.."���Ӻ�����", "ϵͳ֪ͨ")
end

function on_timer_campaign_begin(map, timer_id)
    lualib:SysMsg_SendTopMsg(1, "[������]�ѿ��ţ�")
    lualib:SysMsg_SendBroadcastMsg("[������]�ѿ��ţ�", "ϵͳ֪ͨ")

    local dgn = lualib:Map_CreateDgn("������", true, 1800)
    if dgn == "" then
        lualib:Print("�����������´���ʧ�ܣ�")
        return
    end
    lualib:Print("�����������´����ɹ���")

    lualib:Map_SetCustomVarStr(map, "scheduled_ylsfb_dgn_guid", dgn)
    lualib:Map_SetCustomVarInt(map, "scheduled_ylsfb_dgn_times", lualib:GetAllTime())
end

function on_timer_campaign_end_declare(map, timer_id)
    timer_id = timer_id - campaign_10006_id - 500
    lualib:SysMsg_SendTopMsg(1, "[������]����"..timer_id.."���Ӻ�رգ����Ҿ���������ħ��")
    lualib:SysMsg_SendBroadcastMsg("[������]����"..timer_id.."���Ӻ�رգ����Ҿ���������ħ��", "ϵͳ֪ͨ")
end

function on_timer_campaign_end(map, timer_id)
    lualib:Map_SetCustomVarStr(map, "scheduled_ylsfb_dgn_guid", "")
    lualib:SysMsg_SendTopMsg(1, "[������]�ѹرգ�")
    lualib:SysMsg_SendBroadcastMsg("[������]�ѹرգ�", "ϵͳ֪ͨ")
end]]

function Goto(id,player,map)
	 local x = 235
	 local y = 237
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