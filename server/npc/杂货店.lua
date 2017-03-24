function main(npc, player)
    lualib:AddShop(npc, 7)
	local msg = "年青人，江湖中凶险难测，多带点东西在身上吧，也许它可以救你一命……\n \n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:2>##IMAGE1902700037#<@OpenShop#7 *01*「购买」 >#IMAGE1902700036#<@SellItem#1 *01*「出售」 >#IMAGE1902700035#<@txdf *01*「修理毒符」 >#IMAGE1902700035#<@ShowRepireEx#1 *01*「修理勋章」>\n"
	msg = msg.."#OFFSET<X:0,Y:2>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."　　　　　　　　　　　　　　　　　　　　　　#OFFSET<X:0,Y:5>##IMAGE<ID:1902700034>##OFFSET<X:0,Y:-2>#<@leave *01*「离开」>\n"
	return msg
end


function OpenShop(npc, player, id)
	lualib:OpenShop(npc, player, tonumber(id))
	return ""
end

function ShowRepire(npc, player)
    lualib:ShowForm(player, "修理表单")
    return ""
end

function ShowRepireEx(npc, player)
    lualib:ShowForm(player, "特殊修理表单")
    return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function txdf(npc, player)
	local df_table = {
						--{耐久上限, 价格}
						{"护身符", 100, 100},
						{"护身符(大)", 200, 200}, 
						{"超级护身符", 500, 500}, 
						{"灰色药粉(少量)", 30, 300},
						{"黄色药粉(少量)", 30, 300},
						{"灰色药粉(中量)", 50, 500},
						{"黄色药粉(中量)", 50, 500},
						{"灰色药粉(大量)", 100, 1000},
						{"黄色药粉(大量)", 100, 1000},
						{"超级黄色药粉", 200, 2000},
						{"超级灰色药粉", 200, 2000},						
					}
	local itemlist = lualib:BagItemList(player, true, false, false)

	for i = 1, #itemlist do
		local itemName = lualib:KeyName(itemlist[i])
		local UsesCount = lualib:Item_GetUsesCount(player, itemlist[i])
		for j = 1, #df_table do
			if itemName == df_table[j][1] and UsesCount < df_table[j][2] then
				if not lualib:SubGold(player, df_table[j][3], "扣金币:修理毒符", "杂货店") then 
					return "你的金币不足，无法进行修理！" 
				end
				
				lualib:Item_SetUsesCount(player, itemlist[i], df_table[j][2])
				lualib:SysPromptMsg(player, "[系统提示]:花费"..df_table[j][3].."金币修理" ..itemName.. "")
			end
		end
	end
    return ""
end


function leave(player)
	return ""
end