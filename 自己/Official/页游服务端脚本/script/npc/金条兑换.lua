
local gold_value = 1000000
local gold__ = 2000
local gold_ = "金条"
function main(npc_guid, player_guid)
	local msg = "我可以将金币「兑换」成金条，或将金条「兑换」成金币（「兑换」金条需要扣除2000金币）。\n \n"
	msg = msg.."<@ExchangeGold *01*将金币「兑换」成金条>\n"
	msg = msg.."<@ExchangeGoldEx *01*将金条「兑换」成金币>\n"
	return msg
end

function ExchangeGold(npc_guid, player_guid)
    if not lualib:Player_IsGoldEnough(player_guid, gold_value, false) then
        return "金币不足"..gold_value
    end

    if not lualib:Player_SubGold(player_guid, gold_value, false, "扣金币：金条「兑换」将金币「兑换」成金条", player_guid) then
        return "扣除金币失败！"
    end
	
	result = lualib:Player_GiveItemUnbind(player_guid, "金条", 1, "给物品：金条「兑换」", player)
	if result == false then
		return "系统错误，请联系GM@3！"
	end
	
	lualib:SysMsg_SendTipsMsg(player_guid, "「兑换」金条成功")
	lualib:SysMsg_SendTriggerMsg(player_guid, "「兑换」金条成功")
	return "「兑换」金条成功！"
end

function ExchangeGoldEx(npc_guid, player_guid)
	local count = lualib:Player_GetItemCount(player_guid, gold_)
	if count < 1 then
		return "没有找到金条，无法「兑换」。"
	end
	
	local result = lualib:Player_DestroyItem(player_guid, gold_, 1, "删物品：金条「兑换」", player)
	if result == false then 
		return "系统错误，请联系GM@4！"
	end
	
    if not lualib:Player_AddGold(player_guid, gold_value - gold__, false, "加金币：金条「兑换」将金条「兑换」成金币", player_guid) then
        return "给予金币失败！"
    end
	
	lualib:SysMsg_SendTipsMsg(player_guid, "金币「兑换」成功，数量："..gold_value - gold__.."！")
	lualib:SysMsg_SendTriggerMsg(player_guid, "金币「兑换」成功，数量："..gold_value - gold__.."！")
	return "金币「兑换」成功！"
end

