local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")


local talk_t = {"�ҵ�ְ����ǽ����Ǵ��͵�����Ҫȥ�ĵط���", "��Ϊһ���ϱ������б�Ҫ����һ�����飺����������Ҫ��ʤ������Ҫ��", "����������վ������ܷ�⣬����ʹ��ˡ�"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 200000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end


local castle_table = {"����",}
function main(npc,player)
    local own_family = lualib:GetCastleOwnFamily(castle_table[1])
    local my_family = lualib:Player_GetStrProp(player,  lua_role_guild)
	local gb = "��ϲ ��װ�������ʦ���ɹ��ϳ�ʮɱ!"
    lualib:SysMsg_SendCenterMsg(1, gb,"")
	lualib:SysMsg_SendTopMsg(2, gb); 

    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "    �뵱����Ҳ���ֳ�����������ħ����ϧϥ������һ���������Թ����������ʿ͹���Ҫȥ���\n \n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@anquan *01*����ȫ����> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������������еİ�ȫ����#COLOREND#\n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@digong *01*��Σ������> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������̽������#COLOREND#\n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shangdian *01*���̵괫�͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������صĽ�������#COLOREND#\n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shenge *01*���Ǳ����͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������ǳǱ�#COLOREND#\n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#24 *01*���ϱ��̵꡹>#COLORCOLOR_GREENG#��û�м���ռ�����ǵ��лᣬ����ԭ�ۣ�#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@xinshoubuff *01*������ӳɡ�>#COLORCOLOR_RED#�����ؾ�����ħ���ؿ�����ͼ��������ȡ��������#COLOREND#" 
 else
        msg = "    #COLORCOLOR_GREENG#�뵱����Ҳ���ֳ�����������ħ����ϧϥ������һ���������Թ����������ʿ͹���Ҫȥ���#COLOREND#\n \n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@anquan *01*����ȫ����> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������������еİ�ȫ����#COLOREND#\n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@digong *01*��Σ������> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������̽������#COLOREND#\n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shangdian *01*���̵괫�͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������صĽ�������#COLOREND#\n"
        msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shenge *01*���Ǳ����͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������ǳǱ�#COLOREND#\n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#11 *01*���ϱ��̵꡹>#COLORCOLOR_GREENG#��û�м���ռ�����ǵ��лᣬ��������Żݣ�#COLOREND#\n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1>#<@xinshoubuff *01*������ӳɡ�>#COLORCOLOR_RED#�����ؾ�����ħ���ؿ�����ͼ��������ȡ��������#COLOREND#"  
     end
	--msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*���뿪��>\n"
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
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end

	return msg
end

function mvtx(npc, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"����", "��ɽ��", "���ٳ�", "���ִ�", "������", "��װ��", "���ε�", "ҩ��", "���", "����"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end

function anquan(npc,player)
	msg = "#COLORCOLOR_GOLD#�ҿ��Խ�����Ѵ��͵������ĳ���#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#����#234#222#3 *01*����>\n \n"
	--msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#���ٳ�#330#300#3 *01*���ٳ�>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMoveXYA#��ɽ��#500#682#3 *01*���ִ�>\n \n"
	--msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2># <@MapMove_zhenmo#��ħ��#226#174#3 *01*��ħ��>\n \n"
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#496#687#3 *01*��ɣ��>          "
	--msg = msg.."#IMAGE1902700015# <@MapMoveXYA#��ɽ��#194#679#3 *01*�����>\n \n"
		msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end

function shangdian(npc,player)
	msg = "#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#������#18#30#3 *01*������> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ������ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��װ��#14#27#3 *01*��װ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����׵ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ε�#14#30#3 *01*���ε�> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����εĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ɽ��#243#355#3 *01*�ӻ���> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�����չ����־�����Ʒ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#ҩ��#17#24#3 *01*ҩ  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ��������ҩƷ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���#15#26#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ���ְҵ������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#��ɽ��#289#341#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#��Ÿ�����Ʒ�ĵط�#COLOREND#\n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end


function digong(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵�Σ�յ�����Ҫ���ɽ��\n 40�����½���1500��40�������Ͻ���15000����Ҫȥ����ð�գ�#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��ɽ��#28#183#1 *01* ��> #COLORCOLOR_GOLD# ��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#��׽��ѪҰ������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��ɽ��#272#36#1 *01*��·��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�15-18��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��ɽ��#479#110#1 *01*����ڣ> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�15-20��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��ɽ��#523#31#1 *01*��·��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�18-20��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#��ɽ��#23#95#1 *01*������>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�20-25��̽��#COLOREND#\n"
	--msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��·��#29#48#1 *01*��·��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-35��̽��#COLOREND#\n\n"
	msg = msg.."\n                                                    #OFFSET<X:0,Y:-4>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#33#50#1 *01*��ɽ��Ѩ>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-35��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#����#209#198#1 *01*�����> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30-40��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#520#25#1 *01*���а��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�35-45��̽��#COLOREND#<@main *01*�����ء�>\n"
	return msg
end

function chengbao(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵��Ǳ���Ҫ���ɽ�ң�40�����½���1500��40�������Ͻ���15000����Ҫȥ�ĸ��Ǳ���#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@shenge *01*����>\n \n \n \n \n \n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n \n"
	return msg
end
function shenge(npc,player)

	if lualib:HasBuff(player,"��̯") then
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end

	msg = "#COLORCOLOR_GOLD#���͵��Ǳ���Ҫ���ɽ��\n 40�����½���1500��40�������Ͻ���15000������ȥ�ĸ�����#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#50#103#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#470#70#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#112#635#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#408#617#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#\n"
	msg = msg.."                                                    #OFFSET<X:0,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>"
	return msg
end


function MapMove_zhenmo(npc, player, map_key_name, x, y, r)
	local zmc_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open < zmc_key then
		return "��ħ�ǻ�δ����ʿ����������½����"..zmc_key.."λ52������ʿʱ����ħ�ǵ�̽��֮·���Ὺ����"
	end
	
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
	
	return ""
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
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ���ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
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
	if not lualib:Player_SubGold(player, gold, false, "�۳���ң����ͷ�", "��ɽ���ϱ�") then return "��Ľ�Ҳ��㣬���ܴ��ͣ�\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>" end
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

function xinshoubuff(npc,player)
    local jingyan_table_hj = {{47, 150}, {45, 200}, {42, 300}, }  --�����ؾ�����
    local jingyan_table_zm = {{52, 150}, {50, 200}, {48, 300}, }  --��ħ�ǿ���

    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    local lv = lualib:Level(player)
    local player_buff_value = 0
    
    local msg = "����ش�½����Σ��ʱ��ĳλ������Ϊ��Ϊð���߽��д͸��������������˿�������������ȡ�Գ�����ð���ߵĳɳ��ǳ�������ľ���ӳɣ�\n\n"
    if zhenmocheng_Open >= 5 then
        msg = msg.."#COLORCOLOR_RED#��ħ�����Ѿ�������#COLOREND#\n"
        for _, v in pairs(jingyan_table_zm) do
            local beilv = v[2]/100
            msg = msg .. v[1].."���¿�����ȡ#COLORCOLOR_GREENG#"..beilv.."#COLOREND#������ӳɣ�\n"
            if lv <= v[1] then
                player_buff_value = v[2]
            end
        end
    elseif haidi_Open >= 20 then
        msg = msg.."#COLORCOLOR_RED#�����ؾ��Ѿ�������#COLOREND#\n"
        for _, v in pairs(jingyan_table_hj) do
            local beilv = v[2]/100
            msg = msg .. v[1].."���¿�����ȡ#COLORCOLOR_GREENG#"..beilv.."#COLOREND#������ӳɣ�\n"
            if lv <= v[1] then
                player_buff_value = v[2]
            end
        end
    end
    msg = msg .. "\n#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-2>#<@xinshoubuff_Ex#"..player_buff_value.." *01*��Ҫ��ȡ����ӳ�> \n \n"
    msg = msg .. "#OFFSET<X:250,Y:2>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*����>"
    return msg

end

function xinshoubuff_Ex(npc,player, player_buff_value)
    local player_buff_value = tonumber(player_buff_value)
    if player_buff_value == 0 then
        return "��û����ȡ�ʸ�"
    end
    
    if lualib:AddBuffEx(player, "������Ϣ", 3600, player_buff_value) == true then
        return "��ȡ����ӳɳɹ�����ش�½��δ����Ҫ������ˣ�"
    else
        return "��ȡ����ӳ�ʧ�ܣ�"
    end
end

function likai(npc,player)
	return ""
end