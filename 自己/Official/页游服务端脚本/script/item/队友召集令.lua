local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

-- ��ͼ������keyname���������ڵĵ�ͼ���ܱ����ͣ�
local map_hei =
{
	"����ڣ����", 
	"��Ĺ���", 
	"���������ض�", 
	"���µ�һս��", 
	"Ư����", 
	"����������", 
	"�м�������", 
	"�߼�������", 
	"������ս��1", 
	"������ս��2", 
	"������ս��3", 
	"������", 
	"�������", 
	"������þ�", 
	"��ħ��", 
	"��Ĺ", 
	"�ᱦ����", 
	"���³�", 
	"�䶷��", 
	"���ϸ�", 
	"��ħ̨", 
	"��ħ��",
	"������Ԩ1", 
	"������Ԩ2",
	"������Ԩ3",
	"ǧ����",
	"��Ϣ��",
	"��̨",
	"�غ���ӡ",
	"����������",
	"�����ؾ�",
	"��Ӣ������-Ⱥ����¹",
	"��Ӣ������-16��8",
	"��Ӣ������-8��4",
	"��Ӣ������-4��2",
	"��Ӣ������-������",
	"��Ӣ������-���Ǿ���",
	"��Ӣ������-��Ϣ��",
	"��Ӣ������-�����",
	"��ս��1",
	"��ս��2",
	"��ս��3",
	"���̵Ĳؽ���",
	"������ʱ����",
	"������4",
	"������5",
	"������6",
	"����ڣ3",
	"����ڣboss",
	"��ɽ��Ѩ5",
	"��ɽ��Ѩ6",
	"��ɽ��Ѩ7",
	"��ɽ��Ѩ8",
	"��ɽ��Ѩboss",
	"а��6-1",
	"а��6-2",
	"а��6-3",
	"а��6-4",
	"а��6-5",
	"а��6-6",
	"а��6-7",
	"а��6-8",
	"а��6-9",
	"а��6-10",
	"а��6-11",
	"а��6-12",
	"а��6-13",
	"а��6-14",
	"а��6-15",
	"а��6-16",
	"а��7-1",
	"а��7-2",
	"а��7-3",
	"а��boss",
	"�����6",
	"�����7-1",
	"�����7-2",
	"�����7-3",
	"�����7-4",
	"�����7-5",
	"�����7-6",
	"�����7-7",
	"�����7-8",
	"�����7-9",
	"�����boss",
	"��·��3",
	"��·��boss",
	"��ħʯ��3",
	"��ħʯ��4",
	"��ħʯ��boss",
	"����2",
	"����3",
	"����3Ұ��",
	"����4",
	"����4Ұ��",
	"����5",
	"����1����1",
	"����1����2",
	"����1����3",
	"����1����4",
	"����1����5",
	"����1����6",
	"����1����7",
	"����2����1",
	"����2����2",
	"����2����3",
	"����2����4",
	"����2����5",
	"����2����6",
	"����3����1",
	"����4����1",
	"����4����2",
	"��ħ����10",
	"��ħ����11",
	"��ħ����12",
	"��ħ���",
	"��ħ�ص�1",
	"��ħ�ص�2",
	"���ǻʹ�",
	"����",
	"�����ܵ�",
	"ʬ�����",
	"��ħ��",
	"��ɽ",
	"������",
	"�ؾ�¥",
	"������",
	"�䱦��",
	"�ٲ���",
	"ľ����",
	"ľ����2",
	"ľ����3",
	"��Ԫ�ؾ�1",
	"��Ԫ�ؾ�2",
	"��Ԫ�ؾ�3",
	"���ײ������",
	"���ײ���1",
	"���ײ���2",
	"���ײ���3",
	"���׽���",

}

function main(player, item)
	local player_name = lualib:Name(player)
	local player_team = lualib:Player_GetTeamList(player)

	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[�����ټ���]#COLOREND#\n"

	msg = msg .."#OFFSET<X:70,Y:0>##COLORCOLOR_RED#���ܵ����У������ڴ�����#COLOREND#"
	--[[
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905000>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#����С��\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>##COLORCOLOR_BROWN#���#IMAGE<ID:1902700015>#�ɽ����ѳ�Ա�����Լ�����#COLOREND#\n#OFFSET<X:0,Y:5>#"  
	msg = msg .. "#IMAGE<ID:1902700033>##COLORCOLOR_BROWN#ÿ��һ������Ҫ����������#COLOREND#\n#OFFSET<X:0,Y:5>#"  
    msg = msg .. "#OFFSET<X:88,Y:0>##IMAGE<ID:1900010084>#"
	msg = msg .. "#OFFSET<X:-47,Y:-5>#<@chuansong_all".."#"..item.."  *01* ȫ����>\n \n"
	for k, v in pairs(player_team) do
		local Team_name = lualib:Name(v)
		local map_name = lualib:Name(lualib:MapGuid(v))
		msg = msg .. "#IMAGE<ID:1902700015>#".."#OFFSET<X:-22,Y:-1>#<@chuansong".."#"..Team_name.."#"..v.."#"..item.."#"..map_name.. " *01* ��>".."��#COLORCOLOR_GREENG#["..Team_name.."]#COLOREND# ��["..map_name.."]\n"
	end]]
	
	lualib:NPCTalkDetail(player, msg, 265, 550)
	return true
end

function chuansong(player, Team_name, v, item, map_name)
	local playername = lualib:Name(player)
	local map_keyname = lualib:KeyName(lualib:MapGuid(v))
	local mapself_keyname = lualib:KeyName(lualib:MapGuid(player))
	local mapself_name = lualib:Name(lualib:MapGuid(player))
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local gold = 20000
	local map = lualib:MapGuid(player)
	local x = tonumber(lualib:X(player))
	local y = tonumber(lualib:Y(player))

	if item_num < 1 then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return ""
	end
	
	if playername == Team_name then
		lualib:SysTriggerMsg(player, "���ܴ��͵��Լ���ߣ�")
		return ""
	end
	
	if lualib:Player_IsGoldEnough(player, gold, false) == false then
		lualib:SysTriggerMsg(player, "��Ҳ��㣬�����ټ���")
		return ""
	end
	
	if not lualib:Player_SubGold(player, gold, false, "�л��ټ�", player) then
		lualib:SysTriggerMsg(player, "��ҿ۳�ʧ��")
		return ""
	end
	
	for i = 1, #map_hei do
		if mapself_keyname == map_hei[i] then
			lualib:SysTriggerMsg(player, "�����ڵ�["..mapself_name.."]��ͼ����ֹ�ټ���")
			return ""
		end
	end
	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001261#"..x.."#"..y.."#0#0")
	
	lualib:Player_JumpToRole(v, playername)
	
	return ""
end



function chuansong_all(player, item)
	local player_team = lualib:Player_GetTeamList(player)
	local playername = lualib:Name(player)
	local mapself_keyname = lualib:KeyName(lualib:MapGuid(player))
	local mapself_name = lualib:Name(lualib:MapGuid(player))
	local itemname	= lualib:Name(item)
	local itemkeyname = lualib:KeyName(item)
	local item_num = lualib:ItemCountByKey(player, itemkeyname, true, false, false, 2)
	local gold = 20000
	local num = #player_team - 1
	local gold_all = tonumber(num) * gold
	local map = lualib:MapGuid(player)
	local x = tonumber(lualib:X(player))
	local y = tonumber(lualib:Y(player))


	if item_num < 1 then
		lualib:SysTriggerMsg(player, "���ǲ��ǰ�["..itemname.."]���ű��ˣ�")
		return ""
	end
	
	if playername == Team_name then
		lualib:SysTriggerMsg(player, "���ܴ��͵��Լ���ߣ�")
		return ""
	end
	
	for i = 1, #map_hei do
		if mapself_keyname == map_hei[i] then
			lualib:SysTriggerMsg(player, "�����ڵ�["..mapself_name.."]��ͼ����ֹ�ټ���")
			return ""
		end
	end
	
	if lualib:Player_IsGoldEnough(player, gold_all, false) == false then
		lualib:SysTriggerMsg(player, "��Ҳ���["..gold_all.."]!����ȫ���ټ�������Գ��Ե����ټ���")
		return ""
	end
	
	if not lualib:Player_SubGold(player, gold_all, false, "�л��ټ�", player) then
		lualib:SysTriggerMsg(player, "��ҿ۳�ʧ��")
		return ""
	end

	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100001261#"..x.."#"..y.."#0#0")
	
	for k, v in pairs(player_team) do
		lualib:Player_JumpToRole(v, playername)
	end
	return ""
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#[��"..item_name.."��#COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#[["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
