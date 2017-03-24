function main(npc, player)
    lualib:AddShop(npc, 5)
    lualib:AddShop(npc, 15)
	local own_family = lualib:GetCastleOwnFamily("神歌城")	
	local msg = ""
	msg = msg.."欢迎，您想要些什么? \n"
	if own_family ~= "" then
		msg = msg.."因为这里是［"..own_family.."］的城，\n"
		msg = msg.."我们为［"..own_family.."］行会成员提供20%的优惠\n"
	else
		msg = msg.."如果是城堡拥有行会的成员，我们可以提供20%的优惠\n"	
	end
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@CheckFamily *01*「购买」>    #OFFSET<X:0,Y:1>##IMAGE1902700036##OFFSET<X:0,Y:-1>#<@SellItem#1 *01*「出售」>    #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepire#1 *01*「修理」>   #OFFSET<X:0,Y:1>##IMAGE1902700035##OFFSET<X:0,Y:-1>#<@ShowRepireEx#1 *01*「特殊修理」>\n"
	msg = msg.."#OFFSET<X:0,Y:1>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n \n \n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<likai *01*「离开」>\n"
	return msg
end

function CheckFamily(npc, player)

	local own_family = lualib:GetCastleOwnFamily("神歌城")	
    local my_family = lualib:GuildGuid(player)
    local msg = ""
    if own_family == "" or own_family ~= my_family then
        msg = "您不是城堡的占领者，不能给您提供打折优惠服务！\n \n \n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@OpenShop#5 *01*「确定」>\n \n \n \n"
    else
        msg = "您是城堡的占领者，我可以给您提供打折优惠服务！\n \n \n \n"
        msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700033##OFFSET<X:0,Y:-2>#<@OpenShop#15 *01*「确定」>\n \n \n \n"
    end
    msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@main *01*「返回」>\n"
    return msg
end

function OpenShop(npc, player, id)
    shopid = tonumber(id)
   -- lualib:AddShop(npc, shopid)
	lualib:OpenShop(npc, player, shopid)
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

function likai(player)
	return ""
end