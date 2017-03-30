local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local itemName = "��ӡ������"
local gold = 6000
---���ɼ����ĸ���װ���б�
local zhuangbei = {
					"aaa",
					"bbb",
					"ccc",
					}

function main(player, a_weizhi, b_weizhi)
	local a_weizhi = tonumber(a_weizhi)
	local b_weizhi = tonumber(b_weizhi)
	local table_ku = {
				--{�����ͣ������֮��۳��Ļ��֣����뼸��}
				{1, 0, 10000},
				{2, 460, -300},
				{3, 300, -150},
			}

	local table_att = {
				{
					--{һ������Ŀ��ֵ���ͣ�����ֵ������Ȩ��}
                    {3, 2, 100}, --hp����
                    {5, 2, 100}, --mp����
                    {6, 1, 100}, --�������
                    {8, 1, 100}, --ħ������
                    {10, 1, 100}, --�﹥����
                    {12, 1, 100}, --ħ������
                    {14, 1, 100}, --��������
                    {84, 1, 100}, --������ްٷֱ�
                    {86, 1, 100}, --ħ�����ްٷֱ�
                    {88, 1, 100}, --�﹥���ްٷֱ�
                    {90, 1, 100}, --ħ�����ްٷֱ�
                    {92, 1, 100}, --�������ްٷֱ�
                    {3, 3, 100}, --hp����
                    {5, 3, 100}, --mp����
                    {83, 1, 100}, --������ްٷֱ�
                    {85, 1, 100}, --ħ�����ްٷֱ�
                    {87, 1, 100}, --�﹥���ްٷֱ�
                    {89, 1, 100}, --ħ�����ްٷֱ�
                    {91, 1, 100}, --�������ްٷֱ�
                    {6, 1, 100}, --�������
                    {8, 1, 100}, --ħ������
                    {10, 1, 100}, --�﹥����
                    {12, 1, 100}, --ħ������
                    {14, 1, 100}, --��������
                    {3, 4, 100}, --hp����
                    {5, 4, 100}, --mp����
                    {6, 1, 100}, --�������
                    {8, 1, 100}, --ħ������
                    {10, 2, 100}, --�﹥����
                    {12, 2, 100}, --ħ������
                    {14, 2, 100}, --��������
                    {6, 1, 100}, --�������
                    {8, 1, 100}, --ħ������
                    {10, 1, 100}, --�﹥����
                    {12, 1, 100}, --ħ������
                    {14, 1, 100}, --��������
				},
				{
					--{��������Ŀ��ֵ���ͣ�����ֵ������Ȩ��}
		    {3, 4, 100}, --hp����
                    {5, 4, 100}, --mp����
                    {6, 2, 100}, --�������
                    {8, 2, 100}, --ħ������
                    {10, 2, 100}, --�﹥����
                    {12, 2, 100}, --ħ������
                    {14, 2, 100}, --��������
                    {7, 1, 100}, --�������
                    {9, 1, 100}, --ħ������
                    {11, 1, 100}, --�﹥����
                    {13, 1, 100}, --ħ������
                    {15, 1, 100}, --��������
                    {3, 5, 100}, --hp����
                    {5, 5, 100}, --mp����
                    {6, 2, 100}, --�������
                    {8, 2, 100}, --ħ������
                    {10, 2, 100}, --�﹥����
                    {12, 2, 100}, --ħ������
                    {14, 2, 100}, --��������
                    {7, 1, 100}, --�������
                    {9, 1, 100}, --ħ������
                    {11, 1, 100}, --�﹥����
                    {13, 1, 100}, --ħ������
                    {15, 1, 100}, --��������
                    {25, 5, 100}, --��������
                    {21, 50, 100}, --���ޱ�������
                    {23, 5, 100}, --����װ������
                    {44, 5, 100}, --hp�ظ�ֵ
                    {45, 5, 100}, --mp�ظ�ֵ
                    {49, 1, 100}, --������
                    {111, 3, 100}, --��Ѫ
                    {114, 3, 100}, --��ħ
				},
				{
					--{��������Ŀ��ֵ���ͣ�����ֵ������Ȩ��}
					{3, 10, 100}, --hp����
                    {5, 10, 100}, --mp����
                    {6, 3, 100}, --�������
                    {8, 3, 100}, --ħ������
                    {10, 3, 100}, --�﹥����
                    {12, 3, 100}, --ħ������
                    {14, 3, 100}, --��������
                    {7, 2, 100}, --�������
                    {9, 2, 100}, --ħ������
                    {11, 2, 100}, --�﹥����
                    {13, 2, 100}, --ħ������
                    {15, 2, 100}, --��������
                    {3, 12, 100}, --hp����
                    {5, 12, 100}, --mp����
                    {83, 3, 100}, --������ްٷֱ�
                    {85, 3, 100}, --ħ�����ްٷֱ�
                    {87, 3, 100}, --�﹥���ްٷֱ�
                    {89, 3, 100}, --ħ�����ްٷֱ�
                    {91, 3, 100}, --�������ްٷֱ�
                    {7, 2, 100}, --�������
                    {9, 2, 100}, --ħ������
                    {11, 2, 100}, --�﹥����
                    {13, 2, 100}, --ħ������
                    {15, 2, 100}, --��������
                    {84, 3, 100}, --������ްٷֱ�
                    {86, 3, 100}, --ħ�����ްٷֱ�
                    {88, 3, 100}, --�﹥���ްٷֱ�
		    {90, 3, 100}, --ħ�����ްٷֱ�
                    {92, 3, 100}, --�������ްٷֱ�
                    {44, 9, 100}, --hp�ظ�ֵ
                    {45, 9, 100}, --mp�ظ�ֵ
                    {49, 2, 100}, --������
                    {111, 7, 100}, --��Ѫ
                    {114, 7, 100}, --��ħ
				},
			}

	local a_guid = lualib:Player_GetItemGuid(player, a_weizhi)
	local a_Type = lualib:Item_GetType(player, a_guid)
	local a_SubType = lualib:Item_GetType(player, a_guid)
	local a_KeyName = lualib:KeyName(a_guid)

	if a_Type ~= 1  then
		return "����װ�����޷�����װ�����Լ�����"
	end

	if a_SubType == 5 then
		return "������װ���޷�����װ�����Լ���"
	end

	for k, v in pairs(zhuangbei) do
		if a_KeyName == v then
			return "��װ�����ܽ���װ�����Լ���"
		end
	end

	if lualib:Player_IsGoldEnough(player,gold,false) == false then
		return "���ռ�Ʒ������Ҫ5000��ң�"
	end

	local b_guid = lualib:Player_GetItemGuid(player, b_weizhi)
	local b_KeyName = lualib:KeyName(b_guid)

	if b_KeyName ~= itemName then
		return "������ӡ��������"
	end


	local shumu = lualib:Item_GetAmount(player, b_guid)
	if shumu < 1 then
		return "��ķ�ӡ���������㣡"
	end


	---��ȡ�����Զ������
	local fengyinjifen = lualib:GetInt(player, "fengyinjifen")

	---��ʼ����
	---���û�ȡ��������
	jianding_att = {
					{0,0},
					{0,0},
					{0,0},
					}


	---�����һ��
	local maxs1 = 0
	local att1 = {}
	local kuattRate1 = table_att[1]

	for i = 1 ,table.getn(table_att[1]) do
		maxs1 = maxs1 + table_att[1][i][3]
		kuattRate1[i][3] = maxs1
	end

	local Rate1 = lualib:GenRandom(0, maxs1)
	for i = 1, table.getn(kuattRate1) do
		if Rate1 < kuattRate1[i][3] then
			att1 = kuattRate1[i]
			jianding_att[1] = att1
			break
		end
	end


	---����ڶ���
	local req2 = false
	kuRate2 = fengyinjifen + table_ku[2][3]
	if kuRate2 > lualib:GenRandom(1, 10000) then
		req2 = true
	end


	if req2 == true then
		local maxs2 = 0
		local att2 = {}
		local kuattRate2 = table_att[2]

		for i = 1, table.getn(table_att[2]) do
			maxs2 = maxs2 + table_att[2][i][3]
			kuattRate2[i][3] = maxs2
		end

		local Rate2 = lualib:GenRandom(0, maxs2)
		for i = 1, table.getn(kuattRate2) do
			if Rate2 < kuattRate2[i][3] then
				att2 = kuattRate2[i]
				jianding_att[2] = att2
				break
			end
		end
	end

	---�������������
	local req3 = false
	if req2 == true then
		local kuRate3 = fengyinjifen + table_ku[3][3]

		if kuRate3 > lualib:GenRandom(1, 10000) then
			req3 = true
		end

		if req3 == true then
			local maxs3 = 0
			local att3 = {}
			local kuattRate3 = table_att[3]

			for i = 1, table.getn(table_att[3]) do
				maxs3 = maxs3 + table_att[3][i][3]
				kuattRate3[i][3] = maxs3
			end

			local Rate3 = lualib:GenRandom(0, maxs3)
			for i = 1, table.getn(kuattRate3) do
				if Rate3 < kuattRate3[i][3] then
					att3 = kuattRate3[i]
					jianding_att[3] = att3
					break
				end
			end
		end
	end
	---�������
	fengyinjifen = fengyinjifen + 10
	if req2 == true then
		fengyinjifen = fengyinjifen - table_ku[2][2]
		if req3 == true then
			fengyinjifen = fengyinjifen - table_ku[3][2]
		end
	end

	local player_Name = lualib:Name(player)
	local item_Name = lualib:Name(a_guid)
	for i = 0, 2 do
		local att = lualib:Equip_GetIdentifyProp(player, a_guid, i)
		lualib:Log(player_Name, item_Name, a_guid, att[0], jianding_att[i+1][1], "������"..i.."����������", "ϵͳ")
		lualib:Log(player_Name, item_Name, a_guid, att[1], jianding_att[i+1][2], "������"..i.."������ֵ", "ϵͳ")
	end


	return fengyin(player, a_guid, b_guid, jianding_att, shumu,fengyinjifen)
end


function fengyin(player, a_guid, b_guid, jianding_att, shumu, fengyinjifen)
	lualib:Player_SubGold(player, gold, false, "����", "����")

	lualib:Item_SetAmount(player, b_guid, shumu-1)



	if not lualib:Equip_SetIdentifyProp(player, a_guid, jianding_att[1][1], jianding_att[1][2], jianding_att[2][1], jianding_att[2][2], jianding_att[3][1], jianding_att[3][2]) then
		return "�趨��ӡ����ʧ��"
	end
	lualib:Item_NotifyUpdate(player, a_guid)


	if not lualib:SetInt(player, "fengyinjifen", fengyinjifen) then return "���ü��������Զ������ʧ��" end

	----�����ø��˻��ֹ۲죬�벻Ҫ�ŵ�����������û����ҵĲ��Է�������������ע��ȥ����
	--[[local s = "����ǰ��������Ϊ"..fengyinjifen.."������Խ�߻��2��3�����Եļ���Խ�ߣ����2��3������ʱ��۳�һ�����֡�"
	lualib:SysMsg_SendPromptMsg(player, s)]]

	lualib:OnGloryTrigger(player, lua_glory_trigger_jianding, a_guid, 0, "" ,"")
	return ""
end
