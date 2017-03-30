local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local tab = {10000,20000,30000,40000,50000,60000,70000,80000,90000,100000,110000}        --�������Ľ�ұ�
local ybTable = {20,80,320,1280,5120,20480,81920,245760,737280,2211840,4423680}   --�����������ĵ�Ԫ����

function getCryList(player)
	local Crystal_Guid = lualib:ItemsByType(player , 5 , 6 ,false,true,false,false)        --��ȡ������� ��ʯ GUID
	local Crystal_table = {}
	for i = 1 , #Crystal_Guid do
		local itemName = lualib:KeyName(Crystal_Guid[i])
		local itemNumber = lualib:ItemCount(player,itemName)
		local a = string.find(itemName,"��")-1                         
		local b = string.sub(itemName,1,a)
		local level = tonumber(b)
		local reqNum = 1
		if level >= 1 and level <= 6 then              --2~7����ʯ�ϳ�����4����8~10����3����11~12����2��
			reqNum = 4
		elseif level >= 7 and level <=9 then
			reqNum = 3
		else 
			reqNum = 2
		end
		if tonumber(level) < 12 then                          --12����ʯ�������
			itemNumber = math.floor(itemNumber/reqNum)
			if itemNumber > 0 then
				Crystal_table[(#Crystal_table)+1] = itemName .. ":" .. itemNumber
			end
		end
	end
	return Crystal_table
end

function InitialItemList(player)
	local Crystal_table = getCryList(player)
	lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.showCrystalNum(" .. serialize(Crystal_table) .. ");")       --��ʾ����ߣ���ʯ�б�
	return ""
end

function getItemNum(player,item_key,level)
	if tonumber(level) < 13 then
		local gold = tab[tonumber(level)-1]
		local itemNum = lualib:ItemCount(player, item_key)
		lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.OwnNum(" .. itemNum .. ","..gold..");")       --��ʾ����ӵ�����豦ʯ�������������������Ǯ
	end
	return ""
end

function ReqItemNum(nowKeyName)
	local c = string.find(nowKeyName,"��")-1
	local b = string.sub(nowKeyName,1,c)
	local d = string.sub(nowKeyName,c+1,string.len(nowKeyName))
	local level = tonumber(b) - 1
	local preKeyName = level..d
	local reqNum = 1                           --���ݱ�ʯ�ȼ�����������
	if level >= 1 and level <= 6 then
		reqNum = 4
	elseif level >= 7 and level <=9 then
		reqNum = 3
	else 
		reqNum = 2
	end
	
	return reqNum , level , preKeyName 
end

function offerItem(player,a,nowKeyName)
	local reqNum,level,preKeyName = ReqItemNum(nowKeyName)
	local totalGold = tab[level] * tonumber(a)
	local  param = 1
	if lualib:GetBagFree(player) < 1 then
		param = 7
		lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
		return ""
	end
	if lualib:ItemCount(player,preKeyName) < (reqNum*tonumber(a)) then
		lualib:SysPromptMsg(player, "��ʯ��������")
		return ""
	end
	if lualib:SubBindGold(player,totalGold, "�۽��:��ʯ����", player) then          --�۰�����ȣ�
		if lualib:DelItem(player, preKeyName,reqNum*tonumber(a), 2, "��ʯ����", "��ʯ����") then            --�����ĵı�ʯ
			if lualib:AddItem(player,nowKeyName,tonumber(a),false,"��ʯ����", player) then
				param = 2
				lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
				getItemNum(player,preKeyName,(level+1))
			end
		end  
	elseif lualib:SubGold(player,totalGold, "�۽��:��ʯ����", player) then             --�۷ǰ��
		if lualib:DelItem(player, preKeyName, reqNum*tonumber(a), 2, "��ʯ����", "��ʯ����") then 
			if lualib:AddItem(player,nowKeyName,tonumber(a),false,"��ʯ����", player) then
				param = 2
				lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")        --�����ɹ���ʾ
				getItemNum(player,preKeyName,(level+1))
			end
		end
	else 
		lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")              --����ʧ����ʾ
	end

	local nextNum = lualib:ItemCount(player, nowKeyName)
	level = level + 1 
	if level >= 1 and level <= 6 then
		reqNum = 4
	elseif level >= 7 and level <=9 then
		reqNum = 3
	else 
		reqNum = 2
	end
	nextNum = math.floor(nextNum/reqNum)
	--[[--local Crystal_table = getCryList(player)
	if nextNum > 0 then
		lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.down_btn();")           --�����ɹ�����������1����ʯ������ҳ��ť
	else
		if #Crystal_table == 0 then
			lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.setparam();")        --������û�п�������ʯ����ʾ2����ʯ�б�
		else
			lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.showNextLevelEnableList(" .. serialize(Crystal_table) .. ");")    --�������п�������ʯ����ʾ��Ϳ�������ʯ
		end
	end--]]
		
	return ""
end


function getStoneViaYB(player,nowKeyName)
	if lualib:GetBagFree(player) < 1 then
		param = 7
		lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
		return ""
	end
	local reqNum , level , preKeyName = ReqItemNum(nowKeyName)
	local ownItemNumber = lualib:ItemCount(player,preKeyName)
	reqNum = reqNum - ownItemNumber
	local reqGold = tab[level]
	local reqYb = ybTable[level] * reqNum
	local  param = 1
	if not (lualib:GetIngot(player) > tonumber(reqYb)) then
		param = 4
		lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
	else
		if not (lualib:Player_IsGoldEnough(player, tonumber(reqGold), false) or lualib:Player_IsGoldEnough(player, tonumber(reqGold), true)) then
			param = 5
			lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
		else
			if lualib:SubBindGold(player,tonumber(reqGold), "�۽��:��ʯ��������", player) then          --�۰�����ȣ�
				if lualib:Player_SubIngot(player, tonumber(reqYb), false, "��Ԫ��:��ʯ��������", "��ʯ��������") then            --��Ԫ��
					if ownItemNumber ~= 0 then
						if lualib:DelItem(player, preKeyName,ownItemNumber, 2, "��ʯ��������", "��ʯ��������") then
							lualib:AddItem(player,nowKeyName,1,false,"��ʯ��������", player)
							param = 6
							lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
							getItemNum(player,preKeyName,(level+1))
						end
					else
						lualib:AddItem(player,nowKeyName,1,false,"��ʯ��������", player)
						param = 6
						lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")
						getItemNum(player,preKeyName,(level+1))
					end
				end  
			elseif lualib:SubGold(player,tonumber(reqGold), "�۽��:��ʯ��������", player) then             --�۷ǰ��
				if lualib:Player_SubIngot(player, tonumber(reqYb), false, "��Ԫ��:��ʯ��������", "��ʯ��������") then            --��Ԫ��
					if ownItemNumber ~= 0 then
						if lualib:DelItem(player, preKeyName,ownItemNumber, 2, "��ʯ��������", "��ʯ��������") then
							lualib:AddItem(player,nowKeyName,1,false,"��ʯ��������", player)
							param = 6
							lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")        --�����ɹ���ʾ
							getItemNum(player,preKeyName,(level+1))
						end
					else
						lualib:AddItem(player,nowKeyName,1,false,"��ʯ��������", player)
						param = 6
						lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");") 
						getItemNum(player,preKeyName,(level+1))
					end
				end
			else 
				lualib:ShowFormWithContent(player, "�ű���", "OtaCrystal.msg("..param..");")              --����ʧ����ʾ
			end
		end
	end
	return ""
end

function buy(player,index)
	local cry_tab = {"1���﹥��ʯ","1��ħ����ʯ","1��������ʯ","1�������ʯ","1��ħ����ʯ","1��������ʯ",}
	index = tonumber(index)
	if index ~= 0 then 
		if cry_tab[index] ~= nil then 
			if lualib:GetBagFree(player) < 1 then
				lualib:SysPromptMsg(player,"�����ռ䲻��")
				return ""
			end
			if lualib:Player_SubIngot(player, 20, false, "����ʯ", "��ʯϵͳ") then
				lualib:AddItem(player,cry_tab[index],1,false,"����ʯ", player)
			else
				lualib:SysPromptMsg(player,"Ԫ������")
			end
		end
	end
	return ""
end

