local HJ_NpcName = {"幻境四层商人", "幻境七层商人"}

function main(npc, player)
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#幻境商店#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
    msg = msg.."    #COLORCOLOR_RED#幻境的时间非常诡异，我的商品数量会随着幻境的时间而流失，当商品被卖光后，得过一段时间才能补给货物。你得把握住时间……#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	
	lualib:AddShop(npc, 22)
	lualib:AddShop(npc, 23)
	local keyname = lualib:KeyName(npc)
	print(keyname)
	if keyname == nil then 
		lualib:SysMsg_SendWarnMsg(player, "没有这个NPC！") 
	return false 
	end
	
	if keyname == HJ_NpcName[1] then
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#22 *01*「购买」>\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*「离开」>"
	elseif keyname == HJ_NpcName[2] then
		msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop#23 *01*「购买」>\n"
		msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
		msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*「离开」>"
	end

	return msg
end

function OpenShop(npc, player, id)
	shopid = tonumber(id)
	lualib:OpenShop(npc, player, shopid)
	return ""
end

function SellItem(npc, player, id)
	lualib:ShowForm(player, "卖出物品表单")
	return ""
end

function likai(npc, player)
	return ""
end