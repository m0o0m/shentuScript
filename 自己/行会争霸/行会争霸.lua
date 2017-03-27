

function main(npc, player)
	local msg = [[\n������һֱ���������л��ͼ,��ȷ��Ҫ��ȥ��?
�л��������#COLORCOLOR_RED#19:00��ͨ#COLOREND#��#COLORCOLOR_RED#19:30�ر�#COLOREND#
��ͼ��պ�,ҩ����ᱻ���Ĺ�,ʤ���ܾ�һ�н��!
#COLORCOLOR_RED#ע��:����ڹرպ�!�벻Ҫ��ǰ�뿪�˵�ͼ!ֱ��ʤ�����������#COLOREND#
�����׻�ɱ���һ���ж��л��Ա�󼴿ɻ��ʤ��!�����ɻ�ʤ�л�᳤��ȡ!
ʤ����᳤������Ӧ��ҽ���]]
	msg = msg.."\n\n"
	msg = msg.."	#IMAGE1902700018#����<@jump *01*�л�ս����ͼ>"
	msg = msg.."						#IMAGE1902700032#<@award *01*��ȡ����>\n"
	lualib:NPCTalkDetail(player, msg, 470, 200) --�Զ��峤��
	return ""
end

function award(npc, player)
	local msg = ""
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		return "��û���лᣡ\n <@leave *01*�뿪>"
	end
	
	local Guild_award = lualib:GetDBStr("Guild_award")
	
	if Guild_award ~= Guild then
		return "����л�δ����ϴλʤ����\n <@leave *01*�뿪>"
	end
	
	if not lualib:Player_IsGuildLeader(player) then
		return "�Բ����㲻�ǻ᳤���޷���ȡ��\n <@leave *01*�뿪>"
	end
	
	local Guild_name = lualib:Name(Guild_award)
	local player_name = lualib:Name(player)
	local yb = lualib:GetDBNum("Guild_yb")
	lualib:SysMsg_SendBroadcastMsg("[["..Guild_name.."]ʤ��, �᳤"..player_name.."��ȡ"..yb.."��ҽ�����", "ϵͳ֪ͨ")
	
	if not lualib:Player_AddGold(player, yb, false, "�л����Խ���", "") then
		return "��ӽ��ʧ�ܣ�����ϵGM��"
	else
		lualib:SetDBNum("Guild_yb", 0)
		lualib:SetDBStr("Guild_award", "")
		return "��ϲ�������л����ԵĽ�����\n <@leave *01*�뿪>"
	end
end


function jump(npc, player)
	local map = lualib:Map_GetMapGuid("����")
    local dgn_guid = lualib:GetStr(map, "guild_map_guid")
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")
	
	if dgn_guid == "" or dgn_guid == nil then
		msg = "�Բ���!��ȷ�����ھ����л����Ի��?���������챾�!\n�ճ���ÿ������б��!\n"
		msg = msg.."<@leave *01*�뿪>"
		return msg
	end
	
	
		if open_hhzb_jinru == 0  then
		return "�Բ����л���������ѹر�!\n <@leave *01*�뿪>"
		end
		
	
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		return "��û���лᣬ�޷�����!\n <@leave *01*�뿪>"
	end
	

	if not lualib:Map_IsDgnExist(dgn_guid) then
		return "���������ڣ�����ϵGM!"
	end
	
		lualib:Player_SetDgnTicket(player, dgn_guid)
		if lualib:Player_HasDgnTicket(player, "�л�ս����ͼ") then
		lualib:Player_EnterDgn(player, "�л�ս����ͼ", 0, 0, 0)
		lualib:SysMsg_SendBroadcastColor("�л����ԣ�"..lualib:Name(player).."ͨ�������л�����NPC�����л�ս��ͼ��", "", 1, 12)	
	end
	return ""
end



function leave(npc, player)
	return ""
end
