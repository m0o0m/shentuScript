local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

gQuestMap =
{
   {3005, "", "QuestAccomplish3005","", "*01*�������: ��ħ����Ϯ(֧��)"},
   {3006, "QuestAccept3006", "QuestAccomplish3006","01*����: Ư����(֧��)", "*01*�������: Ư����(֧��)"},
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"����㿴���˶�ħ֮ϻ������֮ǰ��Ҫ�ȹ۲����ܣ���߾���Ŷ��", "Ư������Ķ�ħ��Ȼ�������ߣ����Ǻܲ��ˣ���ҪС�ġ�", "Ư�����Ƕ�ħ֮����Ҳ����ʿ������֮����"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 200000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#Ư����#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."     ÿ����ħ��½�ϵ�Ư�������»ص�����������ʱ�������ڶ���ӿ��һ�ɴ����Ԫ�ռ��������˲���ƿ���գ�����Ư������\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>#��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@transmission *01*��������ս��>#OFFSET<X:-1,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@info *01*������ܡ�>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@leave *01*���Ҳ���ȥ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."<@"..v[2].." "..v[4]..">������������#IMAGE<ID:1902700019>#<@leave *01*���뿪��>\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."<@"..v[3].." "..v[5]..">������������#IMAGE<ID:1902700019>#<@leave *01*���뿪��>\n"
            end
        end
    end

    return msg
end

function enter(npc, player)
    local msg = "��ø���һ��#COLORCOLOR_GOLD#[Ư����ͨ�鿨]#COLOREND#���ҵķ������ܷ���Ч�ã��������Ư����ͨ�鿨�ɴ�#COLORCOLOR_GOLD#[��·��]#COLOREND#�Ĺ������ϻ�ȡ����˵��ȷ����������\n \n"
    msg = msg.."#IMAGE1902700015#<@transmission *01*����Ư����>\n \n"
    msg = msg.."#IMAGE1902700019#<@main *01*�����ء�>\n"
    return msg
end



function transmission(npc, player)
    local gold = 0
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    if map == "" then return "��ȡ��ͼ��Ϣʧ�ܣ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>" end

    --[[local tick = lualib:Map_GetCustomVarInt(map, "scheduled_pldwf_begin_tick")
    if (tick == 0) or (lualib:GetTime() - tick > 600) then
        return "Ʈ������δ���ţ�������ϵͳ���棡\n \n<@main *01*�����ء�>"
    end]]

    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_pldfb_dgn_guid")
    if dgn == "" then return "Ʈ������ͼ��δ׼���ã�����ϵͳGM��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    if not lualib:Player_IsGoldEnough(player, gold, false) then return "�Բ������Ľ�Ҳ���10000���޷����룡\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    local require_item = "Ư����ͨ�鿨"
    if lualib:Player_GetItemCount(player, require_item) < 0 then
        return "����Ư����Ҫ"..require_item.."��\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if not lualib:Player_DestroyItem(player, require_item, 0, "�۵��ߣ�ͨ��ʦ��������", "ͨ��ʦ") then
        return "�Ͻ���Ʒ"..require_item.."ʧ�ܣ�\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "Ư������δ���ţ�������ϵͳ���棡\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
    if not lualib:Player_SubGold(player, gold, false, "�۽�ң�ͨ��ʦ����Ʈ��������", "ͨ��ʦ") then return "�۳����ʧ�ܣ�\n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	lualib:JoinCamp(player, 12, 0)
    if lualib:Player_EnterDgn(player, "Ư����", 0, 0, 0) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n#IMAGE1902700019#<@main *01*�����ء�>"end
	
	
	return ""
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#Ư����#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����ʱ�䣺#COLOREND#ÿ�� 13:00��19:00��21:00: �������\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����ܣ�#COLOREND#Ư�������кܶ൱�����ս���������ĲƸ�����Щ�Ƹ���һȺ��ħ�ػ��߿��ܣ���װ���˶�ħ��ϻ���У���������¶�ħ�ͽ�ȥ��.\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."��������������������������������������������#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

function leave(npc, player)
    return ""
end


---3005��
function QuestAccomplish3005(npc, player)
    msg = "Ŷ������������������İ�æ�ģ�����̫��л�ˣ�\n \n"
    msg = msg.."#IMAGE1902700016#<@Accomplish3005 *01* ������>\n"
    return msg
end

function Accomplish3005(npc, player)
    if lualib:AccomplishQuest(player, 3005, 0) == true then
        msg = "���ݴ�½Σ������\n \n"
		msg = msg.."#IMAGE1902700016#<@QuestAccept3006 *01* ��ȡ����Ư����(֧��)>\n"
		return msg
    else
        msg = "����ʧ��\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

----3006��
function QuestAccept3006(npc,player)
    msg = "��ħ��½��Ư�����ĳ��֣����һֲ̿����������д�����ħ�����ݴ�½Σ������ü�ޣ�\n \n"
	msg = msg.."#IMAGE1902700016#<@Accept3006a *01* ����ô������>\n"
	return msg
end

function Accept3006a(npc,player)
    msg = "С�ӣ�������ô��ϻ�����֮�����أ����Ҵ��������㴫�����ϣ�����������ħ�ػ���\n \n"
	msg = msg.."#IMAGE1902700016#<@Accept3006b *01* ������    �ð�>\n"
	return msg
end

function Accept3006b(npc, player)
    if lualib:AcceptQuest(player, 3006) == true then
		msg = "���������ǰ��Ư������׼��������\n \n"
		msg = msg.."#IMAGE1902700016#<@transmission *01*ǰ��Ư����>"
        return msg
    else
        return "�����ȡʧ��"
    end
end

---3006��
function QuestAccomplish3006(npc, player)
    msg = "������˹�Ȼû���ܴ��ˣ�̫��л���ˣ����������Ȼ�����˹��������ħ�������������ϣ�����Ժ�Ҳ������æ��\n \n"
    msg = msg.."#IMAGE1902700016#<@Accomplish3006 *01* ��֪����>\n"
    return msg
end

function Accomplish3006(npc, player)
    if lualib:AccomplishQuest(player, 3006, 0) == true then
        msg = "��ʧ�Ķ�ħ�ֿ�ʼ�����ˣ����ݴ�½��ӭ��Σ�����Ժ�Ϳ�������@\n \n"
		msg = msg.."#IMAGE1902700016#<@leave *01* �õ�>\n"
		return msg
    else
        msg = "�������һֻ��ħ�ػ�������\n \n"
		msg = msg.."#IMAGE1902700016#<@leave *01*����Ŭ��>\n"
		return msg
    end
end
