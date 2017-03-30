local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"�ڴ���ɱ��ս��������������ʧ�����Ծ����PK������ϰս���ĺó�����", "����ɱ���еͼ���һ�ú�װ���Ľݾ���", "��Ҫ֤�������������������ɱչʾһ���Լ��ɣ����кܲ���Ľ���Ŷ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 240000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "    ���ӣ�����ɱ��������������ߵ���Ϸ��ֻҪ���������֣��������ӻ���ɱ���������ݺ᳡�ڣ�ն�������⣡\n    ����ɱ�ڶ�ʱˢ��װ������ʰȡ�����ҳ������Ӿ��飬���㽫����������ҵ����ᣡ����ֻ�����߲��ܻ�����ս����\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:-5>##IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@enter *01*[�������ɱ]>\n"
	msg = msg.."#OFFSET<X:0,Y:5>##IMAGE<ID:1902700042>##OFFSET<X:1,Y:-1>#<@info *01*[�����]>\n \n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	msg = msg.."                                                      #OFFSET<X:0,Y:-3>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*[�뿪]>\n"
	return msg
end

function enter(npc, player)
	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 40 then return "��ĵȼ�������Ҫ��\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>" end
	
	local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
	local dgn_id = lualib:Map_GetCustomVarStr(map, "scheduled_dtsfb_dgn_guid")
	if dgn_id == "" then return "���δ������������ϵͳ���棡\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>" end
	
	if lualib:Player_SetDgnTicket(player, dgn_id) == false then
		return "��������ɽ����ͼ����ɱ��\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
    end
	
	lualib:JoinCamp(player, 6, 0)
    if lualib:Player_EnterDgn(player, "����ɱ", 0, 0, 0) == false then
        return "�����ͼ����ɱʧ�ܣ�\n \n \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
    end
	
	
	return ""
end

function leave(npc, player)
	return ""
end

function info(npc, player)
	return "20-35����ҿɽ������ɱ������ÿ��һ�ζ�ʱ�䶼�о�������\n���ʼ���ڻ�����ˢ������ҩˮ�������Ӻ��ڼ���ˢ�������߼������顢�߼�װ�����ڵĸ��ֵ��ߡ�\n��ˢ�����κ�װ������Ҫ�ȶ�һ��ʱ������ʰȡ�� \n \n \n \n \n \n                                                      #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*[����]>"
end
