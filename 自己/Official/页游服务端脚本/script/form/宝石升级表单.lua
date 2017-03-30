local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local tab = {10000,20000,30000,40000,50000,60000,70000,80000,90000,100000,110000}        --升级消耗金币表
local ybTable = {20,80,320,1280,5120,20480,81920,245760,737280,2211840,4423680}   --立刻升级消耗的元宝表

function getCryList(player)
	local Crystal_Guid = lualib:ItemsByType(player , 5 , 6 ,false,true,false,false)        --获取背包里的 宝石 GUID
	local Crystal_table = {}
	for i = 1 , #Crystal_Guid do
		local itemName = lualib:KeyName(Crystal_Guid[i])
		local itemNumber = lualib:ItemCount(player,itemName)
		local a = string.find(itemName,"级")-1                         
		local b = string.sub(itemName,1,a)
		local level = tonumber(b)
		local reqNum = 1
		if level >= 1 and level <= 6 then              --2~7级宝石合成消耗4个；8~10消耗3个；11~12消耗2个
			reqNum = 4
		elseif level >= 7 and level <=9 then
			reqNum = 3
		else 
			reqNum = 2
		end
		if tonumber(level) < 12 then                          --12级宝石不存入表
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
	lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.showCrystalNum(" .. serialize(Crystal_table) .. ");")       --显示（左边）宝石列表
	return ""
end

function getItemNum(player,item_key,level)
	if tonumber(level) < 13 then
		local gold = tab[tonumber(level)-1]
		local itemNum = lualib:ItemCount(player, item_key)
		lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.OwnNum(" .. itemNum .. ","..gold..");")       --显示自身拥有所需宝石数量和升级消耗所需金钱
	end
	return ""
end

function ReqItemNum(nowKeyName)
	local c = string.find(nowKeyName,"级")-1
	local b = string.sub(nowKeyName,1,c)
	local d = string.sub(nowKeyName,c+1,string.len(nowKeyName))
	local level = tonumber(b) - 1
	local preKeyName = level..d
	local reqNum = 1                           --根据宝石等级算消耗数量
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
		lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
		return ""
	end
	if lualib:ItemCount(player,preKeyName) < (reqNum*tonumber(a)) then
		lualib:SysPromptMsg(player, "宝石数量不足")
		return ""
	end
	if lualib:SubBindGold(player,totalGold, "扣金币:宝石升级", player) then          --扣绑金（优先）
		if lualib:DelItem(player, preKeyName,reqNum*tonumber(a), 2, "宝石升级", "宝石升级") then            --扣消耗的宝石
			if lualib:AddItem(player,nowKeyName,tonumber(a),false,"宝石升级", player) then
				param = 2
				lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
				getItemNum(player,preKeyName,(level+1))
			end
		end  
	elseif lualib:SubGold(player,totalGold, "扣金币:宝石升级", player) then             --扣非绑金
		if lualib:DelItem(player, preKeyName, reqNum*tonumber(a), 2, "宝石升级", "宝石升级") then 
			if lualib:AddItem(player,nowKeyName,tonumber(a),false,"宝石升级", player) then
				param = 2
				lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")        --升级成功提示
				getItemNum(player,preKeyName,(level+1))
			end
		end
	else 
		lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")              --升级失败提示
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
		lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.down_btn();")           --升级成功并且能升下1级宝石，调翻页按钮
	else
		if #Crystal_table == 0 then
			lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.setparam();")        --背包中没有可升级宝石，显示2级宝石列表
		else
			lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.showNextLevelEnableList(" .. serialize(Crystal_table) .. ");")    --背包中有可升级宝石，显示最低可升级宝石
		end
	end--]]
		
	return ""
end


function getStoneViaYB(player,nowKeyName)
	if lualib:GetBagFree(player) < 1 then
		param = 7
		lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
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
		lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
	else
		if not (lualib:Player_IsGoldEnough(player, tonumber(reqGold), false) or lualib:Player_IsGoldEnough(player, tonumber(reqGold), true)) then
			param = 5
			lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
		else
			if lualib:SubBindGold(player,tonumber(reqGold), "扣金币:宝石立刻升级", player) then          --扣绑金（优先）
				if lualib:Player_SubIngot(player, tonumber(reqYb), false, "扣元宝:宝石立刻升级", "宝石立刻升级") then            --扣元宝
					if ownItemNumber ~= 0 then
						if lualib:DelItem(player, preKeyName,ownItemNumber, 2, "宝石立刻升级", "宝石立刻升级") then
							lualib:AddItem(player,nowKeyName,1,false,"宝石立刻升级", player)
							param = 6
							lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
							getItemNum(player,preKeyName,(level+1))
						end
					else
						lualib:AddItem(player,nowKeyName,1,false,"宝石立刻升级", player)
						param = 6
						lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")
						getItemNum(player,preKeyName,(level+1))
					end
				end  
			elseif lualib:SubGold(player,tonumber(reqGold), "扣金币:宝石立刻升级", player) then             --扣非绑金
				if lualib:Player_SubIngot(player, tonumber(reqYb), false, "扣元宝:宝石立刻升级", "宝石立刻升级") then            --扣元宝
					if ownItemNumber ~= 0 then
						if lualib:DelItem(player, preKeyName,ownItemNumber, 2, "宝石立刻升级", "宝石立刻升级") then
							lualib:AddItem(player,nowKeyName,1,false,"宝石立刻升级", player)
							param = 6
							lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")        --升级成功提示
							getItemNum(player,preKeyName,(level+1))
						end
					else
						lualib:AddItem(player,nowKeyName,1,false,"宝石立刻升级", player)
						param = 6
						lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");") 
						getItemNum(player,preKeyName,(level+1))
					end
				end
			else 
				lualib:ShowFormWithContent(player, "脚本表单", "OtaCrystal.msg("..param..");")              --升级失败提示
			end
		end
	end
	return ""
end

function buy(player,index)
	local cry_tab = {"1级物攻宝石","1级魔攻宝石","1级道攻宝石","1级物防宝石","1级魔防宝石","1级生命宝石",}
	index = tonumber(index)
	if index ~= 0 then 
		if cry_tab[index] ~= nil then 
			if lualib:GetBagFree(player) < 1 then
				lualib:SysPromptMsg(player,"背包空间不足")
				return ""
			end
			if lualib:Player_SubIngot(player, 20, false, "购买宝石", "宝石系统") then
				lualib:AddItem(player,cry_tab[index],1,false,"购买宝石", player)
			else
				lualib:SysPromptMsg(player,"元宝不足")
			end
		end
	end
	return ""
end

