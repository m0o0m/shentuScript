local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")
require("form/������")



local attTypeList = {
						["HP������(+10)"]   = {lua_role_max_hp_pct,       30000,   {8, 9, 10},  {0, 0, 10000}},
						["MP������(+10)"]   = {lua_role_max_mp_pct,       30000,   {8, 9, 10},  {0, 0, 10000}},
                        ["�﹥������(+10)"] = {lua_role_max_phy_atk_pct,  30000,   {8, 9, 10},  {0, 0, 10000}},
                        ["ħ��������(+10)"] = {lua_role_max_mag_atk_pct,  30000,   {8, 9, 10},  {0, 0, 10000}},
                        ["����������(+10)"] = {lua_role_max_tao_atk_pct,  30000,   {8, 9, 10},  {0, 0, 10000}},
                        ["���������(+10)"] = {lua_role_max_phy_def_pct,  30000,   {8, 9, 10},  {0, 0, 10000}},
                        ["ħ��������(+10)"] = {lua_role_max_mag_def_pct,  30000,   {8, 9, 10},  {0, 0, 10000}},
					}

local notItemList = {"a", "b", "c"}
					

function on_apply_on_item(player, item, target_item)
	local itemName = lualib:KeyName(item)
	local targetName = lualib:Name(target_item)
	local targetKeyName = lualib:KeyName(target_item)
	local playerName = lualib:Name(player)
	--���辫��������
	local amount_require = 1
	--װ�������ж�
	if lualib:Item_GetType(player, target_item) ~= 1 then
		lualib:SysMsg_SendWarnMsg(player, "����װ�����ܾ�����")
        return false
	else
		if lualib:Item_GetSubType(player, target_item) == 5 then
			lualib:SysMsg_SendWarnMsg(player, "������װ�����ܾ�����")
			return false
		end
	end
	
	local sub_type = lualib:Item_GetSubType(player, target_item)
    local find = false
    for _, v in pairs(refine_valid_item_att[sub_type]) do
        if v == tonumber(attTypeList[itemName][1]) then
            find = true
        end
    end

    if not find then
        lualib:SysMsg_SendWarnMsg(player, "װ������ǿ��������")
        return false
    end
	
	for i = 1, #notItemList do
		if targetKeyName == notItemList[i] then
			lualib:SysMsg_SendWarnMsg(player, "��װ�����ܾ�����")
			return false
		end
	end
	
	--�����ж�
	if not lualib:Player_IsIngotEnough(player, attTypeList[itemName][2], false) then
		lualib:SysMsg_SendWarnMsg(player, "���Ԫ������"..attTypeList[itemName][2].."���޷�ʹ�ã�")
		return false
	end
	
	local refine_level = lualib:Equip_GetRefineLevel(player, target_item)
	
    if refine_level ~= 9 then
		lualib:SysMsg_SendWarnMsg(player, "�˾�����ֻ��ʹ����+9װ���ϣ�")
        return false
	end
	
	local item_amount = lualib:Item_GetAmount(player, item)
    if item_amount < amount_require then
		lualib:SysMsg_SendWarnMsg(player, "��������������")
        return false
    end
	
	
	if not lualib:Player_SubIngot(player, attTypeList[itemName][2], false, "ʹ�þ�����", "") then
		lualib:SysMsg_SendWarnMsg(player, "�۳�Ԫ��ʧ��")
		return false
	end
	
	if not lualib:Item_SetAmount(player, item, item_amount - amount_require) then
		lualib:SysMsg_SendWarnMsg(player, "�۳�������ʧ��")
        return false
	end
	
	----��ʼ����
	local rand = math.random(1, 10000)
	local new_refine_level = 0
	
	for i = 1, #attTypeList[itemName][4] do
		if rand < attTypeList[itemName][4][i] then
			new_refine_level = attTypeList[itemName][3][i]
			break
		end
	end
	
	---��������
	for i = 1, new_refine_level do
		update_item(player, target_item, i, attTypeList[itemName][1])
	end
	lualib:SysMsg_SendCenterMsg(1, "��ҡ�"..playerName.."��ʹ��"..itemName.."��"..targetName.."������"..new_refine_level.."��", "")
	lualib:Item_NotifyUpdate(player, target_item)
	return true
end