
local golds = {}
golds[65503] = 10000	--1金币
golds[65502] = 20000	--2金币
golds[65501] = 50000	--5金币
golds[65500] = 100000	--10金币
golds[65499] = 200000	--20金币
golds[65498] = 500000	--50金币

--[[加金币]]
function main(player_guid, item_guid)
	
	local item_id = lualib:Item_GetID(player_guid, item_guid)
	if item_id == 0 then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具不存在！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具不存在！")
		return false 
	end
	
	if golds[item_id] == nil then
		lualib:SysMsg_SendTipsMsg(player_guid, "道具类型不符合！")
		lualib:SysMsg_SendWarnMsg(player_guid, "道具类型不符合！")
		return false 
	end
	
	
	local bindType = lualib:Item_IsBind(player_guid, item_guid)
	if golds[item_id] ~= nil then
        if not lualib:Player_AddGold(player_guid, golds[item_id], bindType, "加金币：使用钱袋道具", player_guid) then
			lualib:SysMsg_SendTipsMsg(player_guid, "添加金币失败！")
			lualib:SysMsg_SendWarnMsg(player_guid, "添加金币失败！")
			return false            
        end		
	lualib:SysMsg_SendTipsMsg(player_guid, "已获得"..golds[item_id].."个金币！")
	lualib:SysMsg_SendPromptMsg(player_guid, "已获得"..golds[item_id].."个金币！")
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
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
