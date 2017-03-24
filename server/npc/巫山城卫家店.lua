function main(npc, player)
    lualib:AddShop(npc, 1)
	local msg = "嘘！听到了吗,有一把武器正在因你的出现而低鸣！师傅说过,每一把武器都是有灵魂的,现在,它终于等到了自己的主人！\n \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700037##OFFSET<X:0,Y:-1># <@OpenShop#1 *01*购买> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepire *01*修理> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700035##OFFSET<X:0,Y:-1># <@ShowRepireEx *01*特殊修理> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700036##OFFSET<X:0,Y:-1># <@SellItem *01*出售> \n"
	msg = msg.."#OFFSET<X:0,Y:0>##IMAGE1902700017##OFFSET<X:0,Y:-1># <@talk *01*对话> "
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

function talk(npc, player)
	local msg = ""
	local itemName = {"金矿石15", "金矿石16", "金矿石17", "金矿石18", "金矿石19", "金矿石20"}
	local count = 0
	for i = 1, #itemName do
		count = count + lualib:ItemCountByKey(player, itemName[i], true, false, false, 2)
	end
	
	local my_quest = lualib:GetInt(player, "my_quest")
	
	if count > 0 and my_quest == 0 then
		lualib:SetInt(player, "my_quest", 1)
		msg = [[你包里发光的是什么?难道是金矿?
		是来卖金矿吗?我最近正在开始利用金矿研究新的武器.
		所以需要很多金矿,不知你能不能帮我找纯度为15以上的金矿?
		拿金矿来,我会给你好价钱.

		<@talk *01*继续对话>]]
		return msg
	end

	if my_quest == 1 and count >= 3 then
		msg = [[哦, 你今天运气不错.那个金矿看上去品质不错.
		但是,今天我没有足够的钱来购买这3块金矿.
		不知你能不能给我赊账?
		
		<@give *01*免费送给你> 
		<@refuse *01*拒绝>]]
		return msg
	end

	if my_quest == 2 then
		msg = [[我说的人就是在铁匠铺外面做事的铁匠铺老板,
		别看他现在在小店做事没什么出息,曾经可是很有名气的铁匠,
		用那时候学到的技术,现在给别人做殊修理.
		你去找一下他吧,我会事先和他讲好的.
		
		
		<@Leave *01*关闭对话>]]
		return msg
	end

	msg = "我现在不想和你说话!\n我现在只想寻找3块纯度为15以上的金矿!\n \n \n"
	msg = msg.."<@Leave *01*关闭对话> \n"
	return msg

end

function refuse(npc, player)
	local msg = [[什么?不能那样做?哦,看来年轻人以前经常被人骗啊.
	这么不相信人啊?呵呵
	你如果还这样坚持,以后我也有可能不在和你做交易.
	你还坚持拒绝吗?
	
	
	<@give *01*免费送给你> \n
	<@refuseEx *01*还是拒绝> \n]]
	return msg
end

function refuseEx(npc, player)
	local msg = "金矿那么珍贵吗?\n这样我就没办法了吗?你走吧!\n \n"
	msg = msg.."<@Leave *01*关闭对话> \n"
	return msg
end

function give(npc, player)
	local msg = ""
	local del_count_max = 3
	local count = 0
	local itemName = {"金矿石15", "金矿石16", "金矿石17", "金矿石18", "金矿石19", "金矿石20"}

	for i = 1, #itemName do
		count = count + lualib:ItemCountByKey(player, itemName[i], true, false, false, 2)
	end
	
	if count < 3  then
		msg = "我现在不想和你说话!\n我现在只想寻找3块纯度为15以上的金矿!\n \n \n"
		msg = msg.."<@Leave *01*关闭对话> \n"
		return msg
	end
	
	for i = 1, #itemName do
		if del_count_max > 0 then
			local minecount = lualib:ItemCountByKey(player, itemName[i], true, false, false, 2)
			if minecount > 0 then
				if minecount > del_count_max then
					minecount = del_count_max
				end
				lualib:Player_DestroyItem(player, itemName[i], minecount, "收取金矿", player)
				del_count_max = del_count_max - minecount
			end
		else
			lualib:SetInt(player, "my_quest", 2)
			return "啊?你真的把这些白给我?\n真没想到现如今还有你这样的人,看来还有人情啊.\n我不能白拿这么贵重的东西.你有没有听说过命运之刃?\n还有在小店外面修理武器之后,有没有仔细观察过那个铁匠?\n \n \n <@talk *01*再打听一下>"
		end
	end
	
end		

function Leave(npc, player)
	return ""
end
