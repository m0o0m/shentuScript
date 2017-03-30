
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*合成中级藏宝图>\n \n"
    msg = msg.."<@leave *01*「取消」>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 5
    local require_item = "中级藏宝图碎片"
    local award_item = "中级藏宝图"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "道具不足，需要"..require_count.."个"..require_item.."！\n \n<@leave *01*「关闭」>" end

    if not lualib:Player_DestroyItem(player, require_item, 5, "扣物品：「合成」中级藏宝图", "") then
        return "「合成」失败！\n \n<@leave *01「关闭」>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "给物品：「合成」中级藏宝图", "") then
        return "「合成」失败！\n \n<@leave *01*「关闭」>"
    end

    return "「合成」成功！\n \n<@key *01*继续「合成」>"
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
