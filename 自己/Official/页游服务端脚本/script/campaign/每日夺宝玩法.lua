--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SetDBStr("nowActivityName", "Ѱ���ᱦ   19:00 - 19:15")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway", 1)
        --lualib:SysMsg_SendTopMsg(1, "[Ѱ���ᱦ]")
        --lualib:SysMsg_SendBroadcastMsg("[Ѱ���ᱦ]", "ϵͳ֪ͨ")
		
		lualib:SysMsg_SendBoardMsg("0", "[Ѱ���ᱦ]", "[Ѱ���ᱦ]�ѿ��ţ�", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[Ѱ���ᱦ]�ѿ���, �������Ѱ���ᱦNPC�����롣#COLOREND#", 11, 2)
		
        local dgn = lualib:Map_CreateDgn("Ѱ���ᱦ", true, 20*60)
        if dgn == "" then
            lualib:Error("������Ѱ���ᱦ����ʧ�ܣ�")
            return
        end
		lualib:GSRunScript("IsActivityUnderWay:AddAtivityMagic", "")
		lualib:GSRunScript("��һ����:playerMoveMagic5", "")
        --lualib:Debug("������Ѱ���ᱦ�����ɹ���")
        --lualib:SetStr(map, "xldb_existing_dgn", dgn)
    else
		lualib:SysMsg_SendBoardMsg("0", "[Ѱ���ᱦ]", "[Ѱ���ᱦ]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ�����Ѱ���ᱦNPC�����룡", 15000)
		lualib:SysMsg_SendTopColor(1, "#COLORCOLOR_YELLOW#[Ѱ���ᱦ]����"..math.floor(times / 60000).."���ӿ�����Ӣ�������ٴ�����Ѱ���ᱦNPC�����룡#COLOREND#", 11, 2)
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:GSRunScript("IsActivityUnderWay:DelAtivityMagic", "")
		lualib:SetDBStr("nowActivityName", "")
		--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
		lualib:SetDBNum("ActivityUnderway",0)
		--lualib:SysMsg_SendBoardMsg("0", "[Ѱ���ᱦ]", "[Ѱ���ᱦ]�ѹرգ�", 15000)
		local dgn_id = ""
		local player = ""
		dgn_id = lualib:GetStr("0", "xldb_existing_dgn")
		if dgn_id ~= 0 then 
			player = lualib:GetStr(dgn_id, "box_owner")
		end
		if player == "" then
			lualib:SysMsg_SendBroadcastColor("��Ѱ���ᱦ�����ڻʱ�����������ʤ����ҡ���ȱ��", "ϵͳ֪ͨ", 1, 0)
		else
			lualib:SysMsg_SendBroadcastColor("��Ѱ���ᱦ�����ڻʱ����������ر�����������ҡ�"..lualib:Name(player).."����ã�", "ϵͳ֪ͨ", 1, 0)
			lualib:DelItemEx(player, "����ӡ�ı���", 1, 2, false, true, false, false, "Ѱ���ᱦ�����", "Ѱ���ᱦ�����")
			lualib:AddItem(player, 'Ѱ������', 1, true, "Ѱ���ᱦ�����", player)
			if lualib:HasBuff(player, "��Ĺ�ᱦ") then
				if not lualib:DelBuff(player, "��Ĺ�ᱦ") then
					lualib:Error("���ɾ��BUFF��Ĺ�ᱦ����")
					return false 
				end
			end
			
			local award_timer_id = lualib:GetInt(player, "award_timer_id")
			if award_timer_id ~= 0 then 
				lualib:DisableTimer(player, award_timer_id)
			end
			
			local str = 
			[[
				local _handle = GetWindow(nil, "xldb_timeUI")
				if _handle ~= 0 then
					xldb_timeUI.onclose(_handle)
				end
			]]
			lualib:ShowFormWithContent(player, "�ű���", str)
			
		end 
		local counts = lualib:GetInt(dgn_id, "playerCounts")
		if counts ~= 0 then 
			for i = 1, counts do 
				local player = lualib:GetStr(dgn_id, "player"..i)
				if player ~= 0 then 
					--����ͨ���ʼ�����
					lualib:MailToPlayer("Ѱ���ᱦ���뽱��", player, "��л�����뱾��Ѱ���ᱦ�,�´λ������������7�㿪ʼ", 0, 0, 
					{
						"��שС",1,1,
						"��שС",1,1,
					})
				end
			end
		end
		lualib:Map_DestroyDgn(dgn_id);
		lualib:SetStr("0", "xldb_existing_dgn", "")  --�رո������
    else
		lualib:SysMsg_SendBoardMsg("0", "[Ѱ���ᱦ]", "[Ѱ���ᱦ]����"..math.floor(times / 60000).."���Ӻ�رգ�", 15000)
    end
end



function Goto(id,player,map)
	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
	end
	
	local level = lualib:Level(player)
	if level >= 50 then
		lualib:Player_NpcMove(player, "���Ƕᱦ���", 3)
		local str = 
		[[ 
			local handle = GetWindow(nil, "Campaign")
			if handle ~= 0 then
				GUI:WndClose(handle)
			end
		]]
		lualib:ShowFormWithContent(player,"�ű���",str)
		lualib:ShowFormWithContent(player, "form�ļ���", "xldb_NPCShow")
	else 
		lualib:ShowFormWithContent(player,"�ű���","Campaign.msg('�ȼ�����')" )
	end
	
	--[[
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001670#"..x.."#"..y.."#0#0")
	--]]
	return ""
end