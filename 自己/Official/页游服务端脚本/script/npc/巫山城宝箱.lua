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
	msg = msg.."<@ExchangeItem *01*�������ر���>\n "
	msg = msg.."<@Lever *01*̫���ţ��ֶ���>\n "
    return msg
end

function ExchangeItem(npc, player)
	--��ʼ����������
	if lualib:ProgressBarStart(player, 5000, "��ɽ�Ǳ���", "progress_complete", "progress_abort", npc) == false then
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
	local item_group_probability = {0, 100, 5000, 0}
	--local item_group_probability = {10000, 10000, 10000, 10000}

	--�����飺
	--��ң���������   �������
	--Ԫ��������
	--��Ʒ����Ʒkeyname	 ����	���������ʼ��	������ʽ�����	�Ƿ�Ʒ
	local item_group = {}
	item_group[1] = {1000, 10000}
	item_group[2] = {100}

	item_group[3] = {}
	item_group[3][1] = {"Ǯ��(1��)",  1, 1,    3333,  1}
	item_group[3][2] = {"Ǯ��(2��)",  1, 3334, 5000,  1}

	item_group[4] = {}
	item_group[4][1] = {"�ٻ�ʯ", 1, 1,    4081,  0}
	item_group[4][2] = {"�ٻ�ʯ", 2, 4082, 6121,  0}
	item_group[4][3] = {"�ٻ�ʯ", 3, 6122, 7481,  0}
	item_group[4][4] = {"�ٻ�ʯ", 4, 7482, 8501,  0}
	item_group[4][5] = {"�ٻ�ʯ", 5, 8502, 9317,  0}
	item_group[4][6] = {"�ٻ�ʯ", 6, 9318, 10000, 0}

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
        ret = lualib:Player_AddGold(player, gold_value, false, "�ӽ�ң���ɽ�Ǳ���", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@1��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬������ɽ�Ǳ�����"..gold_value.."��ң�")
		end
	end

	--����Ԫ��
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "��Ԫ��������ɽ�Ǳ���", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@2��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬������ɽ�Ǳ�����"..item_group[2][1].."��Ԫ����")
			lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."������ɽ�Ǳ�����"..item_group[2][1].."��Ԫ����", "")
		end
	end

	--���ݵ��������������Ʒ
	for i = 3, table.getn(item_group) do
		if really_group[i] == true then
			local probability_value = lualib:GenRandom(1, max_probability)
			for j = 1, table.getn(item_group[i]) do
				if probability_value >= item_group[i][j][3] and probability_value <= item_group[i][j][4] then
					local free_site = lualib:Player_GetBagFree(player)
					if free_site < 1 then
						lualib:SysMsg_SendWarnMsg(player, "�����ռ䲻��")
						--lualib:Npc_Remove(npc)
						--return
					end
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "����Ʒ����ɽ�Ǳ���", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@3��")
						lualib:Npc_Remove(npc)
						return
					end
						lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���"..item_group[i][j][1].."��")
						if item_group[i][j][5] == 1 then
							lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."������ɽ�Ǳ�����"..item_group[i][j][1].."*"..item_group[i][j][2], "")
							lualib:SysMsg_SendBroadcastColor("���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."������ɽ�Ǳ�����"..item_group[i][j][1].."*"..item_group[i][j][2], "", 1, 12)
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
