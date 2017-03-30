local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/右上图标")


local tab_jifen = {
	{"初出茅庐",2000,5000,8000,15000},
	{"累计登录",20000,40000,72000,100000,160000,220000,300000,390000,500000,650000,790000,960000,1150000,1400000,1680000},
	{"等级修炼",10000,12000,15000,22000,30000,40000,60000,90000,130000,260000,520000,870000,1740000},
	{"降妖除魔",2000,4000,6000,8000,10000,15000,21000,33000,99000,180000,340000,610000,1030000,1640000,2620000},
	{"BOSS击杀",5000,10000,15000,20000,30000,30000,30000,45000,45000,60000,100000,100000,100000,150000},
	{"强化次数",10000,12000,15000,22000,30000,100000,120000,140000,200000},
	{"副本次数",12000,12000,12000,12000,12000,36000,36000,36000,80000,80000,80000},
	{"神翼培养",20000,40000,80000,120000,300000,1000000}
}
local xun_tab = {"太初勋章","两仪勋章","三才勋章","四象勋章","五行勋章","六合勋章","七星勋章","八卦勋章","九宫勋章","十方勋章","至尊勋章","主宰勋章"}
local xun_jifen = {60000,400000,1450000,2950000,4680000,7800000,14500000,25000000,38000000,50000000,70000000,95000000,0}
function main(player)
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local level = lualib:GetInt(player,"Ach_xunz")
	local vis = 0 
	if jifen >= xun_jifen[level+1] and level ~= #xun_jifen - 1 then
		vis = 1
	end
	
	Button_add_magic2(player,vis)
	local table_data = serialize(tab_jifen)
	local num = lualib:GetInt(player,"GloryGetNum")
	lualib:ShowFormWithContent(player,"脚本表单","Hero_jif("..table_data..","..num..","..vis..");EditSetText(nil,\"AchieveWnd,Achjifen\",\"".. jifen .."\")")
	return ""
end

function get_xun(player)	
	local level = lualib:GetInt(player,"Ach_xunz")
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local next_level = level + 1
	local tb = {}
	local tb2 = {}
	local jl_level = 0
	local zl_level = 0
	local hole = {}
	local tb_bs = {}
	local tb_qh = {}
	local tb_zl = {}
	local item_guid = ""
	local item_guid2 = ""
	--lualib:DelItemEx(player, xun_tab[12], 1, 2, true, true, true, true, "升级勋章", "升级勋章")
	
	if jifen < xun_jifen[next_level] then
		lualib:ShowFormWithContent(player,"脚本表单","Xunz_Win.msg_up(\"积分不足，未达到领取条件\");")
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player,"脚本表单","Xunz_Win.msg_up(\"您的背包满了，请先清理背包再进行升级\");")
		return "您的背包满了，请先清理背包在进行升级"
	end 
	
	if level == 0 then
		if not lualib:AddItem(player,xun_tab[next_level],1,true,"升级勋章", player) then --给物品
			lualib:ShowFormWithContent(player,"脚本表单","Xunz_Win.msg_up(\"系统给道具失败，升级勋章失败\");")
			return ""
		end
	elseif level >= #xun_tab then
		lualib:ShowFormWithContent(player,"脚本表单","Xunz_Win.msg_up(\"已经是最高等级勋章，无法继续升级\");")
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, xun_tab[level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"脚本表单","Xunz_Win.msg_up(\"没有装备勋章，无法升阶\");")
			return ""
		else
			item_guid = tb[1]
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			if not lualib:AddItem(player,xun_tab[next_level],1,true,"升级宝石", player) then --给物品
				lualib:ShowFormWithContent(player,"脚本表单","Xunz_Win.msg_up(\"你包裹满了或是其它情况，升级宝石失败\");")
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, xun_tab[next_level], true, true, false, false)
			if #tb2 == 0 then
				return "没找到"..xun_tab[next_level]
			else
				item_guid2 = tb2[1] 			
			end
			
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
			if not lualib:DelItemEx(player, xun_tab[level], 1, 2, true, true, true, true, "升级勋章", "升级勋章") then
				lualib:ShowFormWithContent(player,"脚本表单","msg_up(\"删除道具失败\");")
			end
		end
	end	
	lualib:ApplyEquipEx(player,xun_tab[next_level])   --给玩家穿装备
	lualib:SetInt(player,"Ach_xunz",lualib:GetInt(player,"Ach_xunz") + 1)
	local index_new = lualib:GetInt(player,"Ach_xunz")
	local tab = {xun_tab,index_new,jifen}
	local table_data = serialize(tab) 
	local jifen = lualib:GetInt(player,"Ach_jifen") 
	local vis = 0 
	if jifen >= xun_jifen[index_new+1] and index_new ~= #xun_jifen - 1 then
		vis = 1
	end 
	Button_add_magic2(player,vis)
	local num = lualib:GetInt(player,"GloryGetNum")
	lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.MedalNum = "..vis..";GameMainBar.AchNum("..num..");xunzl("..table_data..","..vis..");WndAddEffect(nil,\"AchieveWnd,Xunz_Win,item\",3006900000,-185,-172,150,1);Xunz_Win.msg_up(\"勋章升级成功\");")
	return ""
end

function addIntegral(player,str,n)
	local jf = tonumber(str)
	local num = tonumber(n)
	lualib:SetInt(player,"GloryGetNum",num)
	lualib:SetInt(player,"Ach_jifen",lualib:GetInt(player,"Ach_jifen") + jf )
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local index = lualib:GetInt(player,"Ach_xunz")
	local vis = 0 
	if jifen >= xun_jifen[index+1] and index ~= #xun_jifen - 1 then
		vis = 1
	end
	Button_add_magic2(player,vis)
	--UpdateReward(player,name)
	lualib:ShowFormWithContent(player,"脚本表单","HeroAch_Wnd.visible("..vis..","..num..");EditSetText(nil,\"AchieveWnd,Achjifen\",\"".. jifen .."\")")
	return ""
end


function xunz(player)
	local index = lualib:GetInt(player,"Ach_xunz")
	local jifen = lualib:GetInt(player,"Ach_jifen")
	local tab = {xun_tab,index,jifen}
	local table_data = serialize(tab) 
	local vis = 0 
	if jifen >= xun_jifen[index+1] and index ~= #xun_jifen - 1 then
		vis = 1
	end 
	lualib:ShowFormWithContent(player,"脚本表单","xunzl("..table_data..","..vis..");")
	return ""
end
