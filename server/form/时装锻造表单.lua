local data = {}
--【时装锻造师（NPC索引名）】根据NPC索引名不同展示不同的时装合成内容
data["时装锻造师"] = [[{
	{
		name = "一阶时装",--名称
		{"青龙偃月刀", {"时装碎片", 10}, 50},--目标装备 + {材料+数量} + 消耗元宝
		{"关平战甲", {"时装碎片", 10}, 50},
	},
	{
		name = "二阶时装",
		{"红缨龙胆枪", {"时装碎片", 20}, 100, {"青龙偃月刀", 1}},--目标装备 + {材料+数量} + 消耗元宝 + {消耗装备 + 数量}
		{"赵统战甲", {"时装碎片", 20}, 100, {"关平战甲", 1}},
	},
	{
		name = "三阶时装",
		{"虎痴战鬼锤", {"时装碎片", 20}, 100, {"红缨龙胆枪", 1}},--目标装备 + {材料+数量} + 消耗元宝 + {消耗装备 + 数量}
		{"许褚战甲", {"时装碎片", 20}, 100, {"赵统战甲", 1}},
	},
	{
		name = "四阶时装",
		{"亮银龙神刺", {"时装碎片", 20}, 100, {"虎痴战鬼锤", 1}},--目标装备 + {材料+数量} + 消耗元宝 + {消耗装备 + 数量}
		{"子龙战甲", {"时装碎片", 20}, 100, {"许褚战甲", 1}},
	},
}]]


data["时装锻造师[中极]"] = [[{
	{
		name = "五阶时装",
		{"战皇无双戟", {"时装碎片", 80}, 400, {"亮银龙神刺", 1}},
		{"吕布战甲", {"时装碎片", 80}, 400, {"子龙战甲", 1}},
	},
	{
		name = "六阶时装",
		{"如意金箍棒", {"时装碎片", 120}, 600, {"战皇无双戟", 1}},
		{"斗战圣佛", {"时装碎片", 120}, 600, {"吕布战甲", 1}},
	},
}]]


data["时装锻造师[终极]"] = [[{
	{
		name = "终极时装",
		{"武破苍穹", {"时装碎片", 120}, 600, {"如意金箍棒", 1}},
		{"人定胜天", {"时装碎片", 120}, 600, {"斗战圣佛", 1}},
	},
}]]



function show(player, npckey)
	if data[npckey] == nil then
		lualib:MsgBox(player, "NPC索引名数据错误,仔细检查数据表单.")
		return ""
	end
	local str = " fashion_tab = "..data[npckey]
	str = str .." fashion_npc = "..string.format("%q", npckey)
	lualib:ShowFormWithContent(player, "脚本表单", str)
	lualib:ShowFormWithContent(player, "form文件表单", "时装锻造")
	return ""
end


function main(player, pos, idx, types, npckey)
	local pos = tonumber(pos)
	local idx = tonumber(idx)
	local types = tonumber(types)
	if data[npckey] == nil then
		lualib:MsgBox(player, "NPC索引名数据错误,仔细检查数据表单.")
		return ""
	end
	if lualib:GetBagFree(player) < 1 then
		lualib:MsgBox(player, "请至少保留一个背包空间。")
		return "请至少保留一个背包空间。"
	end
	local tab = loadstring(" return "..data[npckey])()
	local t = tab[pos][idx]
	if types == 1 then
		if lualib:ItemCount(player, t[2][1]) < t[2][2] then
			lualib:MsgBox(player, "抱歉，您的“灵元珠”不足。")
			return "抱歉，您的“灵元珠”不足。"
		end
	else
		if lualib:GetIngot(player) < t[3] then
			lualib:MsgBox(player, "抱歉，您的元宝不足。")
			return "抱歉，您的元宝不足。"
		end
	end
	if t[4] ~= nil then
		if lualib:ItemCount(player, t[4][1]) < t[4][2] then
			lualib:MsgBox(player, "抱歉，您背包里没有“"..t[4][1].."”。")
			return "抱歉，您背包里没有“"..t[4][1].."”。"
		end
	end
	if types == 1 then
		if not lualib:DelItem(player, t[2][1], t[2][2], 2, "时装锻造", npckey) then
			lualib:MsgBox(player, "抱歉，您的“"..t[2][1].."”不足。")
			return "抱歉，您的“"..t[2][1].."”不足。"
		end
	else
		if not lualib:SubIngot(player, t[3], "时装锻造", npckey) then
			lualib:MsgBox(player, "抱歉，您的元宝不足。")
			return "抱歉，您的元宝不足。"
		end
	end
	if t[4] ~= nil then
		if not lualib:DelItem(player, t[4][1], t[4][2], 2, "时装锻造", npckey) then
			lualib:MsgBox(player, "抱歉，您背包里没有“"..t[4][1].."”。")
			return "抱歉，您背包里没有“"..t[4][1].."”。"
		end
	end
	lualib:AddItem(player, t[1], 1, false, "时装锻造", npckey)
	lualib:MsgBox(player, "恭喜您成功锻造出“".. lualib:KeyName2Name(t[1], 4) .."”。")
	return "恭喜您成功锻造出“".. lualib:KeyName2Name(t[1], 4) .."”。"
end