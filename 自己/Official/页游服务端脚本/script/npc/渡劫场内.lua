local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local exp = 250000

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ɽ�#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local StartServerTime_int = lualib:Str2Time(StartServerTime)
	local times = lualib:GetAllTime()
	local timesStr = lualib:Time2Str( "%Y-%m-%d %H:%M:%S", times)

	local time_cha = times - StartServerTime_int
	--[[
	if time_cha < 170000 then 	--(2��) 
		msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#����ǰ���컹û��ô�����飬��2���������~\n"
		return msg
	end
	
	
	
	msg = msg .. "��ħ�������У��ұ�Ӣ������������������裬��Ϊ���鲻ɢ�����λ���˳�������������\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##COLORCOLOR_GREENG#1.��ڼ���,ÿ�о�һ�Σ��ɻ��#COLOREND##COLORCOLOR_YELLOW#25W����#COLOREND##COLORCOLOR_GREENG#�����ٻ���һֻ�������ˢ�ڵ�ͼ�ڣ�#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:2>##COLORCOLOR_GREENG#2.ÿ����(����)һֻ���飬��ɻ������ĺ������飡����ľ���Ϊ#COLOREND##COLORCOLOR_YELLOW#50W#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_GREENG#3.����һ���õ����ȣ��о��߻������ϵͳ���͵�һ���־��飡��#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:5>##COLORCOLOR_RED#4.ÿ��ÿ���ٻ����������ƣ�40������[30ֻ];40~49��[60ֻ];50~59��[120ֻ];60~65��[240ֻ]��#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_BROWN#��������������������������������������#COLOREND##COLORCOLOR_SKYBLUE#�ɽ�#COLOREND##COLORCOLOR_BROWN#��������������������������������������#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE1902700018##OFFSET<X:0,Y:-2>#<@dujie *01*[��Ҫ�о�]>\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[�ر�]>\n"
	msg = msg .. ""
	return msg
	]]--
end

function dujie(npc, player)
	local lv = lualib:Level(player)
	
	if lv < 40 then
		lualib:SetInt(player, "dujiecishu", 30)
	elseif lv >= 40 and lv < 50 then
		lualib:SetInt(player, "dujiecishu", 60)
	elseif lv >= 50 and lv < 60 then
		lualib:SetInt(player, "dujiecishu", 120)
	elseif lv >= 60 and lv <= 65 then
		lualib:SetInt(player, "dujiecishu", 240)	
	end
	
	local dujie_cishu = lualib:GetInt(player, "dujiecishu")
	local mapGuid = lualib:Map_GetMapGuid("����")
	local player_mongen = lualib:GetDayInt(player, "player_mongen")
	if lualib:GetInt(mapGuid, "dujieTime") == 1 then
		if player_mongen < dujie_cishu then
			lualib:SysMsg_SendInputDlg(player, 1, "ÿ�о�һֻ������Ҫ10����,����������Ҫ���ɵ�������Ŀ", 45, 14, "EnterHot", npc)
		else
			return "���λ���ܳ��ɵ������Ѵ����ޣ�"
		end
		
	else
		return "���δ��ʼ��"
	end
	return ""
end

function EnterHot(id, player, num, npc)
	local mapGuid = lualib:Map_GetMapGuid("����")
	local monster_num = lualib:GetInt(mapGuid, "dujie_num")
	local num = tonumber(num)
    local lv = lualib:Level(player)
	local dujie_cishu = lualib:GetInt(player, "dujiecishu")
    local player_mongen = lualib:GetDayInt(player, "player_mongen")
	
	if num == nil or num == "" then
		msg = "������������������������"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	elseif type(num) == "number" then
		if num % 1 ~= 0 or num < 1 then
			msg = "������������������������"
			lualib:NPCTalkEx(npc, player, msg)
			return true
		end
	end
	
	local msg = ""
	if monster_num + num > 100 then
		msg = "���ڹ����Ѵ�����100ֻ�����ȳ���������������ٻ���"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
    
    if num + player_mongen > dujie_cishu then
        local other_dujiecishu = dujie_cishu - player_mongen
        msg = "����ջ��ܳ��ȵ������������㣡\n���ջ��ɳ���"..other_dujiecishu.."�����飡"
        lualib:NPCTalkEx(npc, player, msg)
		return true
    end

    
	local subIngot = num * 100000
	
	if not lualib:Player_IsGoldEnough(player, subIngot, false) then 
		msg = "��Ľ�Ҳ���"..subIngot..",�޷��������飡"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	if not lualib:Player_SubGold(player, subIngot, false, "�ɽ�", player) then
		msg = "��ҿ۳�ʧ��!"
		lualib:NPCTalkEx(npc, player, msg)
		return true
	end
	
	local Error_num = 0
	
	local mon_gen_room ={
							{256, 280, 222, 254},
							{180, 220, 151, 190},
						}
	for i = 1, num do
		local rand_room = math.random(1, 2)
		local monsterGuid = ""
		
		--������ܻ���ѭ��
		while monsterGuid == "" do
			monsterGuid = lualib:Map_GenSingleMonster(mapGuid, math.random(mon_gen_room[rand_room][1], mon_gen_room[rand_room][2]), math.random(mon_gen_room[rand_room][3], mon_gen_room[rand_room][4]), 3, 4, "�����ɵ�����", false)
		end
		if monsterGuid == "" then
			Error_num = Error_num + 1
		else
			--�﷨������
			--test_num = test_num + 1
			lualib:SetStr(monsterGuid, "dujie_player", player)
		end
	end
	lualib:SetInt(mapGuid, "dujie_num", monster_num + num - Error_num)
	local player_mongen = lualib:GetDayInt(player, "player_mongen")
	lualib:SetDayInt(player, "player_mongen", player_mongen + num)
	
	--���þ���
	
	if lualib:Player_AddExp(player, exp * num, "�ɽ�����", player) == false then
		lualib:SysTriggerMsg(player, "�ɽ����龭���ȡ�����쳣")
	end
	--[[
	msg = "��������ɹ���������#COLORCOLOR_YELLOW#".. exp * num .."���飬#COLORCOLOR_RED#[�����鱻�˻�ɱ���㽫���#COLORCOLOR_YELLOW#���ྭ�飡#COLORCOLOR_RED#��ڼ��벻Ҫ����!]"
	lualib:NPCTalkEx(npc, player, msg)
	
	local playername = lualib:Name(player)
	
	lualib:SysMsg_SendCenterMsg(1, "["..playername.."]�󷢴ȱ�,�о��ٻ���"..num.."ֻ�����ɵ�������[����250.254],����(���)����ɻ�ó��߾��飡", "")
	lualib:SysMsg_SendBroadcastColor("#COLORCOLOR_BROWN#["..playername.."]#COLORCOLOR_YELLOW#�󷢴ȱ�,�о��ٻ���"..num.."ֻ�����ɵ�������#COLORCOLOR_RED#[����250.254]#COLORCOLOR_YELLOW#������(���)����ɻ��#COLORCOLOR_RED#���߾��飡", "", 1, 12)
	]]--
	return true
end


function guanbi(npc, player)
	
	
	return ""
end