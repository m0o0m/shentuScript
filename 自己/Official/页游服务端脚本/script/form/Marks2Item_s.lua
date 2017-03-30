local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")

local shownItem = ""	
local str1 = ""
local item1 = {
				{
					{"����ս��","����ս��",50},{"ʥ��ս��","����ս��",100},{"����ս��","ʥ��ս��",200},
					{"��������ս��","����ս��",300},{"��������ս��","��������ս��",400},{"��������ս��","��������ս��",600},
					{"��������ս��","��������ս��",800}
				},
				{
					{"����ս��","����ս��",40},{"����ս��","����ս��",40},{"ʥ��ս��","����ս��",80},{"ʥ��ս��","����ս��",80},
					{"����ս��","ʥ��ս��",150},{"����ս��","ʥ��ս��",150},{"��������ս��","����ս��",200},{"��������ս��","����ս��",200},
					{"��������ս��","��������ս��",300},{"��������ս��","��������ս��",300},{"��������ս��","��������ս��",450},{"��������ս��","��������ս��",450},
					{"��������ս��" ,"��������ս��",650},{"��������ս��","��������ս��",650},
				},
				{
					{"����ս��","����ս��",10},{"����ս��","����ս��",10},{"ʥ��ս��","ʥ��ս��",20},{"ʥ��ս��","ʥ��ս��",20},
					{"����ս��","����ս��",30},{"����ս��","����ս��",30},{"��������ս��","��������ս��",40},{"��������ս��","��������ս��",40},
					{"��������ս��","��������ս��",60},{"��������ս��","��������ս��",60},{"��������ս��","��������ս��",80},{"��������ս��","��������ս��",80}
				},
				{
					{"����ͷ��","����ͷ��",35},{"��������","��������",45},{"����ѥ��","����ѥ��",35},
					{"������������","ʥ������",100},{"���������ָ","ʥ���ָ",100},{"������������","ʥ������",100}
				},
				{
					{"��ʯ�ᾧС","",1},{"��ʯ�ᾧ��","",20},{"��ʯ�ᾧ��","",200},{"������Ƭ��","",20},
					{"������Ƭ��","",180},{"��שС","",1},{"��ש��","",2}
				}
			 }


local item2 = {
				{
					{"��ħ����","��ħ����",50},{"ʥħ����","��ħ����",100},{"������","ʥħ����",200},
					{"������淨��","������",300},{"�������·���","������淨��",400},{"������鷨��","�������·���",600},
					{"�챩���ڷ���","������鷨��",800}
				},
				{
					{"��ħ����","��ħ����",40},{"��ħ����","��ħ����",40},{"ʥħ����","��ħ����",80},{"ʥħ����","��ħ����",80},
					{"������","ʥħ����",150},{"��������","ʥħ����",150},{"������淨��","������",200},{"�����������","��������",200},
					{"�������·���","������淨��",300},{"������������","�����������",300},{"������鷨��","�������·���",450},{"�����������","������������",450},
					{"�챩���ڷ���" ,"������鷨��",650},{"�챩��������","�����������",650},
				},
				{
					{"��ħ����","��ħ����",10},{"��ħ����","��ħ����",10},{"ʥħ����","ʥħ����",20},{"ʥħ����","ʥħ����",20},
					{"��������","������",30},{"������","��������",30},{"�����������","������淨��",40},{"������淨��","�����������",40},
					{"������������","�������·���",60},{"�������·���","������������",60},{"�����������","������鷨��",80},{"������鷨��","�����������",80}
				},
				{
					{"����ͷ��","��ħͷ��",35},{"��������","��ħ����",45},{"����ѥ��","��ħѥ��",35},
					{"�����������","ʥħ����",100},{"��������ָ","ʥħ��ָ",100},{"�����������","ʥħ����",100}
				},
				{
					{"��ʯ�ᾧС","",1},{"��ʯ�ᾧ��","",20},{"��ʯ�ᾧ��","",200},{"������Ƭ��","",20},
					{"������Ƭ��","",180},{"��שС","",1},{"��ש��","",2}
				}
			 }

local item3 = {
				{
					{"�������","�������",50},{"ʥ�����","�������",100},{"��������","ʥ�����",200},
					{"���������","��������",300},{"����㷨����","���������",400},{"������������","����㷨����",600},
					{"����������","������������",800}
				},
				{
					{"�������","�������",40},{"�������","�������",40},{"ʥ�����","�������",80},{"ʥ�����","�������",80},
					{"��������","ʥ�����",150},{"��������","ʥ�����",150},{"���������","��������",200},{"���������","��������",200},
					{"����㷨����","���������",300},{"����㷨����","���������",300},{"������������","����㷨����",450},{"������������","����㷨����",450},
					{"����������" ,"������������",650},{"����������","������������",650},
				},
				{
					{"�������","�������",10},{"�������","�������",10},{"ʥ�����","ʥ�����",20},{"ʥ�����","ʥ�����",20},
					{"��������","��������",30},{"��������","��������",30},{"���������","���������",40},{"���������","���������",40},
					{"����㷨����","����㷨����",60},{"����㷨����","����㷨����",60},{"������������","������������",80},{"������������","������������",80}
				},
				{
					{"����ͷ��","����ͷ��",35},{"��������","��������",45},{"����ѥ��","����ѥ��",35},
					{"���������","ʥ������",100},{"�������ָ","ʥ���ָ",100},{"���������","ʥ������",100}
				},
				{
					{"��ʯ�ᾧС","",1},{"��ʯ�ᾧ��","",20},{"��ʯ�ᾧ��","",200},{"������Ƭ��","",20},
					{"������Ƭ��","",180},{"��שС","",1},{"��ש��","",2}
				}
			 }

local itemExchangeTb = {

					["����ս��"]={"����ս��",50},["ʥ��ս��"]={"����ս��",100},["����ս��"]={"ʥ��ս��",200},
					["��������ս��"]={"����ս��",300},["��������ս��"]={"��������ս��",400},["��������ս��"]={"��������ս��",600},
					["��������ս��"]={"��������ս��",800},

					["����ս��"]={"����ս��",40},["����ս��"]={"����ս��",40},["ʥ��ս��"]={"����ս��",80},["ʥ��ս��"]={"����ս��",80},
					["����ս��"]={"ʥ��ս��",150},["����ս��"]={"ʥ��ս��",150},["��������ս��"]={"����ս��",200},["��������ս��"]={"����ս��",200},
					["��������ս��"]={"��������ս��",300},["��������ս��"]={"��������ս��",300},["��������ս��"]={"��������ս��",450},["��������ս��"]={"��������ս��",450},
					["��������ս��"]={"��������ս��",650},["��������ս��"]={"��������ս��",650},


					["����ͷ��"]={"����ͷ��",35},["��������"]={"��������",45},["����ѥ��"]={"����ѥ��",35},
					["������������"]={"ʥ������",100},["���������ָ"]={"ʥ���ָ",100},["������������"]={"ʥ������",100},

					["��ħ����"]={"��ħ����",50},["ʥħ����"]={"��ħ����",100},["������"]={"ʥħ����",200},
					["������淨��"]={"������",300},["�������·���"]={"������淨��",400},["������鷨��"]={"�������·���",600},
					["�챩���ڷ���"]={"������鷨��",800},

					["��ħ����"]={"��ħ����",40},["��ħ����"]={"��ħ����",40},["ʥħ����"]={"��ħ����",80},["ʥħ����"]={"��ħ����",80},
					["������"]={"ʥħ����",150},["��������"]={"ʥħ����",150},["������淨��"]={"������",200},["�����������"]={"��������",200},
					["�������·���"]={"������淨��",300},["������������"]={"�����������",300},["������鷨��"]={"�������·���",450},["�����������"]={"������������",450},
					["�챩���ڷ���"]={"������鷨��",650},["�챩��������"]={"�����������",650},

				

					["����ͷ��"]={"��ħͷ��",35},["��������"]={"��ħ����",45},["����ѥ��"]={"��ħѥ��",35},
					["�����������"]={"ʥħ����",100},["��������ָ"]={"ʥħ��ָ",100},["�����������"]={"ʥħ����",100},

					["�������"]={"�������",50},["ʥ�����"]={"�������",100},["��������"]={"ʥ�����",200},
					["���������"]={"��������",300},["����㷨����"]={"���������",400},["������������"]={"����㷨����",600},
					["����������"]={"������������",800},

					["�������"]={"�������",40},["�������"]={"�������",40},["ʥ�����"]={"�������",80},["ʥ�����"]={"�������",80},
					["��������"]={"ʥ�����",150},["��������"]={"ʥ�����",150},["���������"]={"��������",200},["���������"]={"��������",200},
					["����㷨����"]={"���������",300},["����㷨����"]={"���������",300},["������������"]={"����㷨����",450},["������������"]={"����㷨����",450},
					["����������"]={"������������",650},["����������"]={"������������",650},

					

					["����ͷ��"]={"����ͷ��",35},["��������"]={"��������",45},["����ѥ��"]={"����ѥ��",35},
					["���������"]={"ʥ������",100},["�������ָ"]={"ʥ���ָ",100},["���������"]={"ʥ������",100},

					["��ʯ�ᾧС"]={"",1},["��ʯ�ᾧ��"]={"",20},["��ʯ�ᾧ��"]={"",200},["������Ƭ��"]={"",20},
					["������Ƭ��"]={"",180},["��שС"]={"",1},["��ש��"]={"",2}
			 }
--��Ů������õ���Ʒ����Ҫ����Ʒ�����ں����������������ظ�����Ҫ�����������	
local genderEx = {
					["����ս��"]={"����ս��",10},["����ս��"]={"����ս��",10},["ʥ��ս��"]={"ʥ��ս��",20},["ʥ��ս��"]={"ʥ��ս��",20},
					["����ս��"]={"����ս��",30},["����ս��"]={"����ս��",30},["��������ս��"]={"��������ս��",40},["��������ս��"]={"��������ս��",40},
					["��������ս��"]={"��������ս��",60},["��������ս��"]={"��������ս��",60},["��������ս��"]={"��������ս��",80},["��������ս��"]={"��������ս��",80},
					
					["��ħ����"]={"��ħ����",10},["��ħ����"]={"��ħ����",10},["ʥħ����"]={"ʥħ����",20},["ʥħ����"]={"ʥħ����",20},
					["��������"]={"������",30},["������"]={"��������",30},["�����������"]={"������淨��",40},["������淨��"]={"�����������",40},
					["������������"]={"�������·���",60},["�������·���"]={"������������",60},["�����������"]={"������鷨��",80},["������鷨��"]={"�����������",80},
					
					["�������"]={"�������",10},["�������"]={"�������",10},["ʥ�����"]={"ʥ�����",20},["ʥ�����"]={"ʥ�����",20},
					["��������"]={"��������",30},["��������"]={"��������",30},["���������"]={"���������",40},["���������"]={"���������",40},
					["����㷨����"]={"����㷨����",60},["����㷨����"]={"����㷨����",60},["������������"]={"������������",80},["������������"]={"������������",80},
}

local itemOpt = {item1,item2,item3}

--��������������������ͼ����ʾ��������������������
function openExchangePage_show(player)
	AddSEIcon(player, 2, -5, "����װ��", 1800200039, "����ʱ", "openExchangePage","","�һ���Ʒװ��")
	return ""
end

-------------------ͼ�걻���-----------------------
function openExchangePage(player)



	local index = lualib:Job(player)
	local item = itemOpt[index]
	local _isExistlist1 = isExistItem(player)
	local str = lualib:GetDBStr("exchange_MsgDataBase")
	local score = lualib:GetInt(player,"tanbao_score")
	if str ~= "" then
		local tab = json.decode(str)		
		lualib:ShowFormWithContent(player, "form�ļ���", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1).."#"..serialize(tab))
	else
		lualib:ShowFormWithContent(player, "form�ļ���", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1))
	end	
    return ""
end



function isExistItem(player)
	local isExitlist1 = {{},{},{},{},{}}
	local index = lualib:Job(player)
	local item = itemOpt[index]
	
		for i = 1,#item do
			for j = 1,#item[i] do
				if i ~=5 then
					if lualib:ItemCountEx(player, item[i][j][2], 2, false, true, false, false) > 0 then
						isExitlist1[i][j] = 1
					else
						isExitlist1[i][j] = 0
					end
				else	
					isExitlist1[i][j] = 1
				end
			end
		end
	return isExitlist1
end

function getItem(player,item_KeyName,item_page)
	if lualib:GetBagFree(player) < 1 then
		--lualib:SysPromptMsg(player, "�����ռ䲻��")
		lualib:ShowFormWithContent(player, "�ű���", "Marks2Item_c.MessagePrompt();")
		return ""
	end
	local item_Req, score_Req = "", 0
	if tonumber(item_page) == 3 then
		item_Req = genderEx[item_KeyName][1]
		score_Req = genderEx[item_KeyName][2]
	else
		item_Req = itemExchangeTb[item_KeyName][1]
		score_Req = itemExchangeTb[item_KeyName][2]
	end

	if tonumber(item_page) < 5 then
		if lualib:ItemCountEx(player, item_Req, 2, false, true, false, false) > 0 and lualib:GetInt(player,"tanbao_score") >= tonumber(score_Req) then
			
			if lualib:AddItem(player,item_KeyName,1,false,"���ֶһ�","װ������") then

				local tb1 = lualib:GetItemsByKeys(player, item_Req, true, true, false, false)   --own item
				local guid1 = tb1[1]
				local tb2 = lualib:GetItemsByKeys(player, item_KeyName, true, true, false, false)   --new item
				local guid2 = ""
				local jl_level = 0
				local zl_level = 0
				local hole = {}
				local tb_bs = {}
				local tb_qh = {}
				local tb_zl = {}
				
				for i = 1, #tb2 do
					if lualib:Equip_GetRefineLevel(player, tb2[i]) == 0 and lualib:GetInt(tb2[i],"zhul_level") == 0 then
						guid2 = tb2[i]
						break
					end
				end
				
				jl_level = lualib:Equip_GetRefineLevel(player, guid1)
				zl_level = lualib:GetInt(guid1,"zhul_level")
				if jl_level > 0 then
					lualib:Equip_SetRefineLevel(player, guid2, jl_level) --����ǿ���ȼ�
					for i = 1, 10 do                              --���ö�̬����
						tb_qh[i] = lualib:Equip_GetExtProp(player, guid1, i-1)
						lualib:Equip_SetExtProp(player, guid2, i-1, tb_qh[i][0], tb_qh[i][1])
					end	
				end
				
				if zl_level > 0 then
					lualib:SetInt(guid2,"zhul_level",zl_level)          --�����̻�ȼ�
					for i = 10 , 19 do                              --���ö�̬����
						tb_zl[i-9] = lualib:GetDynamicAttr(guid1, i)
						lualib:SetDynamicAttr(guid2, i, tb_zl[i-9]["attr_name"], tb_zl[i-9]["attr_value"])
					end	
				end
				
				for i = 1 , 4 do 
					hole[i] = lualib:GetStr(guid1, "EquipHole" .. i)
					if hole[i] ~= "" then
						lualib:SetStr(guid2, "EquipHole" .. i,hole[i])
					end
				end
				
				for i = 30 , 40 do 
					tb_bs[i] = lualib:GetDynamicAttr(guid1, i)
					if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
						lualib:SetDynamicAttr(guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
					end
				end
				lualib:Item_NotifyUpdate(player, guid2)
				if lualib:Item_Destroy("", guid1, "̽�����ֶһ�", "ϵͳ") then		
					local score = lualib:GetInt(player,"tanbao_score") - tonumber(score_Req)
					lualib:SetInt(player,"tanbao_score",score)

					local _isExistlist1 = isExistItem(player)
					lualib:ShowFormWithContent(player, "�ű���", "Marks2Item_c.getParam("..score..","..serialize(_isExistlist1).. ");")
					shownItem = item_KeyName
					lualib:SetStr(player,"lastItem",shownItem)
					--lualib:SysMsg_SendBroadcastMsg(shownItem, "sys:")
					ExchangeMsgDataBase(player,shownItem)
					personalMSG(player)
				end
			end
		end
	else
		if lualib:GetInt(player,"tanbao_score") >= tonumber(score_Req) then
			if lualib:AddItem(player,item_KeyName,1,false,"���ֶһ�","װ������") then
				local score = lualib:GetInt(player,"tanbao_score") - tonumber(score_Req)
				lualib:SetInt(player,"tanbao_score",score)
				local _isExistlist1 = isExistItem(player)
				lualib:ShowFormWithContent(player, "�ű���", "Marks2Item_c.getParam("..score..","..serialize(_isExistlist1).. ");")
				
				shownItem = item_KeyName
				lualib:SetStr(player,"lastItem",shownItem)
				--lualib:SysMsg_SendBroadcastMsg(tostring(str1), "sys:")
				ExchangeMsgDataBase(player,shownItem)
				personalMSG(player)
			end
		end
	end

	return ""
end

function SetNewItemAttr(player,guid1,guid2)
	local jl_level = 0
	local zl_level = 0
	local hole = {}
	local tb_bs = {}
	local tb_qh = {}
	local tb_zl = {}
	
	jl_level = lualib:Equip_GetRefineLevel(player, guid1)
	zl_level = lualib:GetInt(guid1,"zhul_level")
	if jl_level > 0 then
		lualib:Equip_SetRefineLevel(player, guid2, jl_level) --����ǿ���ȼ�
		for i = 1, 10 do                              --���ö�̬����
			tb_qh[i] = lualib:Equip_GetExtProp(player, guid1, i)
			lualib:Equip_SetExtProp(player, guid2, i, tb_qh[i][0], tb_qh[i][1])
		end	
	end
	
	if zl_level > 0 then
		lualib:SetInt(guid2,"zhul_level",zl_level)          --�����̻�ȼ�
		for i = 10 , 19 do                              --���ö�̬����
			tb_zl[i-9] = lualib:GetDynamicAttr(guid1, i)
			lualib:SetDynamicAttr(guid2, i, tb_zl[i-9]["attr_name"], tb_zl[i-9]["attr_value"])
		end	
	end
	
	for i = 1 , 4 do 
		hole[i] = lualib:GetStr(guid1, "EquipHole" .. i)
		if hole[i] ~= "" then
			lualib:SetStr(guid2, "EquipHole" .. i,hole[i])
		end
	end
	
	for i = 30 , 40 do 
		tb_bs[i] = lualib:GetDynamicAttr(guid1, i)
		if tb_bs[i]["attr_name"] ~= nil and tb_bs[i]["attr_value"] ~= nil then 
			lualib:SetDynamicAttr(guid2, i, tb_bs[i]["attr_name"], tb_bs[i]["attr_value"])
		end
	end
	
	
	
	return ""
end


function ExchangeMsgDataBase(player,shownItem)
	local str = lualib:GetDBStr("exchange_MsgDataBase")
	local exchange_MsgDataBase = {}
	local name = lualib:Name(player)
	if str ~= nil and str ~= "" then
		exchange_MsgDataBase = json.decode(str)
		local a = #exchange_MsgDataBase
		exchange_MsgDataBase[a + 1] = name .. ":" .. shownItem
	else
		exchange_MsgDataBase[1] = name .. ":" .. shownItem
	end
	
	while #exchange_MsgDataBase>5 do
		table.remove(exchange_MsgDataBase,1)
	end	
	
	lualib:SetDBStr("exchange_MsgDataBase", json.encode(exchange_MsgDataBase))
	return ""
end


function setExchangeMsg(player)
	local str = json.decode(lualib:GetDBStr("exchange_MsgDataBase"))
	local shownItem = lualib:GetStr(player,"lastItem")
	local str1 = lualib:Name(player)..":".. shownItem
	if str1 ~= str[#str]  then
		lualib:ShowFormWithContent(player, "�ű���", "Marks2Item_c.setExchangeMsg(" .. serialize(str) .. ");")
	end
	
	return ""	
end

function personalMSG(player)
	local str = json.decode(lualib:GetDBStr("exchange_MsgDataBase"))
	lualib:ShowFormWithContent(player, "�ű���", "Marks2Item_c.setExchangeMsg(" .. serialize(str) .. ");")
	return ""	
end