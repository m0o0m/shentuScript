local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/新开服活动")

local xuefu_tab = 
{
	{"血符1级·战","血符2级·战","血符3级·战","血符4级·战","血符5级·战","血符6级·战","血符7级·战","血符8级·战","血符9级·战","血符10级·战","血符11级·战","血符12级·战","血符13级·战","血符14级·战","血符15级·战","血符16级·战","血符17级·战","血符18级·战","血符19级·战","血符20级·战","血符21级·战","血符22级·战","血符23级·战","血符24级·战","血符25级·战"},
	{"血符1级·法","血符2级·法","血符3级·法","血符4级·法","血符5级·法","血符6级·法","血符7级·法","血符8级·法","血符9级·法","血符10级·法","血符11级·法","血符12级·法","血符13级·法","血符14级·法","血符15级·法","血符16级·法","血符17级·法","血符18级·法","血符19级·法","血符20级·法","血符21级·法","血符22级·法","血符23级·法","血符24级·法","血符25级·法"},
	{"血符1级·道","血符2级·道","血符3级·道","血符4级·道","血符5级·道","血符6级·道","血符7级·道","血符8级·道","血符9级·道","血符10级·道","血符11级·道","血符12级·道","血符13级·道","血符14级·道","血符15级·道","血符16级·道","血符17级·道","血符18级·道","血符19级·道","血符20级·道","血符21级·道","血符22级·道","血符23级·道","血符24级·道","血符25级·道"},
	{0,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,0},
	
}
local hudun_tab = {
	{"太初护盾","两仪护盾","三才护盾","四象护盾","五行护盾","六合护盾","七星护盾","八卦护盾","九宫护盾","十方护盾"},
	{0,100,200,350,550,800,1100,1450,1850,2300,0},
	}
local baoshi_tab = {
	{"太初宝石","两仪宝石","三才宝石","四象宝石","五行宝石","六合宝石","七星宝石","八卦宝石","九宫宝石","十方宝石"},
	{40,90,150,220,375,935,2340,4400,7020,11705,0},
	}
local hunzhu_tab = {
	{"太初魂珠","两仪魂珠","三才魂珠","四象魂珠","五行魂珠","六合魂珠","七星魂珠","八卦魂珠","九宫魂珠","十方魂珠","圣·太初魂珠","圣·两仪魂珠","圣·三才魂珠","圣·四象魂珠","圣·五行魂珠","圣·六合魂珠","圣·七星魂珠","圣·八卦魂珠","圣·九宫魂珠","圣·十方魂珠","圣·至尊魂珠"},
	{40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,0},
	}
	
function Levelup_able_Num(player)  --可升级数量
	local tb = {0,0,0,0}
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local varRequireTb = {
						["xuefu_chip"]= {999999999,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {999999999,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) >= varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			tb[i] = 1
		end
	end
	return tb
end

function ShowTolNum(player)  --可升级数量
	local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
	local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
	local count = 0
	local varRequireTb = {
						["xuefu_chip"]= {999999999,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
						["hudun_chip"]= {999999999,100,200,350,550,800,1100,1450,1850,2300,99999999},
						["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
						["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
					}
	for i = 1, 4 do
		if lualib:GetInt(player, varTb[i]) > varRequireTb[varTb[i]][lualib:GetInt(player, equipLvTb[i])+1] then
			count = count + 1
		end
		if i == 4 then 
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.SlNum("..count..")")
		end
	end
	return ""
end


function xuefu(player)
	lualib:SetInt(player,"isopentheslwnd",1)
	local index = 1
	local job = lualib:Job(player)
	local level = lualib:GetInt(player,"xuefu_level")
	local next_level = level + 1
	if level == 0 then
		local tb_level1 = lualib:GetItemsByKeys(player, xuefu_tab[job][1], true, true, true, true)
		if #tb_level1 ~= 0 then
			lualib:SetInt(player,"xuefu_level",1)
			level = level + 1
			next_level = level + 1
		end
	end
	local need = xuefu_tab[4][next_level]
	local chip = lualib:GetInt(player,"xuefu_chip") 
	local tab = {index,level,xuefu_tab[job],need,chip}
	local table_data = serialize(tab)
	local showTb = Levelup_able_Num(player)
	
	lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_xuefu(player)
	local job = lualib:Job(player)
	local level = lualib:GetInt(player,"xuefu_level")
	local tab = {level,xuefu_tab[job]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"脚本表单","ElseItem1.updata("..table_data..");")
	return ""
end

function get_xuefu(player,str)
	local job = lualib:Job(player)
	local level = lualib:GetInt(player,"xuefu_level")
	local next_level = level + 1
	local chip = lualib:GetInt(player,"xuefu_chip")	
	if level <= 0 then
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"一级护符只能从主线任务获取！！！\");")
		return ""
	elseif level >= #xuefu_tab[job] then 
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"已经是最高等级护符，无法再继续升级\");")
		lualib:SysPromptMsg(player, "已经是最高等级护符，无法再继续升级")
		--return "已经是最高等级护符，无法再继续升级" 
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, xuefu_tab[job][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"没有装备护符，无法升阶\");")
			return ""
		end
		if chip < xuefu_tab[4][next_level] then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"碎片不足，无法升级\");")
			--lualib:SysPromptMsg(player, "碎片不足，无法升级")
			--return "碎片不足，无法升级"
			return ""
		end
		if lualib:GetBagFree(player) < 1 then
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"您的背包满了，请先清理背包再进行升级\");")
			lualib:SysPromptMsg(player, "您的背包满了，请先清理背包再进行升级！！")
			--return "您的背包满了，请先清理背包再进行升级！！"
			return ""
		end
		if not lualib:DelItemEx(player, xuefu_tab[job][level], 1, 2, true, true, true, true, "升级护符", "升级护符") then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"删除道具失败\");")
			lualib:SysPromptMsg(player, "删除道具失败")
			--return "删除道具失败"
			return ""
		end
		if not lualib:AddItem(player,xuefu_tab[job][next_level],1,true,"升级护符", player) then --给物品
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"系统给道具失败，升级护符失败\");")
			lualib:SysPromptMsg(player, "系统给道具失败，升级护符失败")
			--return "系统给道具失败，升级护符失败"
			return ""
		end
		lualib:ShowFormWithContent(player,"脚本表单",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
		lualib:ApplyEquipEx(player, xuefu_tab[job][next_level])   --给玩家穿装备
	end
	local new_chip = chip - xuefu_tab[4][next_level]
	lualib:SetInt(player,"xuefu_chip",new_chip)
	lualib:SetInt(player,"xuefu_level",next_level)
	xuefu(player)
	if str == "1" then
		qita_xuefu(player)
	end
	--return "护符升级成功"
	return ""	
end

function hudun(player)
	lualib:SetInt(player,"isopentheslwnd",2)
	local index = 2
	local level = lualib:GetInt(player,"hudun_level")
	local next_level = level + 1
	if level == 0 then
		local tb_level1 = lualib:GetItemsByKeys(player, hudun_tab[1][1], true, true, true, true)
		if #tb_level1 ~= 0 then
			lualib:SetInt(player,"hudun_level",1)
			level = level + 1
			next_level = level + 1
		end
	end
	local need = hudun_tab[2][next_level]
	local chip = lualib:GetInt(player,"hudun_chip")
	local tab = {index,level,hudun_tab[1],need,chip}
	local table_data = serialize(tab)
	local showTb = Levelup_able_Num(player)
	
	lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_hudun(player)
	local level = lualib:GetInt(player,"hudun_level")
	local tab = {level,hudun_tab[1]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"脚本表单","ElseItem2.updata("..table_data..");")
	return ""
end

function get_hudun(player,str)
	local level = lualib:GetInt(player,"hudun_level")
	local next_level = level + 1
	local chip = lualib:GetInt(player,"hudun_chip")
	local jl_level = 0
	local zl_level = 0
	local item_level = 0
	local hole = {}
	local tb_bs = {}
	local tb_qh = {}
	local tb_zl = {}
	local item_guid = ""
	local item_guid2 = ""
	if level <= 0 then
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"一级盾牌只能从主线任务获取！！！\");")
		return ""
	elseif level >= #hudun_tab[1] then 
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"已经是最高等级盾牌，无法再继续升级\");")
		lualib:SysPromptMsg(player, "已经是最高等级盾牌，无法再继续升级")
		--return "已经是最高等级盾牌，无法再继续升级" 
		return ""
	else
		if chip < hudun_tab[2][next_level] then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"碎片不足，无法升级\");")
			--lualib:SysPromptMsg(player, "碎片不足，无法升级")
			--return "碎片不足，无法升级"
			return ""
		end
		local tb = lualib:GetItemsByKeys(player, hudun_tab[1][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"没有装备盾牌，无法升阶\");")
			return ""
		else
			item_guid = tb[1]
			local xing_num = lualib:GetInt(item_guid,"xing_num")  --获取老装备星星数量
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			item_level = lualib:Item_GetLevel(item_guid)
			if lualib:GetBagFree(player) < 1 then
				lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"您的背包满了，请先清理背包在进行升级\");")
				lualib:SysPromptMsg(player, "您的背包满了，请先清理背包在进行升级！！")
				--return "您的背包满了，请先清理背包在进行升级！！"
				return ""
			end
			if not lualib:AddItem(player,hudun_tab[1][next_level],1,true,"升级盾牌", player) then --给物品
				lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"系统给道具失败，升级盾牌失败\");")
				lualib:SysPromptMsg(player, "系统给道具失败，升级盾牌失败")
				--return "系统给道具失败，升级盾牌失败"
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, hudun_tab[1][next_level], true, true, false, false)
			if #tb2 == 0 then
				return "没找到"..hudun_tab[1][next_level]
			else
				item_guid2 = tb2[1] 			
			end
			lualib:SetInt(item_guid2, "xing_num", xing_num)  --设置新装备星星数量
			if jl_level > 0 then 
				lualib:Equip_SetRefineLevel(player, item_guid2, jl_level) --设置强化等级
				local a = 6
				for i = 1 , 4 do                              --设置动态属性
					tb_qh[i] = lualib:Equip_GetExtProp(player, item_guid, a)
					lualib:Equip_SetExtProp(player, item_guid2, a, tb_qh[i][0], tb_qh[i][1])
					a = a + 1 
				end
			end
			if zl_level > 0 then
				local b = 10
				for i = 1 , 4 do                              --设置动态属性
					lualib:SetInt(item_guid2,"zhul_level",zl_level)          --设置蕴魂等级
					tb_zl[i] = lualib:GetDynamicAttr(item_guid, b)
					lualib:SetDynamicAttr(item_guid2, b, tb_zl[i]["attr_name"], tb_zl[i]["attr_value"])
					b = b + 1
				end	
			end
			for i = 1 , 4 do 
					hole[i] = lualib:GetStr(item_guid, "EquipHole" .. i)
					if hole[i] ~= "" then
						lualib:SetStr(item_guid2, "EquipHole" .. i,hole[i])
					end
				end
				for i = 30 , 40 do 
					tb_bs[i] = lualib:GetDynamicAttr(item_guid, i)
					if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
						lualib:SetDynamicAttr(item_guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
					end
				end
			lualib:Item_NotifyUpdate(player, item_guid2)
			if not lualib:DelItemEx(player, hudun_tab[1][level], 1, 2, true, true, true, true, "升级盾牌", "升级盾牌") then
				lualib:ShowFormWithContent(player,"脚本表单","msg_up(\"删除道具失败\");")
			end
			lualib:ShowFormWithContent(player,"脚本表单",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
			lualib:ApplyEquipEx(player,hudun_tab[1][next_level])   --给玩家穿装备	
		end
	end
	local new_chip = chip - hudun_tab[2][next_level]
	lualib:SetInt(player,"hudun_chip",new_chip)
	lualib:SetInt(player,"hudun_level",next_level)
	hudun(player)
	if str == "1" then
		qita_hudun(player)
	end
	--return "护盾升级成功"
	return ""
end

function baoshi(player)
	lualib:SetInt(player,"isopentheslwnd",3)
	local index = 3
	local level = lualib:GetInt(player,"baoshi_level")
	local next_level = level + 1
	local need = baoshi_tab[2][next_level]
	local chip = lualib:GetInt(player,"baoshi_chip")
	local tab = {index,level,baoshi_tab[1],need,chip}
	local table_data = serialize(tab)
	local showTb = Levelup_able_Num(player)
	
	lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_baoshi(player)
	local level = lualib:GetInt(player,"baoshi_level")
	local tab = {level,baoshi_tab[1]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"脚本表单","ElseItem3.updata("..table_data..");")
	return ""
end

function get_baoshi(player,str)
	local level = lualib:GetInt(player,"baoshi_level")
	local next_level = level + 1
	local chip = lualib:GetInt(player,"baoshi_chip")
	local jl_level = 0
	local zl_level = 0
	local hole = {}
	local tb_bs = {}
	local tb_qh = {}
	local tb_zl = {}
	local item_guid = ""
	local item_guid2 = ""
	
	if chip < baoshi_tab[2][next_level] then 
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"碎片不足，无法升级\");")
		--lualib:SysPromptMsg(player, "碎片不足，无法升级")
		--return "碎片不足，无法升级"
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"您的背包满了，请先清理背包在进行升级\");")
		lualib:SysPromptMsg(player, "您的背包满了，请先清理背包在进行升级")
		--return "您的背包满了，请先清理背包在进行升级"
		return ""
	end
	
	if level == 0 then
		if not lualib:AddItem(player,baoshi_tab[1][next_level],1,true,"升级宝石", player) then --给物品
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"你包裹满了或是其它情况，升级宝石失败\");")
			return ""
		end
		lualib:ShowFormWithContent(player,"脚本表单",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
		lualib:ApplyEquipEx(player,baoshi_tab[1][next_level])   --给玩家穿装备
	elseif level >= #baoshi_tab[1] then 
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"已经是最高等级宝珠，无法再继续升级\");")
		lualib:SysPromptMsg(player, "已经是最高等级宝珠，无法再继续升级")
		--return "已经是最高等级宝珠，无法再继续升级" 
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, baoshi_tab[1][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"没有装备宝石，无法升阶\");")
			return ""
		else
			item_guid = tb[1]
			local xing_num = lualib:GetInt(item_guid,"xing_num")  --获取老装备星星数量
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			item_level = lualib:Item_GetLevel(item_guid)
			if not lualib:AddItem(player,baoshi_tab[1][next_level],1,true,"升级宝石", player) then --给物品
				lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"你包裹满了或是其它情况，升级宝石失败\");")
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, baoshi_tab[1][next_level], true, true, false, false)
			if #tb2 == 0 then
				return "没找到"..baoshi_tab[1][next_level]
			else
				item_guid2 = tb2[1] 			
			end
			
			lualib:SetInt(item_guid2, "xing_num", xing_num)  --设置新装备星星数量
			if jl_level > 0 then
				local a = 4
				for i = 1 , 6 do                              --设置动态属性
					lualib:Equip_SetRefineLevel(player, item_guid2, jl_level) --设置强化等级
					tb_qh[i] = lualib:Equip_GetExtProp(player, item_guid, a)
					lualib:Equip_SetExtProp(player, item_guid2, a, tb_qh[i][0], tb_qh[i][1])
					--lualib:SysPromptMsg(player, ""..tb_qh[i][1])
					a = a + 1 
				end	
			end
			if zl_level > 0 then
				local b = 10
				for i = 1 , 6 do                              --设置动态属性
					lualib:SetInt(item_guid2,"zhul_level",zl_level)          --设置蕴魂等级
					tb_zl[i] = lualib:GetDynamicAttr(item_guid, b)
					lualib:SetDynamicAttr(item_guid2, b, tb_zl[i]["attr_name"], tb_zl[i]["attr_value"])
					--lualib:SysPromptMsg(player, ""..tb_zl[i]["attr_value"])
					b = b + 1
				end	
			end
			for i = 1 , 4 do 
				hole[i] = lualib:GetStr(item_guid, "EquipHole" .. i)
				if hole[i] ~= "" then
					lualib:SetStr(item_guid2, "EquipHole" .. i,hole[i])
				end
			end
			for i = 30 , 40 do 
				tb_bs[i] = lualib:GetDynamicAttr(item_guid, i)
				if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
					lualib:SetDynamicAttr(item_guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
				end
			end
			lualib:Item_NotifyUpdate(player, item_guid2)
			if not lualib:DelItemEx(player, baoshi_tab[1][level], 1, 2, true, true, true, true, "升级勋章", "升级勋章") then
				lualib:ShowFormWithContent(player,"脚本表单","msg_up(\"删除道具失败\");")
			end
			lualib:ShowFormWithContent(player,"脚本表单",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
			lualib:ApplyEquipEx(player,baoshi_tab[1][next_level])   --给玩家穿装备
		end
	end
	local new_chip = chip - baoshi_tab[2][next_level]
	lualib:SetInt(player,"baoshi_chip",new_chip)
	lualib:SetInt(player,"baoshi_level",next_level)
	baoshi(player)
	if str == "1" then
		qita_baoshi(player)
	end
	lualib:SysPromptMsg(player, "宝珠升级成功")
	AddKaiFuMagicOnBaoShiLevelUp(player)
	--return "宝石升级成功"
	return ""
end  

function hunzhu(player)
	lualib:SetInt(player,"isopentheslwnd",4)
	local index = 4
	local level = lualib:GetInt(player,"hunzhu_level")
	local next_level = level + 1
	local need = hunzhu_tab[2][next_level]
	local chip = lualib:GetInt(player,"hunzhu_chip")
	local tab = {index,level,hunzhu_tab[1],need,chip}
	local table_data = serialize(tab)
	local showTb = Levelup_able_Num(player)
	
	lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_hunzhu(player)
	local level = lualib:GetInt(player,"hunzhu_level")
	local tab = {level,hunzhu_tab[1]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"脚本表单","ElseItem4.updata("..table_data..");")
	return ""
end

function get_hunzhu(player,str)
	local level = lualib:GetInt(player,"hunzhu_level")
	local next_level = level + 1
	local chip = lualib:GetInt(player,"hunzhu_chip")
	local jl_level = 0
	local zl_level = 0
	local hole = {}
	local tb_bs = {}
	local tb_qh = {}
	local tb_zl = {}
	local item_guid = ""
	local item_guid2 = ""
	
	if chip < hunzhu_tab[2][next_level] then 
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"碎片不足，无法升级\");")
		--lualib:SysPromptMsg(player, "碎片不足，无法升级")
		--return "碎片不足，无法升级"
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"您的背包满了，请先清理背包在进行升级\");")
		lualib:SysPromptMsg(player, "您的背包满了，请先清理背包在进行升级")
		--return "您的背包满了，请先清理背包在进行升级"
		return ""
	end

	if level == 0 then
		if not lualib:AddItem(player,hunzhu_tab[1][next_level],1,true,"升级灵珠", player) then --给物品
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"你包裹满了或是其它情况，升级灵珠失败\");")
			return ""
		end
		lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,'FurnaceWnd,item',3006700004,-180,-160,150,1)")
		lualib:ApplyEquipEx(player,hunzhu_tab[1][next_level])   --给玩家穿装备
	elseif level >= #hunzhu_tab[1] then 
		lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"已经是最高等级灵珠，无法再继续升级\");")
		lualib:SysPromptMsg(player, "已经是最高等级灵珠，无法再继续升级")
		--return "已经是最高等级灵珠，无法再继续升级" 
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, hunzhu_tab[1][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"没有装备灵珠，无法升阶\");")
			return ""
		else
			item_guid = tb[1]
			local xing_num = lualib:GetInt(item_guid,"xing_num")  --获取老装备星星数量
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			item_level = lualib:Item_GetLevel(item_guid)
			if lualib:GetBagFree(player) < 1 then
				lualib:SysPromptMsg(player, "您的背包满了，请先清理背包在进行升级，以免造成升级装备的丢失！！")
				--return "您的背包满了，请先清理背包在进行升级，以免造成升级装备的丢失！！"
				return ""
			end
			if not lualib:AddItem(player,hunzhu_tab[1][next_level],1,true,"升级宝石", player) then --给物品
				lualib:ShowFormWithContent(player,"脚本表单","FurnaceWnd.msg_up(\"你包裹满了或是其它情况，升级宝石失败\");")
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, hunzhu_tab[1][next_level], true, true, false, false)
			if #tb2 == 0 then
				return "没找到"..hunzhu_tab[1][next_level]
			else
				item_guid2 = tb2[1] 			
			end
			
			lualib:SetInt(item_guid2, "xing_num", xing_num)  --设置新装备星星数量
			if jl_level > 0 then
				local a = 4
				for i = 1 , 6 do                              --设置动态属性
					lualib:Equip_SetRefineLevel(player, item_guid2, jl_level) --设置强化等级
					tb_qh[i] = lualib:Equip_GetExtProp(player, item_guid, a)
					lualib:Equip_SetExtProp(player, item_guid2, a, tb_qh[i][0], tb_qh[i][1])
					--lualib:SysPromptMsg(player, ""..tb_qh[i][1])
					a = a + 1 
				end	
			end
			if zl_level > 0 then
				local b = 10
				for i = 1 , 6 do                              --设置动态属性
					lualib:SetInt(item_guid2,"zhul_level",zl_level)          --设置蕴魂等级
					tb_zl[i] = lualib:GetDynamicAttr(item_guid, b)
					lualib:SetDynamicAttr(item_guid2, b, tb_zl[i]["attr_name"], tb_zl[i]["attr_value"])
					b = b + 1
				end	
			end
			for i = 1 , 4 do 
				hole[i] = lualib:GetStr(item_guid, "EquipHole" .. i)
				if hole[i] ~= "" then
					lualib:SetStr(item_guid2, "EquipHole" .. i,hole[i])
				end
			end
			for i = 30 , 40 do 
				tb_bs[i] = lualib:GetDynamicAttr(item_guid, i)
				if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
					lualib:SetDynamicAttr(item_guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
				end
			end
				
			lualib:Item_NotifyUpdate(player, item_guid2)
			if not lualib:DelItemEx(player, hunzhu_tab[1][level], 1, 2, true, true, true, true, "升级勋章", "升级勋章") then
				lualib:ShowFormWithContent(player,"脚本表单","msg_up(\"删除道具失败\");")
			end
			lualib:ShowFormWithContent(player,"脚本表单","WndAddEffect(nil,'FurnaceWnd,item',3006700004,-180,-160,150,1)")
			lualib:ApplyEquipEx(player,hunzhu_tab[1][next_level])   --给玩家穿装备
		end
	end
	local new_chip = chip - hunzhu_tab[2][next_level]
	lualib:SetInt(player,"hunzhu_chip",new_chip)
	lualib:SetInt(player,"hunzhu_level",next_level)
	hunzhu(player)
	if tonumber(str) == 1 then
		qita_hunzhu(player)
	end
	AddKaiFuMagicOnHunZhuLevelUp(player)
	--return "灵珠升级成功"
	return ""
	
end


function sl_close(player)
	lualib:SetInt(player,"isopentheslwnd",0)
	return ""
end

