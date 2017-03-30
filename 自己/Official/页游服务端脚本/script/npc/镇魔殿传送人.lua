local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")

require_gold = 10000

local talk_t = {"ÿ����ħ��ŵ�ʱ�򣬶����г�Ⱥ�Ĺ���ӿ������", "�����ڹ���Ⱥ�е�BOSS��������в��", "��ħ��һ��ֻ�ɽ������Σ����鳬�ߣ����Դ��Ҫ��ϧŶ��"}
  
function on_create(npc)
	lualib:AddTimer(npc, 1, 180000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "������ս�ڼ䣬������������˶�ħ��½������ش�½��λ��ͨ����Ϊ�˷�ӡ��Щλ��ͨ������ش�½�ڸ����޴���ۺ󣬽�������ħ�\n#COLORCOLOR_GREENG#  С��ʾ��30�����Ͽ�ÿ����ս3����ħ��ɻ�ô�������ͼ���װ����#COLORCOLOR_RED#�ȼ�Խ�ߣ�����Խ�࣡#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-2>#   #IMAGE<ID:1902700018>#<@jump *01*��ǰ����ħ�>   #IMAGE<ID:1902700017>#<@info *01*������ܡ�>   #IMAGE<ID:1902700017>#<@info1 *01*�������>��\n"
	msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	return msg
end

function jump(npc, player)
    local msg = "������ħ����Ҫ#COLORCOLOR_YELLOW#"..require_gold.."#COLOREND#��ң���׼��������\n"
           msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	   msg = msg.."#COLORCOLOR_RED#����������#COLOREND#�������ұ���ȼ����ڵ���30����û��ӣ��ɵ��˽��룡������ˣ���Ҫ�ӳ����ӽ��룡\n"
	   msg = msg.."������������������Խ�࣬��þ��齱���ӳ�Խ�ߣ�\n"
           msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	if lualib:Player_HasDgnTicket(player, "��ħ��") then
		msg = msg.."#IMAGE<ID:1902700018>#<@jump_member *01*��������ս>��\n"
		--msg = msg .. "���Ѿ���ս����ħ����ܼ�����ս \n"
	else
		msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump_leader#2 *01*������ǰ����ħ�>\n"
		msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump_leader#1 *01*�����ǰ����ħ�>\n"
		msg = msg.."#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@miaosha *01*����ɱ��ħ�(����ս��ֱ�ӻ�þ���)>\n \n"
	end
    return msg
end

function miaosha(npc, player)
	local msg = "ûʱ����߲�Ըȥ����ô��֣�����Կ�����ħ�������Ż�����ɱ�������ս��ֱ�ӻ�ý�����ÿ����Ҫ���ɽ�����ڻ���ά����Ҳ����ʹ��Ԫ�������ҽɷѡ�#COLORCOLOR_RED#�����㵥�ˡ���ӻ�����ɱ��ħ��������ÿ�յ��볡����#COLOREND#\n \n"
	msg = msg.."�������飺#IMAGE<ID:1902700037>#<@addexp#1#1 *01*10������ɱ>    ��  #IMAGE<ID:1902700037>#<@addexp#2#1 *01*200Ԫ����ɱ>\n"
	msg = msg.."˫�����飺#IMAGE<ID:1902700037>#<@addexp#1#2 *01*20������ɱ>    ��  #IMAGE<ID:1902700037>#<@addexp#2#2 *01*400Ԫ����ɱ>\n"
	msg = msg.."�������飺#IMAGE<ID:1902700037>#<@addexp#1#3 *01*40������ɱ>    ��  #IMAGE<ID:1902700037>#<@addexp#2#3 *01*600Ԫ����ɱ>\n"
	msg = msg.."�ı����飺#IMAGE<ID:1902700037>#<@addexp#1#4 *01*80������ɱ>    ��  #IMAGE<ID:1902700037>#<@addexp#2#4 *01*800Ԫ����ɱ>\n"
	return msg
end

function addexp(npc, player, types, exp_power)
	if lualib:Player_GetIntProp(player,  lua_role_level) < 28 then
		return "���ĵȼ����ͣ���28��������\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end

	if not lualib:VerifyCampCount(player, 4) then
		return "�������Ѿ������3����ħ���ˣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end
	
	local req_t = {
						{100000, 200000, 400000, 800000},
						{200, 400, 600, 800},
					}
	local types = tonumber(types)
	local exp_power = tonumber(exp_power)
	local player_level = lualib:Level(player)
	--���鹫ʽ�Լ�д
	local exps = player_level * player_level * player_level * player_level * ( 60 / player_level ) * exp_power
	
	if types == 1 then
		if not lualib:Player_IsGoldEnough(player, req_t[types][exp_power], false) then
			return "��û��"..req_t[types][exp_power].."��ң��޷���ɣ�"
		end
		
		if not lualib:Player_SubGold(player, req_t[types][exp_power], false, "��ɱ��ħ", player) then
			return "�۳����ʧ�ܣ�"
		end
	          lualib:Player_AddExp(player, exps, "��ɱ��ħ", player)
                  process_horse_add_exp(player, exps)
	elseif types == 2 then
		if not lualib:Player_IsIngotEnough(player, req_t[types][exp_power], false) then
			return "��û��"..req_t[types][exp_power].."Ԫ�����޷���ɣ�"
		end
		
		if not lualib:Player_SubIngot(player, req_t[types][exp_power], false, "��ɱ��ħ", player) then
			return "�۳�Ԫ��ʧ�ܣ�"
		end
	          lualib:Player_AddExp(player, exps, "��ɱ��ħ", player)
	          process_horse_add_exp(player, exps)
	end
	



	lualib:JoinCamp(player, 4, 0)
	return "��ɱ�ɹ�����ϲ���ڶԿ���ħ�ĵ�·�ϻ�ø���ɳ���\n \n \n \n#IMAGE<ID:1902700018>#<@jump *01*������ǰ����ħ�> "
end

function jump_member(npc, player)
	local members = lualib:Player_GetTeamList(player)
	if members == nil then return "���Ѿ�����ˣ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>" end

	local dgn = lualib:Player_GetDgnByTicket(player, "��ħ��")
	if dgn == "" then return "��ħ���ѹرգ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>" end

	local team_guid = lualib:Map_GetCustomVarStr(dgn, "team_guid")
	if team_guid == "" then return "��û�н�����ħ��ļ�¼��\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>" end

	--if team_guid ~= lualib:Player_GetTeamGuid(player) then return "��Ǹ�����Ѿ������������ˣ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>" end
	--lualib:JoinCamp(player, 4, 0)
    if lualib:Player_EnterDgn(player, "��ħ��", 62, 67, 15) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>"end
	
    return ""
end

function jump_leader(npc, player, types)
	if  types == "1" then 
		if lualib:Player_HasTeam(player) == false then 
			return "��û����ӣ��޷���ӽ��룡\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" 
		end
		
		if not lualib:Player_IsTeamLeader(player) then return "�㲻�Ƕӳ���\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
		local members = lualib:Player_GetTeamList(player)
		if members == nil then return "�����ԱΪ�գ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

		local team_guid = lualib:Player_GetTeamGuid(player)
		if team_guid == "" then return "��ȡ������Ϣ����\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

		local require_distance = 20
		for _, v in pairs(members) do
			local distance = lualib:Distance(v, npc)
			if distance > require_distance then
				if player == v then
					return "���ľ����Զ��\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				else
					return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."���ľ����Զ��\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				end
			end
		end

		local require_level = 28
		for _, v in pairs(members) do
			local level = lualib:Player_GetIntProp(v,  lua_role_level)
			if level < require_level then
				if player == v then
					return "���ĵȼ����ͣ���28��������\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				else
					return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."���ĵȼ����ͣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				end
			end
		end

		for _, v in pairs(members) do
			if lualib:Player_HasDgnTicket(v, "��ħ��") then
				return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."���Ѿ��������������ĸ�����\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
			end
		end
		
		for _, v in pairs(members) do
			if not lualib:VerifyCampCount(v, 4) then
				if v == player then 
					return "�������Ѿ������3����ħ���ˣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				else
					return "���ѡ�"..lualib:Player_GetStrProp(v, lua_role_user_name).."�������Ѿ��������ħ����\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
				end
			end
		end

	  
		if not lualib:Player_IsGoldEnough(player, require_gold, false) then
			return "���Ľ�Ҳ���"..require_gold.."��\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end

		if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң���ħ��ͷ�", "��ħ�����") then
			return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end

		local dgn = lualib:Map_CreateDgn("��ħ��", false, 1800)
		if dgn == "" then
			lualib:Error("��������ħ���ʧ�ܣ�")
			return
		end
		lualib:Debug("��������ħ����ɹ���")

		for _, v in pairs(members) do
			lualib:Map_SetCustomVarStr(dgn, "team_guid", team_guid)
			lualib:Player_SetCustomVarInt(v, "zmdfb_enter_days", lualib:GetAllDays(0))
			lualib:Player_SetCustomVarInt(v, "zmdfb_var_award", 0)
			if lualib:Player_SetDgnTicket(v, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
			lualib:JoinCamp(v, 4, 0)
			if lualib:Player_EnterDgn(v, "��ħ��", 52, 65, 15) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"end
			if lualib:HasSkill(v, "Ǭ��һ��", false) == false then 
				if not lualib:AddSkill(v, "Ǭ��һ��") == true then
					lualib:Error("������ħ��ѧϰǬ��һ������ʧ�ܣ�")
				end
				if not lualib:AddItem(v, "����ʯ����", 1, true, "��һ�ν�����ħ�����ͼ���ʯ����", v) == true then
					lualib:Error("������ħ����輼��ʯ����ʧ�ܣ�")
				end
			end
		end
	elseif types == "2" then
		if lualib:Player_HasTeam(player) == true then 
			return "������ӣ��޷�����ģʽ���룡\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" 
		end
		
		if lualib:Player_GetIntProp(player,  lua_role_level) < 28 then
			return "���ĵȼ����ͣ���28��������\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		if not lualib:VerifyCampCount(player, 4) then
			return "�������Ѿ������3����ħ���ˣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		if not lualib:Player_IsGoldEnough(player, require_gold, false) then
			return "���Ľ�Ҳ���"..require_gold.."��\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң���ħ��ͷ�", "��ħ�����") then
			return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
		end
		
		local dgn = lualib:Map_CreateDgn("��ħ��", false, 1800)
		if dgn == "" then
			lualib:Error("��������ħ���ʧ�ܣ�")
			return
		end
		lualib:Debug("��������ħ����ɹ���")

		lualib:Map_SetCustomVarStr(dgn, "team_guid", "1")
		lualib:Player_SetCustomVarInt(player, "zmdfb_enter_days", lualib:GetAllDays(0))
		lualib:Player_SetCustomVarInt(player, "zmdfb_var_award", 0)
		if lualib:Player_SetDgnTicket(player, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end
		lualib:JoinCamp(player, 4, 0)
		if lualib:Player_EnterDgn(player, "��ħ��", 52, 65, 15) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n \n������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"end
		if lualib:HasSkill(player, "Ǭ��һ��", false) == false then 
			if not lualib:AddSkill(player, "Ǭ��һ��") == true then
				lualib:Error("������ħ��ѧϰǬ��һ������ʧ�ܣ�")
			end
			if not lualib:AddItem(player, "����ʯ����", 1, true, "��һ�ν�����ħ�����ͼ���ʯ����", player) == true then
				lualib:Error("������ħ����輼��ʯ����ʧ�ܣ�")
			end
		end
	end
    return ""
end

function info(npc, player)
	local 	msg = "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	   msg = msg.."#COLORCOLOR_RED#����������#COLOREND#�������ұ���ȼ����ڵ���28��������Ҫ��ӣ���\n"
	   msg = msg.."�����������ӳ����������ħ��\n"
           msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_RED#����ܣ�#COLOREND#��ħ����һ��ˢ�������������һ�������BOSS�������ȡһ����ħ��ϻ\n"
           msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
           msg = msg.."#IMAGE<ID:1902700038>##OFFSET<X:0,Y:-1>#<@main *01*����һҳ��>������������������������������#OFFSET<X:0,Y:1>#<@infoa *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>#\n"

	return msg
end


function infoa(npc, player)
	local 	msg = "#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_RED#��ͼ���ƣ�#COLOREND#�ʱ��Ϊ30���ӣ�ÿ����ɫÿ��ֻ�ܽ�������ħ��\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_RED#��ͼ���䣺#COLOREND#ף����ˮ����ʯ��顢��ħӡ��30��40����װ������\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>#����������������װ\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_RED#��ħ��ϻ��#COLOREND#ʹ�ñ�ϻ���Ի��һ��30�����ϸ߼�װ�����߸߼���\n"
	   msg = msg.."#OFFSET<X:0,Y:-2>#����������Ʒ,�и��ʻ�á���Ʒ��������Ʒ������\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function info1(npc, player)
	local 	msg = "#COLORCOLOR_RED#��ħ��ϻ#COLOREND#��������ħ��ϻ�ض���ø��ָ߼�װ������Ʒ�����һ��и��ʻ��ϡ�еġ���Ʒ��������Ʒ������\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."������#COLORCOLOR_RED#����Ʒ��30������#COLOREND#������(��)������(��)������(��)\n"
	msg = msg.."������#COLORCOLOR_RED#����Ʒ��35������#COLOREND#��ʮɱ(��)����Ԩ(��)������(��)\n"
	msg = msg.."������#COLORCOLOR_RED#����Ʒ��30������#COLOREND#������(��)������(��)������(��)\n"
	msg = msg.."������#COLORCOLOR_RED#����Ʒ��35������#COLOREND#��ʮɱ(��)����Ԩ(��)������(��)\n"
           msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
           msg = msg.."������������������������������������������#OFFSET<X:0,Y:-3>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end

function leave(npc, player)
    return ""
end