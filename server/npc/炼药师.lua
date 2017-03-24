local table_bag = {}
table_bag["1"] = {"黄色药粉(大量)", "蛆卵","蝎子尾巴","食人树叶", 3, 3, 12}
table_bag["2"] = {"灰色药粉(大量)", "食人花果实", "毒蜘蛛牙齿", "食人树叶", 3, 6, 12}
table_bag["3"] = {"黄色药粉(中量)", "蛆卵","蝎子尾巴","食人树叶", 2, 2, 8}
table_bag["4"] = {"灰色药粉(中量)", "食人花果实", "毒蜘蛛牙齿", "食人树叶", 2, 4, 8}
table_bag["5"] = {"黄色药粉(小量)", "蛆卵","蝎子尾巴","食人树叶", 1, 1, 4}
table_bag["6"] = {"灰色药粉(小量)", "食人花果实", "毒蜘蛛牙齿", "食人树叶", 1, 2, 4}


function main(npc, player)
	local msg = "这里能打造出最好道士最需要的物品！ \n \n"
	msg = msg.."<@GenBag#1 *01*黄色药粉(大)>　　　　"
	msg = msg.."<@GenBag#2 *01*灰色药粉(大)>\n"
	msg = msg.."<@GenBag#3 *01*黄色药粉(中)>　　　　"
	msg = msg.."<@GenBag#4 *01*灰色药粉(中)>\n"
	msg = msg.."<@GenBag#5 *01*黄色药粉(少)>　　　　"
	msg = msg.."<@GenBag#6 *01*灰色药粉(少)>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenBag(npc, player, types)
	local msg = "制作 "..table_bag[types][1].." 需要 "..table_bag[types][5].." 个 "..table_bag[types][2].." ，需要 "..table_bag[types][6].." 个 "..table_bag[types][3].." ，需要 "..table_bag[types][7].." 个 "..table_bag[types][4].." ，你「确定」要制造吗？\n \n"
	msg = msg.."<@GenBagEx#"..types.." *01*「确定」>\n"
	msg = msg.."<@Leave *01*「离开」>\n"
	return msg
end

function GenBagEx(npc, player, types)
	if table_bag[types] == nil then return "系统错误@1！" end

	local table_name = {table_bag[types][1], table_bag[types][2], table_bag[types][3], table_bag[types][4]}
	local table_count = {1, table_bag[types][5], table_bag[types][6], table_bag[types][7]}
	local table_bind = {0, 0, 0, 0}
	local table_remove = {0, 1, 1, 1}
	if lualib:Player_ItemRequest(player, table_name, table_count, table_bind, table_remove, "事务操作：药粉制造", player) == false then
		lualib:SysMsg_SendWarnMsg(player, "[系统提示]:制作失败！")
		return "制作失败，请检查包裹内材料是否足够！"
	end


	lualib:SysMsg_SendTriggerMsg(player, "系统提示:物品 "..table_bag[types][1].." ，制作成功！")
	return "物品 "..table_bag[types][1].." ，制作成功！"
end

function Leave()
	return ""
end
