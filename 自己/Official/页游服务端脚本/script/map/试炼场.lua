local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local timer_t = {{120000, 5}, {180000, 4}, {240000, 3}, {270000, 2}, {290000, 1}}
local tongzhi_t = {[5] = "3����", [4] = "2����", [3] = "1����", [2] = "30��", [1] = "10��"}

function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")
	
    local map_table = {["����������"] = {{"����������", 20}}, ["�м�������"] = {{"�м�������", 20}}, ["�߼�������"] = {{"�߼�������", 20}}, ["����������"] = {{"����������", 20}}}
    local map_name = lualib:Map_GetMapKeyName(map)
    if map_table[map_name] == nil then
        lualib:Error("��������ͼkeyname����ƥ��")
        return
    end
    lualib:Debug(map_name.."��ͼ�����ص���")
	
	local npc = lualib:Map_GenNpc(map, "������ͷ����", 24, 26, 0, 3)
	if "" == npc then
		lualib:Error("����������ˢ�³���NPCʧ�ܣ�")
		return
	end
	lualib:Debug("����������ˢ�³���NPC�ɹ���")

	for _, v in pairs(timer_t) do
		if not lualib:AddTimer(map, v[2], v[1], 1, "on_timer_close") then
			lualib:Error(map_name.."���ر�֪ͨ��ʱ��ʧ�ܣ�")
			return
		end
	end
    lualib:Debug(map_name.."���ر�֪ͨ��ʱ���ɹ���")

    for i = 1, table.getn(map_table[map_name]) do
        if not lualib:Map_GenMonster(map, 24, 34, 5, 5, map_table[map_name][i][1], map_table[map_name][i][2], true) then
            lualib:Error(castle_name.."ˢ��"..add_monster_table[castle_name][i][1].."����")
            return
        end
    end
    lualib:Debug(map_name.."�����ˢ�֣�")
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n \n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.������ÿ�춼���Խ�����ȡ����ƾ֤��������ȡ����\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.������ÿ�춼���Խ�����ȡ�����飬�����洢����!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.Ҫ�������죬����������ٲ��˵�Ӵ^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end


function on_map_destroy(map)
	lualib:ClearTrigger(map)
    lualib:Debug("��������ͼ���٣�")
    return
end

function on_timer_close(map, timer_id)
    local map_name = lualib:Map_GetMapName(map)
    lualib:SysMsg_SendMapMsg(map, "����������"..tongzhi_t[timer_id].."��رգ�")
end
