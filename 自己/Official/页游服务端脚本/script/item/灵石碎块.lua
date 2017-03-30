
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*合成灵石>\n \n"
    msg = msg.."<@leave *01*「取消」>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 20
    local require_item = "灵石碎块"
    local award_item = "灵石"
    local request_slots = 1

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "道具不足，需要"..require_count.."个"..require_item.."！\n \n<@leave *01*「关闭」>" end
    
	if lualib:Player_GetBagFree(player) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player, "背包空间不够！")
	    return "背包空间不够！"
	end
    
    if not lualib:Player_DestroyItem(player, require_item, 20, "扣物品：「合成」灵石", "") then
        return "「合成」失败！\n \n<@leave *01「关闭」>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "给物品：「合成」灵石", "") then
        return "「合成」失败！\n \n<@leave *01*「关闭」>"
    end

    return "灵石「合成」成功！\n \n<@key *01*继续「合成」>"
end
