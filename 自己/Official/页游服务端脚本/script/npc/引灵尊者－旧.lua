local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"�����˵����", "������а��ģ����ǳ���������Թ���Ͷ������Ŀ�����", "������������˵ȴ��ֻص����飬���ǵ�������������Ԫ�顣"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 190000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."����#COLORCOLOR_SKYBLUE#������#COLOREND#��������������ؿռ䣬����Ϊδ֪��ԭ�򣬵ȴ��ֻص����鷢���˾��˵ı�ʣ������໥������Ű����ͼ���������ֻأ�\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>#��#COLORCOLOR_GRAY#�X�������������[���X�������������[���X�������������[#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#��#COLOREND#<@jump *01*��������ս��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@info *01*������ܡ�>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#������#COLOREND#<@leave *01*���Ҳ���ȥ��>#OFFSET<X:-2,Y:0>##COLORCOLOR_GRAY#��#COLOREND#\n"
	msg = msg.."��#COLORCOLOR_GRAY#�^�������������a���^�������������a���^�������������a#COLOREND#\n"
     msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"

	return msg
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����������#COLOREND#������Ҫ���ȼ����ڵ���20����\n"
--	msg = msg.."#COLORCOLOR_RED#����������#COLOREND#������Ҫ���ύһ��#COLORCOLOR_GOLD#���������ֻ�ͼ��#COLOREND#��\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
--	msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_SKYBLUE#������#COLOREND#�������ֻ�֮�أ���Ҫһ��#COLORCOLOR_GOLD#[�������ֻ�ͼ]#COLOREND#�����������ֻ�֮�࣬��˵�������ֻ�ͼ�ɴ�#COLORCOLOR_SKYBLUE#[��ʬĹ]#COLOREND#�Ĺ������ϻ�ã���ȷ������ȥ��\n"
--        msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#"
        msg = msg.."������#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jumpex *01*������򱦡�>                    #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"

    return msg
end



function jumpex(npc, player)

    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_ylsfb_dgn_guid")
    if dgn == "" then return "��������δ���ţ�������ϵͳ���棡\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>" end

    local dgn_times = lualib:Map_GetCustomVarInt(map, "scheduled_ylsfb_dgn_times")
    local player_dgn_times = lualib:Player_GetCustomVarInt(player, "scheduled_ylsfb_dgn_times")
    local dgn_life_times = 1800

    --if player_dgn_times >= dgn_times and player_dgn_times < dgn_times + dgn_life_times then
    --return "���Ѳμӹ���һ�ֻ����������һ�ο���ʱ�䣡\n \n<@main *01*�����ء�>"
    --end

    local require_level = 20
    local level = lualib:Player_GetIntProp(player,  lua_role_level)
    if level < require_level then return "���ĵȼ����ͣ�\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

    local require_gold = 0
    if not lualib:Player_IsGoldEnough(player, require_gold, false) then
        return "���Ľ�Ҳ���"..require_gold.."��\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>##<@main *01*�����ء�>"
    end

--    local require_item = "�������ֻ�ͼ"
--    if lualib:Player_GetItemCount(player, require_item) < 0 then
--        return "������������Ҫ"..require_item.."��\n \n<@main *01*�����ء�>"
--    end

--    if not lualib:Player_DestroyItem(player, require_item, 0, "�۵��ߣ��������ߴ�������", "��������") then
--        return "�Ͻ���Ʒ"..require_item.."ʧ�ܣ�\n \n<@main *01*�����ء�>"
--    end

    if not lualib:Player_SubGold(player, require_gold, false, "�۽�ң������´��ͷ�", "��������") then
        return "�۳����ʧ�ܣ�\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

    if lualib:Player_SetDgnTicket(player, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
    lualib:Player_SetCustomVarInt(player, "scheduled_ylsfb_dgn_times", lualib:GetAllTime())
	lualib:JoinCamp(player, 10, 0)
    if lualib:Player_EnterDgn(player, "������", 105, 17, 5) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n                                                #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"end

	
    return ""
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#������#COLOREND##COLORCOLOR_BROWN#������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#����ʱ�䣺#COLOREND#ÿ��14:00~14~30��20:30~21:00������������ϵͳ����#COLOREND#\n"
        msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:-4>#�ȴ��ֻص����鷢����δ֪��ʣ������໥������Ű�����£���ͼ���������ֻأ�\n"
        msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	msg = msg.."#COLORCOLOR_RED#�˵����#COLOREND#�������ұ���ȼ����ڵ���20�����ܽ��룡\n"
	msg = msg.."��������������������������������������������#OFFSET<X:0,Y:4>##IMAGE<ID:1902700019>#<@main *01*�����ء�>"

	return msg
end




function leave(npc, player)
    return ""
end
