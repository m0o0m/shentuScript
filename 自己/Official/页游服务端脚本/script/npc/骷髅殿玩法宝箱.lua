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
	msg = msg.."<@Lever *01*̫���ţ��ֶ���>\n"
    return msg
end

function ExchangeItem(npc, player)
	--��ʼ����������
	if lualib:ProgressBarStart(player, 5000, "���õ��淨����", "progress_complete", "progress_abort", npc) == false then
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
	local item_group_probability = {5000, 100, 10000, 2678, 114, 1}

	--�����飺
	--��ң���������   �������
	--Ԫ��������
	--��Ʒ����Ʒkeyname	 ����	���������ʼ��	������ʽ�����	�Ƿ�Ʒ
	local item_group = {}
	item_group[1] = {3000, 10000}
	item_group[2] = {1}

	item_group[3] = {}
	item_group[3][1] = {"��ҩ(��)��", 1, 1, 1667, 0}
	item_group[3][2] = {"ħ��ҩ(��)��", 1, 1668, 3334, 0}
	item_group[3][3] = {"̫��ˮ��", 1, 3335, 5001,0}
	item_group[3][4] = {"������Ͱ�", 1, 5002, 6668, 0}
	item_group[3][5] = {"�������Ѱ�", 1, 6669, 8334, 0}
	item_group[3][6] = {"�سǾ��", 1, 8335, 10000, 0}

	item_group[4] = {}
	item_group[4][1] = { "ţƤЬ", 1, 1, 206, 0}
	item_group[4][2] = {"���ݽ�ָ", 1, 207, 412, 0}
	item_group[4][3] = {"����ʯ��ָ", 1, 413, 618, 0}
	item_group[4][4] = {"Ʒ�½�ָ", 1, 619, 824, 0}
	item_group[4][5] = {"ն�ǵ�", 1, 825, 1030, 0}
	item_group[4][6] = {"��ħ��", 1, 1031, 1236, 0}
	item_group[4][7] = {"���·���", 1, 1237, 1442, 0}
	item_group[4][8] = {"�������(��)", 1, 1443, 1648, 0}
	item_group[4][9] = {"�������(Ů)", 1, 1649, 1854, 0}
	item_group[4][10]= {"�ϳ���(��)", 1, 1855, 2060, 0}
	item_group[4][11]= {"�ϳ���(Ů)", 1, 2061, 2266, 0}
	item_group[4][12]= {"���ĵ���(��)", 1, 2267, 2472, 0}
	item_group[4][13]= {"���ĵ���(Ů)", 1, 2473, 2678, 0}


	item_group[5] = {}
	item_group[5][1] = {"�������", 1, 1, 38, 1}
	item_group[5][2] = {"��������", 1, 39, 76, 1}
	item_group[5][3] = {"������", 1, 77, 114, 1}

	item_group[6] = {}
	item_group[6][1] = {"Ǯ��(1��)", 1, 1, 1667, 1}
	item_group[6][2] = {"Ǯ��(2��)", 1, 1667, 3334, 1}
	item_group[6][3] = {"Ǯ��(5��)", 1, 3335, 5001, 1}
	item_group[6][4] = {"Ǯ��(10��)", 1, 5002, 6668, 1}
	item_group[6][5] = {"Ǯ��(20��)", 1, 6669, 8334, 1}
	item_group[6][6] = {"Ǯ��(50��)", 1, 8335, 10000, 1}



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
        ret = lualib:Player_AddGold(player, gold_value, false, "�ӽ�ң����õ��淨����", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@1��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬�������õ����ұ�����"..gold_value.."��ң�")
		end
	end

	--����Ԫ��
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "��Ԫ���������õ��淨����", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@2��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬�������õ����ұ�����"..item_group[2][1].."��Ԫ����")
			lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�������õ����ұ�����"..item_group[2][1].."��Ԫ����", "")
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
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "����Ʒ�����õ��淨����", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@3��")
						lualib:Npc_Remove(npc)
						return
					end
					lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���"..item_group[i][j][1].."��")
					if item_group[i][j][5] == 1 then
						lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�������õ����ұ�����"..item_group[i][j][1].."��", "")
					end
					break
				end
			end
		end
	end

	--�Ƴ�NPC
	lualib:Npc_Remove(npc)
end

function progress_abort(player, npc)   --������ʧ��
end
