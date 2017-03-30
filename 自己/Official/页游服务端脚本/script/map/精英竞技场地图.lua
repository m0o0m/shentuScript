local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--------------��������ʱ����------------------
function on_map_create(map)
    lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map") --���븱���ص�
    lualib:AddTrigger(map, lua_trigger_kill, "on_trigger_kill") --ɱ�˻ص�
	lualib:AddTrigger(map, lua_trigger_player_relive, "on_trigger_player_relive") --�����ص�
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map") --�뿪��ͼ����
	
	if lualib:KeyName(map) ~= "��Ӣ������-Ⱥ����¹" then
		lualib:Map_GenNpc(map, "����������", 37, 40, 0, 4)
		lualib:Map_GenNpc(map, "����������", 23, 57, 0, 4)
	end
end

--------------���븱���ص�------------------
function on_trigger_enter_map(player)
	local map = lualib:MapGuid(player)
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#23#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#54#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#22#55#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#56#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#24#57#0#0")
	
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#37#42#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#41#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#36#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#40#0#0")
	lualib:RunClientScript(map, "mapeffect", "texiao", "100000492#35#39#0#0")
	
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..player.."\"") ~= nil then
		lualib:Player_AddBuff(player,"��Ӣ�������ȴ�",0) --�����Ժ󲻿��ͷż��ܣ������ƶ�buff
		lualib:SetInt(player,"jyjjc_jifen",0) --�������ҵĻ��ֱ���
		lualib:SetHp(player,lualib:Hp(player,true), false)--����ֵ�ָ���
		lualib:SetMp(player,lualib:Mp(player,true), false)--ħ��ֵ�ָ���
		lualib:SysMsg_SendMsgDlg(player, 1, "������ʼǰ��ʱ�����ƶ������ɹ����������ĵȴ�������ʼ��#BUTTON0#ȷ��#BUTTONEND#", 100, "guanbi", "")
	else
		lualib:Player_MapMoveXY(player,map, 30,48, 3)
		lualib:Player_AddBuff(player,"��Ӣ�������ۿ�",0) --�����޵С�����ʹ�ü��ܡ��������������ס�
	end
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.������򵽶��ֵı��������������Ӧ����ҫֵ\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.��ҫֵ����NPC[��ҫ������]���һ��������Ե���ҫװ��!\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.ս���ɣ������ʿ�ˣ��Ұ���^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
end

function guanbi()
	return ""
end

--------------ɱ�˻ص�------------------
function on_trigger_kill(killer, victim)
	if string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..killer.."\"") ~= nil and string.find(lualib:GetStr("0", "jyjjc_gerenjinji"),"\""..victim.."\"") ~= nil then
	else
		return
	end

    if lualib:Player_IsPlayer(victim) == true and lualib:Player_IsPlayer(killer) == true then
        local killername = lualib:Player_GetStrProp(killer, lua_role_user_name)
        local victimname = lualib:Player_GetStrProp(victim, lua_role_user_name)
		lualib:SetInt(killer,"jyjjc_jifen",lualib:GetInt(killer,"jyjjc_jifen")+10) --ɱ���߼�10����
		lualib:SetInt(victim,"jyjjc_jifen",lualib:GetInt(victim,"jyjjc_jifen")-5) --�����߼�5����
		lualib:SysMsg_SendWarnMsg(killer, "����ɱ��"..victimname.."����PK�ͷ�������+10���ܻ��֣�"..lualib:GetInt(killer,"jyjjc_jifen"))
		lualib:SysMsg_SendWarnMsg(victim, "����"..killername.."ɱ��������-5���ܻ��֣�"..lualib:GetInt(victim,"jyjjc_jifen"))
    end
end

--------------�����ص�------------------
function on_trigger_player_relive(player)
	lualib:ProgressBarStart(player, 15000, "������...", "on_relive_complete", "guanbi", "") --����������
	return false
end

function on_relive_complete(player, param)	
	local map = lualib:MapGuid(player)
	local x,y,z = 0,0,0
	if lualib:KeyName(map) == "��Ӣ������-Ⱥ����¹" then
		x = math.random(16,59)
		y = math.random(24,71)
		z = 1
	else
		if lualib:GetStr(map,"jyjjc_gerenxinxi1") == player then
			x = 45
			y = 31
			z = 1
		elseif lualib:GetStr(map,"jyjjc_gerenxinxi2") == player then
			x = 17
			y = 64
			z = 1
		end
		
		lualib:Player_AddBuff(player,"��Ӣ������׼��",0) --�����Ժ����������޵кͲ��ܹ�����buff
	end
	lualib:Player_Relive(player,"", x, y, z, 50) --����
end

--------------�뿪��������------------------
function on_trigger_leave_map(player)
	lualib:Player_DelBuff(player,"��Ӣ�������ۿ�") --ɾ��buff
end

function on_map_destroy(map)
    lualib:ClearTrigger(map)
end