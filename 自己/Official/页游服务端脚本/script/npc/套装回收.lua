local equip_suit_list = {
		{"「御战套」", {"御战戒指", "御战护腕", "御战头盔"}, 30000},
		{"「御魔套」", {"御魔戒指", "御魔护腕", "御魔头盔"}, 30000},
		{"「御道套」", {"御道戒指", "御道护腕", "御道头盔"}, 30000},
		{"「铁战套」", {"铁战戒指", "铁战护腕", "铁战靴子"}, 120000},
		{"「聚魂套」", {"聚魂戒指", "聚魂护腕", "聚魂靴子"}, 120000}, 
		{"「玄光套」", {"玄光戒指", "玄光护腕", "玄光靴子"}, 120000},
		{"「圣武套」", {"圣武头盔", "圣武护腕", "圣武戒指", "圣武战靴"}, 480000},
		{"「苍冥套」", {"苍冥头盔", "苍冥护腕", "苍冥戒指", "苍冥魔靴"}, 480000},
		{"「飞尘套」", {"飞尘头盔", "飞尘护腕", "飞尘戒指", "飞尘道靴"}, 480000},
		{"「末日套」", {"末日头盔", "末日护腕", "末日戒指", "末日项链", "末日战靴"}, 1920000},
		{"「血夜套」", {"血夜魔盔", "血夜护腕", "血夜魔指", "血夜项链", "血夜魔靴"}, 1920000},
		{"「天劫套」", {"天劫道盔", "天劫护腕", "天劫道指", "天劫项链", "天劫道靴"}, 1920000},
		{"「疾雷套」", {"疾雷戒指(圣)", "疾雷护腕(圣)", "疾雷战靴", "疾雷戒指(神)", "疾雷护腕(神)", "疾雷项链", "疾雷头盔"}, 7680000},
		{"「火灵套」", {"火灵戒指(圣)", "火灵护腕(圣)", "火灵魔靴", "火灵戒指(神)", "火灵护腕(神)", "火灵项链", "火灵头盔"}, 7680000},
		{"「云扬套」", {"云扬戒指(圣)", "云扬护腕(圣)", "云扬道靴", "云扬戒指(神)", "云扬护腕(神)", "云扬项链", "云扬头盔"}, 7680000},
		{"「天怒套」", {"天怒戒指(圣)", "天怒护腕(圣)", "天怒战靴", "天怒戒指(神)", "天怒护腕(神)", "天怒项链", "天怒头盔"}, 23040000},
		{"「深渊套」", {"深渊戒指(圣)", "深渊护腕(圣)", "深渊魔靴", "深渊戒指(神)", "深渊护腕(神)", "深渊项链", "深渊头盔"}, 23040000},
		{"「四象套」", {"四象戒指(圣)", "四象护腕(圣)", "四象道靴", "四象戒指(神)", "四象护腕(神)", "四象项链", "四象头盔"}, 23040000},
		{"「战龙套」", {"战龙戒指", "战龙护腕", "战龙项链", "战龙头盔", "飞龙战靴"}, 42000000},
		{"「逐光套」", {"逐光戒指", "逐光护腕", "逐光项链", "逐光头冠", "逐光霞履"}, 42000000},
		{"「逍遥套」", {"逍遥戒指", "逍遥手镯", "逍遥项链", "逍遥道冠", "逍遥游梦"}, 42000000},
						}
						
function main(npc, player)
	local width = 60
	local height = 30
	local num = 1
	local msg = "收二手装备！你有成套的套装吗，可转让给我，如果你急缺金币的话可以考虑一下！嘿嘿嘿嘿……\n"
	
	
	for i = 1, #equip_suit_list do
		msg = msg.."#POS<X:".. width..",Y:"..height..">##IMAGE1902700037#<@equip_suit#"..i.." *01*"..equip_suit_list[i][1]..">"
		width = width + 100
		num = num + 1
		if num >3 then
			num = 1
			width = 60
			height = height + 18
		end
	end
	--msg = msg.."#POS<X:310,Y:".. height ..">#<@leave *01*「离开」>"
	return msg
end

function equip_suit(npc, player, suitName)
--[[	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local ServerDays = lualib:GetAllDays(lualib:Str2Time(StartServerTime))
	local Days = lualib:GetAllDays(0)
	
	
	local goldPct = 1 - (Days - ServerDays) / 1
	if goldPct > 1 then
		goldPct = 1
	elseif goldPct < 0.1 then
		goldPct = 0.1
	end

	local addGold = equip_suit_list[tonumber(suitName)][3] * goldPct]]
	local addGold = equip_suit_list[tonumber(suitName)][3] 
	

	local msg = "请检查包裹内是否有套装的下列全部部件！回收后可获得#COLORCOLOR_GREENG#"..addGold.."#COLOREND##COLORCOLOR_RED#金币#COLOREND#\n"
	
	
	local x = 0
	local y = 35
	
	
	local fomr_str = "<form default_parent=NpcTalk,Container>"
	for i = 1, #equip_suit_list[tonumber(suitName)][2] do
		fomr_str = fomr_str .. "<itemctrl id=需要道具"..i.." x="..x.." y="..y.." w=35 h=35 init_item="..equip_suit_list[tonumber(suitName)][2][i].." count=1 is_bound=false use_back=true/>"
		x = x + 45
	end
	
	

	msg = msg.."#POS<X:140,Y:135>##IMAGE1904300004#".."#POS<X:154,Y:122>#<@duihuan#"..suitName.." *01*确定回收>"
	msg = fomr_str .. "<text><![CDATA["..msg.."]]></text></form>"
	
	return msg
end

function duihuan(npc, player, suitIndex)
	local suitIndex = tonumber(suitIndex)
	local msg = ""
	
	local itemNum = #equip_suit_list[suitIndex][2]
	local itembind = {}
	local itemreqCount = {}
	local oprType = {}
	
	for i = 1, itemNum do
		itembind[i] = 0
		itemreqCount[i] = 1
		oprType[i] = 1
	end
	
	
	if not lualib:Player_ItemRequest(player, equip_suit_list[suitIndex][2], itemreqCount, itembind, oprType, "事务操作：龙城老兵军装任务回收套装", "龙城老兵") then
        return "套装部件不足，无法回收，套装部件需要不绑定，请检查包裹！\n \n<@main *01*返回>"
    end
	
--[[	local StartServerTime = lualib:GetConstVar("StartServerTime")
	local ServerDays = lualib:GetAllDays(lualib:Str2Time(StartServerTime))
	local Days = lualib:GetAllDays(0)
	
	
	local goldPct = 1 - (Days - ServerDays) / 1
	if goldPct > 1 then
		goldPct = 1
	elseif goldPct < 0.1 then
		goldPct = 0.1
	end

	local addGold = equip_suit_list[tonumber(suitName)][3] * goldPct]]
	local addGold = equip_suit_list[suitIndex][3]
	
	if not lualib:Player_AddGold(player, addGold, false, "军备回收", player) then
		return "增加金币失败！"
	end
	msg = "回收[".. equip_suit_list[suitIndex][1] .."]成功，你获得了#COLORCOLOR_GREENG#"..addGold.."#COLOREND##COLORCOLOR_RED#金币#COLOREND#！\n \n "
	msg = msg.."<@main *01* 「返回」>"
	return msg
end

function leave()
	return ""
end