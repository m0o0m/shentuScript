local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--------------------------------------------------------------------------------
--�ƻ�����Ķ�ʱ�ص����淨�߼����֣�
--------------------------------------------------------------------------------

function on_start(id, map)
end

------------------��ʼ����--------------
function on_start_decl(id, map, times) --�id����ͼ��ʶ������������
	local times = tonumber(times)
	if times == 0 then
		ltszuduiqingli() --������������
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", "��Ӣ��������������ѿ�ʼ����Ҫ�μӵ�����뵽����NPC������������[226,219]���������μӱ������о����������á�", 15000)
	end
end

------------------��������--------------
function on_end_decl(id, map, times)
	local times = tonumber(times)
	if times == 0 then
		lualib:SysMsg_SendBoardMsg("0", "[��Ӣ������]", "��Ӣ������������ѽ�������Ҫ�μӵ����ֻ�ܵȴ��´λ�����ˡ�", 15000)
	end
end

------------------���崫��------------------
function Goto(id,player,map)
	 local x = 240
	 local y = 240
	 local r = 3
	 local map_key_name = "����"
	local gold = 1500
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 15000
	else
		gold = 1500
	end
	local msg = ""
	
	if lualib:HasBuff(player,"��̯") then
	lualib:SysPromptMsg(player,"�㵱ǰ���ڰ�̯״̬���޷�����")
	return false
	end
	
	if not lualib:Player_IsGoldEnough(player, gold, false) then
	msg = msg.."��ǰ������Ҫ"..gold.."���"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_SubGold(player, gold, false, "����", player) then
	msg = msg.."�۳����ʧ��"
	lualib:NPCTalk(player, msg)
    return true
    end
	if not lualib:Player_MapMoveXY(player,map_key_name, x, y, r) then
		lualib:SysMsg_SendWarnMsg(player, "")
	end
end

function ltszuduiqingli()
	lualib:SetStr("0", "jyjjc_gaojibaoming","")
	lualib:SetStr("0", "jyjjc_gaoji1baoming","")
	lualib:SetStr("0", "jyjjc_gaoji2baoming","")
	lualib:SetStr("0", "jyjjc_gaoji3baoming","")
	lualib:SetStr("0", "jyjjc_gaoji4baoming","")
	lualib:SetStr("0", "jyjjc_gaoji5baoming","")
	lualib:SetStr("0", "jyjjc_dijibaoming","")
	lualib:SetStr("0", "jyjjc_diji1baoming","")
	lualib:SetStr("0", "jyjjc_diji2baoming","")
	lualib:SetStr("0", "jyjjc_diji3baoming","")
	lualib:SetStr("0", "jyjjc_diji4baoming","")
	lualib:SetStr("0", "jyjjc_diji5baoming","")
end