function on_start(id, map)
end

function on_start_decl(id, map, times)
	local TheserverOntime = lualib:GetDBNum("TheserverOntime")		--��������������
	
	if TheserverOntime ~= 2 then
		return 
		--lualib:SysMsg_SendBroadcastMsg("������7", "ϵͳ֪ͨ")
	end
		
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBNum("Guild_yb", 30000000)
        lualib:SysMsg_SendBroadcastMsg("[�л�����]�ѿ�ʼ������л��ԱӻԾ�μӣ�", "ϵͳ֪ͨ")
        local dgn = lualib:Map_CreateDgn("�л�ս����ͼ", true, 14400)
        if dgn == "" then
            lualib:Error("�������л�����ս����ʧ�ܣ�")
            return
        end
        lualib:Debug("�������л�����ս�����ɹ���")
		lualib:SetStr(map, "guild_map_guid", dgn)---��������ͼGUID�������
		lualib:SetInt(map, "open_hhzb_jinru", 1)--�������
    else
		lualib:SysMsg_SendBroadcastMsg("[�л�����]����"..math.floor(times / 60000).."���ӿ�����", "ϵͳ֪ͨ")
    end
  
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetStr(map, "guild_map_guid", "")---��������ͼGUID��� û��GUID����޷�����
    else
        lualib:SysMsg_SendBroadcastMsg("[�л�����]����"..math.floor(times / 60000).."���Ӻ�ֹͣ���룡", "ϵͳ֪ͨ")
    end
end

function Goto(id,player,map)
	local x = 245
	local y = 271
	local r = 3
	local map_key_name = "����"
	local gold = 2000
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ2000���"
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