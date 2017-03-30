local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {3007, "", "QuestAccomplish3007","", "*01*�������: ���µ�һս(֧��)"},
   }
gQuestNum = table.getn(gQuestMap)

local talk_t = {"����һ����������һ��Ƥ�����µ�һ��������˭��", "������������µ�һ�ĳƺţ��ͱ���μ���������", "�������ԣ����ҿ�ʼ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 230000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	msg = "     �������˵������Ѳ⣬���ϸ�ȥ��ֻҪ���Ϊ���µ�һ���������ĳ��������Ҳ����㣬�����������µ�һս�����б����ɣ�\n \n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">\n"
            end
        end
    end
	msg = msg.."#IMAGE<ID:1902700018># <@jump_dgn *01*[����ս��]>\n"
    msg = msg.."#IMAGE<ID:1902700042># <@info *01*[������ʱ���]>\n"
    msg = msg.."#IMAGE<ID:1902700031># <@result *01*[��ȡ���µ�һ����������]>\n \n \n"
	msg = msg.."                                                  #IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>\n"
	return msg
end

function jump_dgn(npc, player)
    local gold = 10000
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if map == "" then return "��ȡ��ͼ��Ϣʧ�ܣ�" end

	--[[
    local tick = lualib:Map_GetCustomVarInt(map, "scheduled_txdyzc_begin_tick")
    if (tick == 0) or (lualib:GetTime() - tick > 600) then
        return "���µ�һս����δ���ţ�������ϵͳ���棡"
    end
	]]
	
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_txdyzc_dgn_guid")
    if dgn == "" then return "���µ�һս���볡ʱ�仹δ��ʼ����ע���볡ʱ��Ϊ19��00-19��10\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>" end

    local player_count = lualib:Map_GetPlayerCount(dgn, false)
    if player_count == -1 then return "��ͼ�����ڣ�����ϵGM��\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>" end
    if player_count >= 250 then return "���µ�һս���Ѿ�����Ϊ�������Ժ������ɡ�\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>" end

    local wday = lualib:GetWeek(0)
    local player_job = lualib:Player_GetIntProp(player,  lua_role_job)
    if (player_job ~= wday) and (wday ~= 4) then
        return "�Բ�������ְҵ�޷��μӸó�ְҵ��������\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
    end

	--[[
    local is_enter = lualib:Map_GetCustomVarInt(dgn, player)
    if is_enter == 1 then return "�Բ������Ѿ��μӹ��ó��������������޷����룡" end
	]]
	
	--if not lualib:VerifyCampCount(player, 7) then return "�Բ������Ѿ��μӹ��ó��������������޷����룡" end
	
    local player_level = lualib:Player_GetIntProp(player,  lua_role_level)
    if player_level == -1 then return "δ֪�Ľ�ɫ�ȼ���\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>" end
    if player_level < 20 then return "�Բ������ĵȼ�����20�����޷����룡\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>" end

    if not lualib:Player_IsGoldEnough(player, gold, false) then
        return "�Բ������Ľ�Ҳ���10000���޷����룡\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
    end

	if not lualib:Player_SubGold(player, gold, false, "�۽�ң���ݽ�������������µ�һս������", "��ݽ�������") then return "�۳����ʧ�ܣ�" end
    if lualib:Player_SetDgnTicket(player, dgn) == false then return "��������ɽ����ͼ��" end
	lualib:JoinCamp(player, 7, 0)
    if lualib:Player_EnterDgn(player, "���µ�һս��", 0, 0, 0) == false then return "�����ͼʧ�ܣ�"end
    --lualib:Map_SetCustomVarInt(dgn, player, 1)
    
    return ""
end

function result(npc, player)
    local record_file = {"���µ�һսʿ.txt", "���µ�һ��ʦ.txt", "���µ�һ��ʿ.txt", "���µ�һ.txt"}
	local name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	if name == "" then 
        return "ȡ�������Ϣ����"
    end

    local result = lualib:Player_GetCustomVarInt(player, "scheduled_txdyzc_result")
    if result == 0 then
        return "����û�г�Ϊ�ھ����޷���ȡ������\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
    end

    if lualib:IO_FileExists(record_file[result]) ==  false then
        return "û�����Ľ�����¼��\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
    end

    local guid = lualib:IO_TextFileGetLine(record_file[result], 2)
	if player ~= guid then 
        return "�ף�����ˣ�Ҫ�����Ĳ����㣡\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
    end

    local item_table = {{"Ǯ��(20��)", 1}, {"ף����ˮ", 10}}
    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, table.getn(item_table) do
        name_table[i] = item_table[i][1]
        count_table[i] = item_table[i][2]
        bind_table[i] = 0
        opr_table[i] = 0
    end
    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������ݽ�������", player) then
        return "��ȡ����ʧ�ܣ���ȷ�ϱ����Ƿ���12��ո�\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end
    
    lualib:Player_SetCustomVarInt(player, "scheduled_txdyzc_result", 0)
    return "��ȡ�ɹ���\n \n \n \n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
end

function info(npc, player)
    return "��һ 19��00    սʿ������\n�ܶ� 19��00    ��ʦ������\n���� 19��00    ��ʿ������\n���� 19��00    ȫְҵ������\n \n \n \n \n                                                  #OFFSET<X:0,Y:5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
end

function leave(npc, player)
    return ""
end


---3007��
function QuestAccomplish3007(npc, player)
    msg = "�����ˣ����������μ����µ�һս�İɡ�\n \n"
    msg = msg.."<@Accomplish3007a *01* �ǵģ���ʲôҪ����>\n"
    return msg
end

function Accomplish3007a(npc, player)
    msg = "ÿ��һ19:00�ٰ�սʿ�������ܶ�19:00�ٰ취ʦ����������19:00�ٰ��ʿ�Ƚϣ�����19:00�ٰ�ȫְҵ����������ʱ������������ⱨ���μӣ��˽��������\n \n"
    msg = msg.."<@Accomplish3007b *01* лл�㣬���˽���>\n"
    return msg
end

function Accomplish3007b(npc, player)
    if lualib:AccomplishQuest(player, 3007, 0) == true then
        msg = "���μ����µ�һս��չ�����ʵ���ɣ�\n \n"
		msg = msg.."<@leave *01* ��֪����>\n" 
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@leave *01*��֪����>\n" 
		return msg
    end
end

