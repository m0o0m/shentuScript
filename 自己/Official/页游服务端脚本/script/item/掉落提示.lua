--[[
function main(player, item)                   
	local item_type = lualib:Item_GetType(player,item) 
	if item_type == 1 then
		local rein_level = lualib:GetInt(player, "reinLevel")
		local item_rein = lualib:GetInt(item,"item_rein")
		lualib:SysPromptMsg(player, "rein_level="..rein_level..";item_rein="..item_rein)
		if rein_level < item_rein then
			lualib:SysMsg_SendBottomColor(player, "转生等级不足,物品使用失败", 7, 11) 
			return false
		else
			return true
		end
	end	
end
--]]
function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	--lualib:AddTrigger("" , lua_trigger_pre_item_pickup , "on_pre_item_pickup")
	
	--lualib:AddTrigger("" , lua_trigger_item_pickup , "on_pre_item_pickup")
  --  lualib:AddTrigger(map, lua_trigger_item_pickup, "on_trigger_item_pickup")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_role = lualib:ItemRole(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	local host = lualib:ItemDropHost(item)
	local host_name = lualib:Name(host)
	local Item_UseLevel = lualib:Item_GetLevel(item)
	local keyname = lualib:KeyName(item)
	if lualib:Monster_IsMonster(host) and Item_UseLevel >= 70 then
		if lualib:Player_IsPlayer(item_role) then 
			lualib:SetStr(item_role, "掉落"..item,host_name.."") 
			--[[local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
			local strDataBase = {}
			if treasureTxt ~= "" then
				strDataBase = json.decode(treasureTxt)
			end--]]
			--lualib:SysPromptMsg(item_role,item.." host "..host.." host_name "..host_name)
			--local s1 = "#COLORCOLOR_BLUE#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#在#COLOREND##COLORCOLOR_BLUE#"..item_map_name.."#COLOREND##COLORCOLOR_YELLOW#击杀#COLOREND##COLORCOLOR_BLUE#"..host_name.."#COLOREND##COLORCOLOR_YELLOW#掉落#COLOREND##COLORCOLOR_RED# #ITEMLINK<STR:"..item_name..",OWERGUID:"..item_role..",ITEMGUID:"..item..">##COLOREND#"
			--local s1 = "#COLORCOLOR_BLUE#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#击杀#COLOREND##COLORCOLOR_BLUE#"..host_name.."#COLOREND##COLORCOLOR_YELLOW#掉落#COLOREND##COLORCOLOR_RED##ITEMLINK<STR:"..item_role..",OWERGUID:"..item_name..",ITEMGUID:"..item..">##COLOREND#"
			--lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
			
			local s1 = "#COLORCOLOR_BLUE#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#击杀#COLOREND##COLORCOLOR_BLUE#"..host_name.."#COLOREND##COLORCOLOR_YELLOW#掉落#COLOREND##COLORCOLOR_RED##ITEMLINK<STR:"..item_name..",ITEMGUID:"..item..",ITEMKEYNAME:"..keyname..">##COLOREND#"
			lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		end
	end
end


function on_item_pickup(item)
	return ""
end

function on_pre_item_pickup(player, item, item_id, item_key)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
--	local item_role = lualib:ItemRole(item)
	local item_role = player
	local player_name = lualib:Name(item_role)
	local Item_UseLevel = lualib:Item_GetLevel(item)
--[[	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【#COLORCOLOR_GREENG#"..item_name.."#COLOREND#】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 0)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_RED#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		end
	else	
		
	end--]]

	local host = lualib:ItemDropHost(item)
	local host_name = lualib:Name(host)
	if lualib:Monster_IsMonster(host) and Item_UseLevel >= 70 then
		if lualib:Player_IsPlayer(item_role) then 
			host_name = lualib:GetStr(item_role, "掉落"..item)
			if host_name ~= "" then 
				--lualib:SetSystemColor(7,"RED")
				--local s1 = "#COLORCOLOR_BLUE#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#在#COLOREND##COLORCOLOR_BLUE#"..item_map_name.."#COLOREND##COLORCOLOR_YELLOW#击杀#COLOREND##COLORCOLOR_BLUE#"..host_name.."#COLOREND##COLORCOLOR_YELLOW#掉落#COLOREND##COLORCOLOR_RED# #ITEMLINK<STR:"..item_name..",OWERGUID:"..item_role..",ITEMGUID:"..item..">##COLOREND#"
				local keyname = lualib:KeyName(item)
				--local s1 = "#COLORCOLOR_BLUE#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#击杀#COLOREND##COLORCOLOR_BLUE#"..host_name.."#COLOREND##COLORCOLOR_YELLOW#掉落#COLOREND##COLORCOLOR_RED##ITEMLINK<STR:"..item_name..",OWERGUID:"..item_role..",ITEMGUID:"..item..",ITEMKEYNAME:"..keyname..">##COLOREND#"
				--lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
			end
		end
	end
	
	return true

end