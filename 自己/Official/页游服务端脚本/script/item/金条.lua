local jintiao = {"金砖小", "金砖中", "金砖大","超级金砖"}
local gold_value = {800000,2000000,3000000,100000000}
local gold = 1000000000

DatIntTbl = {
				[0]	=	20	,
				[1]	=	30	,
				[2]	=	50	,
				[3]	=	70	,
				[4]	=	100	,
				[5]	=	150	,
				[6]	=	200	,
				[7]	=	300	,
				[8]	=	400	,
				[9]	=	500	,
				[10] =	600	,
}

function main(player_guid, item_guid)
	local keyname = lualib:KeyName(item_guid)
	local vip_lv = lualib:GetVipLevel(player_guid)
	local icounts = lualib:GetDayInt(player_guid,"goldzdayints")

	if lualib:Player_IsGoldEnough(player_guid, gold, true) == true then
		lualib:SysCenterMsg( 0 , "超过系统限制，最高只能拥有1000000000绑定金币!" , player_guid ) 
        return false
	end
	
	if icounts >= DatIntTbl[vip_lv] then
		lualib:SysCenterMsg( 0 , "今天使用金砖次数达到上限" , player_guid )
		return false
	else
		local icounts = icounts + 1
		lualib:SetDayInt( player_guid , "goldzdayints" , icounts )

		for i=1, #jintiao do
			if keyname == jintiao[i] then
				if lualib:DelItem( player_guid , keyname , 1 , 2 , "扣道具：金条" , "扣道具：金条" ) == false then
					lualib:NPCTalk( player_guid , "扣除道具失败" )
					return false
				end
				if lualib:Player_AddGold(player_guid, gold_value[i], true, "加金币：使用金条道具", player_guid) == false then
					return false
				else
					lualib:SysCenterMsg( 0 , "使用"..lualib:Guid2Name(item_guid).."成功,今日已使用"..lualib:GetDayInt(player_guid,"goldzdayints").."次，最多可以使用"..DatIntTbl[vip_lv].."次" , player_guid )
					return true
				end
			end
		end
		return true
	end

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
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 0)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 0)
		end
	else	
		return
	end
end