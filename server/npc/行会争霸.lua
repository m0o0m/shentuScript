
function main(npc, player)
	local msg = [[
	#POS<Y:25>##COLORCOLOR_ORANGE#������һֱ���������л��ͼ,��ȷ��Ҫ��ȥ��?
	
	#COLORCOLOR_BROWN#�л��������#COLORCOLOR_RED#19:00��ͨ#COLOREND#��#COLORCOLOR_RED#19:30�ر�#COLOREND#
	#COLORCOLOR_BROWN#��ͼ��պ�,ҩ����ᱻ���Ĺ�,ʤ���ܾ�һ�н��!
	#COLORCOLOR_RED#ע��:#COLORCOLOR_BROWN#����ڹرպ�!�벻Ҫ��ǰ�뿪�˵�ͼ!ֱ��ʤ�����������#COLOREND#
	#COLORCOLOR_BROWN#�����׻�ɱ���һ���ж��л��Ա�󼴿ɻ��ʤ��!�����ɻ�ʤ�л�᳤��ȡ�������ң�!
	
	#IMAGE1902700018#<@jump *01*[�����л�ս����ͼ]>		#IMAGE1902700032#<@award *01*[��ȡ����]>
	]]
	return msg
	-- lualib:NPCTalkDetail(player, msg, 470, 200) --�Զ��峤��
	
end

function award(npc, player)
	local msg = ""
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		return "��û���лᣡ\n <@leave *01*�뿪>"
	end
	if not lualib:Player_IsGuildLeader(player) then
		return "�Բ����㲻�ǻ᳤���޷���ȡ��\n <@leave *01*�뿪>"
	end
	local Guild_award = lualib:GetDBStr("Guild_award")
	if Guild_award ~= Guild then
		return "����л�δ����ϴλʤ����\n <@leave *01*�뿪>"
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
	local map = lualib:Map_GetMapGuid("��ŭ֮��")
    local dgn_guid = lualib:GetStr(map, "guild_map_guid")
	local open_hhzb_jinru = lualib:GetInt(map,"open_hhzb_jinru")
	
	if dgn_guid == "" or dgn_guid == nil then
		local msg = "[�л�����]���δ��ʼ���޷����룡"
		-- lualib:NPCTalkDetail(player, msg, 200, 100) --�Զ��峤��
		return msg
	end
		
	
	
	if open_hhzb_jinru == 0  then

	end
	
	local Guild = lualib:GuildGuid(player)
	if Guild == "" or Guild == nil then
		local msg = "��û���лᣬ�޷����룡"
		-- lualib:NPCTalkDetail(player, msg, 200, 100) --�Զ��峤��
		return msg
	end
	

	if not lualib:Map_IsDgnExist(dgn_guid) then
		return "���������ڣ�����ϵGM!"
	end
	
	lualib:Player_SetDgnTicket(player, dgn_guid)
	if lualib:Player_HasDgnTicket(player, "�л����Ե�ͼ") then
		lualib:Player_EnterDgn(player, "�л����Ե�ͼ", 80, 100, 10)
		-- lualib:SysMsg_SendBroadcastColor("�л����ԣ�"..lualib:Name(player).."ͨ����ŭ֮�����Իʹ�߽����л����Ե�ͼ��", "", 1, 12)	
	end
	return ""
end



function leave(npc, player)
	return ""
end
