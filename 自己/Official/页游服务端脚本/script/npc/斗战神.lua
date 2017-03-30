local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

function main(npc, player)
	local msg = ""
	local baozi_name = lualib:IO_GetCustomVarStr("baozi_name")
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y��ս��y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."˵����"
	msg = msg.."ÿͶ��һ��������Ҫ����10����\n"
	msg = msg.."Ͷ��������һ����������࣬�ɻ�ö������ԡ�����+5��\n"
	msg = msg.."���û���������������ᣬ������ʧ����������������ȡ\n \n"
	msg = msg.."        #OFFSET<X:0,Y:-2>##COLORCOLOR_RED#��ʾ����ǰӵ����Ϊ��#COLOREND#"..baozi_name.."#COLORCOLOR_RED#��#COLOREND#\n"
    msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#IMAGE1902700037#<@baozi *01*Ͷ����������>       #IMAGE<ID:1902700017>#<@baozia *01*��ȡ����״̬>\n"
	return msg
end

function baozia(npc, player)
		local baozi_name_duibi = lualib:IO_GetCustomVarStr("baozi_name_duibi")
		local yang_baoji_zhi = lualib:Player_GetCustomVarInt(player, "yang_baoji_jc")
		local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
	if yang_baoji_zhi == 1 then
		local msg = ""
		msg = msg.."��������Ч��δ���ˣ������ظ���ȡ�������������Ժ�������\n \n"
		msg = msg.."<@main *01*�����ء�>\n"
		return msg
	end
	
	if player ~= baozi_name_duibi then
		local msg = ""
		msg = msg.."���ȡ�ʸ��������ȡ��\n \n"
		msg = msg.."<@main *01*�����ء�>\n"
		return msg
	end
	
	if player == baozi_name_duibi then
		local msg = ""
		local ceshi_name = "����������"
		lualib:Player_AddBuff(player, ceshi_name, 180000)
		lualib:Map_SetCustomVarInt(map, "baoziwang_timer", 0)
		lualib:AddTimer(player, 823, 10000, 18000, "yang_baoji_time")
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 1)
		msg = msg.."��ϲ��ϲ����ͨ�����׿���Ķ�������ñ�������\n \n"
		msg = msg.."����Ϊ��ñ�����������ע��鿴ͼ����ʾ��ʱ�䡣\n"
		msg = msg.."Ч����ʧ������ظ�����������ȡ��������\n"
		msg = msg.."<@main *01*�����ء�>\n"
		return msg
	end
end
local shuzi_tb = {{1,"һ"}, {2,"��"}, {3,"��"}, {4,"��"}, {5,"��"}, {6,"��"}}
function baozi(npc, player)
		local msg = ""
		local Gold = 100000
		local a1 = lualib:GenRandom(1, 6)
		local a2 = lualib:GenRandom(1, 6)
		local a3 = lualib:GenRandom(1, 6)
		local baozi_name = lualib:IO_GetCustomVarStr("baozi_name")
		
	for k, v in pairs(shuzi_tb) do
		if a1 == v[1] then
			a11 = v[2]
		end
		if a2 == v[1] then
			a22 = v[2]
		end
		if a3 == v[1] then
			a33 = v[2]
		end
	end
		
    if not lualib:Player_IsGoldEnough(player, Gold, false) then
        return "��Ҳ���,��ӵ���㹻�Ľ�Һ�������ս��"
    end

    if not lualib:Player_SubGold(player, Gold, false, "�۽�ң���ս�����Ľ��", player) then
        return "�۳����ʧ�ܣ������ԣ�"
    end
	
	if a1 == a2 and a2 == a3 then
		local msg = ""
		local ceshi_name = "����������"
		local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
		local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
		lualib:IO_SetCustomVarStr("baozi_name", player_name)
		lualib:IO_SetCustomVarStr("baozi_name_duibi", player)
		lualib:Player_AddBuff(player, ceshi_name, 180000)
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 1)
		lualib:Map_SetCustomVarInt(map, "baoziwang_timer", 0)
		lualib:AddTimer(player, 823, 10000, 18000, "yang_baoji_time")
		msg = msg.."����ǰ��ս������Ϊ["..a1.."]["..a2.."]["..a3.."]\n \n"
		msg = msg.."��ϲ��ϲ����ͨ�����׿���Ķ�������ñ�������\n \n"
		msg = msg.."����Ϊ��ñ�����������ע��鿴ͼ����ʾ��ʱ�䡣\n"
		msg = msg.."Ч����ʧ������ظ�����������ȡ��������\n"
		lualib:SysMsg_SendWarnMsg(player, "��ǰ����ս������Ϊ["..a1.."]["..a2.."]["..a3.."]")
		return msg
	else
		lualib:SysMsg_SendWarnMsg(player, "��ǰ����ս������Ϊ["..a1.."]["..a2.."]["..a3.."]")
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y��ս��y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n \n"
	msg = msg.."˵����"
	msg = msg.."ÿͶ��һ��������Ҫ����10����\n"
	msg = msg.."Ͷ��������һ����������࣬�ɻ�ö������ԡ�����+5��\n"
	msg = msg.."���û���������������ᣬ������ʧ����������������ȡ\n"
		msg = msg.."              #COLORCOLOR_RED#���ש�    ���ש�    ���ש�#COLOREND#\n"
		msg = msg.."        #OFFSET<X:0,Y:-3>#      #COLORCOLOR_RED#��#COLOREND#"..a11.."#COLORCOLOR_RED#��    ��#COLOREND#"..a22.."#COLORCOLOR_RED#��    ��#COLOREND#"..a33.."#COLORCOLOR_RED#��#COLOREND#\n"
		msg = msg.."        #OFFSET<X:0,Y:-3>#      #COLORCOLOR_RED#���ߩ�    ���ߩ�    ���ߩ�#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#IMAGE1902700037#<@baozi *01*Ͷ����������>\n"
		return msg
	end
end

function yang_baoji_time(player, timer_id)
	local ceshi_name = "����������"
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local baoziwang_timer = lualib:Map_GetCustomVarInt(map, "baoziwang_timer")
	local baozi_name_duibi = lualib:IO_GetCustomVarStr("baozi_name_duibi")
	
	if player ~= baozi_name_duibi then
		local msg = ""
		lualib:Player_DelBuff(player, ceshi_name)
		lualib:DisableTimer(player, timer_id)
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 0)
		msg = msg.."#COLORCOLOR_RED#���ڡ���ս�񡿴���õı����ӳ��ʸ񣬱��������ȡ����#COLOREND#����㻹�����ӵ�����������ᣡ\n \n"
		lualib:NPCTalk(player, msg)
		return true
	end
	baoziwang_timer = baoziwang_timer + 1
	lualib:Map_SetCustomVarInt(map, "baoziwang_timer", baoziwang_timer)
	if baoziwang_timer > 179900 then
		lualib:Player_DelBuff(player, ceshi_name)
		lualib:DisableTimer(player, timer_id)
		lualib:Player_SetCustomVarInt(player, "yang_baoji_jc", 0)
	end
	return true
end