local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/refine")
require("form/������")

function on_apply_on_item(player, item, target_item)
    --���辫��������
    local amount_require = 1
    --��ЧĿ����Ʒ����߾����ȼ�
    local level_valid_max = 5
    --��������
    local att_name = lua_role_max_mag_atk_pct
    --���ϵľ����ȼ�����[level_rnd_min, level_rnd_max]
    local level_rnd_min = 3
    local level_rnd_max = 5

    local new_refine_level = lualib:GenRandom(level_rnd_min, level_rnd_max)

    -- �ȼ�,���� ��ֵ�ԣ����ʱ��������
    local rate = {{3,5000}, {4,3000}, {5,2000}}
	local max,qujian = 0,0
	
	for k = 1, table.getn(rate) do
		max = max + rate[k][2]
	end
    local r = lualib:GenRandom(1, max)
	
    for _, v in pairs(rate) do
		qujian = qujian + v[2]
        if r <= qujian then
            new_refine_level = v[1]
            break
        end
    end

    local item_amount = lualib:Item_GetAmount(player, item)
    if item_amount < amount_require then
        return "��������������"
    end

    local item_key_name = lualib:ItemKeyName(player, item)

    local refine_level = lualib:Equip_GetRefineLevel(player, target_item)
    if refine_level > level_valid_max then
        lualib:SysMsg_SendWarnMsg(player, "�þ��������ɾ����߼�����Ʒ")
        return false
    end

    local result = refine_item(player, target_item, new_refine_level, att_name)
    if result ~= "" then
        lualib:SysMsg_SendWarnMsg(player, result)
        return false
    end

    lualib:Item_SetAmount(player, item, item_amount - amount_require)

    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, target_item),
        target_item, refine_level, new_refine_level, "�����ɹ�", item_key_name)
	mubiao_jinglianpanduan(player,new_refine_level) --Ŀ�꾫���ж�
    lualib:SysMsg_SendWarnMsg(player, "["..lualib:Name(target_item).."]�����ɹ�")

	local msgLevel = 3
	if new_refine_level >= msgLevel then
	lualib:SysMsg_SendCenterMsg(1, lualib:Name(player) .. "ʹ��" .. lualib:ItemKeyName(player, item) .. "����" .. lualib:ItemKeyName(player, target_item) .. "��" .. new_refine_level .. "��", "")
    end
return true
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
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
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "��"..item_name.."����������".."["..player_name.."]һ����Ʒ�������˳�����������"..item_map_name.."["..item_map_x..":"..item_map_y.."]��"
            local s = "��"..item_name.."��������"..item_map_name.."��["..item_map_x..":"..item_map_y.."]������"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#������#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#��["..item_map_x..":"..item_map_y.."]������"
			--lualib:SysMsg_SendCenterMsg(1, s, "")
			 --lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
