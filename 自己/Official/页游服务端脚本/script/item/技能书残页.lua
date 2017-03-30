
award_table = {
            ["龙咆哮残页"] = "龙咆哮",
            ["裂地斩残页"] = "裂地斩",
            ["引经魔轰残页"] = "引经魔轰",
            ["陨星灭世残页"] = "陨星灭世",
            ["太极玄清术残页"] = "太极玄清术",
            ["通幽之术残页"] = "通幽之术"
            }
            

function main(player, item)
    local require_item = lualib:KeyName(item)
    local msg = "5张"..require_item.."可以合成"..award_table[require_item].."。\n"
	msg = msg.."<@jns#"..require_item.." *01*合成技能书>\n \n"
    msg = msg.."<@leave *01*「取消」>"
    lualib:NPCTalk(player, msg)
    return true
end

function leave(player)
    return ""
end

function jns(player, item)
    local item_count = lualib:ItemCountByKey(player, item, true, false, false, 2)
    local require_count = 5
    local award_item = award_table[item]
    local request_slots = 1
    
    if lualib:Player_GetBagFree(player) < request_slots then 
        lualib:SysMsg_SendTriggerMsg(player, "背包空间不足！")
        return "背包空间不足！"
    end
    
    if item_count >= 5  then
        if not lualib:DelItem(player, item, 5, 2, "合成技能书删除残页", player) then
			return "扣除道具失败"
		end
		
        lualib:AddItem(player, award_table[item], 1, false, "使用残页合成技能书", "")
        return "合成"..award_item.."成功。"
    else
        return"道具不足，需要5个"..item.."！\n \n<@leave *01*「关闭」>" 
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
