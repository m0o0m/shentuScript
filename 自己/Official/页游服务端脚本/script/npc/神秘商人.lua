function on_create(npc_guid)
	lualib:AddTimer(npc_guid, 720, 600000, 1, "shenmishangren_xiaoshi")
end

function shenmishangren_xiaoshi(npc_guid)
     lualib:Npc_Remove(npc_guid)
end



function main(npc, player)
	lualib:AddShop(npc, 26)
	lualib:AddShop(npc, 27)
	lualib:AddShop(npc, 28)
	lualib:AddShop(npc, 29)
	lualib:AddShop(npc, 30)
	lualib:AddShop(npc, 31)
	lualib:AddShop(npc, 32)
	lualib:AddShop(npc, 33)
	
	local sjbl = lualib:GetInt(npc, "sjbl")
	if sjbl == 0 then
	
		local rd1 = lualib:GenRandom(1, 5)
		if rd1 == 5 then
			shop_id = lualib:GenRandom(30, 33)
		else
			if 	rd1 == 1 then
				shop_id = 26
			elseif rd1 == 2 then
				shop_id = 27
			elseif rd1 == 3 then
				shop_id = 28
			elseif rd1 == 4 then
				shop_id = 29
			end
			lualib:SetInt(npc, "sjbl", shop_id)
		end

		
		
	end
	
	
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#神秘商店#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━#COLOREND#\n"
	msg = msg.."     没想到我刚到天藏大陆，就被找到了。真可惜时间匆匆，我一会就要离开了，你得快点……\n"
	msg = msg.."#COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:150,Y:40>##IMAGE<ID:1900010084>#" 
	msg = msg.."#OFFSET<X:-63,Y:-3>##IMAGE1902700037##OFFSET<X:0,Y:-1>#<@OpenShop".."#"..shop_id.." *01*「购买」>\n"
	msg = msg.."                                                  #OFFSET<X:0,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@likai *01*「离开」>\n"


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