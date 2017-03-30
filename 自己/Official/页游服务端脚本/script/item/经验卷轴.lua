local hour = 3600
local twoh = hour * 2
local fourh = hour * 4
local eighth = hour * 8
local twelveh = hour * 12

local o_buff_t = 
{
    ["˫������4Сʱ"] = { "˫������", fourh } ,
	["˫������8Сʱ"] = { "˫������", eighth } ,
	["˫������12Сʱ"] = { "˫������", twelveh } , 
	["��������8Сʱ"] = { "��������", eighth } ,
	["�ı�����2Сʱ"] = { "�ı�����", twoh } ,
    ["˫������4Сʱ��"] = { "˫������", fourh } ,	
	["˫������8Сʱ��"] = { "˫������", eighth } ,	
	["��������8Сʱ��"] = { "��������", eighth } ,
	["�ı�����8Сʱ��"] = { "�ı�����", eighth } ,
	["�屶����8Сʱ��"] = { "�屶����", eighth } ,	
}

function main(player, item)
	local keyname = lualib:Item_GetKeyName(player, item)
	if o_buff_t[keyname] == "" then
		lualib:SysMsg_SendWarnMsg( player , "������ű���ƥ�䣡" )
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