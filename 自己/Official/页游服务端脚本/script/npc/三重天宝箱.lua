local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local max_probability = 10000
function main(npc, player)
	local distance = lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc))
	if distance > 2 then return "��㲻���ң���㲻���ҡ�����" end

	local player_name = lualib:Player_GetStrProp(player,  lua_role_user_name)
	if player_name == "" then return "�����ˣ�����ϵGM@1��" end

    local msg = player_name.."��������ǰ�Ŀ���Զ���������������ر���Ŷ����\n \n"
	msg = msg.."<@ExchangeItem *01*�������ر���>\n \n"
	msg = msg.."<@Lever *01*̫���ţ��ֶ���>\n "
    return msg
end

function ExchangeItem(npc, player)
	--��ʼ����������
	if lualib:ProgressBarStart(player, 5000, "�����챦��", "progress_complete", "progress_abort", npc) == false then
		return "�����ˣ�����ϵGM@2��"
	end

	return ""
end

function Lever(npc, player)
	return ""
end

function progress_complete(player, npc)		--�������ɹ�
	if lualib:Npc_IsExist(npc) == false then
		lualib:SysMsg_SendWarnMsg(player, "���䲻���ڣ�")
		return
	end

	--������ĸ���
	local item_group_probability = {5000, 100, 10000, 500, 5000, 500}

	--�����飺
	--��ң���������   �������
	--Ԫ��������
	--��Ʒ����Ʒkeyname	 ����	���������ʼ��	������ʽ�����	�Ƿ�Ʒ
	local item_group = {}
	item_group[1] = {7000, 20000}
	item_group[2] = {100, 0}

	item_group[3] = {}
	item_group[3][1] = {"ǿЧ��ҩ��", 1, 1, 1667, 0}
	item_group[3][2] = {"ǿЧħ��ҩ��", 1, 1668, 2334, 0}
	item_group[3][3] = {"̫��ˮ��", 1, 2335, 3001,0}
	item_group[3][4] = {"������Ͱ�", 1, 3002, 3668, 0}
	item_group[3][5] = {"�������Ѱ�", 1, 3669, 4334, 0}
	item_group[3][6] = {"�سǾ��", 1, 4335, 5000, 0}
	item_group[3][7] = {"����", 1, 5001, 10000, 0}

	item_group[4] = {}
	item_group[4][1] = {"������(1��)", 1, 1, 218, 0}
	item_group[4][2] = {"������(2��)", 1, 219, 327, 0}
	item_group[4][3] = {"������(3��)", 1, 328, 399, 0}
	item_group[4][4] = {"������(4��)", 1, 400, 453, 0}
	item_group[4][5] = {"������(5��)", 1, 454, 500, 0}

	item_group[5] = {}
	item_group[5][1] = {"����ӡ", 1, 1, 581, 1}
	item_group[5][2] = {"���︴�", 1, 582, 1162, 1}
	item_group[5][3] = {"���ﾭ�鵤", 1, 1163, 4068, 1}
	item_group[5][4] = {"�������ﾭ�鵤", 1, 4069, 4649, 1}
	item_group[5][5] = {"�������ﾭ�鵤", 1, 4650, 4939, 1}
	item_group[5][6] = {"�������ﾭ�鵤", 1, 4940, 5000, 1}

	item_group[6] = {}
	item_group[6][1] = {"Ǯ��(1��)", 1, 1, 83, 1}
	item_group[6][2] = {"Ǯ��(2��)", 1, 84, 166, 1}
	item_group[6][3] = {"Ǯ��(5��)", 1, 167, 250, 1}
	item_group[6][4] = {"Ǯ��(10��)", 1, 251, 333, 1}
	item_group[6][5] = {"Ǯ��(20��)", 1, 334, 416, 1}
	item_group[6][6] = {"Ǯ��(50��)", 1, 417, 500, 1}



	--ʵ�ʵĵ�����
	local really_group = {}
	for i = 1, table.getn(item_group_probability) do
		if lualib:GenRandom(1, max_probability) <= item_group_probability[i] then
			really_group[i] = true
		else
			really_group[i] = false
		end
	end

	local ret = false
	--������
	if really_group[1] == true then
		local gold_value = lualib:GenRandom(item_group[1][1], item_group[1][2])
        ret = lualib:Player_AddGold(player, gold_value, false, "�ӽ�ң��������챦��", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@1��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���������챦����"..gold_value.."��ң�")
		end
	end

	--����Ԫ��
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "��Ԫ�����������챦��", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@2��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���������챦����"..item_group[2][1].."��Ԫ����")
			lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."���������챦����"..item_group[2][1].."��Ԫ����", "")
		end
	end

	--���ݵ��������������Ʒ
	for i = 3, table.getn(item_group) do
		if really_group[i] == true then
			local probability_value = lualib:GenRandom(1, item_group_probability[i])
			for j = 1, table.getn(item_group[i]) do
				if probability_value >= item_group[i][j][3] and probability_value <= item_group[i][j][4] then
					local free_site = lualib:Player_GetBagFree(player)
					if free_site < 1 then
						lualib:SysMsg_SendWarnMsg(player, "�����ռ䲻��")
						--lualib:Npc_Remove(npc)
						--return
					end
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "����Ʒ�������챦��", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@3��")
						lualib:Npc_Remove(npc)
						return
					end
					lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���"..item_group[i][j][1].."��")
					if item_group[i][j][5] == 1 then
						lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."���������챦����"..item_group[i][j][1].."��", "")
					end
					break
				end
			end
		end
	end

	--�Ƴ�NPC
	lualib:Npc_Remove(npc)
end

function progress_abort(player, params)   --������ʧ��
end
