local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"ף����ˮ�������ö��������������������󹥻����ʡ�", "�ڵ�ʿ�����У���������������˵����ף����ˮ�������������ڣ�Ҳ����������ɡ�", "��˵�����ǳ���Ĺؼ�����Ҫ������ʲô�أ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 240000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:-3>#��������������ش�½��������������ͽ���ݵĵ��񣬾�����ս����ϴ��#COLORCOLOR_GOLD#�������#COLOREND#�����������ռ���������Ҫ�����ڣ�\n \n#COLORCOLOR_GREENG#С��ʾ���ڲ�����ӡ�ǿɶһ�ף����ˮ��BOSSֱ�Ӳ�ף����ˮ��#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-8>#��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:-3>#��#COLORCOLOR_GRAY#��#COLOREND#<@jump *01*ǰ���������>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@info *01*�鿴�����>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@duihuan *01*�һ�ף����ˮ>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:-3>#��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-8>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"

	return msg
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:4>#������ؿ���Σ������Ŷ����׼��������\n"
         msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	if lualib:Player_HasDgnTicket(player, "�������") then
	msg = msg.."������#COLORCOLOR_GRAY#�X�������������[�����������X�������������[��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#��#COLOREND#<@jump_member *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��������������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#�^�������������a�����������^�������������a��#COLOREND#\n"
    else
	msg = msg.."������#COLORCOLOR_GRAY#�X�������������[�����������X�������������[��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#��#COLOREND#<@jump_leader *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��������������#COLOREND#<@main *01*��������ҳ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."������#OFFSET<X:0,Y:-2>##COLORCOLOR_GRAY#�^�������������a�����������^�������������a��#COLOREND#\n"
    end
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"

    return msg
end

function jump_member(npc, player)
	local members = lualib:Player_GetTeamList(player)
	if members == nil then return "���Ѿ�����ˣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	local dgn = lualib:Player_GetDgnByTicket(player, "�������")
	if dgn == "" then return "��������ѹرգ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	local team_guid = lualib:Map_GetCustomVarStr(dgn, "team_guid")
	if team_guid == "" then return "��û�н���������صļ�¼��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	if team_guid ~= lualib:Player_GetTeamGuid(player) then return "��Ǹ�����Ѿ������������ˣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
	lualib:JoinCamp(player, 11, 0)
    if lualib:Player_EnterDgn(player, "�������", 0, 0, 0) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"end
    return ""
end

function jump_leader(npc, player)

    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_wljdfb_dgn_guid")
    if dgn == "" then return "���������δ���ţ�������ϵͳ���棡\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	if not lualib:Player_IsTeamLeader(player) then return "�㲻�Ƕӳ���\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
	local members = lualib:Player_GetTeamList(player)
	if members == nil then return "�����ԱΪ�գ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	local team_guid = lualib:Player_GetTeamGuid(player)
	if team_guid == "" then return "��ȡ������Ϣ����\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

	local require_distance = 6
	for _, v in pairs(members) do
		local distance = lualib:Distance(v, npc)
		if distance > require_distance then
			if player == v then
				return "���ľ����Զ��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."���ľ����Զ��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	local require_level = 25
	for _, v in pairs(members) do
		local level = lualib:Player_GetIntProp(v,  lua_role_level)
		if level < require_level then
			if player == v then
				return "���ĵȼ����ͣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			else
				return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."���ĵȼ����ͣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
	end

	for _, v in pairs(members) do
		if lualib:Player_HasDgnTicket(v, "�������") then
			return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."���Ѿ��������������ĸ�����\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
	end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "���Ľ�Ҳ���"..require_gold.."��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    --[[local require_item = "������ر�а��"
    if lualib:Player_GetItemCount(player, require_item) < 0 then
        return "�������������Ҫ"..require_item.."��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    if not lualib:Player_DestroyItem(player, require_item, 0, "�۵��ߣ�����ʹ�ߴ�������", "����ʹ��") then
        return "�Ͻ���Ʒ"..require_item.."ʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end]]

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң�������ش��ͷ�", "����ʹ��") then
        return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

	for _, v in pairs(members) do
		lualib:Map_SetCustomVarStr(dgn, "team_guid", team_guid)
		if lualib:Player_SetDgnTicket(v, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
		lualib:JoinCamp(player, 11, 0)
		if lualib:Player_EnterDgn(v, "�������", 0, 0, 0) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"end
	end


    return ""
end

function duihuan(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:8>#ÿ#COLORCOLOR_RED#10������ӡ��#COLOREND#��#COLORCOLOR_RED#5��ǰ󶨽��#COLOREND#�ɡ��һ���1ƿ#COLORCOLOR_GOLD#ף����ˮ#COLOREND#����Ҫ���һ�����\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.."����������#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@award *01*���һ���>������������#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

    return msg
end

function award(npc, player)
    local require_item = "����ӡ��"
    local require_item_count = 10
    local award_item = "ף����ˮ"
    local award_item_count = 1
    local require_gold = 50000

    if lualib:Player_GetItemCount(player, require_item) < require_item_count then
        return "����"..require_item.."����"..require_item_count.."����\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "��Ľ�Ҳ���"..require_gold.."��\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    if not lualib:Player_DestroyItem(player, require_item, require_item_count, "ɾ��Ʒ������ʹ�ߡ��һ���ף����ˮ", player) then
        return "�Ͻ���Ʒʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң�����ʹ�ߡ��һ���ף����ˮ", "����ʹ��") then
        return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    if not lualib:Player_GiveItemUnbind(player, award_item, award_item_count, "����Ʒ������ʹ�ߡ��һ���ף����ˮ", player) then
        return "����Ʒʧ�ܣ�\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    return "���һ����ɹ���\n \n \n \n \n \n \n                                              #OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_RED#����ʱ�䣺#COLOREND#ÿ�� 14:30~15:00 20:00~20:30������������ϵͳ����\n"
         msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-9>##COLORCOLOR_RED#����ܣ�#COLOREND#��Ӳ��ܽ��룬�������������ɱ����ˢ�µ�С\n"
	 msg = msg.."#OFFSET<X:0,Y:4>#�ֻ�ȡ����ӡ��,ȥ���һ���ף����ˮ����Ȼ��Ҳ����ֱ��ɱ\n"
	 msg = msg.."#OFFSET<X:0,Y:4>#��BOSS��ȡ��\n"
         msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
         msg = msg.."#OFFSET<X:0,Y:-18>#������������������������������������������#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

function infoa(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_RED#����ʱ�䣺#COLOREND#ÿ�� 14:30~15:00 20:00~20:30������������ϵͳ����\n"
         msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
         msg = msg.."#OFFSET<X:0,Y:-9>##COLORCOLOR_RED#����������#COLOREND#�ҿ��԰�����ȥ������ػ�ȡף����ˮ�����������\n"
         msg = msg.."#OFFSET<X:0,Y:4>#Ҫ��һ��#COLORCOLOR_GOLD#������ر�а��#COLOREND#���ܱ����㲻��������������ʴ����˵\n"
         msg = msg.."#OFFSET<X:0,Y:4>#������ر�а���ɴ�#COLORCOLOR_SKYBLUE#����ڣ#COLOREND#�Ĺ������ϻ�ȡ����\n"
         msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
         msg = msg.."#OFFSET<X:0,Y:-12>#������������������������������������������#IMAGE<ID:1902700019>#<@main *01*�����ء�>"

	return msg
end

function leave(npc, player)
    return ""
end
