local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/log_action")

local monster_table =
{
	[1] = {
    {"����սʿ1",		50},
    {"�ɵ�����1",		50},
    {"��������1",		50},
    {"����սʿ1",		50},
    {"������1",		50},
    {"����������",			1}, --boss
	},
	
	[2] = {
    {"����ţħ1",		50},
    {"����ţħ1",		50},
    {"ţħ����1",		50},
    {"��ս��ţħ����",		1}, --boss
	},
	
	[3] = {
    {"ʬū1",			30},
    {"����๤1",		30},
    {"����๤1",		30},
    {"���ʬū1",		30},
    {"����ʬū1",		30},
    {"ʬū��ͷ1",		30},
    {"��ս��ǧ����ħ",		1}, --boss
	},
}

local time_talbe = 
	{
		{1, 3000, 1, "maptalk"},
		{2, 600000, 1, "maptalk"},  --10���Ӿ���
		{3, 1200000, 1, "maptalk"},  --20���Ӿ���
		{4, 1740000, 1, "maptalk"},	 ----29���Ӿ���
		{5, 1791000, 1, "maptalk"},	 ----���9��
		{6, 1792000, 1, "maptalk"},	 ----���8��
		{7, 1793000, 1, "maptalk"},	 ----���7��
		{8, 1794000, 1, "maptalk"},	 ----���6��
		{9, 1795000, 1, "maptalk"},	 ----���5��
		{10, 1796000, 1, "maptalk"},	 ----���4��
		{11, 1797000, 1, "maptalk"},	 ----���3��
		{12, 1798000, 1, "maptalk"},	 ----���2��
		{13, 1799000, 1, "maptalk"},	 ----���1��
		{14, 1800000, 1, "destroy"},	 ----���0��

	}

	local tzc_maptalk_talbe =
{
	"��[��ս��]�������������ܹ�����30���ӣ�����30�����ڴ�����й����BOSS��ÿ���һ���ֺ�BOSS��ˢ����һ�����ܹ�����������ʵ���ˣ����ͣ�",
	"��ս���Ѿ���ȥ10���ӣ�����20���ӽ����٣���ץ��ʱ�䣡",
	"��ս���Ѿ���ȥ20���ӣ�����10���ӽ����٣���ץ��ʱ�䣡",
	"��ս���Ѿ���ȥ29���ӣ�����1���ӽ����٣���ץ��ʱ�䣡",
	"��ս������9������٣���ץ��ʱ�䣡",
	"��ս������8������٣���ץ��ʱ�䣡",
	"��ս������7������٣���ץ��ʱ�䣡",
	"��ս������6������٣���ץ��ʱ�䣡",
	"��ս������5������٣���ץ��ʱ�䣡",
	"��ս������4������٣���ץ��ʱ�䣡",
	"��ս������3������٣���ץ��ʱ�䣡",
	"��ս������2������٣���ץ��ʱ�䣡",
	"��ս������1������٣���ץ��ʱ�䣡"
}

------------------------------------------��������ʱ����---------------------------------------------------
function on_map_create(map)
    lualib:Debug("40��������ͼ�����ص���")
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map, lua_trigger_post_die, "on_trigger_post_die")
	local dgn_var = "tls_gen_monster_count"
    local cur_count = lualib:Map_GetCustomVarInt(map, dgn_var) + 1
	shuaguai(map, dgn_var, cur_count)
	
	for i = 1 ,#time_talbe do
		if not lualib:AddTimerEx(map, time_talbe[i][1], time_talbe[i][2], time_talbe[i][3], time_talbe[i][4], "") then
			lualib:Error("��ʱ�����ʧ�ܣ�")
		end 
	end
	
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.��ս��ÿ�춼����ѽ���1��\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.����3���ֺ�BOSS������һ������Զ�ˢ����һ��!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.����Ĺ�������������һģһ��������Ҳһ��������������ʵ����^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
    return true
end


------------------------------------------��������---------------------------------------------------
function on_trigger_post_die(actor, killer)

	if lualib:Monster_IsMonster(actor) == false or lualib:Monster_GetMaster(actor) ~= "" then
		return
	end
	
	
	
	
	local map = lualib:MapGuid(actor)
	local x = lualib:X(actor)
	local y = lualib:Y(actor)
	local dgn_var = "tls_gen_monster_count"
    local cur_count = lualib:Map_GetCustomVarInt(map, dgn_var) + 1
	local MapName = lualib:Name(map)
	local exp_canshu = 200
	local player_table =  lualib:Map_GetRegionPlayers(map, x, y, 100, true)
	
	for i = 1, #player_table do
		local lv = lualib:Level(player_table[i])
		lualib:Player_AddExp(player_table[i], exp_canshu * lv, "��ս�����������", actor)
	end
	
	
	
	
	if lualib:Map_GetMonsterCount(map, "", true, true) == 0 and monster_table[cur_count] == nil then
		local map = lualib:Monster_GetMap(actor)
		if map == "" then
			lualib:Print("ȡ��������ͼʧ�ܣ�")
			return
		end

		local pos_x = lualib:Monster_GetPosX(actor)
		local pos_y = lualib:Monster_GetPosY(actor)
		if pos_x == -1 or pos_y == -1 then
			lualib:Print("ȡ�õ�ͼ����ʧ�ܣ�")
			return
		end

		if lualib:Map_GenNpc(map, "��ս�߳���", pos_x, pos_y, 0, 4) == "" then
			lualib:Print("ˢ��NPC��ս�߳���ʧ�ܣ�")
			return 
		end
		
		lualib:Print("ˢ��NPC��ս�߳��ڳɹ���")
		--����npc
		local player_name = lualib:Name(actor)
		--��¼�Զ���log
		lualib:LogWithId(player_name, fun_map_action, "", "", 0, 1, "������ս��1", "")
		return
	end
	
	
	if lualib:Map_GetMonsterCount(map, "", true, true) > 0 then
		return
	end
	
    if monster_table[cur_count] == nil then
		return
	end
	
	shuaguai(map, dgn_var, cur_count)
end

function shuaguai(map, dgn_var, cur_count)
	cur_count = tonumber(cur_count)
	
	for i=1,#monster_table[cur_count] do
		if not lualib:Map_BatchGenMonster(map, monster_table[cur_count][i][1], monster_table[cur_count][i][2], false) then --ˢ��
			lualib:Error("��ս��1"..monster_table[cur_count][i][1].."ˢ��ʧ�ܣ�")
		else
			lualib:Debug(monster_table[cur_count][i][1].."ˢ�³ɹ���")
		end
	end
	
	lualib:Map_SetCustomVarInt(map, dgn_var, cur_count)
end

function maptalk(map, tierid)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100002062#74#36#0#99999000")
	if tierid == 1	then		
			for i = 1, 5 do
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[1])
			end
		elseif  tierid == 2 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[2])
		elseif  tierid == 3 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[3])
		elseif  tierid == 4 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[4])
		elseif  tierid == 5 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[5])
		elseif  tierid == 6 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[6])
		elseif  tierid == 7 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[7])
		elseif  tierid == 8 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[8])
		elseif  tierid == 9 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[9])
		elseif  tierid == 10 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[10])
		elseif  tierid == 11 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[11])
		elseif  tierid == 12 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[12])
		elseif  tierid == 13 then
			lualib:SysMsg_SendMapMsg(map, tzc_maptalk_talbe[13])
		end
	return true
end


function destroy(map, tierid)
	lualib:ClearTrigger(map)
	lualib:Map_DestroyDgn(map)

end