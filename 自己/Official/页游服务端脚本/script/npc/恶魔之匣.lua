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

    local msg = player_name.."���� ��ħ֮ϻ�ں�����������֣�˵�����Ĺ��죡\n \n"
	msg = msg.."<@ExchangeItem *01*������ħ֮ϻ>\n \n"
	msg = msg.."<@Lever *01*̫���ţ��ֶ���>\n"
    return msg
end

function ExchangeItem(npc, player)
	--��ʼ����������
	if lualib:ProgressBarStart(player, 40000, "��ħ֮ϻ", "progress_complete", "progress_abort", npc) == false then
		return "�����ˣ�����ϵGM@2��"
	end

	return ""
end

function Lever(npc, player)
	return ""
end

function progress_complete(player, npc)		--�������ɹ�
	if lualib:Npc_IsExist(npc) == false then
		lualib:SysMsg_SendWarnMsg(player, "��ħ֮ϻ�����ڣ�")
		return
	end

	--��ħ֮ϻ��ĸ���
	local item_group_probability = {0, 0, 10000, 3333}

	--��ħ֮ϻ�飺
	--��ң���������   �������
	--Ԫ��������
	--��Ʒ����Ʒkeyname	 ����	���������ʼ��	������ʽ�����	�Ƿ�Ʒ
	local item_group = {}
	item_group[1] = {2500, 10000}
	item_group[2] = {100}

	item_group[3] = {}
	item_group[3][1] = {"�»��䵶", 1, 1, 900, 1}
	item_group[3][2] = {"���⻤��", 1, 901, 1800, 1}
	item_group[3][3] = {"��������", 1801, 2700, 69, 1}
	item_group[3][4] = {"������", 1,2701, 3600, 1}
	item_group[3][5] = {"ɱ����", 1, 3600, 4500, 1}
	item_group[3][6] = {"�ش���", 1, 4501, 5400, 1}
	item_group[3][7] = {"��֮ͥ��", 1, 5401, 6300, 1}
	item_group[3][8] = {"����ն", 1, 6301, 7200, 1}
	item_group[3][9] = {"��������", 1, 7201, 8100, 1}
    
    item_group[4] = {}
    item_group[4][1] = {"1.5���������", 1, 0, 0, 1}
    item_group[4][2] = {"˫���������", 1, 0, 0, 1}
    item_group[4][3] = {"3���������", 1, 0, 0, 1}
    item_group[4][4] = {"����˫���������", 1, 1, 175, 1}
    item_group[4][5] = {"������(С)", 1, 176, 1929, 1}
    item_group[4][6] = {"������(��)", 1, 1930, 2806, 1}
    item_group[4][7] = {"������(��)", 1, 2807, 3156, 1}
    item_group[4][8] = {"������", 1, 3157, 3333, 1}
    
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
        ret = lualib:Player_AddGold(player, gold_value, false, "�ӽ�ң���ħ֮ϻ", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@1��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬������ħ֮ϻ���"..gold_value.."��ң�")
		end
	end

	--����Ԫ��
	if really_group[2] == true then
        ret = lualib:Player_AddIngot(player, item_group[2][1], true, "��Ԫ�����򿪶�ħ֮ϻ", player)
		if ret == false then
			lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@2��")
			lualib:Npc_Remove(npc)
			return
		else
			lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬������ħ֮ϻ���"..item_group[2][1].."��Ԫ����")
			lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."������ħ֮ϻ���"..item_group[2][1].."��Ԫ����", "")
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
						lualib:Npc_Remove(npc)
						return
					end
					ret = lualib:Player_GiveItemUnbind(player, item_group[i][j][1], item_group[i][j][2], "����Ʒ����ħ֮ϻ", player)
					if ret == false then
						lualib:SysMsg_SendWarnMsg(player, "ϵͳ��������ϵGM@3��")
						lualib:Npc_Remove(npc)
						return
					end
						lualib:SysMsg_SendPromptMsg(player, "��ϲ�㣬���"..item_group[i][j][1].."��")
						if item_group[i][j][5] == 1 then
							lualib:SysMsg_SendCenterMsg(1, "���"..lualib:Player_GetStrProp(player,  lua_role_user_name).."������ħ֮ϻ���"..item_group[i][j][1].."��", "")
						end
					break
				end
			end
		end
	end

	--�Ƴ�NPC
	lualib:Npc_Remove(npc)
    local map = lualib:Player_GetGuidProp(player,  lua_role_current_map_id)
--    if lualib:Map_GenNpcRnd(map, "��ħ֮ϻ") then
--        lualib:Print("��ħ֮ϻˢ�³ɹ���")
--        return
--    end
--    lualib:Print("��ħ֮ϻˢ��ʧ�ܣ�")
	if lualib:Map_GenMonster(map, 47,64,3,1,"��ħ����",1,false) then
		lualib:SysMsg_SendMapMsg(map,"��ħ������[47:64]λ�ã����ٶ�ȥ����")
		lualib:Print("��ħ����ˢ�³ɹ�")
	end
		lualib:Print("��ħ����ˢ��ʧ��")
end

function progress_abort(player, npc)   --������ʧ��
end
