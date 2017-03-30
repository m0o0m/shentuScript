smallKeyname = "经验丹"
largeKeyname = "大型经验丹"

laoKeyname   = "劳"
dongKeyname  = "动"
shenKeyname  = "神"
shengKeyname = "圣"
lmxzty       = "劳模勋章图样"

medal        = "劳动模范勋章"
diamond      = "钻石"

function main(npc, player)
	local msg = ""
	msg = msg .. "你体会到劳动的艰辛与快乐了吗，把你劳动过的证明拿给我，我可以给你一定的奖励\n"
	msg = msg .. "<@Exchange *01*经验丹兑换大型经验丹>\n"
	msg = msg .. "<@Medal    *01*劳+动+神+圣+劳模勋章模具 兑换劳动模范勋章>\n"
	msg = msg .. "<@DmMedal  *01*打磨劳动模范勋章>\n"
	msg = msg .. "<@Leave    *01*离开>"
	
	return msg
end


--兑换经验丹
function Exchange(npc, player)
	local exchangeTbl = 
	{
		{10,  1},
		{20,  2},
		{50,  5},
		{100, 10},
		{200, 20},
		{500, 50}
	}
	
	local msg = ""
	msg = msg .. "大型经验丹所给经验为经验丹的10倍\n"
	for _, v in pairs(exchangeTbl) do
		msg = msg .. "<@ExchangeEx#" .. v[1] .. "#" .. v[2] .. "  *01*" .. v[1] .. "个经验丹兑换" .. v[2] .. "个大型经验丹>\n"
	end
	
	msg = msg .. "\n \n<@main *01*返回>"
	return msg
end

function ExchangeEx(npc, player, jydCount1, jydCount2)
	jydCount1 = tonumber(jydCount1)
	jydCount2 = tonumber(jydCount2)
	
	local keyTbl   = {smallKeyname, largeKeyname}
	local countTbl = {jydCount1, jydCount2}
	local bindTbl  = {0, 0}
	local oprTbl   = {1, 0}
	
	if not lualib:Player_ItemRequest(player, keyTbl, countTbl, bindTbl, oprTbl, "劳动节活动大使：兑换大型经验丹", "劳动节活动大使") then
		return "您的经验丹不足\n \n<@main *01*返回>"
	end
	
	local msg = ""
	msg = msg .. "您获得大型经验丹" .. jydCount2 .. "个\n"
	msg = msg .. "<@main *01*返回>"
	
	return msg
end

--劳+动+神+圣+劳模勋章模具 兑换劳动模范勋章
function Medal(npc, player)
	local msg = ""
	msg = msg .. "<@MedalEx    *01* 劳+动+神+圣+劳模勋章图样 兑换劳动模范勋章>\n"
	msg = msg .. "<@DmMedal    *01* 打磨劳动模范勋章>\n \n"
	msg = msg .. "<@main       *01* 返回>"
	
	return msg
end

function MedalEx(npc, player)
	local itemTbl =
	{
		laoKeyname,
		dongKeyname,
		shenKeyname,
		shengKeyname,
		lmxzty,
		medal
	}
	local countTbl = {1, 1, 1, 1, 1, 1}
	local bindTbl  = {0, 0, 0, 0, 0, 0}
	local oprTbl   = {1, 1, 1, 1, 1, 0}
	
	if not lualib:Player_ItemRequest(player, itemTbl, countTbl, bindTbl, oprTbl, "劳动节活动大使：兑换劳动模范勋章扣物品", "劳动节活动大使") then
		return "缺少物品\n \n<@main *01*返回>"
	end
	
	local msg = ""
	msg = msg .. "成功兑换劳动模范勋章\n \n<@main *01*返回>"
	return msg
end

--打磨勋章
function DmMedal(npc, player)
	local msg = ""
	msg = msg .. "使用钻石可以对劳动模范勋章进行打磨，打磨之后便为永久性不可交易道具\n"
	msg = msg .. "<@OK   *01*确定，请为我打磨>\n"
	msg = msg .. "<@main *01*返回>"
	
	return msg
end

function OK(npc, player)
	local itemTbl  = {medal, diamond, medal}
	local countTbl = {1, 1, 1}
	local bindTbl  = {0, 0, 1}
	local oprTbl   = {1, 1, 0}
	
	if not lualib:Player_ItemRequest(player, itemTbl, countTbl, bindTbl, oprTbl, "劳动节活动大使：打磨劳动模范勋章", "劳动节活动大使") then
		return "你缺少劳动模范勋章或钻石\n \n<@main *01*返回>"
	end
	
	local msg = ""
	msg = msg .. "打磨劳动模范勋章成功"
	msg = msg .. "<@main *01*返回>"
	return msg
end

function Leave(npc, player)
	return ""
end