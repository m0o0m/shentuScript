local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local job_shuxing = {
	"MaxPhyAtk",
	"MaxMagAtk",
	"MaxTaoAtk",
}

	function huanzhuang_yindao(player,item1)
		if lualib:Item_GetType(player,item1) == 1 then
		else
			return
		end
		
		local Job = lualib:Job(player)
		local lv = lualib:Level(player)
		local Gender = lualib:Gender(player)
		local shuxing = job_shuxing[Job] --对比的属性
		local Item1_Type = lualib:Item_GetSubType(player,item1)
		local item1_name = lualib:KeyName(item1)
		local item1_table = lualib:Item_DataRow(item1_name)
		
		--判断玩家等级是否能穿戴上
		if item1_table.Level <= lv then
		else
			return
		end

		--判断玩家性别是否能穿戴上
		if item1_table.Gender == 0 or item1_table.Gender == Gender then
		else
			return
		end
		
		--判断玩家职业是否能穿戴上
		if item1_table.Job == 0 or item1_table.Job == Job then
		else
			return
		end
		
		--判断玩家物攻是否能穿戴上
		if item1_table.PhyLimit <= lualib:PhyAtkPoint(player) then
		else
			return
		end
		
		--判断玩家魔攻是否能穿戴上
		if item1_table.MagLimit <= lualib:MagAtkPoint(player) then
		else
			return
		end

		--判断玩家腕力是否能穿戴上
		if item1_table.SelfWeight <= lualib:Brawn(player,true) then
		else
			return
		end
		
		--判断玩家道攻是否能穿戴上
		if item1_table.TaoLimit <= lualib:TaoAtkPoint(player) then
		else
			return
		end
		
		--获取玩家身上同类装备的GUID
		local item2 = ""
		local item2_name = ""
		local item2_table = {}
		
		local item3 = ""
		local item3_name = ""
		local item3_table = {}
		
		if Item1_Type == 1 then
			item2 = lualib:Item_GetBySite(player,lua_site_weapon)		--获得身上武器guid
		elseif Item1_Type == 2  then
			item2 = lualib:Item_GetBySite(player,lua_site_helmet)		--获得身上头盔guid
		elseif Item1_Type == 3  then
			item2 = lualib:Item_GetBySite(player,lua_site_wrist_0)		--获得身上左手镯guid
			item3 = lualib:Item_GetBySite(player,lua_site_wrist_1)		--获得身上右手镯guid
		elseif Item1_Type == 4  then
			item2 = lualib:Item_GetBySite(player,lua_site_armor)		--获得身上衣服guid
		elseif Item1_Type == 6  then
			item2 = lualib:Item_GetBySite(player,lua_site_shoes)		--获得身上靴子guid
		elseif Item1_Type == 8  then
			item2 = lualib:Item_GetBySite(player,lua_site_necklace)		--获得身上项链guid
		elseif Item1_Type == 9  then
			item2 = lualib:Item_GetBySite(player,lua_site_ring_0)		--获得身上左戒指guid
			item3 = lualib:Item_GetBySite(player,lua_site_ring_1)		--获得身上右戒指guid
		elseif Item1_Type == 10  then
			item2 = lualib:Item_GetBySite(player,lua_site_medal)		--获得身上勋章guid
		elseif Item1_Type == 12  then
			item2 = lualib:Item_GetBySite(player,lua_site_wings)		--获得身上翅膀guid
		elseif Item1_Type == 14  then
			item2 = lualib:Item_GetBySite(player,lua_site_mount)		--获得身上坐骑guid
		else
			return
		end

		local s = " chuanzhuang_yindao_item = "..string.format("%q","")
		s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q","")
		s = s .. " chuanzhuang_yindao_item_bang = " ..string.format("%q","") --物品是否绑定
		s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q","") --穿戴位置
		
		local i = 0
		
		if item2 ~= "" then
			item2_name = lualib:KeyName(item2)
			item2_table = lualib:Item_DataRow(item2_name)
			if item1_table[shuxing] > item2_table[shuxing] then
				i = 1
				s = " chuanzhuang_yindao_item = "..string.format("%q",item1)
				s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q",item1_name)
				s = s .. " chuanzhuang_yindao_item_bang = "..string.format("%q",tostring(lualib:Item_IsBind(player,item1))) --物品是否绑定
				if Item1_Type == 3 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",3)
				elseif Item1_Type == 9 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",10)
				else
					s = s .. ZhuangBeiChuanDaiWeiZhi(Item1_Type)
				end
				print("触发了1="..item1_table[shuxing].." "..item2_table[shuxing])
			end
		end
		
		if item3 ~= "" then
			item3_name = lualib:KeyName(item3)
			item3_table = lualib:Item_DataRow(item3_name)
			if item1_table[shuxing] > item3_table[shuxing] then
				i = 1
				s = " chuanzhuang_yindao_item = "..string.format("%q",item1)
				s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q",item1_name)
				s = s .. " chuanzhuang_yindao_item_bang = "..string.format("%q",tostring(lualib:Item_IsBind(player,item1))) --物品是否绑定
				if Item1_Type == 3 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",4)
				elseif Item1_Type == 9 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",11)
				else
					s = s .. ZhuangBeiChuanDaiWeiZhi(Item1_Type)
				end
				print("触发了2="..item1_table[shuxing].." "..item3_table[shuxing])
			end
		end

		if (Item1_Type == 3 or Item1_Type == 9) and (item2 == "" or item3 == "") then
			i = 1
			s = " chuanzhuang_yindao_item = "..string.format("%q",item1)
			s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q",item1_name)
			s = s .. " chuanzhuang_yindao_item_bang = "..string.format("%q",tostring(lualib:Item_IsBind(player,item1))) --物品是否绑定
			if Item1_Type == 3 then
				if item2 == "" then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",3)
				elseif item3 == "" then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",4)
				end
			elseif Item1_Type == 9 then
				if item2 == "" then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",10)
				elseif item3 == "" then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",11)
				end
			else
				s = s .. ZhuangBeiChuanDaiWeiZhi(Item1_Type)
			end
		end
		
		if i == 0 then
			return
		end

		local zhuagbeiyindao = {}
		if lualib:GetStr(player,"zhuangbei_chuandai") ~= "" then
			zhuagbeiyindao = json.decode(lualib:GetStr(player,"zhuangbei_chuandai"))
		end
		
		if zhuagbeiyindao[item1] == nil then
			zhuagbeiyindao[item1] = true
			lualib:SetStr(player,"zhuangbei_chuandai",json.encode(zhuagbeiyindao)) --table保存为字符串
		end
		
		lualib:ShowFormWithContent(player,"脚本表单",s)
		lualib:ShowFormWithContent(player,"form文件表单","装备引导")
		
		return ""
	end

	
local leixingduiyingweizhi = {
	[1] = 1, --武器
	[2] = 2, --头盔
	[5] = 5, --衣服
	[6] = 7, --靴子
	[7] = 8, --护肩
	[8] = 9, --项链
	[10] = 12, --勋章
	[12] = 14, --翅膀
	[14] = 16, --坐骑
}

function ZhuangBeiChuanDaiWeiZhi(Item1_Type)
	return " chuanzhuang_yindao_item_weizhi = "..string.format("%q",leixingduiyingweizhi[Item1_Type])
end


function yindao_chuandai_1(player,item,weizhi)
	local zhuagbeiyindao = json.decode(lualib:GetStr(player,"zhuangbei_chuandai"))
	zhuagbeiyindao[item] = nil
	
	--判断装备是否在包裹中
	if lualib:Item_GetSite(player,item) == "" then
		lualib:SysMsg_SendWarnMsg(player, "穿戴失败！物品不存在！")
		return
	end

	if weizhi == nil then
		lualib:TakeOnEx(player,item) --穿戴上装备
	else
		lualib:TakeOnEx(player,item,tonumber(weizhi)) --穿戴上装备
	end
		
	for k,v in pairs(zhuagbeiyindao) do
		if lualib:Item_GetSite(player,k) == "" then
			zhuagbeiyindao[k] = nil
		else
			huanzhuang_yindao(player,k) --执行新的引导
			break
		end
	end
	
	lualib:SetStr(player,"zhuangbei_chuandai",json.encode(zhuagbeiyindao)) --table保存为字符串
end