local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/identify")


local subGold = 10000
function on_apply_on_item(player, item, target_item)
    --�������������
    local amount_require = 1
    --��ЧĿ����Ʒ����߼�������
    local num_valid_max = 2
    --���ϵļ���������Ŀ������[num_rnd_min, num_rnd_max]
    local num_rnd_min = 1
    local num_rnd_max = 2

    local new_identify_num = num_rnd_min
    
    -- �ȼ�,���� ��ֵ�ԣ����ʱ��������
	--ԭ�趨����Ϊ50-60Ԫ�õ������������м���Ϊ5Ԫ���趨Ϊ15%�õ�����
    local rate = {{1,8500}, {2,1500}}
	local max,qujian = 0,0
	
	for k = 1, table.getn(rate) do
		max = max + rate[k][2]
	end
    local r = lualib:GenRandom(1, max)
	
    for _, v in pairs(rate) do
		qujian = qujian + v[2]
        if r <= qujian then
            new_identify_num = v[1]
            break
        end
    end
    
	local subType = lualib:Item_GetSubType(player, item)
	if subType == 5 then
		lualib:SysMsg_SendWarnMsg(player, "�����͵����޷����м���")
		return false
	end
	
	
    local item_amount = lualib:Item_GetAmount(player, item)
    if item_amount < amount_require then
		lualib:SysMsg_SendWarnMsg(player, "��������������")
        return false
    end

    local item_key_name = lualib:ItemKeyName(player, item)

    local identify_num = lualib:Equip_GetIdentifyNum(player, target_item)
    if identify_num > num_valid_max then
        lualib:SysMsg_SendWarnMsg(player, "�ü��������ɼ����߼�����Ʒ")
        return false
    end
	
	if not lualib:Player_IsGoldEnough(player, subGold, false) then
		lualib:SysMsg_SendWarnMsg(player, "��Ľ�Ҳ��㣡")
		return false
	end
	
	if lualib:Player_SubGold(player, subGold, false, "��������ǰ�����", "") == false then
		lualib:SysMsg_SendWarnMsg(player, "�۳����ʧ��")
		return false
	end
	
    lualib:Item_SetAmount(player, item, item_amount - amount_require)

    local result = identify_rnd(player, target_item, new_identify_num)
    if result ~= "" then
        lualib:SysMsg_SendWarnMsg(player, result)
        return false
    end
	
    lualib:Log(lualib:KeyName(player), lualib:ItemKeyName(player, target_item),
        target_item, identify_num, new_identify_num, "�����ɹ�", item_key_name)
        
    lualib:SysMsg_SendWarnMsg(player, "["..lualib:Name(target_item).."]�����ɹ�")
        
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

