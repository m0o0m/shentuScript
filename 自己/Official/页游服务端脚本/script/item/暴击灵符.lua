local bj = {
				["�������1��"] = 1,
				["�������2��"] = 2,
				["�������3��"] = 3,
				["�������4��"] = 4,
				["�������5��"] = 5,
				["�������6��"] = 6,
				["�������7��"] = 7,
				["�������8��"] = 8,
				["�������9��"] = 9,
				["�������10��"] = 10,
			}
			
function on_apply_on_item(player, item, target_item)
	local itemName = lualib:KeyName(item)
	local target_itemType, target_itemSubType = lualib:Item_GetType(player, target_item), lualib:Item_GetSubType(player, target_item)
	
    local item_amount = lualib:Item_GetAmount(player, item)
    if item_amount < 1 then
		lualib:SysMsg_SendWarnMsg(player, "��������������")
        return false
    end
    
    
	if target_itemType ~= 1 or target_itemSubType ~= 1 then
		lualib:SysMsg_SendWarnMsg(player, "ֻ���������ܹ�ʹ�ñ��������")
		return false
	end
	
	local index = 0
	local equipAtt = {}
	for i = 1, 3 do
		local identify = lualib:Equip_GetIdentifyProp(player, target_item, i - 1)
		equipAtt[i] = identify
		if identify[0] == 49 then
			if bj[itemName] <= identify[1] then
				lualib:SysMsg_SendWarnMsg(player, "���װ�����и��߻�����ͬ�ı������ԣ�����ʹ�ã�")
				return false
			else
				equipAtt[i][1] = bj[itemName]
				index = i
			end
		end
	end
    lualib:Item_SetAmount(player, item, item_amount - 1)
	if index > 0 then
		lualib:Equip_SetIdentifyProp(player, target_item, equipAtt[1][0], equipAtt[1][1], equipAtt[2][0], equipAtt[2][1], equipAtt[3][0], equipAtt[3][1])
	else
		lualib:Equip_SetIdentifyProp(player, target_item, 49, bj[itemName], equipAtt[2][0], equipAtt[2][1], equipAtt[3][0], equipAtt[3][1])
	end
    lualib:Item_NotifyUpdate(player, target_item)
	lualib:SysMsg_SendWarnMsg(player, "�������ʹ�óɹ���")
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