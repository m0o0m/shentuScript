local data = {}

---data["传送员1"]		传送员1--代表npc索引名


---所有的NPC都挂同一个脚本。然后只要修改表单对应的数据


data["新手打宝"] = [[{

	image = 1914600004,--小地图编号
	
	name = "新手打宝",--地图名称
	
	tips = {--tip描述
		{
			{"无需等级免费进入", "#31EF35"},
			{"新手打宝圣地", "#00D3FF"},
			{"《苗疆》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"无需等级免费进入", "#31EF35"},
			{"新手打宝圣地", "#00D3FF"},
			{"《南疆》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《苗疆》", 210, 251, 0},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《南疆》", 186, 230, 0},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["初级打宝"] = [[{

	image = 1914200006,--小地图编号
	
	name = "初级打宝",--地图名称
	
	tips = {--tip描述
		{
			{"150级免费进入", "#31EF35"},
			{"初级打宝地图", "#00D3FF"},
			{"《古神谷》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"150级免费进入", "#31EF35"},
			{"初级打宝地图", "#00D3FF"},
			{"《剑阁》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《古神谷》", 185, 166, 150},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《剑阁》", 87, 241, 150},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["神魔大战"] = [[{

	image = 1915000005,--小地图编号
	
	name = "神魔大战",--地图名称
	
	tips = {--tip描述
		{
			{"500级免费进入", "#31EF35"},
			{"神魔战场", "#00D3FF"},
			{"《神魔战场》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"500级免费进入", "#31EF35"},
			{"神魔墓地", "#00D3FF"},
			{"《神魔墓地》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《神魔战场》", 138, 198, 500},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《神魔墓地》", 113, 216, 500},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]

data["中级打宝"] = [[{

	image = 1914800005,--小地图编号
	
	name = "中级打宝",--地图名称
	
	tips = {--tip描述
		{
			{"200级免费进入", "#31EF35"},
			{"中级打宝地图", "#00D3FF"},
			{"《王城》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"200级免费进入", "#31EF35"},
			{"中级打宝地图", "#00D3FF"},
			{"《灵隐城》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《王城》", 151, 135, 200},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《灵隐城》", 64, 170, 200},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["高级打宝"] = [[{

	image = 1914400009,--小地图编号
	
	name = "高级打宝",--地图名称
	
	tips = {--tip描述
		{
			{"250级免费进入", "#31EF35"},
			{"高级打宝地图", "#00D3FF"},
			{"《沙漠遗址》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"250级免费进入", "#31EF35"},
			{"高级打宝地图", "#00D3FF"},
			{"《雪狼湖》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《沙漠遗址》", 128, 174, 250},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《雪狼湖》", 48, 164, 250},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["野外打宝"] = [[{

	image = 1910000014,--小地图编号
	
	name = "野外打宝",--地图名称
	
	tips = {--tip描述
		{
			{"无需等级免费进入", "#31EF35"},
			{"野外打宝地图", "#00D3FF"},
			{"《毒蛇峡谷》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"无需等级免费进入", "#31EF35"},
			{"野外打宝地图", "#00D3FF"},
			{"《封魔古城》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《毒蛇峡谷》", 490, 472, 0},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《封魔古城》", 245, 210, 0},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["散人打宝"] = [[{

	image = 1915000006,--小地图编号
	
	name = "散人打宝",--地图名称
	
	tips = {--tip描述
		{
			{"无需等级免费进入", "#31EF35"},
			{"散人打宝地图", "#00D3FF"},
			{"《蛮荒之地》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"无需等级免费进入", "#31EF35"},
			{"散人打宝地图", "#00D3FF"},
			{"《藏剑山庄》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《蛮荒之地》", 161, 122, 0},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《藏剑山庄》", 219, 214, 0},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["四象1"] = [[{

	image = 1912400004,--小地图编号
	
	name = "四象●青龙白虎",--地图名称
	
	tips = {--tip描述
		{
			{"350级免费进入", "#31EF35"},
			{"四象●青龙", "#00D3FF"},
			{"《青龙阵一层》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"350级免费进入", "#31EF35"},
			{"四象●白虎", "#00D3FF"},
			{"《白虎洞穴一层》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"青龙阵一层", 44, 161, 350},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"白虎洞穴一层", 87, 111, 350},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["四象2"] = [[{

	image = 1912900001,--小地图编号
	
	name = "四象●朱雀玄武",--地图名称
	
	tips = {--tip描述
		{
			{"350级免费进入", "#31EF35"},
			{"四象●朱雀", "#00D3FF"},
			{"《星空秘境一层》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"350级免费进入", "#31EF35"},
			{"四象●玄武", "#00D3FF"},
			{"《玄武迷阵一层》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"星空秘境一层", 114, 142, 350},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"玄武迷阵一层", 34, 127, 350},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["海底"] = [[{

	image = 2004300000,--小地图编号
	
	name = "幽冥海域",--地图名称
	
	tips = {--tip描述
		{
			{"400级免费进入", "#31EF35"},
			{"幽冥海域", "#00D3FF"},
			{"《幽冥海域一》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"350级免费进入", "#31EF35"},
			{"海魔地牢", "#00D3FF"},
			{"《海魔地牢》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《幽冥海域一》", 33, 47, 400},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《失落沉船》", 45, 73, 400},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["枉死城"] = [[{

	image = 1914100001,--小地图编号
	
	name = "九幽黄泉",--地图名称
	
	tips = {--tip描述
		{
			{"400级免费进入", "#31EF35"},
			{"阴曹地府", "#00D3FF"},
			{"阴曹地府《一》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"400级免费进入", "#31EF35"},
			{"黄泉路", "#00D3FF"},
			{"黄泉路《一》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"阴曹地府《一》", 53, 232, 400},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"黄泉路《一》", 41, 164, 400},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["阎罗"] = [[{

	image = 1914800007,--小地图编号
	
	name = "十殿●阎罗",--地图名称
	
	tips = {--tip描述
		{
			{"450级免费进入", "#31EF35"},
			{"十殿●阎罗", "#00D3FF"},
			{"《阎王殿》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"450级免费进入", "#31EF35"},
			{"十殿●阎罗", "#00D3FF"},
			{"《阎王殿》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"《阎王殿》", 147, 165, 450},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"《阎王殿》", 102, 73, 450},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]


data["神级打宝"] = [[{

	image = 1912200001,--小地图编号
	
	name = "神级打宝",--地图名称
	
	tips = {--tip描述
		{
			{"300级免费进入", "#31EF35"},
			{"神级打宝地图", "#00D3FF"},
			{"《火龙洞一层》,可爆本服所有装备", "#FF0000"},
		},
		
		{
			{"300级免费进入", "#31EF35"},
			{"神级打宝地图", "#00D3FF"},
			{"《冰龙洞一层》,可爆本服所有装备", "#FF0000"},
		},
	},

	map = {
		{"火龙洞一层", 29, 85, 300},--地图索引名 + 传送x + 传送y + 传送需要等级
		{"冰龙洞一层", 16, 127, 300},
	},
	
	desc = "#COLORCOLOR_ORANGE#    一个追逐梦想的传奇故事，一份值\n\n得珍藏的兄弟情义。#COLORCOLOR_SKYBLUE#青春的记忆里有着\n\n传奇的点点滴滴，不忘热血续写初心\n\n  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#装备全爆，一切靠打！\n#OFFSET<X:0,Y:5>#  #COLORCOLOR_PURPLE#提示：#COLORCOLOR_GREENG#只要你努力一切皆有可能",
}]]

function show(player, npckey)
	
	if data[npckey] == nil then
		lualib:MsgBox(player, "NPC索引名数据错误,仔细检查数据表单.")
		return ""
	end
	
	local str = " mapmove_tab = "..data[npckey]
	
	str = str .." mapmove_npc = "..string.format("%q", npckey)
	
	lualib:ShowFormWithContent(player, "脚本表单", str)
	
	lualib:ShowFormWithContent(player, "form文件表单", "地图模板Wnd")
	
	return ""
	
end


function main(player, npckey, idx)
	
	local idx = tonumber(idx)
	
	if data[npckey] == nil then
		lualib:MsgBox(player, "NPC索引名数据错误,仔细检查数据表单.")
		return ""
	end
	
	local tab = loadstring(" return "..data[npckey])()
	
	if tab.map[idx] == nil then
		lualib:MsgBox(player, "传递了非法客户端数据.")
		return ""
	end
	
	local level = lualib:Level(player)
	
	if level < tab.map[idx][4] then
		lualib:MsgBox(player, "抱歉您的等级不足。")
		return ""
	end
	
	if tab.map[idx][2] == 0 and tab.map[idx][3] == 0 then
		lualib:Player_MapMove(player, tab.map[idx][1])
	else
		lualib:Player_MapMoveXY(player, tab.map[idx][1], tab.map[idx][2], tab.map[idx][3], 3)
	end
	
	local msg = "勇士【"..lualib:Name(player).."】进入了【".. tab.name .."】地图打宝去了。"
	
	lualib:SysMsg_SendBroadcastMsg(msg, "")
	
	return ""
	
end