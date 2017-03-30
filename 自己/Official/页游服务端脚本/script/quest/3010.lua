--任务成功完成回调
--quest_id 任务id

function on_accomplish(player, quest_id)
    local item_table = {
                  "汗血宝马(24小时)",
                  "雪域天狼(24小时)",
                  "独角兽(24小时)",
                  "神兽(24小时)",
                  "梦魇兽(24小时)",
                  "霸下玄龟(24小时)"
						}
    local index =item_table[lualib:GenRandom(1, 6)]
			lualib:SetInt(player, index, 1)
			local hanxue_shixiao = lualib:AddSingleItem(player, index, 1, 1, "任务给物品", player)
			if hanxue_shixiao =="" then
				lualib:SysMsg_SendPromptMsg(player, "给予"..index.."失败!")
			end
			local att_name = 109
			local att_value = lualib:GenRandom(50, 100)
			local setatt = lualib:Equip_SetExtProp(player, hanxue_shixiao, 0, att_name, att_value)
			lualib:Item_NotifyUpdate(player, hanxue_shixiao)
			lualib:SysMsg_SendPromptMsg(player, "你获得了"..index.."，快骑上试试吧！!")
    return true
end