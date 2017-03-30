
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*疾风魂魄归元>\n \n"
    msg = msg.."<@leave *01*「取消」>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 10
    local require_item = "疾风魂魄"
    local award_item = "疾风(未开光)"
    local request_slots = 1

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "魂魄不足，需要"..require_count.."个"..require_item.."！\n \n<@leave *01*「关闭」>" end
    
	if lualib:Player_GetBagFree(player) < request_slots then
	    lualib:SysMsg_SendTriggerMsg(player, "背包空间不够！")
	    return "背包空间不够！"
	end
    
    if not lualib:Player_DestroyItem(player, require_item, 10, "扣物品：「合成」疾风(未开光)", "") then
        return "「合成」失败！\n \n<@leave *01「关闭」>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "给物品：「合成」疾风(未开光)", "") then
        return "「合成」失败！\n \n<@leave *01*「关闭」>"
    end

    return "疾风(未开光)「合成」成功！\n "
end
