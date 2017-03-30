local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/װ���ϳ�2")
require("system/serializer")
require("system/refine")
require("form/����ת�Ʊ�")

function zhuangbei_hecheng(player, specie, sub_specie, param)
    local t = { "��", "��", "��", "��" }
    local key = t[tonumber(sub_specie)]
    if tonumber(specie) == 1 then
        local content = serialize(wuqi_table[key])
        lualib:ShowFormWithContent(player, "װ���ϳ����ݱ�", param..content)
    elseif tonumber(specie) == 2 then
        local content = serialize(yifu_table[key])
        lualib:ShowFormWithContent(player, "װ���ϳ����ݱ�", param..content)
    end
    
	return ""
end

function querenhecheng(player, specie, sub_specie, focus_item, item_pos)
    if specie ~= "1" and specie ~= "2" then return "" end
    
    if tonumber(sub_specie) < 1 or tonumber(sub_specie) > 4 then return "" end
    --t�洢������(�·�)�´�Ʒ��(�������)������װ��table
    local keys = { "��", "��", "��", "��" }
    local t = {}
    if specie == "1" then
        t = wuqi_table[keys[tonumber(sub_specie)]]
    else
        t = yifu_table[keys[tonumber(sub_specie)]]
    end
    
    --t1�Ǹ���Ŀ��װ��������������ȫ�����е�һ��
    local t1 = {}
    for k, v in pairs(t) do
        if v[4] == focus_item then
            t1 = v
        break end
    end
    
    if nil == t1 then return "����ѡ��Ҫ�ϳɵ�װ����" end
    
    --����Ҫ�Ĳ���ת�Ƶ�t2����
    local t2 = {}
    for i =5, #t1 do
        table.insert(t2, t1[i])
    end
    
    --t3�洢�ͻ��˷�������Ʒ���ڰ���λ��
    local t3 = deserialize(item_pos)
    if #t3 ~= #t2 then return "" end
    
    --t4�洢����t3��ȡ����item��guid
    --t5�洢����t4��ȡ����item��KeyName
    --t6�洢����t3��ȡ����item�İ�����
    local t4 = {}
    local t5 = {}
    local t6 = {}
    local t7 = {}
    for i = 1, #t3 do
        t4[i] = lualib:Player_GetItemGuid(player, t3[i])
        t5[i] = lualib:KeyName(t4[i])
        t6[i] = lualib:Item_IsBind(player, t4[i])
        t7[i] = lualib:Equip_GetRefineLevel(player, t4[i])
    end
    
    --�ж�������ȼ�
    local max_refine_level = 0
    local basic_item_guid = ""
    for i = 1, #t7 do
        if max_refine_level <= t7[i] then
            max_refine_level = t7[i]
        end
    end
    

    
    --�ҵ�������ȼ�����Ʒguid�Լ����������Լ���Ʒ���Զ������
    for i = 1, #t7 do
        if t7[i] == max_refine_level then basic_item_guid = t4[i] break end
    end
    local refine_att_table = lualib:Equip_GetRefineProp(player, basic_item_guid)
    local randAtt_table = {}
    for i = 1, #randAtt do
        randAtt_table[i] = lualib:GetInt(basic_item_guid, randAtt[i][1])
    end
    local att_name = 0
    local att_value = 0
    for k, v in pairs(refine_att_table) do
        att_name = k
        att_value = v
    end
    
    
    --�жϲ����Ƿ��
    for i = 1, #t6 do
        if t6[i] == true then return "��װ�����ɺϳɣ�" end
    end
    
    --�ж���Ʒ�����������ĵ���(���Ԫ����)�Ƿ���table��һ��
    for i = 1, #t2 do
        if t2[i] ~= t5[i] then return "������Ʒ����ȷ��" end
    end
    if lualib:Player_IsGoldEnough(player, t1[2], false) == false then return "��Ҳ��㣡" end
    if lualib:Player_IsIngotEnough(player, t1[3], false) == false then return "Ԫ�����㣡" end


    --ɾ���������
    for i = 1, #t4 do
        if lualib:Item_Destroy(player, t4[i], "װ���ϳ�", "װ���ϳ�") == false then
            return "ɾ����Ʒʧ�ܣ�"
        end
    end
    lualib:Player_SubGold(player, t1[2], false, "װ���ϳɷǰ���", "װ���ϳ�")
    lualib:Player_SubIngot(player, t1[3], false, "װ���ϳɷǰ���", "װ���ϳ�")

    
    --����Ʒ
    
    result_item = lualib:AddSingleItem(player, t1[4], 1, 0, "װ���ϳ�", "װ���ϳ�")
    local item_subtype = lualib:Item_GetSubType(player, result_item)
    local att_name_table = refine_valid_item_att[item_subtype]
    --����װ���ľ����ȼ��;�������
    if not lualib:Equip_SetRefineLevel(player, result_item, max_refine_level) then return "���þ����ȼ�ʧ�ܣ�" end
    if not lualib:Equip_SetRefineProp(player, result_item, att_name, att_value) then return "���þ�������ʧ�ܣ�" end
    for i = 1, #randAtt do
		lualib:SetInt(result_item, randAtt[i][1], randAtt_table[i])
	end
    lualib:Item_NotifyUpdate(player, result_item)
    return "[װ���ϳɳɹ���]"
end
