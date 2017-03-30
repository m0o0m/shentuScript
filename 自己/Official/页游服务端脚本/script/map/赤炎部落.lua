local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/level_gold_exp")



function on_map_create(map)
	lualib:AddTrigger(map,  lua_trigger_enter_map, "on_trigger_enter_map")
	lualib:AddTrigger(map,  lua_trigger_pre_die, "on_trigger_pre_die")
end

function on_trigger_enter_map(player)
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.�õ�ͼ���ռ�װ���͸��ֳ�������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.�õ�ͼ�߻ر����и߷��գ��������1%�ľ���\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.���������бٻ�����������������\n \n#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)
	
	local mapKeyname = lualib:KeyName(lualib:MapGuid(player))
	if 	mapKeyname == "���ײ���1" then
		lualib:SysMsg_SendBoardMsg(player, "��ܰС��ʿ",  "\n#COLORCOLOR_GREENG##UILINK<WND:�ύ��,PARAM:С��ʿ;cybl_ts;player,STR:����������ҡ�[��ܰС��ʿ]##COLOREND#", 10000)   
	end
    return true
end



function on_trigger_pre_die(dieer, killer)
    if lualib:Player_IsPlayer(dieer) == false then
        lualib:Kill(dieer)
        return true
    end
	local sizhename = lualib:Name(dieer)
	local killername = lualib:Name(killer)
	local now_exp = lualib:GetExp(dieer)
	local sub_exp = math.ceil(now_exp / 100)
	local item = "�ٻ�"
	
	local bihuo_num = lualib:ItemCountByKey(dieer, item, true, false, false, 2)
	
	if bihuo_num >= 1 then
		if not lualib:DelItem(dieer, item, 1, 2, "���ײ�������ҵ���", dieer) then
			lualib:SysMsg_SendPromptMsg(dieer, "�۳�����ʧ��")
			return
		end
			lualib:SysMsg_SendPromptMsg(dieer, "������������["..item.."]�Ĵ��ڣ�������ֵ���а����������֣�������������飡")
			return true
	else
		if not lualib:Player_SubExp(dieer, sub_exp, "�����ͼ�����۳�����", dieer) then
			lualib:SysMsg_SendPromptMsg(dieer, "����۳�ʧ��!")
		else
			lualib:SysMsg_SendPromptMsg(dieer, "#COLORCOLOR_RED#���ڸõ�ͼ�ܵ��˶�ħ��а�����䣬�����ص����飡�㱻[#COLORCOLOR_END##COLORCOLOR_YELLOW#"..killername.."#COLOREND##COLORCOLOR_RED#]��ܣ�������ʧ1%����"..now_exp.."����ʧ��"..sub_exp.."#COLOREND#\n")
			lualib:SysMsg_SendBoardMsg(dieer, "а������",  "#COLORCOLOR_RED#���ڸõ�ͼ�ܵ��˶�ħ��а�����䣬�����ص����飡�㱻[#COLORCOLOR_END##COLORCOLOR_YELLOW#"..killername.."#COLOREND##COLORCOLOR_RED#]��ܣ�������ʧ1%����"..now_exp.."����ʧ��"..sub_exp.."#COLOREND#", 10000)   
		end
	end
    return true
end


function on_map_destroy(map)
    lualib:ClearTrigger(map)
end
