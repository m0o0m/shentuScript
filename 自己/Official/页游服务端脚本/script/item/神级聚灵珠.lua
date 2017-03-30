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
    lualib:SetInt(item, "max_exp", 14000000)
    lualib:SetInt(item, "in_pct", 100)
    lualib:SetInt(item, "out_pct", 100)
    lualib:SetInt(item, "slz_amount", 16)
    lualib:SetInt(item, "gold_cost", 100000)
	
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
end

function main(player, item) 
    local old_day_mark = lualib:GetInt(player, "exp_day_mark")
    local now_day_mark = lualib:GetAllDays(0)
    if old_day_mark ~= now_day_mark then
        lualib:SetInt(player, "exp_day_mark", now_day_mark)
        lualib:SetInt(player, "exp_count", 0)
    end
    
    local open_level = 50
    if lualib:Level(player) < open_level then
        lualib:SysMsg_SendWarnMsg(player, "��ĵȼ�����"..open_level.."���޷�������")
        return false
    end
    
    local exp_count = lualib:GetInt(player, "exp_count")
    local lv = lualib:Level(player)
    local max_exp_count = lv - lv % 10
	
	if exp_count >= max_exp_count then
		lualib:SysMsg_SendWarnMsg(player, "��ǰÿ��ֻ����ȡ"..max_exp_count.."��");
		return false
	end
	
 
    local cur_exp = lualib:GetInt(item, "cur_exp")
    local max_exp = lualib:GetInt(item, "max_exp")
    local out_pct = lualib:GetInt(item, "out_pct")
    local slz_amount = lualib:GetInt(item, "slz_amount")
    local gold_cost = 100000

   if cur_exp < max_exp then
        lualib:SysMsg_SendWarnMsg(player, "����û�д�����������ȡ");
        return false
    end

--[[    local is_gold_bind = false
    if gold_cost > 0 then
        if not lualib:Player_IsGoldEnough(player, gold_cost, is_gold_bind) then
            lualib:SysMsg_SendWarnMsg(player, "��Ҳ���"..gold_cost);
            return false
        end
    end
]]
    local item_name = lualib:Name(item)
    local exp = math.floor(max_exp * out_pct / 100)
    local total_amount_bind = lualib:ItemCountByKey(player, "������", true, false, false, 1)
    local total_amount_unbind = lualib:ItemCountByKey(player, "������", true, false, false, 0)
    local gold_cost = gold_cost * (slz_amount - total_amount_bind - total_amount_unbind)
        if gold_cost <= 0 then
            gold_cost = 0
        end
    if total_amount_unbind + total_amount_bind < slz_amount and lualib:Player_IsGoldEnough(player, gold_cost, false) == false then
        lualib:SysMsg_SendWarnMsg(player, "����������������㣬���߽�Ҳ��㣬�޷�����"..item_name)
        return false
    end
    
    if total_amount_bind >= slz_amount then
        if not lualib:DelItem(player, "������", slz_amount, 1, "��ȡ��������������", player) then
            lualib:SysMsg_SendWarnMsg(player, "�۳�������ʧ��");
            return false
        end
        
        lualib:Player_AddExp(player, exp, "��ȡ�����龭��", item_name)
        lualib:SysMsg_SendWarnMsg(player, "ʹ��"..slz_amount.."�������飬����"..item_name.."�����"..exp.."���飡")
        
        if not lualib:Item_Destroy(player, item, "��ȡ����ɾ����Ʒ", player) then
            lualib:SysMsg_SendWarnMsg(player, "�۳�����ʧ��");
            return false
        end
    elseif total_amount_unbind + total_amount_bind >= slz_amount then
        if total_amount_bind ~= 0 then
            if not lualib:DelItem(player, "������", total_amount_bind, 1, "��ȡ��������������", player) then
                lualib:SysMsg_SendWarnMsg(player, "�۳���������ʧ��");
                return false
            end
        end
        
        if not lualib:DelItem(player, "������", slz_amount - total_amount_bind, 0, "��ȡ��������������", player) then
            lualib:SysMsg_SendWarnMsg(player, "�۳��ǰ�������ʧ��");
            return false
        end
        
        
        lualib:Player_AddExp(player, exp, "��ȡ�����龭��", item_name)
        lualib:SysMsg_SendWarnMsg(player, "ʹ��"..slz_amount.."�������飬����"..item_name.."�����"..exp.."���飡")
        
        if not lualib:Item_Destroy(player, item, "��ȡ����ɾ����Ʒ", player) then
            lualib:SysMsg_SendWarnMsg(player, "�۳�����ʧ��");
            return false
        end
    else
        if total_amount_bind + total_amount_unbind ~= 0 then
            if not lualib:DelItem(player, "������", total_amount_bind + total_amount_unbind, 2, "��ȡ��������������", player) then
                lualib:SysMsg_SendWarnMsg(player, "�۳�������ʧ��");
                return false
            end
        end
        if not lualib:Player_SubGold(player, gold_cost, false, "��ȡ�����龭��", player) then
            lualib:SysMsg_SendWarnMsg(player, "�۳����ʧ��");
            return false
        end
        
        lualib:Player_AddExp(player, exp, "��ȡ�����龭��", item_name)
        if total_amount_bind + total_amount_unbind ~= 0 then
            lualib:SysMsg_SendWarnMsg(player, "ʹ��"..total_amount_bind + total_amount_unbind.."���������"..gold_cost.."��ң�����"..item_name.."�����"..exp.."���飡")
        else
            lualib:SysMsg_SendWarnMsg(player, "ʹ��"..gold_cost.."��ң�����"..item_name.."�����"..exp.."���飡")
        end
        
        if not lualib:Item_Destroy(player, item, "��ȡ����ɾ����Ʒ", player) then
            lualib:SysMsg_SendWarnMsg(player, "�۳�����ʧ��");
            return false
        end
    end
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
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "��"..item_name.."��������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end