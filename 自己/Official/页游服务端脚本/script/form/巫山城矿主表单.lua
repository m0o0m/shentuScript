local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/自动打怪")

function GetNum(player)
	
	local num1 = 2 - lualib:GetDayInt(player,"挖矿次数")
	local num2 = lualib:GetInt(player,"挖矿状态")

	local Ore_tab = {{},{},{},{}}
	local s = 0
	if num2 ~= 0 then 
		local ItemTble = lualib:BagItemList(player,true,false,false) 
		for i=1,#ItemTble do 
			if ItemTble[i] ~= nil then
				local item = lualib:KeyName(ItemTble[i])
				if "青铜矿"==item then 
					s = s+1
					Ore_tab[1][#Ore_tab[1]+1] = item
				elseif "黑铁矿"==item then
					s = s+1
					Ore_tab[2][#Ore_tab[2]+1] = item
				elseif "白银矿"==item then 
					s = s+1
					Ore_tab[3][#Ore_tab[3]+1] = item
				elseif "黄金矿"==item then 
					s = s+1
					Ore_tab[4][#Ore_tab[4]+1] = item
				end
			end
		end--[[
		if lualib:HasQuest(player, 800) then
			lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
			lualib:SetInt(player,"挖矿状态",1)--]]
			
		--end 	
		if s>7 then   
			num2 = 2
			lualib:SetInt(player,"挖矿状态",2)
		else
			if lualib:HasQuest(player, 800) then
				lualib:DropQuest(player, 800)
				lualib:AcceptQuest(player, 800)
				lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
			end
			if lualib:HasQuest(player, 83) then
				lualib:DropQuest(player, 83)
				lualib:AcceptQuest(player, 83)
				lualib:SetQuestGroupHuntingsCount(player, 83, 553, s)
			end
			num2 = 1
			lualib:SetInt(player,"挖矿状态",1)
		end
		
	end
	
	--[[if lualib:HasQuest(player, 800) then
		if lualib:CanAccomplishQuest(player, 800) == true then
			num2 = 2
			lualib:SetInt(player,"挖矿状态",2)
		else
			num2 = 1
			lualib:SetInt(player,"挖矿状态",1)
		end
	end--]]
	if num1 <0 then
		num1=0
	end
	lualib:ShowFormWithContent(player, "脚本表单", "OreWnd.Getint("..num1..","..num2..")")
	return ""
end

function GetTask(player)

	local num1 = lualib:GetDayInt(player,"挖矿次数")
	local num2 = lualib:GetInt(player,"挖矿状态")
	if num1 >= 2 then
		return ""
	end
--[[	if num2 == 0 then
		lualib:SetInt(player,"挖矿状态",1)
		if lualib:HasQuest(player, 810) then
			lualib:DropQuest(player, 810)
		end
		if not lualib:HasQuest(player, 83) then
			if not lualib:HasQuest(player, 800) then
				lualib:AcceptQuest(player, 800)
				lualib:SetInt(player, "800questCanAccomplish",0)

			end
		end
		lualib:Player_MapMove(player, "挖矿地图")
		guaji(player) 
		lualib:ShowFormWithContent(player, "脚本表单", "OreWnd.closeWnd()")
	elseif num2 == 1 then
		lualib:Player_MapMove(player, "挖矿地图")
		guaji(player) 
		lualib:ShowFormWithContent(player, "脚本表单", "OreWnd.closeWnd()")
	elseif num2 == 2  then
		if lualib:HasQuest(player, 800) then
			if lualib:CanAccomplishQuest(player, 800) == true then
				lualib:DropQuest(player, 800)
				lualib:Player_AddExp(player, 100000, "矿主", "矿主")
				lualib:AddItem(player,"金砖小",3,true,"矿主", "矿主")
				lualib:SetDayInt(player,"挖矿次数",num1+1)
				lualib:SetInt(player,"挖矿状态",0)
				if num1 < 2 then 
					if not lualib:HasQuest(player, 810) then
						lualib:AcceptQuest(player, 810)
						GetNum(player)
					end
				end
			end
		end
	end
	--]]
	
	
	local ItemTble = lualib:BagItemList(player,true,false,false)
	local Ore_tab = {{},{},{},{}}
	local s = 0
	
	for i=1,#ItemTble do 
		if ItemTble[i] ~= nil then
			local item = lualib:KeyName(ItemTble[i])
			if "青铜矿"==item then 
				s = s+1
				Ore_tab[1][#Ore_tab[1]+1] = item
			elseif "黑铁矿"==item then
				s = s+1
				Ore_tab[2][#Ore_tab[2]+1] = item
			elseif "白银矿"==item then 
				s = s+1
				Ore_tab[3][#Ore_tab[3]+1] = item
			elseif "黄金矿"==item then 
				s = s+1
				Ore_tab[4][#Ore_tab[4]+1] = item
			end
		end
	end
	
	
	if num2 == 0 then  
		local weapon = lualib:KeyName(lualib:Weapon(player))
		if weapon == "鹤嘴锄" or lualib:ApplyEquipEx(player, "鹤嘴锄") then 
			lualib:SetInt(player,"挖矿状态",1)
			if lualib:HasQuest(player, 810) then
				lualib:DropQuest(player, 810)
			end
			if not lualib:HasQuest(player, 83) then
				if not lualib:HasQuest(player, 800) then
					lualib:AcceptQuest(player, 800)
					lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
				end
			end
			if s >= 8 then  --huishou
				lualib:SetInt(player,"挖矿状态",2)
				GetNum(player)
			else
				lualib:Player_MapMove(player, "挖矿地图")
				lualib:ShowFormWithContent(player, "脚本表单", "OreWnd.closeWnd()")
			end
		else
			lualib:ShowFormWithContent(player,"form文件表单","BuyWnd")
		end
	elseif num2 == 1 then
		if s >= 8 then  --huishou
			lualib:SetInt(player,"挖矿状态",2)
			GetNum(player)
		else
			local weapon = lualib:KeyName(lualib:Weapon(player)) 
			if weapon == "鹤嘴锄" or lualib:ApplyEquipEx(player, "鹤嘴锄") then
				lualib:SetInt(player,"挖矿状态",1)
				lualib:ShowFormWithContent(player, "脚本表单", "OreWnd.closeWnd()")
				lualib:Player_MapMove(player, "挖矿地图")
				if lualib:HasQuest(player, 810) then
					lualib:DropQuest(player, 810)
				end
				if not lualib:HasQuest(player, 800) then
					lualib:AcceptQuest(player, 800)
					lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
				end
			else
				lualib:ShowFormWithContent(player,"form文件表单","BuyWnd")
			end
		end
	elseif num2 == 2  then
		if s >= 8 then
			s=0
			for i=1,#Ore_tab do  
				for j=1,#Ore_tab[i] do 
					if lualib:DelItem(player,Ore_tab[i][j], 1, 2, "矿主", "矿主") then
						s = s+1
						if s == 8 then 
							lualib:Player_AddExp(player, 100000, "矿主", "矿主")
							lualib:AddItem(player,"金砖小",3,true,"矿主", "矿主")
							
							if lualib:HasQuest(player, 800) then
								lualib:DropQuest(player, 800)
							end 
							lualib:SetDayInt(player,"挖矿次数",num1+1)		
							lualib:SetInt(player,"挖矿状态",0)
							if num1+1 < 2 then 
								if not lualib:HasQuest(player, 810) then
									lualib:AcceptQuest(player, 810)
								end
							end
							
							break
						end
					end
				end
			end
		else
			lualib:SysPromptMsg(player,"矿石数量不足")
		end
	end
	
	GetNum(player)
	if lualib:GetDayInt(player,"挖矿次数") >= 2 then 
		lualib:ShowFormWithContent(player, "脚本表单", "OreWnd.closeWnd()")
	end
	
	return ""
end

function Buy_sure(player)
	if lualib:GetBagFree(player) < 1 then
		lualib:SysPromptMsg(player,"包裹空间不足")
		return ""
	end
	if lualib:SubBindGold(player, 1000, "扣除绑定金币原因", "矿主") then 
		lualib:AddItem(player,"鹤嘴锄" ,1,true,"矿主", "矿主")
		GetTask(player)
		lualib:ShowFormWithContent(player, "脚本表单", "BuyWnd.closeWnd()")
	else
		lualib:SysPromptMsg(player,"亲，需要1000金币哦")
	end
	return ""
end