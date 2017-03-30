--[[
�Զ�������б�
cur_exp:                    ��ǰexp
��������:                   int

max_exp:                    exp����
��������:                   int

in_pct:                     ���뱶��
��������:                   int

out_pct:                    ȡ������
��������:                   int

slz_amount:                 ����������
��������:                   int
--]]

--��ǰexp
function get_item_cur_exp(player, item)
    local cur_exp = lualib:Item_GetCustomVarInt(player, item, "cur_exp")
    return cur_exp
end

--���õ�ǰexp
function set_item_cur_exp(player, item, cur_exp)
    lualib:Item_SetCustomVarInt(player, item, "cur_exp", cur_exp)
    lualib:Item_NotifyCustomParam(player, item, "cur_exp")
end

--��ǰexp����
function get_item_max_exp(player, item)
    local max_exp = lualib:Item_GetCustomVarInt(player, item, "max_exp")
    return max_exp
end

--����exp����
function set_item_max_exp(player, item, max_exp)
    lualib:Item_SetCustomVarInt(player, item, "max_exp", max_exp)
    lualib:Item_NotifyCustomParam(player, item, "max_exp")
end

--in_pct
function get_item_in_pct(player, item)
    local in_pct = lualib:Item_GetCustomVarInt(player, item, "in_pct")
    return in_pct
end

--���õ�ǰin_pct
function set_item_in_pct(player, item, in_pct)
    lualib:Item_SetCustomVarInt(player, item, "in_pct", in_pct)
    lualib:Item_NotifyCustomParam(player, item, "in_pct")
end

--out_pct
function get_item_out_pct(player, item)
    local out_pct = lualib:Item_GetCustomVarInt(player, item, "out_pct")
    return out_pct
end

--����out_pct
function set_item_out_pct(player, item, out_pct)
    lualib:Item_SetCustomVarInt(player, item, "out_pct", out_pct)
    lualib:Item_NotifyCustomParam(player, item, "out_pct")
end

--slz_amount
function get_item_slz_amount(player, item)
    local slz_amount = lualib:Item_GetCustomVarInt(player, item, "slz_amount")
    return slz_amount
end

--����slz_amount
function set_item_slz_amount(player, item, slz_amount)
    lualib:Item_SetCustomVarInt(player, item, "slz_amount", slz_amount)
    lualib:Item_NotifyCustomParam(player, item, "slz_amount")
end
------------------------------------------------------------------------------
------------------------------------------------------------------------------
--�������Ӵ���
function process_item_add_exp(player, exp_addtion)
--[[
����	        �洢����	���뱶��	ȡ������	ʹ����������������
������(С)	    80000	    200	        200	        2
������(��)	    225000	    300	        200	        4
������(��)	    600000	    400	        200	        8
����������	    1325000	    500	        200	        14
--]]

    local t =
    {
    ["������(С)"] = {200000,     100, 100, 1},
    ["������(��)"] = {600000,     100, 100, 2},
    ["������(��)"] = {1600000,    100, 100, 4},
    ["����������"] = {4500000,    100, 100, 8},
    ["�񼶾�����"] = {14000000,   100, 100, 16},
    ["���������(С)"] = {200000, 100, 100, 0},
    ["���������(��)"] = {400000, 100, 100, 0},
    ["���������(��)"] = {800000, 100, 100, 0},
    }
    
    local keys = ""
    for k, _ in pairs(t) do
        keys = keys..k.."#"
    end
    
    local items = lualib:GetItemsByKeys(player, keys, false, true, false, false)

    local select_item = ""
    local tmp_cur_exp_max = 0
	if items ~= nil then
		for k, v in pairs(items) do
			local key = lualib:ItemKeyName(player, v)  
            
            if get_item_max_exp(player, v) ~= t[key][1] then
				set_item_max_exp(player, v, t[key][1])
			end
            
			if get_item_max_exp(player, v) == 0 then
				set_item_cur_exp(player, v, 0)
				set_item_max_exp(player, v, t[key][1])
				set_item_in_pct(player, v, t[key][2])
				set_item_out_pct(player, v, t[key][3])
				set_item_slz_amount(player, v, t[key][4])
			end
			
			local cur_exp = get_item_cur_exp(player, v)
			local max_exp = get_item_max_exp(player, v)
			if cur_exp ~= max_exp then
				if cur_exp >= tmp_cur_exp_max then
					tmp_cur_exp_max = cur_exp
					select_item = v
				end
			end
			
		end
	end
    if select_item == "" then
        return
    end
    
    local sel_item_key_name = lualib:ItemKeyName(player, select_item)
    local sel_item_cur_exp  = get_item_cur_exp(player, select_item)
    local sel_item_max_exp  = t[sel_item_key_name][1]
    local sel_item_in_pct   = t[sel_item_key_name][2]
    
    local ref_exp           = math.floor(exp_addtion * sel_item_in_pct / 100)
    
    sel_item_cur_exp        = sel_item_cur_exp + ref_exp
    if sel_item_cur_exp > sel_item_max_exp then
        sel_item_cur_exp = sel_item_max_exp
    end
    
    set_item_cur_exp(player, select_item, sel_item_cur_exp)
    
    --- ���Դ���
    lualib:SysMsg_SendTipsMsg(player, "��Ʒ:"..sel_item_key_name.." ��þ���: "..ref_exp)
end
