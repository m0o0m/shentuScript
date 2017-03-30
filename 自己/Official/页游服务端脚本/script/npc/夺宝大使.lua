local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local talk_t = {"������չʾʵ���ĵط�������㲻�ܵõ�Ӣ������֤���Լ������޷����롣", "�䶷�����ﲻ����С���ӹ��Ҽҵĵط������������������ʿ�������ġ�", "���������伫Ʒװ��������Ҫ�������������ᣬֻ���Ž������ſ��ԡ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 300000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ᱦӢ��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
         msg = msg.."�����޷��ӱܵ�ս�����������ľ�ɱ����ȥ�󣬵ȼ����ӵ��ϻ�ˢ��#COLORCOLOR_GREENG#��Ʒװ��#COLOREND#��#COLORCOLOR_GREENG#Ԫ��#COLOREND#��ֻ�����߲����ʸ��ã�\n"
         msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
		 msg = msg.."С��ʾ��������Ҫ��#COLORCOLOR_RED#��Ӣ������#COLOREND#�����Դ�#COLORCOLOR_SKYBLUE#����ħ����#COLOREND#�ڵĹ��������ҵ�����ɽ���ӻ�������Ҳ�е�����\n"
         msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.."��#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jump *01*���μӻ��>����#OFFSET<X:-1,Y:0>##IMAGE<ID:1902700017>#<@info *01*������ܡ�>����#OFFSET<X:-2,Y:0>#<@leave *01*���Ҳ���ȥ��>#OFFSET<X:-2,Y:0>#\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"

	return msg
end

function jump(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ᱦӢ��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
          msg =  msg.."#COLORCOLOR_RED#�ʱ�䣺#COLOREND#��һ,����,���壺��17��~17:30����21:30~22:00\n"
          msg =  msg.."#COLORCOLOR_RED#����������#COLOREND#���˽�����Ҫ�ṩһ��Ӣ������\n"
          msg =  msg.."#COLORCOLOR_RED#����������#COLOREND#������鳤�ύһ��Ӣ������ȫ���Ա�����Խ��롣\n"
          msg =  msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
          msg =  msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_RED#��ʾ�š���#COLOREND#���������ӵĻ�����ȷ�����������Աߣ�\n"
          msg =  msg.."#COLORCOLOR_RED#��ʾ�ơ���#COLOREND#Ӣ����������#COLOREND##COLORCOLOR_SKYBLUE#��ħ��#COLOREND#�򵽣�\n"
          msg =  msg.."#COLORCOLOR_RED#��ʾ�ǡ���#COLOREND#�ʱ���ڲ����ƽ��������\n"
          msg =  msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
          msg =  msg.."#OFFSET<X:0,Y:-6>#������#IMAGE<ID:1902700018>##OFFSET<X:0,Y:-1>#<@jumpex *01*���μӻ��>                    #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

    return msg
end

function jumpex(npc, player)
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
    local dgn = lualib:Map_GetCustomVarStr(map, "scheduled_dbdtfb_dgn_guid")
    if dgn == "" then return "�ᱦ������δ���ţ�������ϵͳ���棡\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end

	if lualib:Player_HasTeam(player) then
		if not lualib:Player_IsTeamLeader(player) then return "���ڶ����У�����ϵ�ӳ����иò�����\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	end

    local require_item = "Ӣ����"
    if lualib:Player_GetItemCount(player, require_item) < 1 then
        return "����ᱦ������Ҫ"..require_item.."��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

	local member = {}
	if lualib:Player_HasTeam(player) then
		member = lualib:Player_GetTeamList(player)
	else
		table.insert(member, player)
	end
	
	if member == nil then return "ϵͳ����\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	
	local npc_x = lualib:Npc_GetPosX(npc)
	local npc_y = lualib:Npc_GetPosY(npc)
	local member_x
	local member_y
	for _, v in pairs(member) do
		member_x = lualib:Player_GetPosX(v)
		member_y = lualib:Player_GetPosY(v)
		if lualib:Map_GetDistance(npc_x, npc_y, member_x, member_y) > 5 then 
			return lualib:Player_GetStrProp(v,  lua_role_user_name).."���ڸ�����" 
		end
	end
	
	if not lualib:Player_DestroyItem(player, require_item, 1, "�۵��ߣ��ᱦ������������", "�ᱦ��ʹ") then
        return "�Ͻ���Ʒ"..require_item.."ʧ�ܣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
    end

	
	for _, v in pairs(member) do
		if lualib:Player_SetDgnTicket(v, dgn) == false then return "��������ɽ����ͼ��\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
		lualib:JoinCamp(player, 9, 0)
		if lualib:Player_EnterDgn(v, "�ᱦ����", 0, 0, 0) == false then return "�����ͼʧ�ܣ�\n \n \n \n \n \n \n \n \n                                                #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"end
	end
	
    return ""
end

function info(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ᱦӢ��#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
         msg = msg.."#COLORCOLOR_RED#�ʱ�䣺#COLOREND#ÿ��һ��������  17:00~17:30   21:30~22:00\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
	 msg = msg.."�����μӻ��#COLORCOLOR_RED#�ύһ��Ӣ����#COLOREND#��������ӽ��룬�ɶӳ��ύһ��Ӣ������������Ա�����Դ��ͽ��롣���ʼ����ڻ��ͼ�������#COLORCOLOR_GREENG#��Ʒװ��#COLOREND#��#COLORCOLOR_GREENG#Ԫ��#COLOREND#����װ������֮ʱ��#COLORCOLOR_RED#����������������޷���ȡ#COLOREND#���ܷ�ɹ���ü�Ʒװ�����Ϳ����ʵ���ˣ�\n"
         msg = msg.."#COLORCOLOR_BROWN#��������������������������������������������������������#COLOREND#\n"
         msg = msg.."��������������������������������������������#IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"

	return msg
end

function leave(npc, player)
    return ""
end
