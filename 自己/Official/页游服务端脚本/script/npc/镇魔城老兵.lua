local talk_t = {"�ҵ�ְ����ǽ����Ǵ��͵�����Ҫȥ�ĵط���", "��Ϊһ���ϱ������б�Ҫ����һ�����飺����������Ҫ��ʤ������Ҫ��", "����������վ������ܷ�⣬����ʹ��ˡ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 200000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
	local msg = "    #COLORCOLOR_GREENG#�뵱����Ҳ���ֳ�����������ħ����ϧϥ������һ���������Թ����������ʿ͹���Ҫȥ���#COLOREND#\n"
	msg = msg.."#COLORCOLOR_YELLOW#����������������������������������������������������������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@anquan *01*����ȫ����> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������������еİ�ȫ����#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@digong *01*��Σ������> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������̽������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shangdian *01*���̵괫�͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������صĽ�������#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:10,Y:-1>#<@OpenShop#24 *01*[�ϱ��̵�]   >#COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����Ʒ����#COLOREND#\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*���뿪��>\n"
	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function MapMoveXYA(npc, player, map_key_name, x, y, r)
	local msg=""
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)

	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")	
	
	
	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	local mapname = {"����", "��ɽ��", "���ٳ�", "���ִ�", "������", "��װ��", "���ε�", "ҩ��", "���"}
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 123, 300, 1, "mvtx", "����".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "������".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(npc, 128, 300, 1, "mvtx", "��װ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "���ε�".."#"..x.."#"..y)
		elseif map_key_name == mapname[8] then
			lualib:AddTimerEx(npc, 130, 300, 1, "mvtx", "ҩ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[9] then
			lualib:AddTimerEx(npc, 131, 300, 1, "mvtx", "���".."#"..x.."#"..y)
		end
	end
	

	if lualib:HasBuff(player,"��̯") then
	lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end

	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"����", "��ɽ��", "���ٳ�", "��ɽ��", "������", "��װ��", "���ε�", "ҩ��", "���", "����"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end

function anquan(npc,player)
local 	msg = "#COLORCOLOR_GOLD#�ҿ��Խ�����Ѵ��͵������ĳ���#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#��ɽ��#239#304#3 *01*����ɽ�ǡ�>\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#����#234#222#3 *01*�� ���� ��>\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#���ٳ�#330#300#3 *01*�����ٳǡ�>\n \n \n"
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#496#687#3 *01*��ɣ��>          "
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#194#679#3 *01*�����>\n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function shangdian(npc,player)
local  	msg = "#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ħ��#188#191#3 *01*������> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����׵ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ħ�Ƿ�װ��#14#24#3 *01*��װ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����׵ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ħ�����ε�#14#26#3 *01*���ε�> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����εĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ħ��#231#164#3 *01*�ӻ���> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�����չ����־�����Ʒ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ħ��ҩ��#14#23#3 *01*ҩ  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ��������ҩƷ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ħ��#211#167#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#��Ÿ�����Ʒ�ĵط�#COLOREND#\n \n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end


function digong(npc,player)
local	msg = "#COLORCOLOR_GOLD#���͵�Σ�յ�����Ҫ���ɽ�ң�40�����½���1500,40�����Ͻ���15000����Ҫȥ����ð�գ�#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��ħ��#34#30#1 *01*��ħ����> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�20-60��̽��#COLOREND#\n \n \n \n \n \n"
	msg = msg.."\n                                                    #OFFSET<X:0,Y:1>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#33#50#1 *01*��ɽ��Ѩ>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-35��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#����#209#198#1 *01*�����> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30-40��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#520#25#1 *01*���а��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�35-45��̽��#COLOREND#<@main *01*�����ء�>\n"
	return msg
end

function chengbao(npc,player)
local 	msg = "#COLORCOLOR_GOLD#���͵��Ǳ���Ҫ���ɽ�ң�40�����½���1500,40�����Ͻ���15000����Ҫȥ�ĸ��Ǳ���#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shenge *01*����>\n \n \n \n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n \n"
	return msg
end
function shenge(npc,player)

	if lualib:HasBuff(player,"��̯") then
	lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end

local 	msg = "#COLORCOLOR_GOLD#��ѡ������ǰ�����ǵ�׼ȷ�ص�#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#50#103#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#470#70#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#112#635#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#408#617#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#\n"
	msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end



function MapMoveXYB(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ħ���ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
		local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "����".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		end
	end
	
	
	return msg
end

function MapMovecb(npc, player, map_key_name, x, y, r)
	local msg=""
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	
	
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ħ���ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "����ͼʧ��"
    end
	
	local mapname = {"��ɽ��", "���ٳ�", "���ִ�", "����", "����"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(npc, 124, 300, 1, "mvtx", "��ɽ��".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(npc, 125, 300, 1, "mvtx", "���ٳ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(npc, 126, 300, 1, "mvtx", "���ִ�".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(npc, 127, 300, 1, "mvtx", "����".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(npc, 129, 300, 1, "mvtx", "����".."#"..x.."#"..y)	
		end
	end
	
	return msg
end


function likai(npc,player)
	return ""
end
