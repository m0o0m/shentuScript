--[[
变量名称             变量类型         变量说明
fumoAtt..（1~6）       int            所读取到的极品装备条目的属性名称，需要发客户端，附魔石tips显示所吸收过的属性

fumoValue..（1~6）     int            所读取到的极品装备条目的属性值，与fumoAtt..N对应关系，需要发客户端，附魔石tips显示所吸收过的属性（例：fumoAtt1所对应的值为fumoValue1）

xishou                 int            用于判断附魔石是否吸收过极品属性，1为是，其他为否

]]


local itemName = "附魔石"
local gold = 5000

function main(player, a_weizhi, b_weizhi)
	local a_weizhi = tonumber(a_weizhi)
	local b_weizhi = tonumber(b_weizhi)
	local a_guid = lualib:Player_GetItemGuid(player, a_weizhi)
	local a_KeyName = lualib:KeyName(a_guid)
	local a_type = lualib:Item_GetType(player, a_guid)
	local a_subType = lualib:Item_GetSubType(player, a_guid)
	
	
	local pd = a_type == 4 and a_subType == 20
	if  not pd then 
		return "请放入附魔石！"
	end
	
	local b_guid = lualib:Player_GetItemGuid(player, b_weizhi)
	local b_Type = lualib:Item_GetType(player, b_guid)
	local b_SubType = lualib:Item_GetType(player, b_guid)
	
	if b_Type ~= 1 then
		return "请放入装备，才能进行极品属性吸收！"
	end
	
	if lualib:Player_IsGoldEnough(player,gold,false) == false then
		return "吸收极品属性需要5000金币！"
	end
	
	local zidingyi = lualib:GetInt(a_guid, "xishou")
	if zidingyi == 1 then
		return "附魔石已经吸收过属性，不能继续吸收。"
	end
	
	if lualib:Item_IsBind(player, b_guid) == true then
		return "附魔石无法吸收绑定装备的极品属性"
	end
	
	--读取装备极品属性
	local table_jp = {}
	local index = 0
	local table_gong = {}
	local table_qita = {}
	local gong_index = 0
	local qita_index = 0
	while index < 6 do
		local QualProp = lualib:Equip_GetQualProp(player,b_guid,index)
		if QualProp[1] == nil then 
			QualProp[1] = 0
		end
		index = index + 1
		if QualProp[0] == 10 or QualProp[0] == 12 or QualProp[0] == 14 then
			gong_index = gong_index + 1
			table_gong[gong_index] = QualProp
		elseif QualProp[0] ~= 0 and QualProp[0] ~= 195 then
			qita_index = qita_index + 1
			table_qita[qita_index] = QualProp
		end	
	end
	--随机三种攻击属性的一种
	local key = lualib:GenRandom(1, gong_index)
	table_jp = table_qita
	
	
	if gong_index > 0 then
             for i = 1, gong_index do
		table_jp[#table_jp + 1] = table_gong[i]
             end
	end
	
	local abc = false
	for i = 1, table.getn(table_jp) do
		if table_jp[i][0] ~= 0 and table_jp[i][0] ~= 195 then
			abc = true
			--print(table_jp[i][0])
		end
	end
	
	if abc == false then
		return "您放入的装备没有可吸收极品属性类型！"
	end
	
	return fumo(player, a_guid, b_guid, table_jp)
end
	
function fumo(player, a_guid, b_guid, table_jp)
	if not lualib:Player_SubGold(player, gold, false, "附魔非绑金币", "") then return "扣除金币失败" end
	if not lualib:Item_Destroy(player, b_guid, "XXX", "XXX") then return "销毁物品失败" end
	
	--将极品属性写入附魔石自定义变量
	for i = 1, table.getn(table_jp) do
		if table_jp[i][0] ~= 0 then
			if not lualib:SetInt(a_guid,"fumoAtt"..i,table_jp[i][0]) then return "设置自定义变量失败" end
			if not lualib:SetInt(a_guid,"fumoValue"..i,table_jp[i][1]) then return "设置自定义变量失败" end
		end
	end
	lualib:Item_NotifyUpdate(player, a_guid)
	if not lualib:SetInt(a_guid,"xishou",1) then return "设置自定义变量失败" end
	lualib:Item_NotifyUpdate(player, a_guid)
	lualib:MsgBox(player, "附魔石吸收属性成功！")
	return ""
end