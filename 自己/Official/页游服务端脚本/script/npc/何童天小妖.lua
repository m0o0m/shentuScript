local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {3003, "", "QuestAccomplish3003","", "*01*�������: ���������ض�(֧��)"},
   {3004, "QuestAccept3004", "QuestAccomplish3004","01*����: �ض�̽��(֧��)", "*01*�������: �ض�̽��(֧��)"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"���Ǻ�ͯ��С������˧�ģ������ҵ�����������������ʶ��ʶ��", "������һ�����������ܣ����������ض����кܶ�����������Я�д�������кܶ���ȥ����Ŷ��", "������÷��������������ռ�ı���Ŷ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 270000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
       local a = 0
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������ض�#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
     msg = msg.."    #OFFSET<X:0,Y:3>#�������ض�����кܶ�ӵ��������ӳ���������������Я�д�������Ŷ����ù���ͱ������#COLORCOLOR_GREENG#����#COLOREND#���ɶһ�#COLORCOLOR_GREENG#����װ��#COLOREND#����#COLORCOLOR_RED#������ħ�����#COLOREND#�ȳ������ԡ���\n \n"
     msg = msg.."#OFFSET<X:0,Y:-18>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>#��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@enter_dgn *01*�����ض�Ѱ��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@shop *01*��������̵�>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@info *01*�鿴�����>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">����������#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-1>#<@leave *01*���뿪��>\n"
                a = 1
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">����������#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-1>#<@leave *01*���뿪��>\n"
                a = 1
            end
        end
    end

        if a ~= 1 then

	msg = msg.."#OFFSET<X:0,Y:0>#��������������������������������������������#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@leave *01*���뿪��>\n"
    end
    return msg
end

function enter(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#�������ض�#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
         msg = msg.."#OFFSET<X:0,Y:10>#�����������ض���Ҫһ��#COLORCOLOR_GOLD#����������·ʯ��#COLOREND#����˵��������·ʯ�ɴ�#COLORCOLOR_SKYBLUE#[��·��]#COLOREND#�Ĺ������ϻ�ã���ȷ������ȥ��\n \n"
     msg = msg.."#OFFSET<X:0,Y:-11>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."         #IMAGE<ID:1902700018>#<@enter_dgn *01*�����롹>                 #IMAGE<ID:1902700019>#<@main *01*�����ء�>\n \n"

	return msg
end




function enter_dgn(npc, player)
    local gold = 0
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if map == "" then return "��ȡ��ͼ��Ϣʧ�ܣ�\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    --local now_time = lualib:GetTime()
    --local begin_tick = lualib:Map_GetCustomVarInt(map, "scheduled_dsctmd_begin_tick")
    --if (begin_tick == 0) or (now_time - begin_tick > (33 * 60)) then return "���������ض���û�򿪣�������ϵͳ���棡\n \n<@main *01*�����ء�>" end

    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_dsctmdfb_dgn_guid")
	lualib:Error(dgn)
    if dgn == "" then return "��ͼ��δ׼���ã�\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    local player_count = lualib:Map_GetPlayerCount(dgn, false)
    if player_count == -1 then return "��ͼ�����ڣ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>" end

    if player_count >= 500 then return "���������ض��Ѿ�����Ϊ�����������ˣ����Ժ������ɡ�\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    local player_level = lualib:Player_GetIntProp(player,  lua_role_level)
    if player_level == -1 then return "δ֪�Ľ�ɫ�ȼ���\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    if player_level < 20 then return "��ɫ�ȼ����㣡\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    if not lualib:Player_IsGoldEnough(player, gold, false) then return "���Ľ�Ҳ���5000��\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    local require_item = "��������·ʯ"
   --[[ if lualib:Player_GetItemCount(player, require_item) < 0 then
        return "�����������ض���Ҫ"..require_item.."��\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
   end

    if not lualib:Player_DestroyItem(player, require_item, 0, "�۵��ߣ���ͯ��С����������", "��ͯ��С��") then
        return "�Ͻ���Ʒ"..require_item.."ʧ�ܣ�\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
   end]]

	if not lualib:Player_SubGold(player, gold, false, "�۽�ң��Ӻ�ͯ��С����������������ض�", player) then return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	
    if lualib:Player_SetDgnTicket(player, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end	
	lualib:JoinCamp(player, 13, 0)
	
    if lualib:Player_EnterDgn(player, "���������ض�", 0, 0, 0) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"end
	
    return ""
end

function leave(npc, player)
    return ""
end

local item_table = {
                    {{"��������", 1}, {"����", 300}, {"���������3-3����ħ��3-3������������+200��", 1}},
                    {{"����ѫ��", 1}, {"����", 400}, {"���������3-3����ħ��3-3��������ֵ�ظ�+10��", 1}},
                    {{"����ѫ��", 1}, {"����", 400}, {"���������3-3����ħ��3-3����ħ��ֵ�ظ�+10��", 1}},
                    {{"���ɽ�ָ", 1}, {"����", 300}, {"�������﹥3-3����ħ��3-3��������3-3����+5��", 1}},
                    {{"�������", 1}, {"����", 500}, {"�������﹥3-3����ħ��3-3��������3-3ħ�����+5", 1}},
                    {{"������ָ", 1}, {"����", 500}, {"�������﹥3-3����ħ��3-3��������3-3������+4��", 1}}
                   }

function shop(npc, player)
    local msg = "ֻҪ�����㹻�ķ��ģ��Ϳ��Դ���������򡹺ܶ��������ƷŶ��������ı���ɶ���������ͯ��Ķ��������~\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    for i = 1, 3 do
        msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@exchange#"..i.." *01*"..item_table[i][1][1]..">"..item_table[i][3][1].."\n"
    end
    msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:-10>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-1>#<@main *01*����һҳ��>������������������������    ��#OFFSET<X:0,Y:-1>#<@shopb *01*����һҳ��>#OFFSET<X:0,Y:2>##IMAGE<ID:1902700043>#"
    return msg
end

function shopb(npc, player)
    local msg = "ֻҪ�����㹻�ķ��ģ��Ϳ��Դ���������򡹺ܶ��������ƷŶ��������ı���ɶ���������ͯ��Ķ��������~\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
    for i = 4, table.getn(item_table) do
        msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@exchange#"..i.." *01*"..item_table[i][1][1]..">"..item_table[i][3][1].."\n"
    end
    msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
    msg = msg.."#OFFSET<X:0,Y:-10>##IMAGE<ID:1902700038>##OFFSET<X:0,Y:-1>#<@shop *01*����һҳ��>������������������������    ��#OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>#OFFSET<X:0,Y:2>#"
    return msg
end




function exchange(npc, player, index)
    local msg = "������"..item_table[tonumber(index)][1][1].."��Ҫ"..item_table[tonumber(index)][2][2].."��"..item_table[tonumber(index)][2][1].."����ȷ����Ҫ��������\n \n  \n  \n  \n"
    msg = msg.." #OFFSET<X:0,Y:-10>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-1>#<@exchange_#"..index.." *01*������>\n \n \n"
    msg = msg.."��������������������������������������������#OFFSET<X:0,Y:-12>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@shop *01*�����ء�>\n"
    return msg
end

function exchange_(npc, player, index)
    local name_table = {}
    local count_table = {}
    local bind_table = {}
    local opr_table = {}
    for i = 1, 2 do
        name_table[i] = item_table[tonumber(index)][i][1]
        count_table[i] = item_table[tonumber(index)][i][2]
        bind_table[i] = 0
        if i == 1 then
            opr_table[i] = 0
        else
            opr_table[i] = 1
        end
    end

    if not lualib:Player_ItemRequest(player, name_table, count_table, bind_table, opr_table, "�����������ͯ��С��", player) then
        lualib:SysMsg_SendWarnMsg(player, "װ��������ʧ�ܣ����ϲ���򱳰�������")
        return "װ��������ʧ�ܣ����ϲ���򱳰�������\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
    end

    lualib:SysMsg_SendTriggerMsg(player, "�����Ʒ��"..item_table[tonumber(index)][1][1].."��")
    return "��Ʒ�����򡹳ɹ���\n \n \n \n \n \n \n��������������������������������������������#OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
end

function info(npc, player)
       local msg = "#COLORCOLOR_RED#����ʱ�䣺#COLOREND#ÿ��15:00��16:30��22:00��23:30����������������ϵͳ���棡\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����ܣ�#COLOREND#�ڵ���������ض�����кܶ�ӵ������졪��[������ͯ��]�ӳ���������������Я�д�������Ŷ���������ǣ�������������������סŶ����Խ�࣬���ֵ�������Խ�࣡\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
--	msg = msg.."#COLORCOLOR_RED#����������#COLOREND#С���ҿ��԰���������������ض��ᱦ�����ǵ������켫�����أ���Ҫ��һ��#COLORCOLOR_GOLD#��������·ʯ#COLOREND#����ָ�����򣬾�˵��������·ʯ�ɴ�#COLORCOLOR_GOLD#��·��#COLOREND#�Ĺ������ϻ�ȡ����\n"
	msg = msg.."                                            #OFFSET<X:0,Y:-5>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end






---3003��
function QuestAccomplish3003(npc, player)
    msg = "ԭ������������������һ���Ϊ�����ҲƱ���\n \n"
    msg = msg.."<@Accomplish3003 *01* �������������������>\n"
    return msg
end

function Accomplish3003(npc, player)
    if lualib:AccomplishQuest(player, 3003, 0) == true then
        msg = "�ض������˺ܶ���ħ������Ҹ������ǰɣ�\n \n"
		msg = msg.."<@QuestAccept3004 *01* ��ȡ�����ض�̽��(֧��)>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

----3004��
function QuestAccept3004(npc,player)
    msg = "�ض������˺ܶ���ħ���Һܺ��¡����ܲ��ܰ������Щ����\n \n"
	msg = msg.."<@Accept3004a *01* ��..�кô���>\n"
	return msg
end

function Accept3004a(npc,player)
    msg = "��ħ�����Һܶ౦���ܹ�����Щ���ﶼ���㣬��ô����\n \n"
	msg = msg.."<@Accept3004b *01* �ðɣ����ҾͰ����ɣ����룺��С�����ѵ������𣿣�>\n"
	return msg
end

function Accept3004b(npc, player)
    if lualib:AcceptQuest(player, 3004) == true then
		msg = "лл���æ�������ҿ��԰����ˣ�\n \n"
		msg = msg.."<@enter *01*������������ض�Ѱ��>\n"
        return msg
    else
        return "�����ȡʧ��"
    end
end

----3004��
function QuestAccomplish3004(npc, player)
    msg = "лл����Ҹ������֣�\n \n"
    msg = msg.."<@Accomplish3004a *01* ������ô��л�ң�>\n"
    return msg
end

function Accomplish3004a(npc, player)
    msg = "�������ҲƱ������⣬���������������õķ��Ŀ����������⻻ȡ����װ����\n \n"
    msg = msg.."<@Accomplish3004b *01* �ð� �ð�>\n"
    return msg
end

function Accomplish3004b(npc, player)
    if lualib:AccomplishQuest(player, 3004, 0) == true then
        msg = "�����÷��ĸ��ҡ��һ�����Ʒװ����\n \n"
		msg = msg.."<@shop *01* ��������̵�>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end
