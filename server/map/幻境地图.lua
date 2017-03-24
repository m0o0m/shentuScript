function on_map_create(map)
	lualib:AddTrigger(map, lua_trigger_enter_map, "on_trigger_enter_map")                        --��ҽ����ͼ����
	lualib:AddTrigger(map, lua_trigger_leave_map, "on_trigger_leave_map")                        --����뿪��ͼ����   
	
	--local map_k = lualib:KeyName(map)
	--if map_k = "�þ�1��" then
	--	lualib:Map_BatchGenMonster(map, "�þ�ʬ��", 1, true)
	--	--lualib:Map_BatchGenMonster()
	--elseif map_k = "�þ�4��" then
	--	lualib:Map_BatchGenMonster(map, "�þ�������", 1, true)	                ---�����ñ�ˢ��
	--end

end


function on_trigger_enter_map(player)
	--60��  1000���
	
	local timer_id = lualib:GenTimerId(player)
	lualib:AddTimer(player, timer_id, 60000, -1, "SubPlayerGold")
	lualib:SetInt(player, "id", timer_id)
	
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[��ܰС��ʿ]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#��������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#��~�װ���[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],��������˵��\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#��������������������������������#COLOREND#\n"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#1.�þ��ڹ��ﾭ��Ϊ����������\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#2.��ÿһ���ӻ�۳�1000��ң�\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#3.ûǮ��Ҫ��Ŷ��^_^#COLOREND#"
	lualib:NPCTalkDetail(player, msg, 265, 310)	
	

end

function on_trigger_leave_map(player)	
	lualib:DisableTimer(player, lualib:GetInt(player, "id"))
	lualib:SetInt(player, "id", 0)

end

function SubPlayerGold(player, timer_id)
	if lualib:Player_SubGold(player, 1000, false, "�þ�����", "") == false then
		local map_k = "����"
		local x, y = 246, 274		
		lualib:Player_MapMoveXY(player, map_k, x, y, 5)
		lualib:SysWarnMsg(player, "��Ҳ���1000������취�ɣ�")
	else
		--lualib:SysWarnMsg(player, "�۳����1000��")
	end

end
