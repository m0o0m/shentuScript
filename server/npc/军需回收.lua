local tab = {--随机回收表
	"翅膀1", "翅膀2", "翅膀3", "翅膀4", "勋章1", "勋章2", "勋章3", "勋章4", "盾牌1", "盾牌2", "盾牌3", "盾牌4", "宝石1", "宝石2", "宝石3", "宝石4", "坐骑1", "坐骑2", "坐骑3", "坐骑4", "法宝1", "符咒1", "武器6", "武器8", "武器10", "武器16", "武器18", "武器20", "武器26", "武器28", "衣服6", "衣服8", "衣服10", "衣服16", "衣服18", "衣服20", "衣服26", "衣服28"
}

local gold = 3000--回收给予金币

local limit = 20	--名额限制

local time_table = {"12:00:00"}	 --代表每日12:00:00开启


function on_create(npc)
	lualib:AddScheduled(128568, "军需回收", 5, time_table, "regstier", "")
end

function regstier()
	local rnd = lualib:GenRandom(1, #tab)
	lualib:SetDBStrEx("军需品", tab[rnd], 6)
	lualib:SetDBNumEx("军需数", limit, 6)
	local msg = "军需回购开始了，本次回购军需物资为【"..lualib:KeyName2Name(tab[rnd], 4).."】，单价【"..gold.."】金币，限量【"..limit.."】个，请抓紧时间啦。"
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	lualib:SysMsg_SendBroadcastMsg(msg, "")
end

function main(npc, player)
	local num = lualib:GetDBNum("军需数")
	local key = lualib:GetDBStr("军需品")
	if key == "" then
		key = "暂无"
	end
	local msg = [[
#POS<Y:25>##COLORCOLOR_ORANGE#   每天12点定时刷新回收军需物资，届时请注意系统公告。

   #COLORCOLOR_BROWN#当前回购物品#COLORCOLOR_GREENG#【]].. lualib:KeyName2Name(key, 4) ..[[】#COLORCOLOR_BROWN#！
   #COLORCOLOR_BROWN#当前剩余数量#COLORCOLOR_GREENG#【]].. math.max(0, num) ..[[】#COLORCOLOR_BROWN#个！
   #COLORCOLOR_BROWN#当前回收价格#COLORCOLOR_GREENG#【]]..gold..[[】#COLORCOLOR_BROWN#金币！

   #IMAGE1902700035#<@submit *01*[提交军需品]>         #IMAGE1902700034#<@leave *01*[关闭页面]>
	]]
	lualib:SetPanelSize(npc, 380, 200)
	return msg
end

function submit(npc, player)
	lualib:SetPanelSize(npc, 380, 200)
	local key = lualib:GetDBStr("军需品")
	if key == "" then
		return "#POS<Y:25>#   当前没有可以回购的物品，请留意系统公告。"
	end
	local num = lualib:GetDBNum("军需数")
	if num <= 0 then
		return "#POS<Y:25>#   很遗憾，您来晚了，我已经收集到足够的军需品了。"
	end
	local count = lualib:ItemCount(player, key)
	if count == 0 then
		return "#POS<Y:25>#   您背包里没有我需要的军需品。"
	end
	if not lualib:DelItem(player, key, 1, 2, "军需回购", npc) then
		return "#POS<Y:25>#   扣除军需品失败。"
	end
	lualib:AddGold(player, gold, "军需回购", npc)
	lualib:SetDBNumEx("军需数", num - 1, 6)
	local msg = "玩家【"..lualib:Name(player).."】成功上缴军需品【"..lualib:KeyName2Name(key, 4).."】，获得【"..gold.."】金币。"
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	return main(npc, player)
end