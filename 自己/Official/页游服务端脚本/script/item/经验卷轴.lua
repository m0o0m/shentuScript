local hour = 3600
local twoh = hour * 2
local fourh = hour * 4
local eighth = hour * 8
local twelveh = hour * 12

local o_buff_t = 
{
    ["双倍经验4小时"] = { "双倍经验", fourh } ,
	["双倍经验8小时"] = { "双倍经验", eighth } ,
	["双倍经验12小时"] = { "双倍经验", twelveh } , 
	["三倍经验8小时"] = { "三倍经验", eighth } ,
	["四倍经验2小时"] = { "四倍经验", twoh } ,
    ["双倍经验4小时绑"] = { "双倍经验", fourh } ,	
	["双倍经验8小时绑"] = { "双倍经验", eighth } ,	
	["三倍经验8小时绑"] = { "三倍经验", eighth } ,
	["四倍经验8小时绑"] = { "四倍经验", eighth } ,
	["五倍经验8小时绑"] = { "五倍经验", eighth } ,	
}

function main(player, item)
	local keyname = lualib:Item_GetKeyName(player, item)
	if o_buff_t[keyname] == "" then
		lualib:SysMsg_SendWarnMsg( player , "道具与脚本不匹配！" )
		return false
	end	
	
	
    lualib:AddBuff( player , o_buff_t[keyname][1] , o_buff_t[keyname][2] )
	
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