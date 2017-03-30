gQuestMap =
{
   {3002, "QuestAccept3002", "QuestAccomplish3002","*01*����: ̽����ħʯ��", "*01*�������: ̽����ħʯ��"},
   {3003, "QuestAccept3003", "QuestAccomplish3003","*01*����: ������ħʯ��", "*01*�������: ������ħʯ��"},
   {3004, "QuestAccept3004", "QuestAccomplish3004","*01*����: ����������ħʯ��", "*01*�������: ����������ħʯ��"},
   {3005, "QuestAccept3005", "QuestAccomplish3005","*01*����: ������ħԹ��", "*01*�������: ������ħԹ��"}
}
gQuestNum = table.getn(gQuestMap)

local talk_t = {"�Һ�ϲ�������ս����Χ�������������������ʱ��", "�Ҳ��ܴ�������ȥΣ�յĵط��������������������ܵ��˺����һ�е����Ρ�", "�����ϱ��ԣ��Կ�����ǰ��"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 280000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)
	
		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc,player)
	msg = "    #COLORCOLOR_GREENG#���Ǹ�����ס���ܵ��ˣ��Ҵ���������˵�������������¡��������������ʿ͹���Ҫȥ���#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># <@anquan *01*����ȫ����> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������������еİ�ȫ����#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# <@digong *01*��Σ������> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# ��������̽������#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:4>##IMAGE1902700015##OFFSET<X:0,Y:-1># <@shangdian *01*���̵괫�͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������صĽ�������#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#24 *01*���ϱ��̵꡹   > \n \n"
	--	msg = msg.."#IMAGE1902700015# <@chengbao *01*���Ǳ����͡�> #COLORCOLOR_RED#��������#COLOREND##COLORCOLOR_BLUE# �����������ǳǱ�#COLOREND#\n"
	msg = msg.."                                                    #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-1>#<@likai *01*���뿪��>\n"

	for i, v in ipairs(gQuestMap) do
        if v[2] ~= "" then
            if lualib:CanAcceptQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[2].." "..v[4]..">\n"
            end
        end

        if v[3] ~= "" then
            if lualib:CanAccomplishQuest(player, v[1]) == true then
                msg = msg.."#IMAGE1902700016#<@"..v[3].." "..v[5]..">\n"
            end
        end
    end

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


function anquan(npc,player)
	msg = "#COLORCOLOR_GOLD#�ҿ��Խ�����Ѵ��͵������ĳ���#COLOREND#\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#����#234#222#3 *01*����>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMoveXYA#��ɽ��#237#305#3 *01*��ɽ��>\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700015##OFFSET<X:0,Y:-2>#<@MapMove_zhenmo#��ħ��#226#174#3 *01*��ħ��>\n \n \n"
	--msg = msg.."<@MapMoveXYA#��ɽ��#194#679#3 *01*�����>\n \n"
		msg = msg.."                                                #OFFSET<X:0,Y:-7>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n \n"
	return msg
end

function shangdian(npc,player)
	msg = "#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#333#283#3 *01*������> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ������ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#301#307#3 *01*�÷���> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����׵ĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#344#354#3 *01*������> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ����εĵط�#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#324#320#3 *01*�ӻ���> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�����չ����־�����Ʒ#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#320#260#3 *01*ҩ����> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ��������ҩƷ#COLOREND#\n"
	--msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#15#26#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#���ۺ��չ���ְҵ������#COLOREND#\n"
	msg = msg.."#IMAGE1902700015##OFFSET<X:0,Y:-2># #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYA#���ٳ�#360#302#3 *01*��  ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#��Ÿ�����Ʒ�ĵط�\n \n"
	msg = msg.."                                              #COLOREND##OFFSET<X:0,Y:-5>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"	
	return msg
end


function digong(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵�Σ�յ�����Ҫ���ɽ�ң�40�����½���1500��40�������Ͻ���15000����Ҫȥ����ð�գ�#COLOREND#\n \n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#���ٳ�#94#97#1 *01*��ħʯ��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�45-55��̽��#COLOREND#\n"
	msg = msg.."#IMAGE1902700015# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#�������#46#48#1 *01*�����ܾ�> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�50-60��̽��#COLOREND#\n"
	msg = msg.."\n                                                #OFFSET<X:0,Y:2>##IMAGE1902700019# #OFFSET<X:0,Y:-2>#<@main *01*�����ء�>\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#��ɽ��#22#94#1 *01*������>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�20-25��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#��·��#18#54#1 *01*��·��> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-35��̽��#COLOREND#<@main *01*�����ء�>\n\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#33#50#1 *01*��ɽ��Ѩ>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�25-35��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND# <@MapMoveXYB#����#209#198#1 *01*�����> #COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�30-40��̽��#COLOREND#\n"
--	msg = msg.."#IMAGE1902700018# #COLORCOLOR_GOLD#��#COLOREND#<@MapMoveXYB#����#520#25#1 *01*���а��>#COLORCOLOR_GOLD#��#COLOREND##COLORCOLOR_RED#  ��������#COLOREND#  #COLORCOLOR_BLUE#�ʺϵȼ�35-45��̽��#COLOREND#<@main *01*�����ء�>\n"
	return msg
end

function chengbao(npc,player)
	msg = "#COLORCOLOR_GOLD#���͵��Ǳ���Ҫ���ɽ�ң�40�����½���1500��40�������Ͻ���15000����Ҫȥ�ĸ��Ǳ���#COLOREND#\n \n"
	msg = msg.."<@shenge *01*����>\n \n"
	msg = msg.."<@main *01*�����ء�>\n \n"
	return msg
end
function shenge(npc,player)
	msg = "#COLORCOLOR_GOLD#��ѡ������ǰ�����ǵ�׼ȷ�ص�#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#50#103#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#470#70#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_BLUE#�X---------------------�j---------------------�[#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#112#635#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-3,Y:0>##COLORCOLOR_BLUE#��   #COLORCOLOR_RED#��#COLOREND#<@MapMovecb#����#408#617#10 *01*��������>#COLORCOLOR_RED#��#COLOREND#   #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#��\n"
	msg = msg.."#COLORCOLOR_BLUE#�^---------------------�m---------------------�a#COLOREND#   <@main *01*�����ء�>\n"

	return msg
end



function MapMoveXYB(npc, player, map_key_name, x, y, r)
	if map_key_name == "��ħʯ��" and x == "94" and	y == "97" then
		local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
		if lualib:Level(player) < 40 then
			return "�㻹δ�ﵽ40�����޷�������ħʯ�ߣ�"
		end
	elseif map_key_name == "�������" then
		local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
		if haidi_Open < 20 then
			return "�����ؾ���δ����ʿ����������½����".. 20 .."λ47������ʿʱ�������ؾ���̽��֮·���Ὺ����"
		end
	end
	
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

	if lualib:HasBuff(player,"��̯") then
		lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return false
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


function likai(npc,player)
	return ""
end


---3002��
function QuestAccept3002(npc,player)
    msg = "����ٳǳ�������ħƵƵ��Ϯ������������Σ��֮�ʣ�Ϊ����ʹ�����ڴ˵ظ����վ�ȽŸ�����ǰȥ��ħʯ�߽���̽�飬������10ֻ��ħū�ͺ�10ֻ��ħ�����ɡ�\n \n"
	msg = msg.."<@Accept3002 *01* �����ȥ̽����ħʯ�ߣ�>\n"
	return msg
end


function Accept3002(npc, player)
    if lualib:AcceptQuest(player, 3002) == true then
        return "��ħʯ��ʮ�����գ������С�ģ�"
    else
        return "�����ȡʧ��"
    end
end

---3002��
function QuestAccomplish3002(npc, player)
    msg = "��û��̽�쵽ʲô���õ���Ϣ��\n \n"
    msg = msg.."<@Accomplish3002 *01* ����������ħ������������>\n"
    return msg
end

function Accomplish3002(npc, player)
    if lualib:AccomplishQuest(player, 3002, 0) == true then
        msg = "��������̽���������������ħ������������ټ��ᣬ��׼�������಻�����������Ǻã�\n \n"
		msg = msg.."<@QuestAccept3003 *01*�������ʲô��Ҫ�����ģ����ܷԸ�>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---3003��
function QuestAccept3003(npc,player)
    msg = "��ʿ���Դ����ϴ�̽������ħʯ�ߣ���ħ�ֶ����Ƿ����˼��ν���������������һ����ħ����ħ������������һ�����ص������������ǳ�����ȥ��ħʯ�߶���һ̽��ʵ������10ֻ��ħ������̽�������ɣ�\n \n"
	msg = msg.."<@Accept3003 *01* �����ȥ��>\n"
	return msg
end


function Accept3003(npc, player)
    if lualib:AcceptQuest(player, 3003) == true then
        return "��ħʯ����;�谭���أ��ɱ�����ˣ�"
    else
        return "�����ȡʧ��"
    end
end

-------3003��
function QuestAccomplish3003(npc, player)
    if lualib:AccomplishQuest(player, 3003, 0) == true then
        msg = "�����ħ���������ҵ�����Щ��Ƭ������ϸ�о���������һ�ּ�̳��Ƭ�����ǵ�������ʲô�أ�\n \n"
		msg = msg.."<@QuestAccept3004 *01*�������ѽ��>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end

---3004��
function QuestAccept3004(npc,player)
    msg = "��ʿ��������ʱ��������һֱ���о��Ǽ�̳��Ƭ����������ԭ�˳�������ɷ�ǰ����ħʯ�����㣬����10ֻ��ħ�ȷ棬�����ǵ��׼�ȡ������Ҳ���������顣\n \n"
	msg = msg.."<@Accept3004 *01* �ðɣ�>\n"
	return msg
end


function Accept3004(npc, player)
    if lualib:AcceptQuest(player, 3004) == true then
        return "��ħ�ȷ�����Ѳ��Ľ�ɫ���ɱ�����ˣ�"
    else
        return "�����ȡʧ��"
    end
end

-------3004��
function QuestAccomplish3004(npc, player)
    if lualib:AccomplishQuest(player, 3004, 0) == true then
        msg = "���Ȼȡ������ħ�ȷ���׼�����һֱ������İ�Σ�������ٺò����ˣ�\n \n"
		msg = msg.."<@QuestAccept3005 *01*��л���ģ�>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end


---3005��
function QuestAccept3005(npc,player)
    msg = "�ϴ���ȡ����ħʯ�ߵ��׼������ڼ�̳��ʹ��֮�󣬷�����̳�л�ɢ����һ����ħԹ������ɷ�ǰ����ħʯ���Ĳ㣬����10ֻ��ħԹ�飬�����ǵ�ħ��ȡ����\n \n"
	msg = msg.."<@Accept3005 *01* С��һ׮��>\n"
	return msg
end


function Accept3005(npc, player)
    if lualib:AcceptQuest(player, 3005) == true then
        return "��ħʯ����Σ�����أ���ħ���У�Խ������Խ��Σ�գ���ʿ����ǧ��ҪС��ѽ��"
    else
        return "�����ȡʧ��"
    end
end

-------3005��
function QuestAccomplish3005(npc, player)
    msg = "���ã����̳ԭ���������ٻ���ħ��ģ�ֻҪ����ħѪ����������ħԹ�����������ܿ�Խʱ�գ���ħ��������ħ����ħ��ʮ��ǿ����£���ʿ����һ��Ҫ������ܣ���ֹ�����ٻ�����ħ��\n \n"
    msg = msg.."<@Accomplish3005 *01* �����ֹ��>\n"
    return msg
end

function Accomplish3005(npc, player)
    if lualib:AccomplishQuest(player, 3005, 0) == true then
        msg = "ֻ�����Ǽ���ǿ������������ħ�������𣬷��ܽ��Σ����������\n \n"
		msg = msg.."<@leave *01*�һ�ǿ�������ģ�>\n"
		return msg
    else
        msg = "����ʧ�ܣ�����ܹ�������\n \n"
		msg = msg.."<@leave *01*��֪����>\n"
		return msg
    end
end
