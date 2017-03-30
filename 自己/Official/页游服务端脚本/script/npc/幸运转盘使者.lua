local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("npc/����ת����Ʒ")

local talk_t = {"ÿ���㶼��������������תһ������ת�̡�", "����ת�������Ʒ����ʵ�á�", "ʹ������ת���ǻ���̳���Ʒ������ķ�ʽ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 190000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
       local msg = "������Ϊ����ʹ�ߣ��һ����½��ÿһ�������������30������ÿ����������������ת��һ�����˵����̣����̻���������ֵ���̳ǵ��߽�����\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."                      <@check_times *01*��̽������ת�̡�>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		msg = msg.."                                                  #OFFSET<X:0,Y:2>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*���뿪��>"
    return msg
end

function leave(npc, player)
	return ""
end

function check_times(npc, player_guid)
    if lualib:Player_GetCustomVarInt(player_guid, "����ת��_HasAward") == 1 then
        notify_award(player_guid, 0)
        return "���ϴγ��еĽ�Ʒ��δ��ȡ��������ȡ��"
    end

    --�жϽ���ĳ齱����
    local player_count = lualib:Player_GetCustomVarInt(player_guid, "LuckyPanel_times")
    local player_day = lualib:Player_GetCustomVarInt(player_guid, "LuckyPanel_day")
    local cur_days = lualib:GetAllDays(0)
    local level = lualib:Player_GetIntProp(player_guid,  lua_role_level)
    if level < settings["�ȼ�����"] then
        local msg = "��ĵȼ�������"..settings["�ȼ�����"].."���������㲻�����������ˣ���۸����˵Ļ������Ի���100Ԫ������̽������ת�̡�\n\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."                 #OFFSET<X:0,Y:2>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-2>#<@check_yuanbao *01*��ʹ��Ԫ��̽������ת�̡�>\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
        return msg
    elseif cur_days == player_day then
        if player_count >= settings["ÿ�����"] then
            local msg = "����������ת�̴����Ѿ������ˣ������㲻�����������ˣ���۸����˵Ļ������Ի���100Ԫ������̽������ת�̡�\n\n"
            msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
            msg = msg.."                 <@check_yuanbao *01*��ʹ��Ԫ��̽������ת�̡�>\n"
            msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
            msg = msg.."                                                #IMAGE<ID:1902700019>#<@main *01*�����ء�>"
            return msg
        else
            lualib:Player_SetCustomVarInt(player_guid, "LuckyPanel_times", player_count + 1)
        end
    else
        lualib:Player_SetCustomVarInt(player_guid, "LuckyPanel_day", cur_days)
        lualib:Player_SetCustomVarInt(player_guid, "LuckyPanel_times", 1)
    end
    
    choujiang(npc, player_guid)
    return ""
end

function check_yuanbao(npc, player_guid)
    if lualib:Player_IsIngotEnough(player_guid, settings["����Ԫ��"], false) == false then
        return "���Ԫ�����㡣\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*����>"
    end
    
    if lualib:Player_SubIngot(player_guid, settings["����Ԫ��"], false, "����ת��", "") then
        choujiang(npc, player_guid)
    end
    
    return ""
end

function choujiang(npc, player_guid)
    --��ʼ�齱
	lualib:SetStr(player_guid,"zhuanpanleixing","����ת��")
    local i = 0
    i = lualib:GenRandom(1, table.getn(AwardGroup))
    lualib:Player_SetCustomVarInt(player_guid, "����ת��_CurGroupID", i)

    lualib:Player_SetCustomVarInt(player_guid, "����ת��_times", 0)
    local sel = GetRandomAward(player_guid)
    
    lualib:Player_SetCustomVarInt(player_guid, "����ת��_Sel_1", sel)
    lualib:Player_SetCustomVarInt(player_guid, "����ת��_times", 1)
    lualib:Player_SetCustomVarInt(player_guid, "����ת��_HasAward", 1)
    for n = 2, settings["ת�̴���"] do
        lualib:Player_SetCustomVarInt(player_guid, "����ת��_Sel_"..n, 0)
    end

    notify_award(player_guid, 1)
end
