--[[
��������             ��������         ����˵��
fumoAtt..��1~6��       int            ����ȡ���ļ�Ʒװ����Ŀ���������ƣ���Ҫ���ͻ��ˣ���ħʯtips��ʾ�����չ�������

fumoValue..��1~6��     int            ����ȡ���ļ�Ʒװ����Ŀ������ֵ����fumoAtt..N��Ӧ��ϵ����Ҫ���ͻ��ˣ���ħʯtips��ʾ�����չ������ԣ�����fumoAtt1����Ӧ��ֵΪfumoValue1��

xishou                 int            �����жϸ�ħʯ�Ƿ����չ���Ʒ���ԣ�1Ϊ�ǣ�����Ϊ��

]]


local itemName = "��ħʯ"
local gold = 5000

function main(player, a_weizhi, b_weizhi)
	local a_weizhi = tonumber(a_weizhi)
	local b_weizhi = tonumber(b_weizhi)
	local a_guid = lualib:Player_GetItemGuid(player, a_weizhi)
	local a_KeyName = lualib:KeyName(a_guid)
	local a_type = lualib:Item_GetType(player, a_guid)
	local a_subType = lualib:Item_GetSubType(player, a_guid)
	
	
	local pd = a_type == 4 and a_subType == 20
	if  not pd then 
		return "����븽ħʯ��"
	end
	
	local b_guid = lualib:Player_GetItemGuid(player, b_weizhi)
	local b_Type = lualib:Item_GetType(player, b_guid)
	local b_SubType = lualib:Item_GetType(player, b_guid)
	
	if b_Type ~= 1 then
		return "�����װ�������ܽ��м�Ʒ�������գ�"
	end
	
	if lualib:Player_IsGoldEnough(player,gold,false) == false then
		return "���ռ�Ʒ������Ҫ5000��ң�"
	end
	
	local zidingyi = lualib:GetInt(a_guid, "xishou")
	if zidingyi == 1 then
		return "��ħʯ�Ѿ����չ����ԣ����ܼ������ա�"
	end
	
	if lualib:Item_IsBind(player, b_guid) == true then
		return "��ħʯ�޷����հ�װ���ļ�Ʒ����"
	end
	
	--��ȡװ����Ʒ����
	local table_jp = {}
	local index = 0
	local table_gong = {}
	local table_qita = {}
	local gong_index = 0
	local qita_index = 0
	while index < 6 do
		local QualProp = lualib:Equip_GetQualProp(player,b_guid,index)
		if QualProp[1] == nil then 
			QualProp[1] = 0
		end
		index = index + 1
		if QualProp[0] == 10 or QualProp[0] == 12 or QualProp[0] == 14 then
			gong_index = gong_index + 1
			table_gong[gong_index] = QualProp
		elseif QualProp[0] ~= 0 and QualProp[0] ~= 195 then
			qita_index = qita_index + 1
			table_qita[qita_index] = QualProp
		end	
	end
	--������ֹ������Ե�һ��
	local key = lualib:GenRandom(1, gong_index)
	table_jp = table_qita
	
	
	if gong_index > 0 then
             for i = 1, gong_index do
		table_jp[#table_jp + 1] = table_gong[i]
             end
	end
	
	local abc = false
	for i = 1, table.getn(table_jp) do
		if table_jp[i][0] ~= 0 and table_jp[i][0] ~= 195 then
			abc = true
			--print(table_jp[i][0])
		end
	end
	
	if abc == false then
		return "�������װ��û�п����ռ�Ʒ�������ͣ�"
	end
	
	return fumo(player, a_guid, b_guid, table_jp)
end
	
function fumo(player, a_guid, b_guid, table_jp)
	if not lualib:Player_SubGold(player, gold, false, "��ħ�ǰ���", "") then return "�۳����ʧ��" end
	if not lualib:Item_Destroy(player, b_guid, "XXX", "XXX") then return "������Ʒʧ��" end
	
	--����Ʒ����д�븽ħʯ�Զ������
	for i = 1, table.getn(table_jp) do
		if table_jp[i][0] ~= 0 then
			if not lualib:SetInt(a_guid,"fumoAtt"..i,table_jp[i][0]) then return "�����Զ������ʧ��" end
			if not lualib:SetInt(a_guid,"fumoValue"..i,table_jp[i][1]) then return "�����Զ������ʧ��" end
		end
	end
	lualib:Item_NotifyUpdate(player, a_guid)
	if not lualib:SetInt(a_guid,"xishou",1) then return "�����Զ������ʧ��" end
	lualib:Item_NotifyUpdate(player, a_guid)
	lualib:MsgBox(player, "��ħʯ�������Գɹ���")
	return ""
end