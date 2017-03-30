local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")
--[[
�����Ϊ����ͨ��ϡ�С���Ʒ����󡢾�������Ӧ��ɫΪ���ס��̡������ϡ���

��һ�����԰�Ʒ���������ֵ
	4.1.��ͨƷ�ʣ��ƶ��ٶ���5%~10%֮�����
	4.2.ϡ��Ʒ�ʣ��ƶ��ٶ���10%~15%֮�����
	4.3.��ƷƷ�ʣ��ƶ��ٶ���15%~20%֮�����
	4.4���Ʒ�ʣ��ƶ��ٶ���20%~30%֮�����
	4.4����Ʒ�ʣ��ƶ��ٶ���25%~35%֮�����

--]]




function process_one(player, item, material)
    if lualib:BagFree(player, true, false, false) <= 0 then
        return "��������"
    end

    local horse_t =
    {
        ["������(δ����)"] = "������", 
        ["������(δ����)"] = "������", 
        ["���Ы(δ����)"] = "���Ы", 
        ["������(δ����)"] = "������", 
        ["ѩ������(δ����)"] = "ѩ������", 
        ["������(δ����)"] = "������", 
        ["����ħʨ(δ����)"] = "����ħʨ", 
        ["������(δ����)"] = "������", 
        ["½����(δ����)"] = "½����", 
        ["�������(δ����)"] = "�������", 
        ["��ӥ(δ����)"] = "��ӥ", 
        ["ʨ��(δ����)"] = "ʨ��", 
        ["�����(δ����)"] = "�����", 
        ["������(δ����)"] = "������", 
        ["����(δ����)"] = "����", 
        ["������(δ����)"] = "������", 
        ["����(δ����)"] = "����", 
        ["�����(δ����)"] = "�����", 
        ["������(δ����)"] = "������", 
        ["��(δ����)"] = "��", 
        ["����(δ����)"] = "����", 
        ["��������(δ����)"] = "��������", 
        ["����(δ����)"] = "����", 
        ["��Ѫ(δ����)"] = "��Ѫ����", 
        ["������(δ����)"] = "������", 
        ["��ڤ��(δ����)"] = "��ڤ��", 
        ["��ɷͫ��(δ����)"] = "��ɷͫ��", 
        ["�����(δ����)"] = "�����", 
        ["��Ӱ(δ����)"] = "��Ӱ", 
        ["����(δ����)"] = "����", 
    }

    local is_bind = lualib:Item_IsBind(player, item)
    local item_name = lualib:Item_GetName(player, item)
    local item_key_name = lualib:Item_GetKeyName(player, item)
    local dst_key_name = horse_t[item_key_name]
	local cl_isbind = lualib:Item_IsBind(player, material)

    --��Ӧ����keyname
    if dst_key_name == nil then
        return "["..item_name.."]��Ӧ������Ʒ������"
    end

    local is_gold_bind = false
    local gold_cost = 100000
    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "��Ҳ���"
    end

    local material_cost = 1
    local material_amount = lualib:Item_GetAmount(player, material)
    if material_amount < material_cost then
        return "����ӡ��������"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "���￪��", player) then
        return "�۽��ʧ��"
    end

    lualib:Item_SetAmount(player, material, material_amount - material_cost)
    local player_name = lualib:Name(player)

    --������ʣ���ʧ�ܣ�1000������ͨ��7527����ϡ�У�1000������Ʒ��333�������100����������40��

	local gailv_tb =
					{
					{0, 1000},  --����ʧ��Ȩ��
					{1, 4650},  --��
					{2, 2320},	--��
					{3, 1160},	--��
					{4, 580},	--��
					{5, 290}	--��
					}

	local max,qujian = 0,0

	for k = 1, table.getn(gailv_tb) do
		max = max + gailv_tb[k][2]
	end
    local r = lualib:GenRandom(1, max)

	if r <= gailv_tb[1][2] then
        lualib:Log(player_name, item_key_name, item, 0, 0, "����ʧ��", "ϵͳ")
        return "����ʧ�ܣ�"
	end

    for _, v in pairs(gailv_tb) do
		qujian = qujian + v[2]
        if r <= qujian then
            h_type = v[1]
			if not lualib:Item_Destroy(player, item, "����ɾ����Ʒ", item_key_name) then
				return "�۳�����ʧ��"
			end

			local first_free_slot = lualib:FindFirstBagFreeSlot(player)
			if first_free_slot <= 0 then
				return "��������"
			end
			
			local result = lualib:GiveOneItem(player, dst_key_name, 1, "", "")
			if cl_isbind == true or is_bind == true then
				lualib:Item_SetBind(player, result, true)
				if result == "" then
					return "����������Ʒʧ��"
				end
			else
				lualib:Item_SetBind(player, result, false)
				if result == "" then
					return "����������Ʒʧ��"
				end
			end

			local dst_item = lualib:Item_GetBySite(player, first_free_slot)
			if dst_item == "" then
				return "��ȡ��Ӧ������Ʒʧ��"
			end

			local dst_item_name = lualib:Item_GetName(player, dst_item)

			-- ��ʼ�����б���
			set_horse_type(player, dst_item, h_type)
			set_horse_level(player, dst_item, 1)
			set_horse_cur_exp(player, dst_item, 0)
			local new_max_exp = horse_level_up_t[h_type][1][1]
			set_horse_max_exp(player, dst_item, new_max_exp)

			local att1_t =
			{
				--��һ�������ƶ��ٶȱ�
				--���� ����
				{5, 10},
				{10, 15},
				{15, 20},
				{20, 25},
				{25, 35},
			}

			--role_move_speed_pct
			local att_name = 109
			local att_value = lualib:GenRandom(att1_t[h_type][1], att1_t[h_type][2])
			lualib:Equip_SetExtProp(player, dst_item, 0, att_name, att_value)

			lualib:Item_NotifyUpdate(player, dst_item)

			local display_name_t =
			{
				"��",
				"��",
				"��",
				"��",
				"��",
			}

			local msg = "������: "..dst_item_name.."("..display_name_t[h_type]..")"
			lualib:SysMsg_SendWarnMsg(player, msg)

			local s = "["..player_name.."]".."ʹ�ÿ���ӡ�õ���"..dst_item_name..display_name_t[h_type].."����"
			if h_type >= 3 then
				lualib:SysMsg_SendCenterMsg(1, s, "")
			else
				lualib:SysMsg_SendPromptMsg(player, s)
			end
			local newSite = tostring(lualib:Item_GetSite(player, result))
			lualib:ShowFormWithContent(player, "����ɹ���", newSite)
			lualib:Log(lualib:KeyName(player), item_key_name,
				item, 0, 0, "����ɹ�", "ϵͳ")

			lualib:OnGloryTrigger(player, lua_glory_trigger_horse_kaiguang, item, h_type, "" ,"")
			if lualib:HasQuest(player, 4037) then lualib:SetInt(player, "4037", 1) end--����ɹ��󣬼���Ƿ��������4037���ǣ��������4037����Ϊ1
			 return ""
        end
    end



    return ""
end

--item_site: δ������Ʒ���ڸ���  material_site: �����������ڸ���
function main(player, item_site, material_site)
    local item = lualib:Item_GetBySite(player, tonumber(item_site))
    local material = lualib:Item_GetBySite(player, tonumber(material_site))
    if lualib:Item_GetKeyName(player, material) ~= "����ӡ" then
        return "��Ҫ��ȷ�Ĳ���"
    end

    return process_one(player, item, material)
end



---�ѿ����������¿���
function process_one2(player, item, material)
	laopinji = lualib:Item_GetCustomVarInt(player, item, "h_type")
	laolevel = lualib:Item_GetCustomVarInt(player, item, "h_level")
	
    if lualib:BagFree(player, true, false, false) <= 0 then
        return "��������"
    end

    local horse_t =
    {
        ["������"] = "������", 
        ["������"] = "������", 
        ["���Ы"] = "���Ы", 
        ["������"] = "������", 
        ["ѩ������"] = "ѩ������", 
        ["������"] = "������", 
        ["����ħʨ"] = "����ħʨ", 
        ["������"] = "������", 
        ["½����"] = "½����", 
        ["�������"] = "�������", 
        ["��ӥ"] = "��ӥ", 
        ["ʨ��"] = "ʨ��", 
        ["�����"] = "�����", 
        ["������"] = "������", 
        ["����"] = "����", 
        ["������"] = "������", 
        ["����"] = "����", 
        ["�����"] = "�����", 
        ["������"] = "������", 
        ["��"] = "��", 
        ["����"] = "����", 
        ["��������"] = "��������", 
        ["����"] = "����", 
        ["��Ѫ����"] = "��Ѫ����", 
        ["������"] = "������", 
        ["��ڤ��"] = "��ڤ��", 
        ["��ɷͫ��"] = "��ɷͫ��", 
        ["�����"] = "�����", 
        ["��Ӱ"] = "��Ӱ", 
        ["����"] = "����", 
    }

    local is_bind = lualib:Item_IsBind(player, item)
    local item_name = lualib:Item_GetName(player, item)
    local item_key_name = lualib:Item_GetKeyName(player, item)
    local dst_key_name = horse_t[item_key_name]
	local cl_isbind = lualib:Item_IsBind(player, material)

    --��Ӧ����keyname
    if dst_key_name == nil then
        return "["..item_name.."]��Ӧ������Ʒ������"
    end

    local is_gold_bind = false
    local gold_cost = 100000
    if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
        return "��Ҳ���"
    end

    local material_cost = 1
    local material_amount = lualib:Item_GetAmount(player, material)
    if material_amount < material_cost then
        return "����ӡ��������"
    end

    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "���￪��", "�ǰ�") then
        return "�۽��ʧ��"
    end

    lualib:Item_SetAmount(player, material, material_amount - material_cost)
    local player_name = lualib:Name(player)

    --������ʣ���ʧ�ܣ�1000������ͨ��7527����ϡ�У�1000������Ʒ��333�������100����������40��

	local gailv_tb =
					{
					{0, 1000},  --����ʧ��Ȩ��
					{1, 4650},  --��
					{2, 2320},	--��
					{3, 1160},	--��
					{4, 580},	--��
					{5, 290}	--��
					}

	local max,qujian = 0,0

	for k = 1, table.getn(gailv_tb) do
		max = max + gailv_tb[k][2]
	end
    local r = lualib:GenRandom(1, max)

	if r <= gailv_tb[1][2] then
        lualib:Log(player_name, item_key_name, item, 0, 0, "����ʧ��", "ϵͳ")
        return "����ʧ�ܣ�"
	end

    for _, v in pairs(gailv_tb) do
		qujian = qujian + v[2]
        if r <= qujian then
            h_type = v[1]
--[[			if laopinji > h_type then
				h_type = laopinji
			end]]
			if not lualib:Item_Destroy(player, item, "����ɾ����Ʒ", item_key_name) then
				return "�۳�����ʧ��"
			end

			local first_free_slot = lualib:FindFirstBagFreeSlot(player)
			if first_free_slot <= 0 then
				return "��������"
			end

			local result = lualib:GiveOneItem(player, dst_key_name, 1, "", "")
			if cl_isbind == true or is_bind == true then
				lualib:Item_SetBind(player, result, true)
				if result == "" then
					return "����������Ʒʧ��"
				end
			else
				lualib:Item_SetBind(player, result, false)
				if result == "" then
					return "����������Ʒʧ��"
				end
			end

			local dst_item = lualib:Item_GetBySite(player, first_free_slot)
			if dst_item == "" then
				return "��ȡ��Ӧ������Ʒʧ��"
			end

			local dst_item_name = lualib:Item_GetName(player, dst_item)

			-- ��ʼ�����б���
			set_horse_type(player, dst_item, h_type)
			set_horse_level(player, dst_item, 1)
			set_horse_cur_exp(player, dst_item, 0)
			local new_max_exp = horse_level_up_t[h_type][1][1]
			set_horse_max_exp(player, dst_item, new_max_exp)

			local att1_t =
			{
				--��һ�������ƶ��ٶȱ�
				--���� ����
				{5, 10},
				{10, 15},
				{15, 20},
				{20, 25},
				{25, 35},
			}

			--role_move_speed_pct
			local att_name = 109
			local att_value = lualib:GenRandom(att1_t[h_type][1], att1_t[h_type][2])
			lualib:Equip_SetExtProp(player, dst_item, 0, att_name, att_value)

			lualib:Item_NotifyUpdate(player, dst_item)

			local display_name_t =
			{
				"��",
				"��",
				"��",
				"��",
				"��",
			}

			local msg = "������: "..dst_item_name.."("..display_name_t[h_type]..")"
			lualib:SysMsg_SendWarnMsg(player, msg)

			local s = "["..player_name.."]".."ʹ�ÿ���ӡ�õ���"..dst_item_name..display_name_t[h_type].."����"
			if h_type >= 3 then
				lualib:SysMsg_SendCenterMsg(1, s, "")
			else
				lualib:SysMsg_SendPromptMsg(player, s)
			end
			
			local newSite = tostring(lualib:Item_GetSite(player, result))
			lualib:ShowFormWithContent(player, "����ɹ���", newSite)
			
			lualib:Log(lualib:KeyName(player), item_key_name,
				item, 0, 0, "����ɹ�", "ϵͳ")
			
			lualib:OnGloryTrigger(player, lua_glory_trigger_horse_kaiguang, item, h_type, "" ,"")
			if lualib:HasQuest(player, 4037) then lualib:SetInt(player, "4037", 1) end--����ɹ��󣬼���Ƿ��������4037���ǣ��������4037����Ϊ1
			 return ""
        end
    end



    return ""
end

--item_site: δ������Ʒ���ڸ���  material_site: �����������ڸ���
function main2(player, item_site, material_site)
    local item = lualib:Item_GetBySite(player, tonumber(item_site))
    local material = lualib:Item_GetBySite(player, tonumber(material_site))
    if lualib:Item_GetKeyName(player, material) ~= "����ӡ" then
        return "��Ҫ��ȷ�Ĳ���"
    end

    return process_one2(player, item, material)
end



