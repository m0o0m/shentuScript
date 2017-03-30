local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("system/����ͼ��")


local tab_jifen = {
	{"����é®",2000,5000,8000,15000},
	{"�ۼƵ�¼",20000,40000,72000,100000,160000,220000,300000,390000,500000,650000,790000,960000,1150000,1400000,1680000},
	{"�ȼ�����",10000,12000,15000,22000,30000,40000,60000,90000,130000,260000,520000,870000,1740000},
	{"������ħ",2000,4000,6000,8000,10000,15000,21000,33000,99000,180000,340000,610000,1030000,1640000,2620000},
	{"BOSS��ɱ",5000,10000,15000,20000,30000,30000,30000,45000,45000,60000,100000,100000,100000,150000},
	{"ǿ������",10000,12000,15000,22000,30000,100000,120000,140000,200000},
	{"��������",12000,12000,12000,12000,12000,36000,36000,36000,80000,80000,80000},
	{"��������",20000,40000,80000,120000,300000,1000000}
}
local xun_tab = {"̫��ѫ��","����ѫ��","����ѫ��","����ѫ��","����ѫ��","����ѫ��","����ѫ��","����ѫ��","�Ź�ѫ��","ʮ��ѫ��","����ѫ��","����ѫ��"}
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
	lualib:ShowFormWithContent(player,"�ű���","Hero_jif("..table_data..","..num..","..vis..");EditSetText(nil,\"AchieveWnd,Achjifen\",\"".. jifen .."\")")
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
	--lualib:DelItemEx(player, xun_tab[12], 1, 2, true, true, true, true, "����ѫ��", "����ѫ��")
	
	if jifen < xun_jifen[next_level] then
		lualib:ShowFormWithContent(player,"�ű���","Xunz_Win.msg_up(\"���ֲ��㣬δ�ﵽ��ȡ����\");")
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player,"�ű���","Xunz_Win.msg_up(\"���ı������ˣ������������ٽ�������\");")
		return "���ı������ˣ������������ڽ�������"
	end 
	
	if level == 0 then
		if not lualib:AddItem(player,xun_tab[next_level],1,true,"����ѫ��", player) then --����Ʒ
			lualib:ShowFormWithContent(player,"�ű���","Xunz_Win.msg_up(\"ϵͳ������ʧ�ܣ�����ѫ��ʧ��\");")
			return ""
		end
	elseif level >= #xun_tab then
		lualib:ShowFormWithContent(player,"�ű���","Xunz_Win.msg_up(\"�Ѿ�����ߵȼ�ѫ�£��޷���������\");")
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, xun_tab[level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"�ű���","Xunz_Win.msg_up(\"û��װ��ѫ�£��޷�����\");")
			return ""
		else
			item_guid = tb[1]
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			if not lualib:AddItem(player,xun_tab[next_level],1,true,"������ʯ", player) then --����Ʒ
				lualib:ShowFormWithContent(player,"�ű���","Xunz_Win.msg_up(\"��������˻������������������ʯʧ��\");")
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, xun_tab[next_level], true, true, false, false)
			if #tb2 == 0 then
				return "û�ҵ�"..xun_tab[next_level]
			else
				item_guid2 = tb2[1] 			
			end
			
			if jl_level > 0 then
				local a = 4
				for i = 1 , 6 do                              --���ö�̬����
					lualib:Equip_SetRefineLevel(player, item_guid2, jl_level) --����ǿ���ȼ�
					tb_qh[i] = lualib:Equip_GetExtProp(player, item_guid, a)
					lualib:Equip_SetExtProp(player, item_guid2, a, tb_qh[i][0], tb_qh[i][1])
					--lualib:SysPromptMsg(player, ""..tb_qh[i][1])
					a = a + 1 
				end	
			end
			if zl_level > 0 then
				local b = 10
				for i = 1 , 6 do                              --���ö�̬����
					lualib:SetInt(item_guid2,"zhul_level",zl_level)          --�����̻�ȼ�
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
			if not lualib:DelItemEx(player, xun_tab[level], 1, 2, true, true, true, true, "����ѫ��", "����ѫ��") then
				lualib:ShowFormWithContent(player,"�ű���","msg_up(\"ɾ������ʧ��\");")
			end
		end
	end	
	lualib:ApplyEquipEx(player,xun_tab[next_level])   --����Ҵ�װ��
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
	lualib:ShowFormWithContent(player,"�ű���","GameMainBar.MedalNum = "..vis..";GameMainBar.AchNum("..num..");xunzl("..table_data..","..vis..");WndAddEffect(nil,\"AchieveWnd,Xunz_Win,item\",3006900000,-185,-172,150,1);Xunz_Win.msg_up(\"ѫ�������ɹ�\");")
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
	lualib:ShowFormWithContent(player,"�ű���","HeroAch_Wnd.visible("..vis..","..num..");EditSetText(nil,\"AchieveWnd,Achjifen\",\"".. jifen .."\")")
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
	lualib:ShowFormWithContent(player,"�ű���","xunzl("..table_data..","..vis..");")
	return ""
end
