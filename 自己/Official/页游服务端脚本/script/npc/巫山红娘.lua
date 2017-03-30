local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")
require("system/serializer")
local talk_t = {"�����һ����ʥ���Ҹ������飬�����������֮�ˣ������������������Ŷ��", "�����Ҫ����ָ��һЩ��ң������ȥ��ɽ��ý���ָ��õ�廨��", "�����Ի��ѫ�º���Ƚ��״̬������֮��Խ���ܣ�ѫ�º�״̬��Ч��Խ��Ŷ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 300000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end
function main(npc, player)

	--lualib:ShowFormWithContent(player,"form�ļ���","TaskDlg")
	lualib:ShowFormWithContent(player,"form�ļ���","AutoLevelUpResultWnd")
	--lualib:ShowFormWithContent(player,"form�ļ���","HandBook")

	
	
	
	
	local msg = "    ��һ��������ب�Ŷ�������ӿ�����������˲�ս������һ������ɽ���ϣ�ˮ���ܸ����׻��������˿��ӱܣ�շת���࣬��ҹ���ߣ�ֻ�Ƚ�ָ�����������ָ��������İ��£����Ͻ���ָ��10W��ң��Ϳ�����������������\n"
	msg = msg.."#OFFSET<X:2,Y:-4>##COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700041##OFFSET<X:0,Y:-2>#<@propose *01*[��Ҫ�����ǵ������]>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@reward *01*[��ȡ���޽���]>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@jump *01*[ǰ����ɽ]��ר����Ե��ͼ��>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700030##OFFSET<X:0,Y:-2>#<@divorce *01*[Э�����]>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@force_divorce *01*[ǿ�����]>\n"
	msg = msg.."                                                      #OFFSET<X:0,Y:-6>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*[�뿪]>\n\n"
	--if 5 <= lualib:GMLevel(player) then
		--msg = msg.."<@main2 *01*[���Թ���]>\n"
	--end
	lualib:NotifyVar(player, "dsadasdsadsadw22222")
	return msg
end

function propose(npc, player)
    -- �ж��Ա������ܸ����е�
    local gender = lualib:Player_GetIntProp(player,  lua_role_gender)
    if gender ~=  lua_gender_male then
        return "������¶���Ů����������ֵ�á�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- �жϻ��
    if lualib:Player_GetCustomVarStr(player, "��żGUID") ~= "" then
        return "�ػ���Ƿ����ġ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- �ж��Ƿ��г��з�
    if not lualib:Player_IsGoldEnough(player, 100000, false) then
        return "�����Ҫһö����ָ��100000��ң�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:Player_GetItemCount(player, "����ָ") < 1 then
       return "����ָ��û׼���þ�����飿\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- �������ϣ�ѯ�ʽ�����
    lualib:ShowForm(player, "����")
    return ""
end

function divorce(npc, player)
    local spouse = lualib:Player_GetCustomVarStr(player, "��ż����")
    if spouse == "" then
        return "�㻹û����ء�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- �ж϶Է��Ƿ�����
    local spouse_guid = lualib:Player_GetGuid(spouse)
    if spouse_guid == "" or lualib:Map_GetDistance(lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc), lualib:Player_GetPosX(spouse_guid), lualib:Player_GetPosY(spouse_guid)) > 10 then
        return "�ף���û����"..spouse.."�����ﰡ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)

    if lualib:SysMsg_SendMsgDlg(spouse_guid, 1, "��ȷ��Ҫ��"..player_name.."�����#BUTTON0#ȷ��#BUTTONEND##BUTTON1#ȡ��#BUTTONEND#", 30, "on_divorce_ack", player_name) == false then
        return "æ���أ�������������\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

	return "����Է�������Э�����������ȴ��Է���Ӧ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function force_divorce(npc, player)
    local spouse = lualib:Player_GetCustomVarStr(player, "��ż����")
    if spouse == "" then
        return "�㻹û����ء�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- ǿ�������Ҫ������
    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "ǿ�������Ҫ1000000��Һ�һ�ź��˿���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- ��Ҫ����
    if lualib:Player_GetItemCount(player, "���˿�") < 1 then
       return "��û�к��˿���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    lualib:SysMsg_SendMsgDlg(player, 1, "��ȷ��Ҫ��"..spouse.."�����#BUTTON0#ȷ��#BUTTONEND##BUTTON1#ȡ��#BUTTONEND#", 30, "on_force_divorce_ack", spouse)
end

function on_divorce_ack(dlg_id, player, button_id, spouse)
	local button_id = tonumber(button_id)
	local spouse_guid = lualib:Name2Guid(spouse)
    if button_id ~= 0 then
		lualib:SysMsg_SendTriggerMsg(spouse_guid, "�Է��ܾ���顣")
		lualib:SysMsg_SendTriggerMsg(player, "��ܾ�����飡")
        return "�Է��ܾ���顣"
    end
    lualib:Player_SetCustomVarStr(player, "��ż����", "")
    lualib:Player_SetCustomVarStr(player, "��żGUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "���"..spouse.."����ˡ�")
    lualib:Player_NotifyCustomParam(player, "��ż����")
    lualib:ScriptFuncToPlayer(spouse, "���", "on_divorce", "")

    return ""
end

function on_force_divorce_ack(dlg_id, player, button_id, spouse)
    if button_id ~= 0 then
        return ""
    end

    -- ǿ�������Ҫ������
    if not lualib:Player_IsGoldEnough(player, 1000000, false) then
        return "��Ľ�Ҳ��㡣\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    -- ��Ҫ����
    if lualib:Player_GetItemCount(player, "���˿�") < 1 then
       return "��û�к��˿���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    --�۳���Ʒ
    lualib:Player_SubGold(player, 1000000, false, "�۽�ң����������", spouse)
    lualib:Player_DestroyItem(player, "���˿�", 1, "ɾ��Ʒ������õ���", spouse)

    lualib:Player_SetCustomVarStr(player, "��ż����", "")
    lualib:Player_SetCustomVarStr(player, "��żGUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, "���"..spouse.."����ˡ�")
    lualib:Player_NotifyCustomParam(player, "��ż����")
    lualib:ScriptFuncToPlayer(spouse, "���", "on_divorce", "")

    return ""
end

function on_divorce(player)
    local spouse = lualib:Player_GetCustomVarStr(player, "��ż����")
    lualib:Player_SetCustomVarStr(player, "��ż����", "")
    lualib:Player_SetCustomVarStr(player, "��żGUID", "")
    marry_unload(player)

    lualib:SysMsg_SendPromptMsg(player, spouse.."��������ˡ�")
    lualib:Player_NotifyCustomParam(player, "��ż����")
end

function reward(npc, player)
	msg = "#COLORCOLOR_SKYBLUE#ѡ����Ҫ��ȡ�Ľ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@medal_award *01*[��ȡͬ��ѫ��]>\n"
	msg = msg.."#OFFSET<X:2,Y:2>##IMAGE1902700031##OFFSET<X:0,Y:-2>#<@buff_award *01*[��ȡ��Ƚ��״̬]>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@reward_info *01*[��������]>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@intimacy_info *01*[���ܶȽ���]>\n \n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
	return msg
end

function reward_info(npc, player)
	local msg = "#COLORCOLOR_GOLD#����һ��ͬ��ѫ�£���Ҫ��Ӧ�����ܶȲſ��������#COLOREND# "
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�1��999��#COLOREND#    #OFFSET<X:3,Y:0>#ͬ��ѫ��һ����ȫ����0-1��"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�1000��1999��#COLOREND##OFFSET<X:4,Y:0>#ͬ��ѫ�¶�����ȫ����0-2��"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�2000��2999��#COLOREND##OFFSET<X:2,Y:0>#ͬ��ѫ��������ȫ����0-3��"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�3000��4499��#COLOREND#ͬ��ѫ���ļ���ȫ����0-4����+1,����+1��"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�4500��5999��#COLOREND##OFFSET<X:1,Y:0>#ͬ��ѫ���弶��ȫ����0-5����+1,����+1,��\n                     #COLOREND##OFFSET<X:-4,Y:0>#��+1��"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�6000���ϣ�#COLOREND#   #COLOREND##OFFSET<X:-4,Y:0>#ͬ��ѫ��������ȫ����1-6,����+2,����+2,��\n                     #OFFSET<X:-4,Y:0>#��+2��\n"
			msg = msg.." \n #COLORCOLOR_GOLD#����������Ƚ��״̬�����ܶ�Խ�ߣ���Ƚ��Ч��Խ��#COLOREND#"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�1��999��#COLOREND#    #OFFSET<X:2,Y:0>#��־�������1%"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�1000��1999��#COLOREND# #OFFSET<X:-2,Y:0>#��־�������5%"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�2000��2999��#COLOREND##OFFSET<X:2,Y:0>#��־�������10%"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�3000��4499��#COLOREND#��־�������15%"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�4500��5999��#COLOREND##OFFSET<X:1,Y:0>#��־�������20%"
			msg = msg.." \n #COLORCOLOR_RED#���ܶ�6000���ϣ�#COLOREND#  #OFFSET<X:1,Y:0>#��־�������30% \n\n"
		msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@reward *01*�����ء�>\n \n"
	return msg
end

function intimacy_info(npc, player)
	local msg = "#COLORCOLOR_GOLD#���ܶȿ���:#COLOREND# "
			msg = msg.." \n ��Ů˫����Ϊ���޺�,���ܶ��Զ�����"
			msg = msg.." \n #COLORCOLOR_GOLD#���ܶ�����:#COLOREND#"
			msg = msg.." \n 1.����˫����ͬһ����ʱ,ÿ����˫���Զ�����#COLORCOLOR_SKYBLUE#1��#COLOREND#���ܶ�"
			msg = msg.." \n 2.����һ������һ���ɹ�ʹ��#COLORCOLOR_RED#õ�廨#COLOREND#,����õ�廨������������Ӧ�����ܶ�"
			msg = msg.." \n #COLORCOLOR_GOLD#����˵��:#COLOREND#"
			msg = msg.." \n 1.����˫������ɹ�#COLORCOLOR_RED#���#COLOREND#,��˫�������ܶ�ȫ�����"
			msg = msg.." \n 2.���ܶ����#COLORCOLOR_GOLD#����2000#COLOREND#,��ÿ��00:00:00ʱ��#COLORCOLOR_RED#�۳�#COLOREND#һ�����������ܶ�"
		msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@reward *01*�����ء�>\n \n"
	return msg
end

function medal_award(npc, player)

	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")

	if spouse == "" then
		return "�㻹û�н�飬�޷���ȡ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

	local free_slot = lualib:BagFree(player, true, false, false)--�жϰ����Ƿ�����ѫ�µĿո�
	if free_slot < 1 then
		return "�����������޷���ȡ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

	local t_medal = {"ͬ��ѫ��һ��", "ͬ��ѫ�¶���", "ͬ��ѫ������", "ͬ��ѫ���ļ�", "ͬ��ѫ���弶", "ͬ��ѫ������"}--�ж��Ƿ��Ѿ���ȡ��ѫ��
	for _, v in pairs(t_medal) do
		local medal_count = lualib:ItemCountByKey(player, v, true, true, true, 2)
			if medal_count > 0 then
				return "���Ѿ���ȡ����ͬ��ѫ�¡����붪�������ڵġ�ͬ��ѫ�¡�������ȡ��\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
			end
	end


    local intimacy = lualib:Player_GetCustomVarInt(player, "intimacy")--�������ܶ���ȡ��Ӧ��ѫ��
	if intimacy > 0 and intimacy<= 999 then
		lualib:AddSingleItem(player, "ͬ��ѫ��һ��", 1, 1, "���ܶȴﵽ1��999", "")
		return "һ��ͬ��ѫ����ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 999 and intimacy <= 1999 then
		lualib:AddSingleItem(player, "ͬ��ѫ�¶���", 1, 1, "���ܶȴﵽ1000��1999", "")
		return "����ͬ��ѫ����ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 1999 and intimacy <= 2999 then
		lualib:AddSingleItem(player, "ͬ��ѫ������", 1, 1, "���ܶȴﵽ2000��2999", "")
		return "����ͬ��ѫ����ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 2999 and intimacy <= 4499 then
		lualib:AddSingleItem(player, "ͬ��ѫ���ļ�", 1, 1, "���ܶȴﵽ3000��4499", "")
		return "�ļ�ͬ��ѫ����ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 4499 and intimacy <= 5999 then
		lualib:AddSingleItem(player, "ͬ��ѫ���弶", 1, 1, "���ܶȴﵽ4500��5999", "")
		return "�弶ͬ��ѫ����ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 5999 then
		lualib:AddSingleItem(player, "ͬ��ѫ������", 1, 1, "���ܶȴﵽ6000����", "")
		return "����ͬ��ѫ����ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	else
		return "������ܶ�Ϊ0���޷���ȡ��ͬ��ѫ�¡���\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

end

function buff_award(npc, player)--�������ܶ���ȡ����ӳ�BUFF

	local spouse = lualib:Player_GetCustomVarStr(player, "��żGUID")

	if spouse == "" then
		return "�㻹û�н�飬�޷���ȡ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

	local buff_name = "��Ƚ��"
	local buff_check = lualib:HasBuff(player, buff_name)

	if buff_check == true then
		return "���Ѿ�ӵ���ˡ���Ƚ�ᡱ��Ч������ȸ�Ч����ʧ��������ȡ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end

    local intimacy = lualib:Player_GetCustomVarInt(player, "intimacy")
	if intimacy > 0 and intimacy<= 999 then
		lualib:AddBuffEx(player, "��Ƚ��", 6000, 1)
		return "��Ƚ��״̬��ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 999 and intimacy <= 1999 then
		lualib:AddBuffEx(player, "��Ƚ��", 6000, 5)
		return "��Ƚ��״̬��ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 1999 and intimacy <= 2999 then
		lualib:AddBuffEx(player, "��Ƚ��", 6000, 10)
		return "��Ƚ��״̬��ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 2999 and intimacy <= 4499 then
		lualib:AddBuffEx(player, "��Ƚ��", 6000, 15)
		return "��Ƚ��״̬��ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 4499 and intimacy <= 5999 then
		lualib:AddBuffEx(player, "��Ƚ��", 6000, 20)
		return "��Ƚ��״̬��ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	elseif intimacy > 5999 then
		lualib:AddBuffEx(player, "��Ƚ��", 6000, 30)
		return "��Ƚ��״̬��ȡ�ɹ���\n".."\n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	else
		return "������ܶ�Ϊ0���޷���ȡ��Ƚ���Ч����\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:1,Y:7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
end

function jump(npc,player)
	local 	msg = "����#COLORCOLOR_SKYBLUE#��ɽ#COLOREND#�ܴ򵽸���ֻ�з��޲ſ���ʹ�õ�#COLORCOLOR_RED#����ҩ#COLOREND#��#COLORCOLOR_RED#���;���#COLOREND#����������ã������Դ�#COLORCOLOR_RED#����ָ#COLOREND#���������ܶȵ�#COLORCOLOR_RED#õ�廨#COLOREND#��\n"
			msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
			msg = msg.."#OFFSET<X:0,Y:1>#     #IMAGE<ID:1902700018>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ#55#77#4 *01*��������ɽ��>               #OFFSET<X:0,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	return msg
end

function likai(npc, player)
	return ""
end

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/marry")
require("system/serializer")


function main2(npc, player)
	local msg = "\n    ʲô��ħ��û������ʲô�����ûɱ����ħ�����ɣ��ҵĴ����Ѽ�į���ͣ�\n\n"
	
	msg = msg.."<@ForTest_clearBag *01*����ձ�����>#COLOREND#\n\n"
	msg = msg.."<@ForTest_setVip *01*������VIP�ȼ���>#COLOREND#\n\n"
	msg = msg.."<@ForTest_clearValue *01*�����ñ�����>#COLOREND#\n\n"
	msg = msg.."<@ForTest_setCCY *01*�����Ԫ����>#COLOREND#\n\n"
	msg = msg.."<@ForTest_equip *01*��װ�����ԡ�>#COLOREND#\n\n"
	msg = msg.."<@ForTest_as *01*��ţ�Ƽ��ܡ�>#COLOREND#\n\n"
	return msg
end

function ForTest_clearBag(npc, player)
	if lualib:ClearBag(player,false,true,false,false,"����",player) then
		return "��ձ����ɹ���"
	else
		return "��ձ���ʧ�ܡ�"
	end
end


function ForTest_setVip(npc, player, level)
	if nil ~= level and "" ~= level then
		lualib:SetVipLevel(player, tonumber(level))
		return "�ɹ�"
	else
		local msg = "<@ForTest_setVip#1 *01*������ΪVIP1��>\n\n"
		msg = msg.."<@ForTest_setVip#2 *01*������ΪVIP2��>\n\n"
		msg = msg.."<@ForTest_setVip#3 *01*������ΪVIP3��>\n\n"
		msg = msg.."<@ForTest_setVip#4 *01*������ΪVIP4��>\n\n"
		msg = msg.."<@ForTest_setVip#5 *01*������ΪVIP5��>\n\n"
		msg = msg.."<@ForTest_setVip#6 *01*������ΪVIP6��>\n\n"
		msg = msg.."<@ForTest_setVip#7 *01*������ΪVIP7��>\n\n"
		msg = msg.."<@ForTest_setVip#8 *01*������ΪVIP8��>\n\n"
		msg = msg.."<@ForTest_setVip#9 *01*������ΪVIP9��>\n\n"
		msg = msg.."<@ForTest_setVip#10 *01*������ΪVIP10��>\n\n"
		return msg
	end
end

function ForTest_clearValue(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			lualib:SetDayInt(player,"sign_today", 0)
			for i = 1, 5 do
				lualib:SetInt(player,"Is_Get"..i, 0)
			end
			local Sign_t = {}
			for i = 1 , 31 do 
				Sign_t[i] = 0 
			end
			for i = 1 , 22 do 
				Sign_t[i] = 1
			end
			for i = 1 , 4 do 
				lualib:SetDayInt(player,"Online_Is_Get"..i,0)
			end
			for i = 1 , 7 do 
				lualib:SetInt(player,"Login_Is_Get"..i,0)
			end
			local month_now = lualib:GetMonth(0)
			lualib:SetStr(player,"sign_table"..month_now, json.encode(Sign_t))
			lualib:SetInt(player, 'isGetAll7DayRWD',0)
			lualib:SetInt(player,"logout_hour",99)
			lualib:SetInt(player,"lastRewardIndex",1)
		elseif 2 == flag then
			lualib:SetDayInt(player, "totalActivityDegree",0)
			local missionState = {0, 0, 0, 0}
			lualib:SetDayStr(player, "ActivityDegree_flag", json.encode(missionState))
			lualib:SetDayInt(player,"activityDgr_cm",0)
			lualib:SetDayInt(player,"activityDgr_fb",0)
			lualib:SetDayInt(player,"activityDgr_zx",0)
			lualib:SetDayInt(player,"activityDgr_jl",0)
			lualib:SetDayInt(player,"activityDgr_BOSS",0)
			lualib:SetDayInt(player,"activityDgr_yxwsc",0)
			lualib:SetDayInt(player,"activityDgr_tb",0)
			lualib:SetDayInt(player,"activityDgr_fm",0)
		elseif 3 == flag then
			lualib:SetDayInt(player,"����buff",0)
			local str = tostring(lualib:Player_GetAccountID(player))
			for i = 1, 10 do
				local str1 = str.."vipReward"..i
				lualib:SetDBNum(str1,0)
			end
		elseif 4 == flag then
			local dayIntNameTb = {"62�����鸱��","63����ë����","64�����Ƹ���","65�����鸱��","65�����鸱��"}
			if lualib:GetDayInt(player, "dailyFbDayFlag") == 0 then
				for i = 1, #dayIntNameTb do
					lualib:SetInt(player, dayIntNameTb[i], 0)
					lualib:NotifyVar(player, dayIntNameTb[i])
				end
				lualib:SetDayInt(player, "dailyFbDayFlag", 1)
			end	
		elseif 5 == flag then
			if lualib:GetDayInt(player,"resetDayNum") == 0 then  --ÿ�������������
				local vl = lualib:GetVipLevel(player)
				if vl < 3 then
					lualib:SetInt(player,"cmDayNum",12)
				elseif vl >= 3 and vl < 6 then
					lualib:SetInt(player,"cmDayNum",14)
				else
					lualib:SetInt(player,"cmDayNum",16)
				end
				lualib:SetDayInt(player,"resetDayNum",1)
			end
		elseif 6 == flag then
			lualib:SetInt(player, "fengmo_count", 0)
		elseif 7 == flag then
			lualib:SetDayInt(player,"�ڿ����",0)
		elseif 8 == flag then
			lualib:SetDayInt(player,"���BOSS",0)
			lualib:SetDayInt(player,"а��BOSS",0)
			lualib:SetDayInt(player,"֩�볲Ѩ",0)
			lualib:SetDayInt(player,"ţħ��BOSS",0)
			lualib:SetDayInt(player,"���ĳ�BOSS",0)
			lualib:SetDayInt(player,"����BOSS",0)
		elseif 9 == flag then
			lualib:SetInt(player,"Ach_jifen", 95000000)
		elseif 10 == flag then
			lualib:SetInt(player,"boss_points", 9000000)
		elseif 11 == flag then
			lualib:SetInt(player,"xuefu_chip", 1000000)
		elseif 12 == flag then
			lualib:SetInt(player,"hudun_chip", 1000000)
		elseif 13 == flag then
			lualib:SetInt(player,"baoshi_chip", 1000000)
		elseif 14 == flag then
			lualib:SetInt(player,"hunzhu_chip", 1000000)
		elseif 15 == flag then
			lualib:SetInt(player,"ach_score", 90000000)
		elseif 16 == flag then
			lualib:SetInt(player, "reinLevel", 12)
		end
		return ForTest_clearValue(npc, player, nil)
	else
		local msg = "<@ForTest_clearValue#1 *01*�����ý�������������>\n\n"
		msg = msg.."<@ForTest_clearValue#2 *01*�����û�Ծ�ȱ�����>\n\n"
		msg = msg.."<@ForTest_clearValue#3 *01*������VIP�����BUFF��>\n\n"
		msg = msg.."<@ForTest_clearValue#4 *01*������ÿ�ո���������>\n\n"
		msg = msg.."<@ForTest_clearValue#5 *01*�����ù�ѫ��ħ������>\n\n"
		msg = msg.."<@ForTest_clearValue#6 *01*�����÷�ħ����������>\n\n"
		msg = msg.."<@ForTest_clearValue#7 *01*�������ڿ����������>\n\n"
		msg = msg.."<@ForTest_clearValue#8 *01*�����ø���BOSS������>\n\n"
		msg = msg.."<@ForTest_clearValue#9 *01*������9500��ɾͻ��֡�>\n\n"
		msg = msg.."<@ForTest_clearValue#10 *01*������900��BOSS���֡�>\n\n"
		msg = msg.."<@ForTest_clearValue#11 *01*������100�򻤷�ӡ�ǡ�>\n\n"
		msg = msg.."<@ForTest_clearValue#12 *01*������100����Ʋ�Ƭ��>\n\n"
		msg = msg.."<@ForTest_clearValue#13 *01*������100������Ƭ��>\n\n"
		msg = msg.."<@ForTest_clearValue#14 *01*������100���֮�顿>\n\n"
		msg = msg.."<@ForTest_clearValue#15 *01*������9000��ѫֵ��>\n\n"
		msg = msg.."<@ForTest_clearValue#16 *01*������Ϊ12ת��>\n\n"
		return msg
	end
end

function ForTest_setCCY(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			lualib:SubGold(player, lualib:GetGold(player), "����", player)
			lualib:SubBindGold(player, lualib:GetBindGold(player), "����", player)
			lualib:SubBindIngot(player, lualib:GetBindIngot(player), "����", player)
			lualib:SubIngot(player, lualib:GetIngot(player), "����", player)
		elseif 2 == flag then
			lualib:Player_AddGold(player, 100000000, true, "����", player)
		elseif 3 == flag then
			lualib:Player_AddGold(player, 100000000, false, "����", player)
		elseif 4 == flag then
			lualib:AddBindIngot(player, 1000000, "����", player)
		elseif 5 == flag then
			lualib:AddIngot(player, 1000000, "����", player)
		end
		return ForTest_setCCY(npc, player, nil)
	else
		local msg = "<@ForTest_setCCY#1 *01*��������н�Ǯ��>\n\n"
		msg = msg.."<@ForTest_setCCY#2 *01*������1�ڰ󶨽�ҡ�>\n\n"
		msg = msg.."<@ForTest_setCCY#3 *01*������1�ڽ�ҡ�>\n\n"
		msg = msg.."<@ForTest_setCCY#4 *01*������100���Ԫ����>\n\n"
		msg = msg.."<@ForTest_setCCY#5 *01*������100��Ԫ����>\n\n"
		return msg
	end
end
----����1������3����ָ9������8������(����ְҵ��ѡһ)
local shux1 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}
}
----�·�4������7��Ь��6��ͷ��2������,�����ħ��
local shux2 = {
	{
		{
			{11,10},{13,12},{15,14}
		},
		{7,6},
		{9,8}
	},
	{
		{
			{1,1},{1,6},{1,6}
		},
		{
			{2,2},{2,8},{2,8}
		},
		{
			{3,3},{4,10},{3,11}
		},
		{
			{3,4},{5,12},{4,14}
		},
		{
			{4,6},{7,16},{6,17}
		},
		{
			{4,7},{9,21},{7,21}
		},
		{
			{5,10},{11,26},{9,26}
		},
		{
			{5,13},{13,32},{9,31}
		},
		{
			{6,17},{14,38},{11,36}
		},
		{
			{8,22},{16,44},{13,43}
		},
		{
			{9,27},{18,51},{15,49}
		},
		{
			{10,33},{22,60},{17,54}
		}
	}
}
----���� 15    �����ħ��
local shux3 = {
	{{7,6},{9,8}},
	{{{1,3},{1,2}},{{2,6},{2,4}},{{2,9},{3,6}},{{3,12},{4,9}},{{4,15},{5,11}},{{4,18},{5,14}},
	{{5,21},{6,18}},{{7,25},{7,25}},{{9,29},{9,30}},{{11,33},{11,38}},{{14,38},{13,48}},{{18,41},{15,60}}}
}
----��ʯ11������13 ,��׹18  ����
local shux4 = {
	{{11,10},{13,12},{15,14}},
	{{1,7},{2,9},{3,11},{5,13},{6,17},{8,21},{10,25},{11,30},{13,34},{16,39},{19,43},{25,48}}
}
----ѫ��10     ����
local shux5 =
{
	{
		{11,10},{13,12},{15,14}
	},
	{
		{1,7},{2,9},{3,10},{5,11},{6,14},{8,17},{8,20},{10,24},{11,28},{13,33},{16,39},{20,45}
	}
}

function ForTest_equip(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			ForTest_qh(player, 6)
		elseif 2 == flag then
			ForTest_qh(player, 12)
		elseif 3 == flag then
			ForTest_yh(player, 6)
		elseif 4 == flag then
			ForTest_yh(player, 12)
		elseif 5 == flag then
			ForTest_qh(player, 0)
			ForTest_yh(player, 0)
		elseif 6 == flag then
			ForTest_bs(player, 6)
		elseif 7 == flag then
			ForTest_bs(player, 12)
		elseif 8 == flag then
			ForTest_clbs(player, 0)
		elseif 9 == flag then
			return ForTest_getEquip(npc, player)
		end
		return ForTest_equip(npc, player, nil)
	else
		local msg = "<@ForTest_equip#1 *01*������װ��ǿ��+6��>\n\n"
		msg = msg.."<@ForTest_equip#2 *01*������װ��ǿ��+12��>\n\n"
		msg = msg.."<@ForTest_equip#3 *01*������װ���̻�+6��>\n\n"
		msg = msg.."<@ForTest_equip#4 *01*������װ���̻�+12��>\n\n"
		msg = msg.."<@ForTest_equip#5 *01*������װ���������㡿>\n\n"
		msg = msg.."<@ForTest_equip#6 *01*������װ��6����ʯ��>\n\n"
		msg = msg.."<@ForTest_equip#7 *01*������װ��12����ʯ��>\n\n"
		msg = msg.."<@ForTest_equip#8 *01*������װ����ʯ���㡿>\n\n"
		msg = msg.."<@ForTest_equip#9 *01*�����װ����>\n\n"
		return msg
	end
end
local equip_table = {
					{
						{
							{"�������ս��","�������ͷ��","�����������","�������ѥ��","�����������","��������ָ","�����������","�������ս��"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						},
						{
							{"�������ս��","�������ͷ��","�����������","�������ѥ��","�����������","��������ָ","�����������","�������ս��"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						}
					},
					{
						{
							{"�����������","�������ͷ��","�����������","�������ѥ��","�����������","���������ָ","�����������","�����������"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						},
						{
							{"�����������","�������ͷ��","�����������","�������ѥ��","�����������","���������ָ","�����������","�����������"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						}
					},
					{
						{
							{"����Ԫ������","����Ԫ��ͷ��","����Ԫ������","����Ԫ��ѥ��","����Ԫ������","����Ԫ����ָ","����Ԫ������","����Ԫ������"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						},
						{
							{"����Ԫ������","����Ԫ��ͷ��","����Ԫ������","����Ԫ��ѥ��","����Ԫ������","����Ԫ����ָ","����Ԫ������","����Ԫ������"},
							{1,				1,				1,				1,				1,				2,			2,				1},
							{1,				1,				1,				1,				1,				1,			1,				1},
							{0,				0,				0,				0,				0,				0,			0,				0}
						}
					}
}
function ForTest_getEquip(npc, player, flag)
	if nil ~= flag and "" ~= flag then
		flag = tonumber(flag)
		if 1 == flag then
			local job = lualib:Job(player)
			local gender = lualib:Gender(player)
			return tostring(lualib:Player_ItemRequest(player, equip_table[job][gender][1], equip_table[job][gender][2], equip_table[job][gender][3], equip_table[job][gender][4], "����", player))
		end
		return ForTest_getEquip(npc, player, nil)
	else
		local msg = "<@ForTest_getEquip#1 *01*��һ��12תװ����>\n\n"
		return msg
	end
end




function ForTest_as(npc, player)
	lualib:Player_AddSkill(player, "������������")
	return "�ɹ�"
end

local equip_table = {
				lua_site_weapon,
				lua_site_helmet,
				lua_site_wrist_0,
				lua_site_wrist_1,
				lua_site_armor,
				lua_site_shoes,
				lua_site_shoulder,
				lua_site_necklace,
				lua_site_ring_0,
				lua_site_ring_1,
				lua_site_gem,
				lua_site_medal,
				lua_site_gloves,
				lua_site_shield,
				lua_site_amulet
}
function ForTest_qh(player, refineLevel)
	for i = 1, #equip_table do
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		--lualib:SysPromptMsg(player, item)
		if "" ~= item and nil ~= item then
			lualib:Equip_SetRefineLevel(player, item, refineLevel)
			local job = lualib:Job(player)
			local itemlevel = lualib:Item_GetLevel(item)
			local subType = lualib:Item_GetSubType(player, item)
			local prop1 = 0
			local prop2 = 0
			if subType == 1 or subType == 9 or subType == 8 or subType == 3 then
				if itemlevel >= 100 then
					local a = 4 
					for i = 1 , 3 do 
						prop1 = 0
						prop2 = 0
						for j = 1, refineLevel do
							prop1 = prop1 + shux1[2][j][1]
							prop2 = prop2 + shux1[2][j][2]
						end
						lualib:Equip_SetExtProp(player, item, a, shux1[1][i][1], prop1)
						a = a + 1
						lualib:Equip_SetExtProp(player, item, a, shux1[1][i][2], prop1)
						a = a + 1
					end
				else
					prop1 = 0
					prop2 = 0
					for i = 1, refineLevel do
						prop1 = prop1 + shux1[2][i][1]
						prop2 = prop2 + shux1[2][i][2]
					end
					lualib:Equip_SetExtProp(player, item, 8, shux1[1][job][1], prop1)
					lualib:Equip_SetExtProp(player, item, 9, shux1[1][job][2], prop2)
				end
			elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then
				local a = 4
				for i = 1 , 3 do
					if i == 1 then
						if itemlevel >= 100 then
							a = 0
							for j = 1 , 3 do 
								prop1 = 0
								prop2 = 0
								for k = 1, refineLevel do
									prop1 = prop1 + shux2[2][k][i][1]
									prop1 = prop2 + shux2[2][k][i][2]
								end
								lualib:Equip_SetExtProp(player, item, a, shux2[1][i][j][1], prop1)
								a = a + 1
								lualib:Equip_SetExtProp(player, item, a, shux2[1][i][j][2], prop2)
								a = a + 1
							end
						else
							prop1 = 0
							prop2 = 0
							for k = 1, refineLevel do
								prop1 = prop1 + shux2[2][k][i][1]
								prop2 = prop2 + shux2[2][k][i][2]
							end
							lualib:Equip_SetExtProp(player, item, a, shux2[1][i][job][1], prop1)
							a = a + 1
							lualib:Equip_SetExtProp(player, item, a, shux2[1][i][job][2], prop2)
							a = a + 1
						end
					else
						prop1 = 0
						prop2 = 0
						for k = 1, refineLevel do
							prop1 = prop1 + shux2[2][k][i][1]
							prop2 = prop2 + shux2[2][k][i][2]
						end
						lualib:Equip_SetExtProp(player, item, a, shux2[1][i][1], prop1)
						a = a + 1
						lualib:Equip_SetExtProp(player, item, a, shux2[1][i][2], prop2)
						a = a + 1
					end
				end
			elseif subType == 15 then
				local a = 6
				for i = 1 , 2 do
					prop1 = 0
					prop2 = 0
					for k = 1, refineLevel do
						prop1 = prop1 + shux3[2][k][i][1]
						prop2 = prop2 + shux3[2][k][i][2]
					end
					lualib:Equip_SetExtProp(player, item, a, shux3[1][i][1], prop1)
					a = a + 1
					lualib:Equip_SetExtProp(player, item, a, shux3[1][i][2], prop2)
					a = a + 1
				end
			elseif subType == 11 or subType == 13 or subType == 18 then
				local a = 4
				for i = 1 , 3 do
					prop1 = 0
					prop2 = 0
					for k = 1, refineLevel do
						prop1 = prop1 + shux4[2][k][1]
						prop2 = prop2 + shux4[2][k][2]
					end
					lualib:Equip_SetExtProp(player, item, a, shux4[1][i][1], prop1)
					a = a + 1
					lualib:Equip_SetExtProp(player, item, a, shux4[1][i][2], prop2)
					a = a + 1
				end
			elseif subType == 10 then
				local a = 4
				for i = 1 , 3 do
					prop1 = 0
					prop2 = 0
					for k = 1, refineLevel do
						prop1 = prop1 + shux5[2][k][1]
						prop2 = prop2 + shux5[2][k][2]
					end
					lualib:Equip_SetExtProp(player, item, a, shux5[1][i][1], prop1)
					a = a + 1
					lualib:Equip_SetExtProp(player, item, a, shux5[1][i][2], prop2)
					a = a + 1
				end
			end
			lualib:Item_NotifyUpdate(player, item)
		end
	end
end



----����1������3����ָ9������8������(����ְҵ��ѡһ)
local yhshux1 = {
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},
} 
----�·�4������7��Ь��6��ͷ��2������,�����ħ��
local yhshux2 = {
	{{{11,10},{13,12},{15,14}},{7,6},{9,8}},
	{{{2,1},{2,2},{2,2}},{{3,1},{5,4},{4,4}},{{4,1},{7,6},{6,6}},{{4,2},{10,9},{8,8}},{{5,2},{12,11},{10,10}},{{6,3},{16,12},{13,12}},{{7,4},{19,14},{16,15}},
	{{9,6},{23,17},{19,18}},{{11,7},{27,20},{21,20}},{{13,10},{31,24},{25,23}},{{15,12},{38,28},{29,27}},{{18,15},{44,32},{34,30}}},
}
----���� 15    �����ħ��
local yhshux3 = {
	{{7,6},{9,8}},
	{{{2,2},{2,2}},{{3,3},{3,3}},{{4,4},{5,5}},{{5,5},{7,7}},{{7,7},{9,8}},{{9,9},{11,10}},{{11,11},{12,11}},{{14,14},{16,13}},{{17,17},{19,17}},
	{{21,20},{21,21}},{{27,22},{24,23}},{{34,24},{27,26}}},	
}
----��ʯ11�� ����13, ��׹18     ����
local yhshux4 = {
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,5},{8,6},{10,8},{13,9},{16,11},{19,13},{23,15},{27,17},{31,20},{40,27}},
}
----ѫ��10     ����
local yhshux5 = {   
	{{11,10},{13,12},{15,14}},
	{{2,1},{4,3},{6,4},{8,5},{10,6},{12,8},{14,9},{16,11},{19,13},{23,15},{27,18},{33,23}},
}

function ForTest_yh(player, refineLevel)
	local temp = refineLevel
	for i = 1, #equip_table do
		refineLevel = temp
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		if "" ~= item and nil ~= item then
			local itemlevel = lualib:Item_GetLevel(item)
			local subType = lualib:Item_GetSubType(player, item)
			local job = lualib:Job(player)
			local prop1 = 0
			local prop2 = 0
			local site = 10
			if subType == 1 or subType == 3 or subType == 8 or subType == 9 then
				if 80 > itemlevel and 10 < refineLevel then
					refineLevel = 10
				end
				if itemlevel >= 100 then
					for i = 1, 3 do
						prop1 = 0
						prop2 = 0
						for j = 1, refineLevel do
							prop1 = prop1 + yhshux1[2][j][1]
							prop2 = prop2 + yhshux1[2][j][2]
						end
						lualib:SetInt(item,"_da"..site, yhshux1[1][i][1])
						lualib:SetInt(item,"_dv"..site, prop1)
						site = site + 1
						lualib:SetInt(item,"_da"..site, yhshux1[1][i][2])
						lualib:SetInt(item,"_dv"..site, prop2)
						site = site + 1
					end
				else
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux1[2][j][1]
						prop2 = prop2 + yhshux1[2][j][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux1[1][job][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux1[1][job][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			----�·�4������7��Ь��6��ͷ��2��---����, ���, ħ��
			elseif subType == 2 or subType == 4 or subType == 6 or subType == 7 then
				if 80 > itemlevel and 10 < refineLevel then
					refineLevel = 10
				end
				for i = 1 , 3 do
					if i == 1 then
						if itemlevel >= 100 then
							for j = 1 , 3 do
								prop1 = 0
								prop2 = 0
								for k = 1, refineLevel do
									prop1 = prop1 + yhshux2[2][k][1][1]
									prop2 = prop2 + yhshux2[2][k][1][2]
								end
								lualib:SetInt(item,"_da"..site, yhshux2[1][1][j][1])
								lualib:SetInt(item,"_dv"..site, prop1)
								site = site + 1
								lualib:SetInt(item,"_da"..site, yhshux2[1][1][j][2])
								lualib:SetInt(item,"_dv"..site, prop2)
								site = site + 1
							end
						else
							prop1 = 0
							prop2 = 0
							for j = 1, refineLevel do
								prop1 = prop1 + yhshux2[2][j][1][1]
								prop2 = prop2 + yhshux2[2][j][1][2]
							end
							lualib:SetInt(item,"_da"..site, yhshux2[1][1][job][1])
							lualib:SetInt(item,"_dv"..site, prop1)
							site = site + 1
							lualib:SetInt(item,"_da"..site, yhshux2[1][1][job][2])
							lualib:SetInt(item,"_dv"..site, prop2)
							site = site + 1
						end
					else
						prop1 = 0
						prop2 = 0
						for j = 1, refineLevel do
							prop1 = prop1 + yhshux2[2][j][i][1]
							prop2 = prop2 + yhshux2[2][j][i][2]
						end
						lualib:SetInt(item,"_da"..site, yhshux2[1][i][1])
						lualib:SetInt(item,"_dv"..site, prop1)
						site = site + 1
						lualib:SetInt(item,"_da"..site, yhshux2[1][i][2])
						lualib:SetInt(item,"_dv"..site, prop2)
						site = site + 1
						
					end
				end
			----���� 15    �����ħ��
			elseif subType == 15 then
				for i = 1, 2 do
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux3[2][j][i][1]
						prop2 = prop2 + yhshux3[2][j][i][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux3[1][i][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux3[1][i][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			----��ʯ  11  , ���� 13 , ��׹18  ����
			elseif subType == 11 or subType == 13 or subType == 18 then
				for i = 1, 3 do
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux4[2][j][1]
						prop2 = prop2 + yhshux4[2][j][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux4[1][i][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux4[1][i][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			----ѫ��10     ����
			elseif subType == 10 then
				for i = 1, 3 do
					prop1 = 0
					prop2 = 0
					for j = 1, refineLevel do
						prop1 = prop1 + yhshux5[2][j][1]
						prop2 = prop2 + yhshux5[2][j][2]
					end
					lualib:SetInt(item,"_da"..site, yhshux5[1][i][1])
					lualib:SetInt(item,"_dv"..site, prop1)
					site = site + 1
					lualib:SetInt(item,"_da"..site, yhshux5[1][i][2])
					lualib:SetInt(item,"_dv"..site, prop2)
					site = site + 1
				end
			end
			for i = 10, 19 do
				lualib:NotifyVar(item, "_da"..i)
				lualib:NotifyVar(item, "_dv"..i)
			end
			lualib:SetInt(item, "zhul_level", refineLevel)
			lualib:Item_NotifyUpdate(player, item)
		end
	end
end



local crystal_tab = 
{
	--�ȱ�ʯ �﹥ 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--�ϱ�ʯ ���� 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--�̱�ʯ ���� 
	{
		{5,10},
		{10,30},
		{15,50},
		{20,80},
		{25,110},
		{30,150},
		{35,200},
		{40,260},
		{45,330},
		{50,420},
		{55,500},
		{60,600}
	},
	--����ʯ ���
	{
		{4,8},
		{8,24},
		{12,40},
		{16,64},
		{20,88},
		{24,120},
		{28,160},
		{32,208},
		{36,264},
		{40,336},
		{44,400},
		{48,480}
	},
	--����ʯ ħ��
	{
		{3,6},
		{6,18},
		{9,30},
		{12,48},
		{15,66},
		{18,90},
		{21,120},
		{24,156},
		{27,198},
		{30,252},
		{33,300},
		{36,360}
	},
	--�챦ʯ ����
	{
		25,75,125,200,275,375,500,650,825,1050,1250,1500
	},
}

function ForTest_bs(player, level)
	for i = 1, #equip_table do
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		if "" ~= item and nil ~= item then
			--lualib:SysPromptMsg(player, item)
			local job = lualib:Job(player)
			local tb1 = {{"�﹥","���","ħ��","����"},{"ħ��","���","ħ��","����"},{"����","���","ħ��","����"}}
			local tb2 = {{"�﹥","����"},{"ħ��","����"},{"����","����"}}
			local temp = {{},{},{}}
			if 80 > lualib:Item_GetLevel(item) then
				temp = tb2
			else
				temp = tb1
			end
			for i = 1, #temp[1] do
				lualib:SetStr(item, "EquipHole" .. i, "2")
				local stoneType = temp[job][i]
				local a = 0
				local propertyTb = {}
				local propertyType = {}
				--lualib:SysPromptMsg(player, stoneType)
				if stoneType == "�﹥" then
					a = 30
					propertyTb = crystal_tab[1][level]
					propertyType[1] = 11
					propertyType[2] = 10
				elseif stoneType == "ħ��" then
					a = 32
					propertyTb = crystal_tab[2][level]
					propertyType[1] = 13
					propertyType[2] = 12
				elseif stoneType == "����" then
					a = 34
					propertyTb = crystal_tab[3][level]
					propertyType[1] = 15
					propertyType[2] = 14
				elseif stoneType == "���" then
					a = 36
					propertyTb = crystal_tab[4][level]
					propertyType[1] = 7
					propertyType[2] = 6
				elseif stoneType == "ħ��" then
					a = 38
					propertyTb = crystal_tab[5][level]
					propertyType[1] = 9
					propertyType[2] = 8
				elseif stoneType == "����" then
					a = 40
					propertyTb = crystal_tab[6][level]
					propertyType[1] = 3
				end
				if a ~= 40 then
					lualib:SetDynamicAttr(item, a, propertyType[1], propertyTb[1])
					lualib:SetDynamicAttr(item, a + 1, propertyType[2], propertyTb[2])
				else
					lualib:SetDynamicAttr(item, a, propertyType[1], propertyTb)
				end
				lualib:SetStr(item, "EquipHole" ..i, level.."��"..stoneType.."��ʯ")
				lualib:Item_NotifyUpdate(player, item)
			end
		end
	end
end
function ForTest_clbs(player, level)
	for i = 1, #equip_table do
		local item = ""
		item = lualib:Player_GetEquipGuid(player, equip_table[i])
		if "" ~= item and nil ~= item then
			local job = lualib:Job(player)
			local tb1 = {{"�﹥","���","ħ��","����"},{"ħ��","���","ħ��","����"},{"����","���","ħ��","����"}}
			local tb2 = {{"�﹥","����"},{"ħ��","����"},{"����","����"}}
			local temp = {{},{},{}}
			if 80 > lualib:Item_GetLevel(item) then
				temp = tb2
			else
				temp = tb1
			end
			for i = 1, #temp[1] do
				local keyName = lualib:GetStr(item, "EquipHole" .. i)
				if keyName ~= "0" and keyName ~= "1" and keyName ~= "2" and keyName ~= "" and keyName ~= nil then
					local index = string.find(keyName, "��")
					local stoneType = string.sub(keyName, index + 2, index + 5)
					local a = 0
					local propertyType = {}
					if stoneType == "�﹥" then
						a = 30
						propertyType[1] = 11
						propertyType[2] = 10
					elseif stoneType == "ħ��" then
						a = 32
						propertyType[1] = 13
						propertyType[2] = 12
					elseif stoneType == "����" then
						a = 34
						propertyType[1] = 15
						propertyType[2] = 14
					elseif stoneType == "���" then
						a = 36
						propertyType[1] = 7
						propertyType[2] = 6
					elseif stoneType == "ħ��" then
						a = 38
						propertyType[1] = 9
						propertyType[2] = 8
					elseif stoneType == "����" then
						a = 40
						propertyType[1] = 3
					end
					lualib:SetDynamicAttr(item, a, propertyType[1], 0)
					if a ~= 40 then
						lualib:SetDynamicAttr(item, a + 1, propertyType[2], 0)
					end
					lualib:SetStr(item, "EquipHole" ..i, "2")
					lualib:Item_NotifyUpdate(player, item)
				end
			end
		end
	end
end

