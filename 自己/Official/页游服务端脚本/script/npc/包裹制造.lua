
local table_bag = {}
table_bag["1"] = {"锦织袋", "布料", 10, 0}
table_bag["2"] = {"皮革囊", "皮革", 10, 0}
table_bag["3"] = {"百珍囊", "高级皮革", 10, 0}

function main(npc, player)
	local msg = "这里能打造出最好最耐用的包裹！\n \n"
	msg = msg.."<@GenItem *01*打造包裹栏道具>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenItem(npc, player)
	local msg = "您想要定制哪种类型的包裹？\n \n"
	msg = msg.."<@GenBag#1 *01*锦织袋>\n"
	msg = msg.."<@GenBag#2 *01*皮革囊>\n"
	msg = msg.."<@GenBag#3 *01*百珍囊>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "打造 "..table_bag[types][1].." 需要 "..table_bag[types][3].." 个 "..table_bag[types][2].." ，"..table_bag[types][4].." 金币，你「确定」要制造吗？\n \n"
	msg = msg.."<@GenBagEx#"..types.." *01*「确定」>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenBagEx(npc, player, types)
	if table_bag[types] == nil then return "系统错误@1！" end
	
    if not lualib:Player_IsGoldEnough(player, table_bag[types][4], false) then
        return "金钱不足"
    end

	local table_name = {table_bag[types][1], table_bag[types][2]}
	local table_count = {1, table_bag[types][3]}
	local table_bind = {0, 0}
	local table_remove = {0, 1}
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "事务操作：包裹制造", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "打造失败！")
		return "包裹打造失败，请确认材料是否足够，背包是否有剩余空格！"
	end

    if not lualib:Player_SubGold(player, table_bag[types][4], false, "扣金币：包裹制造花费", player) then
        return "系统错误@3！"
    end
	
	lualib:SysMsg_SendTriggerMsg(player, "物品 "..table_bag[types][1].." ，打造成功！")
	return "物品 "..table_bag[types][1].." ，打造成功！"
end

function Leave()
	return ""
end
