shangdiandaoju = {
		{"清心丹",100,100000}, --道具名字，几率，需要金币
		{"小喇叭",100,10000},
		{"小喇叭*2",100,20000},
		{"小喇叭*3",100,30000},
		{"小喇叭(10个)",100,100000},
		{"灵元珠",100,20000},
		{"灵元珠*2",100,40000},
		{"封印鉴定符",100,100000},
		{"封印鉴定符*2",100,200000},
		{"祝福神水",100,100000},
		{"聚灵珠(小)",100,10000},
		{"聚灵珠(中)",100,20000},
		{"聚灵珠(大)",100,40000},
		{"释灵珠",100,50000},
		{"释灵珠*2",100,100000},
		{"储存箱(1格)",100,100000},
		{"修复神水",100,300000},
        {"1.5倍经验卷轴",100,200000},
		{"双倍经验卷轴",100,200000},
        {"3倍经验卷轴",100,200000},
		{"神羽",100,40000},
		{"定位石",100,100000},
        {"定位石(100次)",100,1000000},
		{"随机传送(50次)",100,100000},
        {"随机传送(500次)",100,1000000},
		{"龙城传送石",100,100000},
		{"巫山城传送石",100,100000},
		{"逍遥游(100次)",100,1000000},
        {"逍遥游(7天)",100,1000000},
}

function main(player, vipLevel)
	local vipLevel = tonumber(vipLevel)
	local suiji = 0
	local p1 = 0
	
	if vipLevel > 7 then
		vipLevel = 7
	end
	--商品初始化
	if lualib:GetAllDays(0) - lualib:GetInt(player,"vip24_shangdianshijian") >= 1 then --记录开启计时的当前天数
		lualib:SetInt(player,"vip24_shangdianshijian",lualib:GetAllDays(0)) --记录开启计时的当前天数
		for i=1,7 do
			p1 = math.random(#shangdiandaoju)
			suiji = math.random(100)
			if shangdiandaoju[p1][2] >= suiji then
			else
				i = i - 1
			end
			lualib:SetInt(player,"vip24_shangpinggouma"..i,0) --商品购买的记录
			lualib:SetInt(player,"vip24_shangpingsuoyin"..i,p1) --商品购买的记录
		end
	end
	
	local msg = "#COLORCOLOR_GREENG#商品名称             需要金币#COLOREND#\n"
	for i=1,vipLevel do
		local msg1 = ""
		msg = msg .. "#COLORCOLOR_ORANGE#"..shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][1].."#COLOREND#" --商品名字显示
		msg1 = msg1 .. shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][1]
		
		while #msg1 < 21 do
			msg = msg .. " "
			msg1 = msg1 .. " "
		end
		
		msg = msg .. shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][3] --商品价格显示
		msg1 = msg1 .. shangdiandaoju[lualib:GetInt(player,"vip24_shangpingsuoyin"..i)][3]
			
		while #msg1 < 34 do
			msg = msg .. " "
			msg1 = msg1 .. " "
		end
			
		if lualib:GetInt(player,"vip24_shangpinggouma"..i) == 0 then
			msg = msg .. "<@goumai#"..lualib:GetInt(player,"vip24_shangpingsuoyin"..i).."#vip24_shangpinggouma"..i.."#"..vipLevel.." *01*购买商品>\n"
		else
			msg = msg .. "#COLORCOLOR_GRAY#已购买#COLOREND#\n"
		end
	end
	
	msg = msg .. "\n<@likai *01*离开> #COLORCOLOR_SKYBLUE#商店物品每日0时刷新#COLOREND#，vip等级越高能购买的道具越多。\n"
	lualib:NPCTalk(player,msg)
	return ""
end

----------------------------------------购买商品--------------------------------------------------------
function goumai(player,suoyin,weizhi,vipLevel)
	suoyin = tonumber(suoyin)
	local itemname = shangdiandaoju[suoyin][1]
	
	if lualib:GetInt(player,weizhi) == 0 then
	else
		return "你已经购买过这件商品，请下次商店刷新以后再来！\n\n <@likai *01*关闭>"
	end
		
	if lualib:Player_IsGoldEnough(player,shangdiandaoju[suoyin][3],false) == true then
		if not lualib:Player_SubGold(player,shangdiandaoju[suoyin][3],false,"VIP商店购买",player) then
			return "扣除金币失败"
		end
	else
		return "金币不足！无法购买！\n\n<@likai *01*关闭>"
	end
	
	local n1 = string.find(itemname,"*")
	local n2 = 1
	if n1 ~= nil then
		n2 = tonumber(string.sub(itemname,n1+1,#itemname))
	end
	
	if n1 == nil and lualib:Player_GetBagFree(player) >= 1 then
		lualib:AddItem(player,itemname,n2,true,"VIP商店购买", player) --给物品
	elseif n1 ~= nil and lualib:Player_GetBagFree(player) >= n2 then
		lualib:AddItem(player,string.sub(itemname,1,n1-1),n2,true,"VIP商店购买", player) --给物品
	else
		return "包裹空位不足"..n2.."格！请整理以后再来！\n\n<@likai *01*关闭>"
	end
	
	lualib:SetInt(player,weizhi,1) --记录已经购买过该商品
	return "#COLORCOLOR_GREENG#"..itemname.."#COLOREND#购买成功！\n\n<@main#"..vipLevel.." *01*继续购买>\n<@likai *01*关闭>"
end

function likai()
	return ""
end