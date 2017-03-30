local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("npc/���ߺϳ�")
require("system/serializer")

function daoju_hecheng(player, ye, param)
    local t = { "�������", "������ʶ", "��������", "�ճ�����"}
    local key = t[tonumber(ye)]
    local content = serialize(item_table[key])
    lualib:ShowFormWithContent(player, "���ߺϳ����ݱ�", param..content)

	return ""
end

function querenhecheng(player, sub_specie, focus_item, item_pos)
    if tonumber(sub_specie) < 1 or tonumber(sub_specie) > 4 then return "��Ʒ���ʹ���" end
    --t�洢������(�·�)�´�Ʒ��(�������)������װ��table
    local keys = { "�������", "������ʶ", "��������", "�ճ�����"}
    local t = item_table[keys[tonumber(sub_specie)]]

    --t1�Ǹ���Ŀ��װ��������������ȫ�����е�һ��
    local t1 = {}
    for k, v in pairs(t) do
        if v[4] == focus_item then
            t1 = v
        break end
    end
    
    if nil == t1 then
        return "����ѡ��Ҫ�ϳɵ�װ����" 
    end
    
    --����Ҫ�Ĳ����Լ�����ת�Ƶ�t2����
    local t2 = {}
    for i =5, #t1 do
        table.insert(t2, t1[i])
    end
    --t3�洢�ͻ��˷�������Ʒ���ڰ���λ��
    local t3 = deserialize(item_pos)
    if #t3 ~= #t2 then return "��Ʒλ�ò���ȷ��" end
    
    
    --t4�洢����t3��ȡ����item��guid
    --t5�洢����t4��ȡ����item��KeyName
    --t6�洢����t3��ȡ����item������
    --t7�洢����t3��ȡ����item�İ�����
    local t4 = {}
    local t5 = {}
    local t6 = {}
    local t7 = {}
    for i = 1, #t3 do
        t4[i] = lualib:Player_GetItemGuid(player, t3[i])
        t5[i] = lualib:KeyName(t4[i])
        t6[i] = lualib:Item_GetAmount(player, t4[i])
        t7[i] = lualib:Item_IsBind(player, t4[i])
    end
    
    --�ж���Ʒ�����������ĵ���(���Ԫ���Լ�������)�Ƿ���table��һ��
    for i = 1, #t2 do
        if t2[i][1] ~= t5[i] then 
            return "������Ʒ����ȷ��" 
        end
    end

    for i = 1, #t2 do
        if t2[i][2] > t6[i] then return "��Ʒ�������㣡"  end
    end
    
    if lualib:Player_IsGoldEnough(player, t1[2], false) == false then return "��Ҳ��㣡" end
    if lualib:Player_IsIngotEnough(player, t1[3], false) == false then return "Ԫ�����㣡" end

    --ɾ���������
    for i = 1, #t4 do
        if lualib:Item_SetAmount(player, t4[i], lualib:Item_GetAmount(player, t4[i]) - t2[i][2]) == false then
            return "ɾ����Ʒʧ�ܣ�"
        end
    end
	
    if lualib:Player_SubGold(player, t1[2], false, "װ���ϳɷǰ���", "װ���ϳ�") == false then
		return "�۳����ʧ��"
	end
	
    if lualib:Player_SubIngot(player, t1[3], false, "װ���ϳɷǰ�Ԫ��", "װ���ϳ�") == false then
		return "�۳�Ԫ��ʧ��"
	end
	
    --����Ʒ
    for i = 1, #t7 do
        if t7[i] == true 
            then bind_type = true
            break
        else
            bind_type = false
        end
    end
    lualib:AddItem(player, t1[4], 1, bind_type, "װ���ϳ�", "װ���ϳ�")
    
    return "[���ߺϳɳɹ���]"
end