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
		local shuxing = job_shuxing[Job] --�Աȵ�����
		local Item1_Type = lualib:Item_GetSubType(player,item1)
		local item1_name = lualib:KeyName(item1)
		local item1_table = lualib:Item_DataRow(item1_name)
		
		--�ж���ҵȼ��Ƿ��ܴ�����
		if item1_table.Level <= lv then
		else
			return
		end

		--�ж�����Ա��Ƿ��ܴ�����
		if item1_table.Gender == 0 or item1_table.Gender == Gender then
		else
			return
		end
		
		--�ж����ְҵ�Ƿ��ܴ�����
		if item1_table.Job == 0 or item1_table.Job == Job then
		else
			return
		end
		
		--�ж�����﹥�Ƿ��ܴ�����
		if item1_table.PhyLimit <= lualib:PhyAtkPoint(player) then
		else
			return
		end
		
		--�ж����ħ���Ƿ��ܴ�����
		if item1_table.MagLimit <= lualib:MagAtkPoint(player) then
		else
			return
		end

		--�ж���������Ƿ��ܴ�����
		if item1_table.SelfWeight <= lualib:Brawn(player,true) then
		else
			return
		end
		
		--�ж���ҵ����Ƿ��ܴ�����
		if item1_table.TaoLimit <= lualib:TaoAtkPoint(player) then
		else
			return
		end
		
		--��ȡ�������ͬ��װ����GUID
		local item2 = ""
		local item2_name = ""
		local item2_table = {}
		
		local item3 = ""
		local item3_name = ""
		local item3_table = {}
		
		if Item1_Type == 1 then
			item2 = lualib:Item_GetBySite(player,lua_site_weapon)		--�����������guid
		elseif Item1_Type == 2  then
			item2 = lualib:Item_GetBySite(player,lua_site_helmet)		--�������ͷ��guid
		elseif Item1_Type == 3  then
			item2 = lualib:Item_GetBySite(player,lua_site_wrist_0)		--�������������guid
			item3 = lualib:Item_GetBySite(player,lua_site_wrist_1)		--�������������guid
		elseif Item1_Type == 4  then
			item2 = lualib:Item_GetBySite(player,lua_site_armor)		--��������·�guid
		elseif Item1_Type == 6  then
			item2 = lualib:Item_GetBySite(player,lua_site_shoes)		--�������ѥ��guid
		elseif Item1_Type == 8  then
			item2 = lualib:Item_GetBySite(player,lua_site_necklace)		--�����������guid
		elseif Item1_Type == 9  then
			item2 = lualib:Item_GetBySite(player,lua_site_ring_0)		--����������ָguid
			item3 = lualib:Item_GetBySite(player,lua_site_ring_1)		--��������ҽ�ָguid
		elseif Item1_Type == 10  then
			item2 = lualib:Item_GetBySite(player,lua_site_medal)		--�������ѫ��guid
		elseif Item1_Type == 12  then
			item2 = lualib:Item_GetBySite(player,lua_site_wings)		--������ϳ��guid
		elseif Item1_Type == 14  then
			item2 = lualib:Item_GetBySite(player,lua_site_mount)		--�����������guid
		else
			return
		end

		local s = " chuanzhuang_yindao_item = "..string.format("%q","")
		s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q","")
		s = s .. " chuanzhuang_yindao_item_bang = " ..string.format("%q","") --��Ʒ�Ƿ��
		s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q","") --����λ��
		
		local i = 0
		
		if item2 ~= "" then
			item2_name = lualib:KeyName(item2)
			item2_table = lualib:Item_DataRow(item2_name)
			if item1_table[shuxing] > item2_table[shuxing] then
				i = 1
				s = " chuanzhuang_yindao_item = "..string.format("%q",item1)
				s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q",item1_name)
				s = s .. " chuanzhuang_yindao_item_bang = "..string.format("%q",tostring(lualib:Item_IsBind(player,item1))) --��Ʒ�Ƿ��
				if Item1_Type == 3 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",3)
				elseif Item1_Type == 9 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",10)
				else
					s = s .. ZhuangBeiChuanDaiWeiZhi(Item1_Type)
				end
				print("������1="..item1_table[shuxing].." "..item2_table[shuxing])
			end
		end
		
		if item3 ~= "" then
			item3_name = lualib:KeyName(item3)
			item3_table = lualib:Item_DataRow(item3_name)
			if item1_table[shuxing] > item3_table[shuxing] then
				i = 1
				s = " chuanzhuang_yindao_item = "..string.format("%q",item1)
				s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q",item1_name)
				s = s .. " chuanzhuang_yindao_item_bang = "..string.format("%q",tostring(lualib:Item_IsBind(player,item1))) --��Ʒ�Ƿ��
				if Item1_Type == 3 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",4)
				elseif Item1_Type == 9 then
					s = s .. " chuanzhuang_yindao_item_weizhi = "..string.format("%q",11)
				else
					s = s .. ZhuangBeiChuanDaiWeiZhi(Item1_Type)
				end
				print("������2="..item1_table[shuxing].." "..item3_table[shuxing])
			end
		end

		if (Item1_Type == 3 or Item1_Type == 9) and (item2 == "" or item3 == "") then
			i = 1
			s = " chuanzhuang_yindao_item = "..string.format("%q",item1)
			s = s .. " chuanzhuang_yindao_item_name = "..string.format("%q",item1_name)
			s = s .. " chuanzhuang_yindao_item_bang = "..string.format("%q",tostring(lualib:Item_IsBind(player,item1))) --��Ʒ�Ƿ��
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
			lualib:SetStr(player,"zhuangbei_chuandai",json.encode(zhuagbeiyindao)) --table����Ϊ�ַ���
		end
		
		lualib:ShowFormWithContent(player,"�ű���",s)
		lualib:ShowFormWithContent(player,"form�ļ���","װ������")
		
		return ""
	end

	
local leixingduiyingweizhi = {
	[1] = 1, --����
	[2] = 2, --ͷ��
	[5] = 5, --�·�
	[6] = 7, --ѥ��
	[7] = 8, --����
	[8] = 9, --����
	[10] = 12, --ѫ��
	[12] = 14, --���
	[14] = 16, --����
}

function ZhuangBeiChuanDaiWeiZhi(Item1_Type)
	return " chuanzhuang_yindao_item_weizhi = "..string.format("%q",leixingduiyingweizhi[Item1_Type])
end


function yindao_chuandai_1(player,item,weizhi)
	local zhuagbeiyindao = json.decode(lualib:GetStr(player,"zhuangbei_chuandai"))
	zhuagbeiyindao[item] = nil
	
	--�ж�װ���Ƿ��ڰ�����
	if lualib:Item_GetSite(player,item) == "" then
		lualib:SysMsg_SendWarnMsg(player, "����ʧ�ܣ���Ʒ�����ڣ�")
		return
	end

	if weizhi == nil then
		lualib:TakeOnEx(player,item) --������װ��
	else
		lualib:TakeOnEx(player,item,tonumber(weizhi)) --������װ��
	end
		
	for k,v in pairs(zhuagbeiyindao) do
		if lualib:Item_GetSite(player,k) == "" then
			zhuagbeiyindao[k] = nil
		else
			huanzhuang_yindao(player,k) --ִ���µ�����
			break
		end
	end
	
	lualib:SetStr(player,"zhuangbei_chuandai",json.encode(zhuagbeiyindao)) --table����Ϊ�ַ���
end