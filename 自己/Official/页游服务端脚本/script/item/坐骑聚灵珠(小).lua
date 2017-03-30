local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/horse")


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

local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")

function on_create(item)
    lualib:SetInt(item, "cur_exp", 0)
    lualib:SetInt(item, "max_exp", 200000)
    lualib:SetInt(item, "in_pct", 100)
    lualib:SetInt(item, "out_pct", 100)
    lualib:SetInt(item, "slz_amount", 0)
    lualib:SetInt(item, "gold_cost", 100000)
	
--	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
end

function main(player, item) 
    local old_day_mark = lualib:GetInt(player, "exp_day_mark")
    local now_day_mark = lualib:GetAllDays(0)
    if old_day_mark ~= now_day_mark then
        lualib:SetInt(player, "exp_day_mark", now_day_mark)
        lualib:SetInt(player, "exp_count", 0)
    end
    
    local exp_count = lualib:GetInt(player, "exp_count")
    local max_exp_count = 10000
    if exp_count >= max_exp_count then
        lualib:SysMsg_SendWarnMsg(player, "ÿ��ֻ����ȡ"..max_exp_count.."��");
        return false
    end
 
    local cur_exp = lualib:GetInt(item, "cur_exp")
    local max_exp = lualib:GetInt(item, "max_exp")
    local out_pct = lualib:GetInt(item, "out_pct")
    local slz_amount = lualib:GetInt(item, "slz_amount")
    local gold_cost = lualib:GetInt(item, "gold_cost")

   if cur_exp < max_exp then
        lualib:SysMsg_SendWarnMsg(player, "����û�д�����������ȡ");
        return false
    end
	
	local horse = lualib:Item_GetBySite(player,  lua_site_mount)
    if horse == "" then
		lualib:SysMsg_SendTriggerMsg(player, "û��װ������")
        return false
    end
	
	if lualib:Item_GetDurability(player, horse) == 0 then
		lualib:SysMsg_SendTriggerMsg(player, "��ǰ�����Ѿ�����,����ʹ��[���ﻹ�굤]����")
        return false
    end

    if get_horse_level(player, horse) >= 50 then
		lualib:SysMsg_SendTriggerMsg(player, "��ǰ�����Ѿ��ﵽ������")
        return false
    end
	
	

    local is_gold_bind = false
    if gold_cost > 0 then
        if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
            lualib:SysMsg_SendWarnMsg(player, "��Ҳ���"..gold_cost);
            return false
        end
    end
	
    local total_amount = lualib:ItemCountByKey(player, "������", true, false, false, 2)
    if total_amount < slz_amount then
        lualib:SysMsg_SendWarnMsg(player, "��������������");
        return false
    end
    
    if not lualib:Player_SubGold(player, gold_cost, is_gold_bind, "��ȡ���������", "ϵͳ") then
        lualib:SysMsg_SendWarnMsg(player, "ϵͳ����");
        return false
    end
    
    if slz_amount > 0 then
        local item_name = lualib:Name(item)
        lualib:DelItem(player, "������", slz_amount, 2, "��ȡ��������������", item_name)
    end
	

    

    
    local exp = math.floor(max_exp * out_pct / 100 * 5)
	process_horse_add_exp(player, exp)
    if not lualib:Item_Destroy(player, item, "��ȡ����ɾ����Ʒ", lualib:KeyName(player)) then
		lualib:SysMsg_SendWarnMsg(player, "�۳�����ʧ��");
		return ""
	end
	
	--print("exp:"..exp)

    
    exp_count = exp_count + 1
    lualib:SetInt(player, "exp_count", exp_count)
    
    return true
end


function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	if item_map_x < 20000 then
		local s = "���ߡ�"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
		local s1 = "#COLORCOLOR_BROWN#��"..item_name.."��#COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]��COLORCOLOR_YELLOW#["..item_map_x..":"..item_map_y.."]��"
		lualib:SysMsg_SendCenterMsg(1, s, "")
		--lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
	else	
		return
	end
end