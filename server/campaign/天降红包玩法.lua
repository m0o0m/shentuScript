--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

function on_start_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		local map = lualib:Map_GetMapGuid("��ŭ֮��")
		lualib:GSRunScript("hdtjyb", "")
		lualib:DelayCall(map, 1, "GenRed", "")
		lualib:DelayCall(map, 5*60*1000, "GenRed", "")
		
		
		local str = "[�콵���]��ѿ�ʼ�����������������ŭ֮�ǣ�"
		lualib:SysMsg_SendBroadcastMsg(str, "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�콵���]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ
    else
		local str = "[�콵���]����"..math.floor(times / 60000).."���ӿ�����"
		lualib:SysMsg_SendBroadcastMsg(str, "ϵͳ֪ͨ")
		lualib:SysMsg_SendBoardMsg("0", "[�콵���]", str, 15000)
		lualib:SysMsg_SendTopColor(2, str, 11, 13) --��Ȼ�Ǻ�ɫ
    end
end

function on_end_decl(id, map, times)
    times = tonumber(times)
    if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[�콵���]", "���λ�ѽ��������ڴ��´λ������", 15000)
    else
		lualib:SysMsg_SendBoardMsg("0", "[�콵���]", "����"..math.floor(times / 60000).."���Ӻ������", 15000)
    end
end

function Goto(id,player,map)
	local x = 266
	local y = 284
	local r = 8
	local map_key_name = "��ŭ֮��"
	local gold = 1500
	local msg = ""

	
	if lualib:HasBuff(player,"��̯") then
		lualib:SysWarnMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
		return true
	end
	
	if not lualib:IsEscorterDied(player) then
		lualib:SysTriggerMsg(player,"�����ڳ����޷��������ͣ�")
		return true
	end

	-- if not lualib:Player_IsGoldEnough(player, gold, false) then
		-- msg = msg.."��ǰ������Ҫ1500���"
		-- lualib:NPCTalk(player, msg)
		-- return true
    -- end	
	
	-- if not lualib:Player_SubGold(player, gold, false, "�۽��", player) then
		-- msg = msg.."�۳����ʧ��"
		-- lualib:NPCTalk(player, msg)
		-- return true
    -- end




	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end

function GenRed(npc, player)
	local map = lualib:Map_GetMapGuid("��ŭ֮��")
	lualib:Map_GenItemRnd(map, 165, 134, 8, "���", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "���", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "���", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "���", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "���", 1, true, 120)
	lualib:Map_GenItemRnd(map, 165, 134, 8, "���", 1, true, 120)
	return
end


function hdtjyb(player, id)

	local level = lualib:Player_GetIntProp(player,  lua_role_level)
	if level < 45 then 
		return 
	end

	
	local msg = ""
	msg = msg.."��\n"
	msg = msg.."��\n"
	msg = msg.."�����������������������������������ʾ:\n"	
	msg = msg.."��\n"
	msg = msg.."��������������������������������ÿ�ջ��#COLORCOLOR_MAGENTA#[�콵���]#COLOREND# �ѿ�ʼ�����Ƿ�Ҫ�μӸû��\n"	
	msg = msg.."��\n"
	msg = msg.."����������������������������������ѡ��.\n"
	msg = msg.."��\n"
	msg = msg.."��������������������������������������������#IMAGE1902700018# <@enter *01*�����μ�>����#IMAGE1902700034# <@leave *01*�رմ���>\\n"
	msg = msg.."��\n"
	msg = msg.."��\n"
	msg = msg.."#OFFSET<X:-38,Y:-215>##IMAGE<ID:1990705608>#\n"
	lualib:NPCTalk(player, msg)
	return msg
end


function enter(player)
	-- local x = lualib:GenRandom(155,175)
	-- local y = lualib:GenRandom(130,285)
	lualib:Player_MapMoveXY(player, "��ŭ֮��", 165, 134, 10)
	local playername = lualib:KeyName(player)
	lualib:SysMsg_SendBroadcastMsg("��ϵͳ����ʿ��"..playername.."��������ŭ֮��Ѱ����", "")
	
	return ""
end