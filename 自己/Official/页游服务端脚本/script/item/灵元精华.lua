local he_table = {
					{"低级灵元精粹", 10},
					{"中级灵元精粹", 30},
					{"高级灵元精粹", 100},
                    {"特级灵元精粹", 500},
				}
local reqItem = "灵元精华"
				
function main(player, item)
	local msg = "请选择所要合成的灵元精粹！\n"
	for i = 1, #he_table do
		msg = msg.."<@hc#"..item.."#"..i.." *01*合成"..he_table[i][1]..">"
		msg = msg.."     "
	end
	msg = msg.."\n<@leave *01*离开>\n"
	lualib:NPCTalk(player, msg)
	return true
end

function leave()
	return""
end

function hc(player, item, types)
	local types = tonumber(types)
	local msg = "合成"..he_table[types][1].."需要"..he_table[types][2].."个"..reqItem.."，你确定合成吗？\n \n"
	msg = msg.."<@queren#"..item.."#"..types.." *01*开始合成>\n"
	msg = msg.."<@leave *01*离开>\n"
	return msg
end

function queren(player, item, types)
	local types = tonumber(types)
	local item_num = lualib:ItemCountByKey(player,reqItem,true, false, false,2)
	if item_num < he_table[types][2] then
		return "你的灵元精华不足"..he_table[types][2].."个，无法合成"..he_table[types][1].."。"
	end
	
	if not lualib:DelItem(player, reqItem, he_table[types][2], 2, "精粹合成", player) then return "灵元精粹合成失败！" end
	
	if not lualib:AddItem(player, he_table[types][1], 1, false, "精粹合成", player) then return "给予"..he_table[types][1].."失败！" end
	
	return "合成"..he_table[types][1].."成功！"
end
	