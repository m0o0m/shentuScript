local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--#COLORCOLOR_GREENG##UILINK<WND:�ύ��,PARAM:������;������;����1;����2,STR:��>##COLOREND#��"
--lualib:SysMsg_SendBoardMsg(player, "��ܰС��ʿ",  "\n#COLORCOLOR_GREENG##UILINK<WND:�ύ��,PARAM:С��ʿ;tmsk_ts;player,STR:����������ҡ�[��ܰС��ʿ]##COLOREND#", 10000)
--����ڣ��ʿ

function jjz_ts(player)
	--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#����ڣ������\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ��ս��װ   ��ħ��װ   ������װ\n  ��ʥ֮��   ���ս�ָ   ��������\n  ���ƽ�ָ   ӫ������   �ƽ�����\n  ��ʿͷ��   ��������   ���껤��#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�ܳײп� ������  ���������#COLOREND#"
	
	lualib:NPCTalkDetail(player, msg, 265, 350)
	
return ""

	]]--
	
end

--��������ʿ

function fqkd_ts(player)
	--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#�����󶴲�����\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ��ս��װ   ��ħ��װ   ������װ\n  ��ʥ֮��   ���ս�ָ   ��������\n  ���ƽ�ָ   ӫ������   �ƽ�����\n  ��ʿͷ��   ��������   ���껤��#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#������#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 350)
	return ""    
		]]--
end

--��ɽ��Ѩ��ʿ

function ysax_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#��ɽ��Ѩ������\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ����       ����       ����\n   ʮɱ       ��Ԩ       ����\n  ��ʿ����   ��귨��   �������\n  ��ս��װ   �ۻ���װ   ������װ\n  ʥ����װ   ��ڤ��װ   �ɳ���װ\n  �ƽ�ͷ��   ��ħͷ��   ħ�����\n  ���۵�׹#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#ѭ��ħ��           ���������\n  ��ɫҩ��(��)       ��ɫҩ��(��)#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 360)
	return ""       
		]]--
end

--��·����ʿ

function jlc_ts(player)
		--[[
    local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#��·�ǲ�����\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ����        ����      ����\n   ʮɱ        ��Ԩ      ����\n  ��ʿ����   ��귨��   �������\n  ��ս��װ   �ۻ���װ   ������װ\n  ʥ����װ   ��ڤ��װ   �ɳ���װ\n  ��������   ��������   �ƻ���ָ\n  ����ָ   ��������   ��ħ����\n  ��Ԫ��ָ   ��а����   ���ʯ����#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�������     �Ž�      ���ﾭ�鵤#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 275, 360)
	return ""    
		]]--
end


--�������ʿ

function thz_ts(player)
		--[[
    local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#����������\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ʮɱ       ��Ԩ       ����\n  ��ʿ����   ��귨��   �������\n  ʥ����װ   ��ڤ��װ   �ɳ���װ\n  ��������   ��������   �ƻ���ָ\n  ����ָ   ��������   ��ħ����\n  ��Ԫ��ָ   ��а����   ħ�����\n  �ƽ�ͷ��   ��ħͷ��   ���ʯ����#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�������#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_YELLOW#�Թ��߷���#COLOREND#  \n  #COLORCOLOR_WHITE#����������������#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 270, 390)
	return ""    
		]]--
end

--а����ʿ

function xm_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#���а�������\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   �ɿ�        ���       �Ͽ�\n  ���ս��   ���޳���   ��������\n  ĩ����װ   Ѫҹ��װ   �����װ\n  ����֮��   ħ�Ż���   ����ս��\n  ����֮׹   ���׻���   ��ڤħ��\n  �켫����   ��������   ������ָ#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�޸���     ��ս����   �޸���ˮ#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_YELLOW#�Թ��߷���#COLOREND#  \n  #COLORCOLOR_WHITE#������������#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 375)
	return ""    
		]]--
end

--��ħʯ����ʿ

function tmsk_ts(player)
		--[[
    local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#��ħʯ�߲�����\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   ����        �к�       �޳�\n  ����ս��   ʥ�鷨��   ̫������\n  ������װ   ������װ   ������װ\n  ħ�Ż���   ���׻���   ��������\n  ����ս��   �������   �޻�ͷ��#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#������    �߼�������   ��ң��#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 310)
	return ""    
		]]--
end

--������ʿ

function hd_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#�ؾ�����������\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  ʮ������   �߽ٸ���   �����׵�\n  ����ս��   ���η���   �춦����\n  ��ŭ��װ   ��Ԩ��װ   ������װ\n  ����֮��   ��ͻ���   ����ս��\n  ��ȱ����   ���Ż���   ��������\n  ʥ������   ��������   ��Ԫ��ָ#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�������   ������   �����鶾   �غ���Ԫ     ��λʯ#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 350)
	return ""    
		]]--
end

--��ħ����

function zmjd_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#��ħ���ز�����\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#      ��Ӱս��      ��аͷ��  \n      ��Ԫ����      ��Ӱ����  \n    ��ʶ����(��)  ��ʶ����(��)\n    ��ʶ����(��)  ��ʶ����(��)\n    ��ʶ����(Ь)  ��ʶ����(ñ)\n    ��ʶ����(��)#OFFSET<X:260,Y:0>#    �����װ(δ��ʶ)\n    ��ң��װ(δ��ʶ)#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#��ʶ֮ʯ, ף����ˮ,  �ٻ�\n  ��ӡ������, ���ײ���ͨ��֤\n \n"
 
	lualib:NPCTalkDetail(player, msg, 265, 380)
	return ""    
		]]--
end

--���ײ���

function cybl_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#���ײ��������\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#      硤ŭ��(δ��ʶ)\n      ���ա�����(δ��ʶ)\n      ���졤����(δ��ʶ)\n      ��ө��ĺӰ(δ��ʶ)\n      ��ө��ĺ¶(δ��ʶ)\n      ����������(δ��ʶ)\n      ��������ɴ(δ��ʶ)\n      �޺ۡ�����(δ��ʶ)\n      �޺ۡ�����(δ��ʶ)\n      ս����װ(δ��ʶ)\n      �����װ(δ��ʶ)\n      ��ң��װ(δ��ʶ)#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#��ͼ�ز���#COLOREND#  \n  #COLORCOLOR_GREENG#�������, �������, ���Ѵ�����\n  �����ټ���   �л��ټ���#COLOREND#\n \n"
 
	lualib:NPCTalkDetail(player, msg, 265, 450)
	return ""    
		]]--
end


function web(player)
	local userid = lualib:Player_GetAccountID(player)
	local times = lualib:GetAllTime()
	lualib:SysMsg_SendWebMsg(player, "��������֤", "http://www.hzyotoy.com/index.do?mod=account&act=info&sign=<SIGNSTR>&ct="..times.."&uid="..userid, "")
	return ""
end


--��ħʯ�߿���
function tmsk_kaiqi(player)
		--[[
	local player_name = lualib:Name(player)
    local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
    local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ħʯ�߿���]#COLOREND#\n"
        msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
		msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#]\n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"	
    if tianmo_Open < 50 then
        msg = msg .. "#COLORCOLOR_BROWN#��ش�½�ϳ�����#COLORCOLOR_SKYBLUE#["..tianmo_Open.."]#COLOREND##COLORCOLOR_BROWN#λ#COLORCOLOR_YELLOW#[42��]#COLOREND##COLORCOLOR_BROWN#����ʿ\n \n#COLORCOLOR_BROWN#���ﵽ42������ʿ�ﵽ50��ʱ\n \n  #COLORCOLOR_RED#��������[��ħʯ�߽������ӡ]��#COLOREND#"
    else
		msg = msg .. "#COLORCOLOR_BROWN#��ش�½������#COLORCOLOR_SKYBLUE#[50λ]#COLORCOLOR_YELLOW#[42��]#COLORCOLOR_BROWN#����ʿ��\n \n��ħʯ�ߵķ�ӡ�������\n \n#COLORCOLOR_RED#ͨ����ħʯ�ߵĴ��������ˣ�����\nͨ����ħʯ�ߵĴ��������ˣ�����\nͨ����ħʯ�ߵĴ��������ˣ�����#COLOREND#"

        lualib:SysMsg_SendTopMsg(3, "��ħʯ�ߵķ�ӡ��50λ��ʿ���������ͨ����ħʯ�ߵĴ��ͳ����ڶ��ٳ���������", "")
        lualib:SysMsg_SendBroadcastColor("��ħʯ�ߵķ�ӡ��50λ��ʿ���������ͨ����ħʯ�ߵĴ��ͳ����ڶ��ٳ���������", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("��ħʯ�ߵķ�ӡ��50λ��ʿ���������ͨ����ħʯ�ߵĴ��ͳ����ڶ��ٳ���������", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("��ħʯ�ߵķ�ӡ��50λ��ʿ���������ͨ����ħʯ�ߵĴ��ͳ����ڶ��ٳ���������", "", 7, 11)
    end
	lualib:NPCTalkDetail(player, msg, 265, 300)
	return ""
		]]--
end

--�����ؾ�����
function hjmj_kaiqi(player)
		--[[
	local player_name = lualib:Name(player)
    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
        local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[�����ؾ�����]#COLOREND#\n"
        msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
		msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#]\n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"	
    if haidi_Open < 20 then
		msg = msg .. "#COLORCOLOR_BROWN#��ش�½�ϳ�����#COLORCOLOR_SKYBLUE#["..haidi_Open.."]#COLOREND##COLORCOLOR_BROWN#λ#COLORCOLOR_YELLOW#[47��]#COLOREND##COLORCOLOR_BROWN#����ʿ\n \n#COLORCOLOR_BROWN#���ﵽ47������ʿ�ﵽ20��ʱ\n \n  #COLORCOLOR_RED#��������[�����ؾ��������ӡ]��#COLOREND#"
    else
		msg = msg .. "#COLORCOLOR_BROWN#��ش�½������#COLORCOLOR_SKYBLUE#[20λ]#COLORCOLOR_YELLOW#[47��]#COLORCOLOR_BROWN#����ʿ��\n \n�����ؾ��ķ�ӡ�������\n \n#COLORCOLOR_RED#ͨ�������ؾ��Ĵ��������ˣ�����\nͨ�������ؾ��Ĵ��������ˣ�����\nͨ�������ؾ��Ĵ��������ˣ�����#COLOREND#"
        lualib:SysMsg_SendTopMsg(3, "�����ؾ��ķ�ӡ��20λ��ʿ�������ҿ�ͨ�����ٳ�NPC��������·�˴��ͽ��뺣���ؾ���", "")
        lualib:SysMsg_SendBroadcastColor("�����ؾ��ķ�ӡ��20λ��ʿ�������ҿ�ͨ�����ٳ�NPC��������·�˴��ͽ��뺣���ؾ���", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("�����ؾ��ķ�ӡ��20λ��ʿ�������ҿ�ͨ�����ٳ�NPC��������·�˴��ͽ��뺣���ؾ���", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("�����ؾ��ķ�ӡ��20λ��ʿ�������ҿ�ͨ�����ٳ�NPC��������·�˴��ͽ��뺣���ؾ���", "", 7, 11)
    end
	lualib:NPCTalkDetail(player, msg, 265, 300)
	return ""
		]]--
end

--��ħ�ǿ���
function zmc_kaiqi(player)
		--[[
	local player_name = lualib:Name(player)
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ħ�ǿ���]#COLOREND#\n"
        msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
		msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#]\n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"	
    if zhenmocheng_Open < 5 then
		msg = msg .. "#COLORCOLOR_BROWN#��ش�½�ϳ�����#COLORCOLOR_SKYBLUE#["..zhenmocheng_Open.."]#COLOREND##COLORCOLOR_BROWN#λ#COLORCOLOR_YELLOW#[52��]#COLOREND##COLORCOLOR_BROWN#����ʿ\n \n#COLORCOLOR_BROWN#���ﵽ52������ʿ�ﵽ5��ʱ\n \n  #COLORCOLOR_RED#��������[��ħ�ǽ������ӡ]��#COLOREND#"
    else
		msg = msg .. "#COLORCOLOR_BROWN#��ش�½������#COLORCOLOR_SKYBLUE#[5λ]#COLORCOLOR_YELLOW#[52��]#COLORCOLOR_BROWN#����ʿ��\n \n��ħ�ǵķ�ӡ�������\n \n#COLORCOLOR_RED#ͨ����ħ�ǵĴ��������ˣ�����\nͨ����ħ�ǵĴ��������ˣ�����\nͨ����ħ�ǵĴ��������ˣ�����#COLOREND#"
        lualib:SysMsg_SendTopMsg(3, "��ħ�ǵķ�ӡ��5λ��ʿ�����ͨ����ħ�ǵĴ��ͳ����ڶ��ٳ�������", "")
        lualib:SysMsg_SendBroadcastColor("��ħ�ǵķ�ӡ��5λ��ʿ�����ͨ����ħ�ǵĴ��ͳ����ڶ��ٳ�������", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("��ħ�ǵķ�ӡ��5λ��ʿ�����ͨ����ħ�ǵĴ��ͳ����ڶ��ٳ�������", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("��ħ�ǵķ�ӡ��5λ��ʿ�����ͨ����ħ�ǵĴ��ͳ����ڶ��ٳ�������", "", 7, 11)
    end
	lualib:NPCTalkDetail(player, msg, 265, 300)
	return ""
		]]--
end


--�ɽٴ���
function dujie_cs(player)
	local msg = ""
	local gold = 1500
	if not lualib:Player_IsGoldEnough(player, gold, false) then
		msg = msg.."��ǰ������Ҫ1500��ң����Ҳ��㣬��ͨ�����ٳ�NPC[�ɽ�][318.300]���룡"
	lualib:NPCTalkDetail(player, msg, 265, 300)
    return msg
    end
	
	if not lualib:Player_SubGold(player, gold, false, "����", player) then
	msg = msg.."�۳����ʧ�ܣ���ͨ������NPC[�ɽ�][250.254]���룡"
	lualib:NPCTalkDetail(player, msg, 265, 300)
    return msg
    end
	
	lualib:Player_MapMoveXY(player, "����", 250, 254, 5)
	return ""
end