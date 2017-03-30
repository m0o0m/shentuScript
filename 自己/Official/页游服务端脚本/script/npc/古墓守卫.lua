local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"���Ѫ������ʬ����Ĺ�еı��أ��ɶ��Ǵ���Ѫ������Ŷ��", "�ӵ�Ĺ�����϶�ȡ�ı����ǺϷ��ġ�", "�õ���Ĺ��ı��ز����ѣ������𣿷��������ˡ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#��Ĺ�ᱦ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."�����ڹ�Ĺ����һֻ��Ĺ�������ܵ�Ĺ����ض������һ��#COLORCOLOR_GOLD#�����ر��С�#COLOREND#��˭����#COLORCOLOR_GOLD#���ر���#COLOREND#����#COLORCOLOR_GOLD#ÿ������#COLOREND##COLORCOLOR_GREENG#[����Ԫ��]#COLOREND#�����ڻ�б����ܣ��뿪��ͼ�������ߣ����бض����䣬�ɹ�����10���Ӻ�ɿ������У������һ�����ر���ĳ�������Ŷ��\n"
        msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-4>#��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@jump *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@info *01*������ܡ�>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@leave *01*���Ҳ���ȥ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		
	return msg
end

function jump(npc, player)
    local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_gmfb_dgn_guid")
    if dgn == "" then return "��Ĺ��δ���ţ�������ϵͳ���棡\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end


    local require_level = 20
    local level = lualib:Player_GetIntProp(player, lua_role_level)
    if level < require_level then return "���ĵȼ����ͣ�\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then return "���Ľ�Ҳ���"..require_gold.."��\\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң���Ĺ���ͷ�", "��Ĺ����") then
        return "�۳����ʧ�ܣ�"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#" end
	lualib:JoinCamp(player, 8, 0)
    if lualib:Player_EnterDgn(player, "��Ĺ", 0, 0, 0) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#"end
	
	
    return ""
end

function leave(npc, player)
    return ""
end



function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#��Ĺ�ᱦ#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����ʱ�䣺#COLOREND#ÿ�ܶ����ġ�����17:00~17:30��21:30~22:00 �����\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#COLORCOLOR_RED#����ܣ�#COLOREND#�ڹ�Ĺ����һֻ��Ĺ�������ܵ�Ĺ����ض������һ��#COLORCOLOR_GOLD#�����ر��С�#COLOREND#��˭�������ر��о���#COLORCOLOR_GOLD#ÿ������#COLOREND##COLORCOLOR_GREENG#[����Ԫ��]#COLOREND#�����ڻ�б����ܣ��뿪��ͼ�������ߣ����бض����䣬�ɹ�����10���Ӻ�ɿ������У������һ�����ر���ĳ�������Ŷ��\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.." #OFFSET<X:0,Y:-8>#                                                #IMAGE<ID:1902700019>#<@main *01*�����ء�>\n"

	return msg
end
