
function main(player, item)
    local msg = ""
	msg = msg.."<@key *01*合成地下城密匙>\n \n"
    msg = msg.."<@leave *01*「取消」>"
    lualib:NPCTalk(player, msg)
    return false
end

function leave(player, item)
    return ""
end

function key(player, item)
    local require_count = 10
    local require_item = "密匙残块"
    local award_item = "地下城密匙"

    local cur_count = lualib:Player_GetItemCount(player, require_item)
    if cur_count < require_count then return "道具不足，需要"..require_count.."个"..require_item.."！\n \n<@leave *01*「关闭」>" end

    if not lualib:Player_DestroyItem(player, require_item, 10, "扣物品：「兑换」地下城密匙", "") then
        return "「兑换」失败！\n \n<@leave *01「关闭」>"
    end

    if not lualib:Player_GiveSingleItem(player, award_item, 0, "给物品：「兑换」地下城密匙", "") then
        return "「兑换」失败！\n \n<@leave *01*「关闭」>"
    end

    return "地下城密匙「兑换」成功！\n \n<@key *01*继续「兑换」>"
end
