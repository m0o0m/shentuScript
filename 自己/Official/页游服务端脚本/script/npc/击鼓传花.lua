local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local over_time_tb = {{6900, 5}, {7020, 3}, {7080, 2}, {7140, 1}}
local on_time_tb = {{7320, 3}, {7380, 2}, {7440, 1}}
local mail_tb = {}
function on_create(npc)
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
	lualib:Map_SetCustomVarInt(map, "jigu_time", 0)
	lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 1)
	lualib:AddTimer(npc, 833, 60000, -1, "jigu_timer")
	lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
end

function jigu_timer(npc, timer_id)
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")
	jigu_time = jigu_time + 60
	lualib:Map_SetCustomVarInt(map, "jigu_time", jigu_time)

	for k, v in pairs(over_time_tb) do
		if jigu_time == v[1] then
			lualib:SysMsg_SendBroadcastColor("�����֡����Ĵ����������"..v[2].."���Ӻ��������ע��ʱ�䣡", "", 1, 12)
		end
	end

	if jigu_time == 7200 then
		lualib:SysMsg_SendBroadcastColor("�����֡����Ĵ�������Ѿ���������һ���ֻ����5���Ӻ���������ʱ��Ϊ2Сʱ��", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 0)
	end
	
	for k, v in pairs(on_time_tb) do
		if jigu_time == v[1] then
			lualib:SysMsg_SendBroadcastColor("��һ���֡����Ĵ����������"..v[2].."���Ӻ���������ʱ��Ϊ2Сʱ��", "", 1, 12)
		end
	end
	
	if jigu_time == 7500 then
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ��������ʽ��������ҿɵ�����[����ʹ��]���������������ջ�ʤ�߿ɻ�ô�����ң�", "", 1, 12)
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "")
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_time", 0)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_jc", 1)
		lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
	end
	
end

function jigu_xiaohuodong_timer(map, timer_id)
	local Mailname = "���Ĵ���ϵͳ"
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	local player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local jigu_xiaohuodong_time = lualib:Map_GetCustomVarInt(map, "jigu_xiaohuodong_time")
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")
	local jigu_zong_jiangjin_2 = 0
	if jigu_zong_jiangjin < 1000000 then
		jigu_zong_jiangjin_2 = jigu_zong_jiangjin / 2
	else
		jigu_zong_jiangjin_2 = jigu_zong_jiangjin * 0.8
	end
	
	if jigu_kaishi_jc == 0 and player_name ~= "" then
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ�������󽱱����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#���˻�ã�����Ϊ���#COLORCOLOR_BROWN#["..jigu_zong_jiangjin_2.."]#COLORCOLOR_YELLOW#����", "", 1, 12)
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ���������Ѿ�ͨ���ʼ���ʽ���͵����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#�������У���ע����գ���", "", 1, 12)
		lualib:Mail(Mailname, player_name, "��ϲ����û��Ĵ�����󽱣�����������£�\n \n�����ܽ�����100�������£�����Ϊ�ܽ����50%.\n�����ܽ�����100�������ϣ�����Ϊ�ܽ����80%.\n \n���ֻ�����ܽ���Ϊ��"..jigu_zong_jiangjin.."����ҡ������Ľ���Ϊ��"..jigu_zong_jiangjin_2.."����ҡ�������\n \n���ֽ���ͨ�����ʼ�������ϣ�����", jigu_zong_jiangjin_2, 0, mail_tb)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:DisableTimer(map, timer_id)
	elseif jigu_kaishi_jc == 0 and player_name == "" then
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ���������������ִ󽱵�����ȱ��", "", 1, 12)
		lualib:DisableTimer(map, timer_id)
	end
	
	
	if jigu_xiaohuodong_time == 90 then
		lualib:SysMsg_SendBroadcastColor("�ʻ���ǰ�����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#���У�30������Ϳ�����ȡ���ˣ�Ŀǰ�����ܽ���Ϊ���#COLORCOLOR_BROWN#["..jigu_zong_jiangjin.."]#COLORCOLOR_YELLOW#����", "", 1, 12)
	elseif jigu_xiaohuodong_time == 80 then
		lualib:SysMsg_SendBroadcastColor("�ʻ���ǰ�����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#���У�20������Ϳ�����ȡ���ˣ�Ŀǰ�����ܽ���Ϊ���#COLORCOLOR_BROWN#["..jigu_zong_jiangjin.."]#COLORCOLOR_YELLOW#����", "", 1, 12)
	elseif jigu_xiaohuodong_time == 70 then
		lualib:SysMsg_SendBroadcastColor("�ʻ���ǰ�����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#���У�10������Ϳ�����ȡ���ˣ�Ŀǰ�����ܽ���Ϊ���#COLORCOLOR_BROWN#["..jigu_zong_jiangjin.."]#COLORCOLOR_YELLOW#����", "", 1, 12)
	elseif jigu_xiaohuodong_time == 60 and jigu_time < 7140 then
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ�������󽱱����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#���˻�ã�����Ϊ���#COLORCOLOR_BROWN#["..jigu_zong_jiangjin_2.."]#COLORCOLOR_YELLOW#����", "", 1, 12)
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ���������Ѿ�ͨ���ʼ���ʽ���͵����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#�������У���ע����գ���", "", 1, 12)
		lualib:Mail(Mailname, player_name, "��ϲ����û��Ĵ�����󽱣�����������£�\n \n�����ܽ�����100�������£�����Ϊ�ܽ����50%.\n�����ܽ�����100�������ϣ�����Ϊ�ܽ����80%.\n \n���ֻ�����ܽ���Ϊ��"..jigu_zong_jiangjin.."����ҡ������Ľ���Ϊ��"..jigu_zong_jiangjin_2.."����ҡ�������\n \n���ֽ���ͨ�����ʼ�������ϣ�����", jigu_zong_jiangjin_2, 0, mail_tb)
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ�������������´λ��1���Ӻ�����", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc", 0)
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "")
	elseif jigu_xiaohuodong_time == 60 and jigu_time >= 7140 then
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ�������󽱱����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#���˻�ã�����Ϊ���#COLORCOLOR_BROWN#["..jigu_zong_jiangjin_2.."]#COLORCOLOR_YELLOW#����", "", 1, 12)
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ���������Ѿ�ͨ���ʼ���ʽ���͵����#COLORCOLOR_BROWN#["..player_name.."] #COLORCOLOR_YELLOW#�������У���ע����գ���", "", 1, 12)
		lualib:Mail(Mailname, player_name, "��ϲ����û��Ĵ�����󽱣�����������£�\n \n�����ܽ�����100�������£�����Ϊ�ܽ����50%.\n�����ܽ�����100�������ϣ�����Ϊ�ܽ����80%.\n \n���ֻ�����ܽ���Ϊ��"..jigu_zong_jiangjin.."����ҡ������Ľ���Ϊ��"..jigu_zong_jiangjin_2.."����ҡ�������\n \n���ֽ���ͨ�����ʼ�������ϣ�����", jigu_zong_jiangjin_2, 0, mail_tb)
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ�����������������ֻ����1�����ڽ���������ע��ϵͳ��ʾ��", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc", 0)
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "")
		lualib:DisableTimer(map, timer_id)
	elseif jigu_xiaohuodong_time == 0 then
		lualib:SysMsg_SendBroadcastColor("���֡����Ĵ��������ʽ�������ٶ������ˣ�����", "", 1, 12)
		lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", 100000)
		lualib:Map_SetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc", 1)
		lualib:DisableTimer(map, timer_id)
	end
	jigu_xiaohuodong_time = jigu_xiaohuodong_time - 1
	lualib:Map_SetCustomVarInt(map, "jigu_xiaohuodong_time", jigu_xiaohuodong_time)
end


function main(npc, player)
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")
    local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>#���Ĵ��������Ƕ��£�����˭�����Ĵ�Ӯ�ң�������\n"
	msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:7>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang *01*����Ҫ������  > #OFFSET<X:0,Y:1>##IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@zidongqiang *01*���Զ�������  > #IMAGE<ID:1902700017>#<@guize *01*�������>\n"	
	return msg
end

function kaishiqiang(npc, player)
	local map = lualib:Player_GetGuidProp(player, lua_role_current_map_id)
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	local jigu_player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
    local msg = " #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#��ǰ�컨�����Ϊ��#COLOREND#"..jigu_player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#�����ܽ�������Ϊ��[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]�����#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.." ��ʾ����һ����Ҫ���10�򣡣���\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang1 *01*����Ҫ������>                                  #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
    return msg
end

function kaishiqiang1(npc, player)
	local msg = ""
	local yb = 100000
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	
	local jigu_time = lualib:Map_GetCustomVarInt(map, "jigu_time")

	local jigu_yuan_player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name) 
	
	
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")

	if jigu_kaishi_jc == 0 then
		return "���ֻ����������û��ʼ���Ѿ���������ע��ϵͳ��ʾ��\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>##IMAGE<ID:1902700019>#<@main *01*��������ҳ��>"
	end
	
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	if jigu_kaishi_xiaohuodong_jc == 0 then
		msg = msg.."���ֻ����һ�����ڿ�����Ŀǰϵͳ�ر��У�����\n \n"
		msg = msg.."��ע��ϵͳ��ʾ��\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>\n"
		return msg
	end

	if player_name == jigu_yuan_player_name then
		lualib:SysMsg_SendWarnMsg(player, "���Ѿ����ʻ�ӵ���ߣ��벻Ҫ�ظ������ʻ���")
		msg = msg.." #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#��ǰ�컨�����Ϊ��#COLOREND#"..player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#�����ܽ�������Ϊ��[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]�����#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.." ��ʾ����һ����Ҫ���10�򣡣���\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang1 *01*����Ҫ������>                                  #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
		return msg
	end
		
	if not lualib:Player_IsGoldEnough(player, yb, false) then
		return "��Ҳ��㣡���ֵ������������\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*��������ҳ��>"
	end
		
	if not lualib:Player_SubGold(player, yb, false, "�۽�ң���������", player) then
		return "�۳����ʧ�ܣ�\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
	
	jigu_zong_jiangjin = jigu_zong_jiangjin + yb
	lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", jigu_zong_jiangjin)
	
	lualib:Map_SetCustomVarStr(map, "jigu_player_name", player_name)
	
	lualib:Map_SetCustomVarInt(map, "jigu_xiaohuodong_time", 90)
	lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
	lualib:SetInt(player, "jigu_zdy_time", 0)

		msg = msg.." #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#��ǰ�컨�����Ϊ��#COLOREND#"..player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#�����ܽ�������Ϊ��[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]�����#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.." ��ʾ����һ����Ҫ���10���������\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@kaishiqiang1 *01*����Ҫ������>                                  #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end

function guize(npc, player)
		local msg = ""
		msg = msg.." #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."1:�ʱ��Ϊȫ�죬һ������Ϊ2Сʱ������2Сʱ�ڲ����ƻ������������һ�Σ�Ҳ���������Ρ�\n"
		msg = msg.."3:ÿ��һ�λ���Ҫ����10���ң����ۻ������ܽ��ء�\n"
		msg = msg.."4:��ҳ����ʻ����30�������������ʻ�����ֱ��Ӯ�ñ��ִ󽱡�\n"
		msg = msg.."5:ÿ���ֻ������ֻҪ�������ʻ������ܻ�ô󽱡�\n"
        msg = msg.."#OFFSET<X:0,Y:-7>##COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#COLORCOLOR_RED#������򣺽����ܽ�����100�������£����߽�����ܽ����50%.�����ܽ�����100�������ϣ����߽�����ܽ����80%��#COLOREND#\n"
		msg = msg.."                                              #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main      *01*�����ء�>\n"
	return msg
end	

			

function zidongqiang(npc, player)
	local msg = ""
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_player_zidingyi = lualib:Player_GetCustomVarInt(player, "jigu_player_zidingyi")
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name) 
	local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	local jigu_player_name = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	
		msg = msg.." #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#��ǰ�컨�����Ϊ��#COLOREND#"..jigu_player_name.."\n"
		msg = msg.."#COLORCOLOR_RED#�����ܽ�������Ϊ��[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]�����#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
		msg = msg.." ��ʾ����һ����Ҫ���10�򣡣���\n \n"
		msg = msg.."#IMAGE<ID:1902700032>##OFFSET<X:0,Y:-1>#<@zidongqiang2 *01*����ʼ�Զ�������>   #OFFSET<X:0,Y:1>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@zanting *01*����ͣ�Զ�������>   #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
	return msg
end

function zidongqiang2(npc, player)
	local yb = 100000
	local msg = ""
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	local jigu_player = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	
	if jigu_kaishi_xiaohuodong_jc == 0 then
		msg = msg.."���ֻ����һ�����ڿ�����Ŀǰϵͳ�ر��У�����\n \n"
		msg = msg.."��ע��ϵͳ��ʾ��\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
		return msg
	end
	if jigu_kaishi_jc == 0 then
		return "���ֻ����������û��ʼ���Ѿ���������ע��ϵͳ��ʾ��\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
	
	if not lualib:Player_IsGoldEnough(player, yb, false) then
		return "�Զ���ÿ����Ҫ���10������Ҳ��㣡���ֵ������������\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	end
	
	if jigu_player == "" then
		lualib:Map_SetCustomVarStr(map, "jigu_player_name", "���ݶ�ȡ��")
	end

	lualib:SetInt(player, "jigu_zdy_time", 25)
	lualib:AddTimerEx(player, 1001, 1000, -1, "jigu_zidingyi_time", npc)
		return ""
end
	

function jigu_zidingyi_time(player, timer_id, npc)
	local msg = ""
	local yb = 100000
	local map_key_name = "����"
	local map = lualib:Map_GetMapGuid(map_key_name)
	local player_name = lualib:Player_GetStrProp(player, lua_role_user_name)
	local jigu_player = lualib:Map_GetCustomVarStr(map, "jigu_player_name")
	local jigu_zdy_time = lualib:GetInt(player, "jigu_zdy_time")
	local jigu_kaishi_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_jc")
	
	local jigu_kaishi_xiaohuodong_jc = lualib:Map_GetCustomVarInt(map, "jigu_kaishi_xiaohuodong_jc")
	if jigu_kaishi_xiaohuodong_jc == 0 then
		msg = msg.."���ֻ����һ�����ڿ�����Ŀǰϵͳ�ر��У�����\n \n"
		msg = msg.."�Զ������Ѿ��Զ�ֹͣ������\n \n"
		msg = msg.."��ע��ϵͳ��ʾ��\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
		lualib:NPCTalkEx(npc, player, msg)
		lualib:DisableTimer(player, 1001)
		return true
	end
	
	if jigu_kaishi_jc == 0 then
		msg = msg.."�����ֻ�Ѿ�������Ŀǰϵͳ�ر��У�����\n \n"
		msg = msg.."�Զ������Ѿ��Զ�ֹͣ������\n \n"
		msg = msg.."��ע��ϵͳ��ʾ��\n \n \n \n \n \n"
		msg = msg.."                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
		lualib:NPCTalkEx(npc, player, msg)
		lualib:DisableTimer(player, 1001)
		return true
	end
	
	if not lualib:Player_IsGoldEnough(player, yb, false) then
		lualib:DisableTimer(player, 1001)
		lualib:NPCTalkEx(npc, player, "�Զ���ÿ����Ҫ���10������Ҳ����ˣ����ֵ������������\n \n \n \n \n \n \n                                          #OFFSET<X:0,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>")
		return true
	end
	
	if player_name ~= jigu_player and jigu_zdy_time < 25 then
		jigu_zdy_time = jigu_zdy_time + 1
		lualib:SetInt(player, "jigu_zdy_time", jigu_zdy_time)
	end
	
	if player_name ~= jigu_player and jigu_zdy_time > 24 then
		if jigu_player ~= "" then
			local jigu_zong_jiangjin = lualib:Map_GetCustomVarInt(map, "jigu_zong_jiangjin")
			
			if not lualib:Player_SubGold(player, yb, false, "�۽�ң���������", player) then
				lualib:DisableTimer(player, 1001)
				lualib:NPCTalkEx(npc, player, "�۳����ʧ�ܣ�\n \n \n \n \n \n#IMAGE<ID:1902700019>#<@main *01*�����ء�>")
				return true
			end
				
			jigu_zong_jiangjin = jigu_zong_jiangjin + yb
			lualib:Map_SetCustomVarInt(map, "jigu_zong_jiangjin", jigu_zong_jiangjin)
			
			lualib:Map_SetCustomVarStr(map, "jigu_player_name", player_name)
			
			lualib:Map_SetCustomVarInt(map, "jigu_xiaohuodong_time", 90)
			lualib:AddTimer(map, 834, 1000, -1, "jigu_xiaohuodong_timer")
			lualib:SetInt(player, "jigu_zdy_time", 0)
			
			msg = msg.." #COLORCOLOR_RED#�I#COLOREND##COLORCOLOR_GOLD#===================��ӭ���ٻ��Ĵ���==================#COLOREND##COLORCOLOR_RED#�I#COLOREND#\n"
			msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
			msg = msg.."#OFFSET<X:0,Y:7>##COLORCOLOR_RED#��ǰ�컨�����Ϊ��#COLOREND#"..player_name.."\n"
			msg = msg.."#COLORCOLOR_RED#�����ܽ�������Ϊ��[#COLOREND#"..jigu_zong_jiangjin.."#COLORCOLOR_RED#]���#COLOREND#\n"
			msg = msg.."#COLORCOLOR_BROWN#�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y�y#COLOREND#\n"
			msg = msg.." ��ʾ����һ����Ҫ���10�򣡣���\n \n"
			msg = msg.."#IMAGE<ID:1902700034>##OFFSET<X:0,Y:-1>#<@zanting *01*����ͣ�Զ�������>                          #OFFSET<X:0,Y:1>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end
	end
	return true
end


function zanting(npc, player)
	lualib:DisableTimer(player, 1001)
	return ""
end