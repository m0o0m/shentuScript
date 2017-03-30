function main(player, item)
	lualib:SysMsg_SendInputDlg(player, 10, "请输入所要探测的玩家昵称", 45, 14, "EnterHot", "")
	return true
end

function EnterHot(id,player,toName)
	--print(toName)
	local target_Guid = lualib:Name2Guid(toName)
	--print(player)
	if target_Guid == "" then 
		lualib:SysMsg_SendTriggerMsg(player, "目标玩家不在线!")
		return false
	end
	local t_map = lualib:Name(lualib:MapGuid(target_Guid))
	local t_x = lualib:X(target_Guid)
	local t_y = lualib:Y(target_Guid)
	--print(t_map,t_x,t_y)
	
	lualib:SysMsg_SendTriggerMsg(player, "对方所在位置【"..t_map.."："..t_x..","..t_y.."】")
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