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
	if lualib:ProgressBarStart(player, 5000, "���а����", "progress_complete", "progress_abort", npc) == false then
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
	local item_group_probability = {0, 100, 7000, 0, 0, 0}

	--�����飺
	--��ң���������   �������
	--Ԫ��������
	--��Ʒ����Ʒkeyname	 ����	���������ʼ��	������ʽ�����	�Ƿ�Ʒ
	local item_group = {}
	item_group[1] = {8000, 25000}
	item_group[2] = {100}

	item_group[3] = {}
	item_group[3][1] = {"Ǯ��(1��)",  1, 1,     3742,  1}
	item_group[3][2] = {"Ǯ��(2��)",  1, 3743,  5614,  1}
    item_group[3][3] = {"Ǯ��(5��)",  1, 5615,  6362,  1}
	item_group[3][4] = {"Ǯ��(10��)",  1, 6363, 6736,  1}
    item_group[3][5] = {"Ǯ��(20��)",  1, 6737, 6923,  1}
	item_group[3][6] = {"Ǯ��(50��)",  1, 6924, 7000,  1}

	item_group[4] = {}
	item_group[4][1] = {"�ٻ�ʯ", 5,  1,    2365,  0}
	item_group[4][2] = {"�ٻ�ʯ", 6,  2366, 4335,  0}
	item_group[4][3] = {"�ٻ�ʯ", 7,  4336, 6024,  0}
	item_group[4][4] = {"�ٻ�ʯ", 8,  6025, 7502,  0}
	item_group[4][5] = {"�ٻ�ʯ", 9,  7503, 8815,  0}
	item_group[4][6] = {"�ٻ�ʯ", 10, 8816, 10000, 0}

	item_group[5] = {}
	item_group[5][1] = {"�ش���", 1, 1, 1725, 1}
	item_group[5][2] = {"ɱ����", 1, 1726, 3450, 1}
	item_group[5][3] = {"�»��䵶", 1, 3451, 5175, 1}
    item_group[5][4] = {"��������", 1, 5176, 6900, 1}
    item_group[5][5] = {"�������", 1, 6901, 7760, 1}
    item_group[5][6] = {"���⻤��", 1, 7761, 8620, 1}
    item_group[5][7] = {"����ն", 1, 8621, 9310, 1}
    item_group[5][8] = {"��֮ͥ��", 1, 9311, 10000, 1}

	item_group[6] = {}
	item_group[6][1] = {"Ǯ��(1��)", 1, 1, 3000, 1}
	item_group[6][2] = {"Ǯ��(2��)", 1, 3001, 5500, 1}
	item_group[6][3] = {"Ǯ��(5��)", 1, 5501, 7500, 1}
	item_group[6][4] = {"Ǯ��(10��)", 1, 7501, 9000, 1}
	item_group[6][5] = {"Ǯ��(20��)", 1, 9001, 9800, 1}
	item_group[6][6] = {"Ǯ��(50��)", 1, 9801, 10000, 1}

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
        ret = lualib:Player_AddGold(player, gold_value, false, "", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@1��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬�������а������"..gold_value.."��ң�")
		end
	end

	--����Ԫ��
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "��Ԫ���������а����", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@2��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬�������а������"..item_group[2][1].."��Ԫ����")
			lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�������а������"..item_group[2][1].."��Ԫ����", "")
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
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "����Ʒ�����а����", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@3��")
						lualib:Npc_Remove(npc)
						return
					end
					lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���"..item_group[i][j][1].."��")
					if item_group[i][j][5] == 1 then
						lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."�������а������"..item_group[i][j][1].."*"..item_group[i][j][2], "")
						lualib:SysMsg_SendBroadcastColor("���#COLORCOLOR_BROWN#["..lualib:Player_GetStrProp(player,  lua_role_user_name).."] #COLORCOLOR_YELLOW#�������а������#COLORCOLOR_BROWN#"..item_group[i][j][1].."*"..item_group[i][j][2], "", 1, 12)

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
