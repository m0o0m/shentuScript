local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")
require("form/�¿����")

local xuefu_tab = 
{
	{"Ѫ��1����ս","Ѫ��2����ս","Ѫ��3����ս","Ѫ��4����ս","Ѫ��5����ս","Ѫ��6����ս","Ѫ��7����ս","Ѫ��8����ս","Ѫ��9����ս","Ѫ��10����ս","Ѫ��11����ս","Ѫ��12����ս","Ѫ��13����ս","Ѫ��14����ս","Ѫ��15����ս","Ѫ��16����ս","Ѫ��17����ս","Ѫ��18����ս","Ѫ��19����ս","Ѫ��20����ս","Ѫ��21����ս","Ѫ��22����ս","Ѫ��23����ս","Ѫ��24����ս","Ѫ��25����ս"},
	{"Ѫ��1������","Ѫ��2������","Ѫ��3������","Ѫ��4������","Ѫ��5������","Ѫ��6������","Ѫ��7������","Ѫ��8������","Ѫ��9������","Ѫ��10������","Ѫ��11������","Ѫ��12������","Ѫ��13������","Ѫ��14������","Ѫ��15������","Ѫ��16������","Ѫ��17������","Ѫ��18������","Ѫ��19������","Ѫ��20������","Ѫ��21������","Ѫ��22������","Ѫ��23������","Ѫ��24������","Ѫ��25������"},
	{"Ѫ��1������","Ѫ��2������","Ѫ��3������","Ѫ��4������","Ѫ��5������","Ѫ��6������","Ѫ��7������","Ѫ��8������","Ѫ��9������","Ѫ��10������","Ѫ��11������","Ѫ��12������","Ѫ��13������","Ѫ��14������","Ѫ��15������","Ѫ��16������","Ѫ��17������","Ѫ��18������","Ѫ��19������","Ѫ��20������","Ѫ��21������","Ѫ��22������","Ѫ��23������","Ѫ��24������","Ѫ��25������"},
	{0,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,0},
	
}
local hudun_tab = {
	{"̫������","���ǻ���","���Ż���","���󻤶�","���л���","���ϻ���","���ǻ���","���Ի���","�Ź�����","ʮ������"},
	{0,100,200,350,550,800,1100,1450,1850,2300,0},
	}
local baoshi_tab = {
	{"̫����ʯ","���Ǳ�ʯ","���ű�ʯ","����ʯ","���б�ʯ","���ϱ�ʯ","���Ǳ�ʯ","���Ա�ʯ","�Ź���ʯ","ʮ����ʯ"},
	{40,90,150,220,375,935,2340,4400,7020,11705,0},
	}
local hunzhu_tab = {
	{"̫������","���ǻ���","���Ż���","�������","���л���","���ϻ���","���ǻ���","���Ի���","�Ź�����","ʮ������","ʥ��̫������","ʥ�����ǻ���","ʥ�����Ż���","ʥ���������","ʥ�����л���","ʥ�����ϻ���","ʥ�����ǻ���","ʥ�����Ի���","ʥ���Ź�����","ʥ��ʮ������","ʥ���������"},
	{40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,0},
	}
	
function Levelup_able_Num(player)  --����������
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

function ShowTolNum(player)  --����������
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
			lualib:ShowFormWithContent(player,"�ű���","GameMainBar.SlNum("..count..")")
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
	
	lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_xuefu(player)
	local job = lualib:Job(player)
	local level = lualib:GetInt(player,"xuefu_level")
	local tab = {level,xuefu_tab[job]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"�ű���","ElseItem1.updata("..table_data..");")
	return ""
end

function get_xuefu(player,str)
	local job = lualib:Job(player)
	local level = lualib:GetInt(player,"xuefu_level")
	local next_level = level + 1
	local chip = lualib:GetInt(player,"xuefu_chip")	
	if level <= 0 then
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"һ������ֻ�ܴ����������ȡ������\");")
		return ""
	elseif level >= #xuefu_tab[job] then 
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"�Ѿ�����ߵȼ��������޷��ټ�������\");")
		lualib:SysPromptMsg(player, "�Ѿ�����ߵȼ��������޷��ټ�������")
		--return "�Ѿ�����ߵȼ��������޷��ټ�������" 
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, xuefu_tab[job][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"û��װ���������޷�����\");")
			return ""
		end
		if chip < xuefu_tab[4][next_level] then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��Ƭ���㣬�޷�����\");")
			--lualib:SysPromptMsg(player, "��Ƭ���㣬�޷�����")
			--return "��Ƭ���㣬�޷�����"
			return ""
		end
		if lualib:GetBagFree(player) < 1 then
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"���ı������ˣ������������ٽ�������\");")
			lualib:SysPromptMsg(player, "���ı������ˣ������������ٽ�����������")
			--return "���ı������ˣ������������ٽ�����������"
			return ""
		end
		if not lualib:DelItemEx(player, xuefu_tab[job][level], 1, 2, true, true, true, true, "��������", "��������") then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"ɾ������ʧ��\");")
			lualib:SysPromptMsg(player, "ɾ������ʧ��")
			--return "ɾ������ʧ��"
			return ""
		end
		if not lualib:AddItem(player,xuefu_tab[job][next_level],1,true,"��������", player) then --����Ʒ
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"ϵͳ������ʧ�ܣ���������ʧ��\");")
			lualib:SysPromptMsg(player, "ϵͳ������ʧ�ܣ���������ʧ��")
			--return "ϵͳ������ʧ�ܣ���������ʧ��"
			return ""
		end
		lualib:ShowFormWithContent(player,"�ű���",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
		lualib:ApplyEquipEx(player, xuefu_tab[job][next_level])   --����Ҵ�װ��
	end
	local new_chip = chip - xuefu_tab[4][next_level]
	lualib:SetInt(player,"xuefu_chip",new_chip)
	lualib:SetInt(player,"xuefu_level",next_level)
	xuefu(player)
	if str == "1" then
		qita_xuefu(player)
	end
	--return "���������ɹ�"
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
	
	lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_hudun(player)
	local level = lualib:GetInt(player,"hudun_level")
	local tab = {level,hudun_tab[1]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"�ű���","ElseItem2.updata("..table_data..");")
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
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"һ������ֻ�ܴ����������ȡ������\");")
		return ""
	elseif level >= #hudun_tab[1] then 
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"�Ѿ�����ߵȼ����ƣ��޷��ټ�������\");")
		lualib:SysPromptMsg(player, "�Ѿ�����ߵȼ����ƣ��޷��ټ�������")
		--return "�Ѿ�����ߵȼ����ƣ��޷��ټ�������" 
		return ""
	else
		if chip < hudun_tab[2][next_level] then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��Ƭ���㣬�޷�����\");")
			--lualib:SysPromptMsg(player, "��Ƭ���㣬�޷�����")
			--return "��Ƭ���㣬�޷�����"
			return ""
		end
		local tb = lualib:GetItemsByKeys(player, hudun_tab[1][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"û��װ�����ƣ��޷�����\");")
			return ""
		else
			item_guid = tb[1]
			local xing_num = lualib:GetInt(item_guid,"xing_num")  --��ȡ��װ����������
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			item_level = lualib:Item_GetLevel(item_guid)
			if lualib:GetBagFree(player) < 1 then
				lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"���ı������ˣ������������ڽ�������\");")
				lualib:SysPromptMsg(player, "���ı������ˣ������������ڽ�����������")
				--return "���ı������ˣ������������ڽ�����������"
				return ""
			end
			if not lualib:AddItem(player,hudun_tab[1][next_level],1,true,"��������", player) then --����Ʒ
				lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"ϵͳ������ʧ�ܣ���������ʧ��\");")
				lualib:SysPromptMsg(player, "ϵͳ������ʧ�ܣ���������ʧ��")
				--return "ϵͳ������ʧ�ܣ���������ʧ��"
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, hudun_tab[1][next_level], true, true, false, false)
			if #tb2 == 0 then
				return "û�ҵ�"..hudun_tab[1][next_level]
			else
				item_guid2 = tb2[1] 			
			end
			lualib:SetInt(item_guid2, "xing_num", xing_num)  --������װ����������
			if jl_level > 0 then 
				lualib:Equip_SetRefineLevel(player, item_guid2, jl_level) --����ǿ���ȼ�
				local a = 6
				for i = 1 , 4 do                              --���ö�̬����
					tb_qh[i] = lualib:Equip_GetExtProp(player, item_guid, a)
					lualib:Equip_SetExtProp(player, item_guid2, a, tb_qh[i][0], tb_qh[i][1])
					a = a + 1 
				end
			end
			if zl_level > 0 then
				local b = 10
				for i = 1 , 4 do                              --���ö�̬����
					lualib:SetInt(item_guid2,"zhul_level",zl_level)          --�����̻�ȼ�
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
			if not lualib:DelItemEx(player, hudun_tab[1][level], 1, 2, true, true, true, true, "��������", "��������") then
				lualib:ShowFormWithContent(player,"�ű���","msg_up(\"ɾ������ʧ��\");")
			end
			lualib:ShowFormWithContent(player,"�ű���",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
			lualib:ApplyEquipEx(player,hudun_tab[1][next_level])   --����Ҵ�װ��	
		end
	end
	local new_chip = chip - hudun_tab[2][next_level]
	lualib:SetInt(player,"hudun_chip",new_chip)
	lualib:SetInt(player,"hudun_level",next_level)
	hudun(player)
	if str == "1" then
		qita_hudun(player)
	end
	--return "���������ɹ�"
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
	
	lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_baoshi(player)
	local level = lualib:GetInt(player,"baoshi_level")
	local tab = {level,baoshi_tab[1]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"�ű���","ElseItem3.updata("..table_data..");")
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
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��Ƭ���㣬�޷�����\");")
		--lualib:SysPromptMsg(player, "��Ƭ���㣬�޷�����")
		--return "��Ƭ���㣬�޷�����"
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"���ı������ˣ������������ڽ�������\");")
		lualib:SysPromptMsg(player, "���ı������ˣ������������ڽ�������")
		--return "���ı������ˣ������������ڽ�������"
		return ""
	end
	
	if level == 0 then
		if not lualib:AddItem(player,baoshi_tab[1][next_level],1,true,"������ʯ", player) then --����Ʒ
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��������˻������������������ʯʧ��\");")
			return ""
		end
		lualib:ShowFormWithContent(player,"�ű���",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
		lualib:ApplyEquipEx(player,baoshi_tab[1][next_level])   --����Ҵ�װ��
	elseif level >= #baoshi_tab[1] then 
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"�Ѿ�����ߵȼ����飬�޷��ټ�������\");")
		lualib:SysPromptMsg(player, "�Ѿ�����ߵȼ����飬�޷��ټ�������")
		--return "�Ѿ�����ߵȼ����飬�޷��ټ�������" 
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, baoshi_tab[1][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"û��װ����ʯ���޷�����\");")
			return ""
		else
			item_guid = tb[1]
			local xing_num = lualib:GetInt(item_guid,"xing_num")  --��ȡ��װ����������
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			item_level = lualib:Item_GetLevel(item_guid)
			if not lualib:AddItem(player,baoshi_tab[1][next_level],1,true,"������ʯ", player) then --����Ʒ
				lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��������˻������������������ʯʧ��\");")
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, baoshi_tab[1][next_level], true, true, false, false)
			if #tb2 == 0 then
				return "û�ҵ�"..baoshi_tab[1][next_level]
			else
				item_guid2 = tb2[1] 			
			end
			
			lualib:SetInt(item_guid2, "xing_num", xing_num)  --������װ����������
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
			if not lualib:DelItemEx(player, baoshi_tab[1][level], 1, 2, true, true, true, true, "����ѫ��", "����ѫ��") then
				lualib:ShowFormWithContent(player,"�ű���","msg_up(\"ɾ������ʧ��\");")
			end
			lualib:ShowFormWithContent(player,"�ű���",[[WndAddEffect(nil,"FurnaceWnd,item",3006700004,-180,-160,150,1)]])
			lualib:ApplyEquipEx(player,baoshi_tab[1][next_level])   --����Ҵ�װ��
		end
	end
	local new_chip = chip - baoshi_tab[2][next_level]
	lualib:SetInt(player,"baoshi_chip",new_chip)
	lualib:SetInt(player,"baoshi_level",next_level)
	baoshi(player)
	if str == "1" then
		qita_baoshi(player)
	end
	lualib:SysPromptMsg(player, "���������ɹ�")
	AddKaiFuMagicOnBaoShiLevelUp(player)
	--return "��ʯ�����ɹ�"
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
	
	lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.updata("..table_data..","..serialize(showTb)..");")
	return ""
end

function qita_hunzhu(player)
	local level = lualib:GetInt(player,"hunzhu_level")
	local tab = {level,hunzhu_tab[1]}
	local table_data = serialize(tab)
	lualib:ShowFormWithContent(player,"�ű���","ElseItem4.updata("..table_data..");")
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
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��Ƭ���㣬�޷�����\");")
		--lualib:SysPromptMsg(player, "��Ƭ���㣬�޷�����")
		--return "��Ƭ���㣬�޷�����"
		return ""
	end
	
	if lualib:GetBagFree(player) < 1 then
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"���ı������ˣ������������ڽ�������\");")
		lualib:SysPromptMsg(player, "���ı������ˣ������������ڽ�������")
		--return "���ı������ˣ������������ڽ�������"
		return ""
	end

	if level == 0 then
		if not lualib:AddItem(player,hunzhu_tab[1][next_level],1,true,"��������", player) then --����Ʒ
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��������˻��������������������ʧ��\");")
			return ""
		end
		lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,'FurnaceWnd,item',3006700004,-180,-160,150,1)")
		lualib:ApplyEquipEx(player,hunzhu_tab[1][next_level])   --����Ҵ�װ��
	elseif level >= #hunzhu_tab[1] then 
		lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"�Ѿ�����ߵȼ����飬�޷��ټ�������\");")
		lualib:SysPromptMsg(player, "�Ѿ�����ߵȼ����飬�޷��ټ�������")
		--return "�Ѿ�����ߵȼ����飬�޷��ټ�������" 
		return ""
	else
		local tb = lualib:GetItemsByKeys(player, hunzhu_tab[1][level], true, true, false, false)
		if #tb == 0 then 
			lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"û��װ�����飬�޷�����\");")
			return ""
		else
			item_guid = tb[1]
			local xing_num = lualib:GetInt(item_guid,"xing_num")  --��ȡ��װ����������
			jl_level = lualib:Equip_GetRefineLevel(player, item_guid)
			zl_level = lualib:GetInt(item_guid,"zhul_level")
			item_level = lualib:Item_GetLevel(item_guid)
			if lualib:GetBagFree(player) < 1 then
				lualib:SysPromptMsg(player, "���ı������ˣ������������ڽ��������������������װ���Ķ�ʧ����")
				--return "���ı������ˣ������������ڽ��������������������װ���Ķ�ʧ����"
				return ""
			end
			if not lualib:AddItem(player,hunzhu_tab[1][next_level],1,true,"������ʯ", player) then --����Ʒ
				lualib:ShowFormWithContent(player,"�ű���","FurnaceWnd.msg_up(\"��������˻������������������ʯʧ��\");")
				return ""
			end
			local tb2 = lualib:GetItemsByKeys(player, hunzhu_tab[1][next_level], true, true, false, false)
			if #tb2 == 0 then
				return "û�ҵ�"..hunzhu_tab[1][next_level]
			else
				item_guid2 = tb2[1] 			
			end
			
			lualib:SetInt(item_guid2, "xing_num", xing_num)  --������װ����������
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
			if not lualib:DelItemEx(player, hunzhu_tab[1][level], 1, 2, true, true, true, true, "����ѫ��", "����ѫ��") then
				lualib:ShowFormWithContent(player,"�ű���","msg_up(\"ɾ������ʧ��\");")
			end
			lualib:ShowFormWithContent(player,"�ű���","WndAddEffect(nil,'FurnaceWnd,item',3006700004,-180,-160,150,1)")
			lualib:ApplyEquipEx(player,hunzhu_tab[1][next_level])   --����Ҵ�װ��
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
	--return "���������ɹ�"
	return ""
	
end


function sl_close(player)
	lualib:SetInt(player,"isopentheslwnd",0)
	return ""
end

