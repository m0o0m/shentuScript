function main(player, vipLevel)
	local msg = "经验继承可以让你领取昨日在游戏中获得总共经验中的一部分经验值，根据vip的等级，等级越高，获得的经验越多。\n \n"
	msg = msg .. "<@lingjingyjicheng *01*进行经验继承>\n"
	msg = msg .. "<@vipjichengbiao *01*查看vip各等级可继承经验>\n"
	msg = msg .. "<@guanbi *01*关闭>"
	lualib:NPCTalk(player,msg)
	return ""
end

function guanbi()
	return ""
end

function lingjingyjicheng(player)
	if lualib:GetAllDays(0) - lualib:GetInt(player,"vip20_jichengshijian") >= 1 then --记录开启计时的当前天数
		--vip经验继承功能上线处理
		if lualib:GetAllDays(0) - lualib:GetInt(player,"vip20_jichengshijian") == 1 then
			lualib:SetInt(player,"vip20_zuoriexp",lualib:GetInt(player,"vip20_jinriexp")) --记录玩家昨日获得的经验值
		else
			lualib:SetInt(player,"vip20_zuoriexp",0) --记录玩家昨日上线时的经验值
		end
		lualib:SetInt(player,"vip20_jinriexp",0) --记录玩家今日上线时的经验值
		lualib:SetInt(player,"vip20_explingqu",0) --设置玩家领取状况
		lualib:SetInt(player,"vip20_jichengshijian",lualib:GetAllDays(0)) --记录开启计时的当前天数
	end
	
	local msg = ""
	if lualib:GetInt(player,"vip20_explingqu") == 1 then
		return "今日你已进行过经验继承！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:GetInt(player,"vip20_zuoriexp") > 0 then
		local p1 = lualib:GetVipLevel(player)
		if p1 < 4 then
			p1 = 7
		end
		local exp = math.ceil(lualib:GetInt(player,"vip20_zuoriexp")/100*(p1+1))
		msg = msg .. "昨日你在游戏中总共获得了#COLORCOLOR_GREENG#"..lualib:GetInt(player,"vip20_zuoriexp").."经验#COLOREND#，根据你的vip等级，你今日#COLORCOLOR_GREENG#可继承到"..exp.."经验#COLOREND#。\n \n"
		msg = msg .. "<@lingqujingcheng *01*确定领取>\n"
	else
		msg = msg .. "昨日你在游戏中没有获得过任何经验值。\n \n"
	end
	
	msg = msg .. "<@guanbi *01*关闭>"
	return msg
end

function lingqujingcheng(player)
	local p1 = lualib:GetVipLevel(player)
	if p1 < 4 then
		p1 = 7
	end
	local exp = math.ceil(lualib:GetInt(player,"vip20_zuoriexp")/100*(p1+1))
	if exp > 0 then
		lualib:Player_AddExp(player, exp, "vip经验继承", player)
		lualib:SetInt(player,"vip20_zuoriexp",0)
		lualib:SetInt(player,"vip20_explingqu",1)
		return "获得"..exp.."经验！\n \n<@guanbi *01*关闭>"
	else
		return ""
	end
end

function vipjichengbiao(player)
	local msg = "#COLORCOLOR_GREENG#vip等级              可继承经验#COLOREND#\n"
	msg = msg .. "vip1级               2%\n"
	msg = msg .. "vip2级               3%\n"
	msg = msg .. "vip3级               4%\n"
	msg = msg .. "vip4级               5%\n"
	msg = msg .. "vip5级               6%\n"
	msg = msg .. "vip6级               7%\n"
	msg = msg .. "vip7级               8%\n \n"
	msg = msg .. "直接购买此功能       8%\n \n"
	msg = msg .. "<@main *01*返回>"
	return msg
end