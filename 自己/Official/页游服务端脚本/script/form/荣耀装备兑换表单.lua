local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/��ҫװ���һ�")
require("system/serializer")


function rongyaoduihuan(player, ye, param)
    local keys = { "սʿ", "��ʦ", "��ʿ"}
    local key = keys[tonumber(ye)]
    local content = serialize(rongyao_item[key])
    lualib:ShowFormWithContent(player, "��ҫװ���һ����ݱ�", param..content)
    return ""
end


function querenduihuan(player, ye, focus_item, item_pos)
    if tonumber(ye) < 1 or tonumber(ye) > 3 then 
        return "��Ʒ���ʹ���" 
    end
    local keys = { "սʿ", "��ʦ", "��ʿ"}
    local item_table = rongyao_item[keys[tonumber(ye)]]
    --�ϳ�װ���Լ�����װ��table
    local focus_item_table = {}
    for k, v in pairs(item_table) do
        if v[4] == focus_item then
            focus_item_table = v
        break end
    end
    if focus_item_table == nil then
        return "����ѡ��Ҫ�һ���װ����" 
    end
    --����װ��table
    local require_item_table = {}
    for i =5, #focus_item_table do
        table.insert(require_item_table, focus_item_table[i])
    end
    --�ͻ��˷�������Ʒλ��table
    local item_pos_table = deserialize(item_pos)
    local item_guid_tabe = {}
    local item_keyname_table = {}
    local item_count_table = {}
    
    if #item_pos_table ~= #require_item_table then
        return "������Ʒ��������ȷ��"
    end
    
    for i = 1, #item_pos_table do
        item_guid_tabe[i] = lualib:Player_GetItemGuid(player, item_pos_table[i])
        item_keyname_table[i] = lualib:KeyName(item_guid_tabe[i])
        item_count_table[i] = lualib:Item_GetAmount(player, item_guid_tabe[i])
    end
    
    
    for i = 1, #require_item_table do
        if require_item_table[i][1] ~= item_keyname_table[i] then
            return "������Ʒ����ȷ��"
        end
    end
    for i = 1, #require_item_table do
        if item_count_table[i] < require_item_table[i][2] then
            return "��Ʒ�������㣡"
        end
    end
    
    if lualib:GetInt(player, "jjc_rongyao") < focus_item_table[3] then
        return "��ҫֵ���㣡"
    end
    if lualib:Player_IsGoldEnough(player, focus_item_table[2], false) == false then
        return "��Ҳ��㣡"
    end
    
    --ɾ���������
    for i = 1, #item_guid_tabe do
        if lualib:Item_SetAmount(player, item_guid_tabe[i], lualib:Item_GetAmount(player, item_guid_tabe[i]) - require_item_table[i][2]) == false then
            return "ɾ����Ʒʧ�ܣ�"
        end
    end
    if lualib:Player_SubGold(player, focus_item_table[2], false, "װ���ϳɷǰ���", "װ���ϳ�") == false then
		return "�۳����ʧ�ܣ�"
	end
    if lualib:SetInt(player, "jjc_rongyao", lualib:GetInt(player, "jjc_rongyao") - focus_item_table[3]) == false then
		return "�۳���ҫֵʧ�ܣ�"
	end
    --��װ��
    if lualib:AddSingleItem(player, focus_item_table[4], 1, 0, "�һ���ҫװ��", player) == nil then
        return "��ӵ���ʧ�ܣ�"
    end
    return "[�һ���ҫװ���ɹ���]"
end
