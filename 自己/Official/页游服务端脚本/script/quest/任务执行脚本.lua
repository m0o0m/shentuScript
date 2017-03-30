--任务完成回调
--任务接取后回调触发器, ID 999 
local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")
require("system/serializer")

function on_accept(player,quest_id)
	if  quest_id == 29 then
		lualib:ShowFormWithContent(player, "form文件表单", "TransmitWnd#\"毒虫洞一层\"")
		--lualib:AddBuff(player, "传送中", 0)
		--lualib:AddTimerEx(player, 999, 1000, 1, "chuansong_1", "")
	end
	
	if  quest_id == 74 then 
		lualib:SetInt(player, "FIRST_OPEN_WINGWINDOW", 1)
		local a = lualib:GetInt(player, "FIRST_OPEN_WINGWINDOW")		
		lualib:ShowFormWithContent(player,"脚本表单", "UI:Lua_SubmitForm(\"等级判断表单\", \"OnOpenWing\", \"\");FIRST_OPEN_WINGWINDOW="..a)
	end 
	
	---------***************************************************************************----------
	if  quest_id == 75 then                             --接取任务时，设置变量。
		lualib:SetInt(player, "hasAccept75Quest", 1)
	end 

	if  quest_id == 77 then
		lualib:SetInt(player, "hasAccept77Quest", 1)
	end 
	
	if  quest_id == 80 then
		lualib:SetInt(player, "hasAccept80Quest", 1)
	end 
	
	if  quest_id == 83 then
		lualib:SetInt(player, "hasAccept83Quest", 1)
		lualib:SetInt(player,"可以挖矿",1)
		--[[if not lualib:HasQuest(player, 810) then
			lualib:AcceptQuest(player, 810)
		end--]]
	end 
	
	if  quest_id == 86 then
		lualib:SetInt(player, "hasAccept86Quest", 1)
	end 
	---------***************************************************************************----------
	
	if quest_id == 47 then
		local sMapGuid = lualib:Map_CreateDgn( "猪洞副本" , false , 30*60 )
		if lualib:Player_SetDgnTicket(player,sMapGuid) == true then
			if lualib:Map_IsDgnExist(sMapGuid) == true then
				lualib:Player_EnterDgn(player, "猪洞副本" , 51 , 77 , 1 )
			end 
		end
	end
	
	if quest_id == 71 then
		lualib:Player_MapMoveXY(player, "巫山城", 196, 249, 1)
	end
	
	
--[[	if quest_id == 76 then
		local sMapGuid = lualib:Map_CreateDgn( "祖玛教主副本" , false , 30*60 )
		if lualib:Player_SetDgnTicket(player,sMapGuid) == true then
			if lualib:Map_IsDgnExist(sMapGuid) == true then
				lualib:Player_EnterDgn(player, "祖玛教主副本" , 12 , 50 , 1 )
			end 
		end
	end--]]
	
	if quest_id == 2 or quest_id == 17 then
		local count = lualib:ItemCount(player, "天山雪莲大")
		if count >= 1 then
			if lualib:ApplyItem(player, "天山雪莲大", false) then
				lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 3 ..");")
			end
		end
	end
	
--[[	if quest_id == 29 or quest_id == 46 or quest_id == 74 or quest_id == 79 then
		local count = lualib:ItemCount(player, "500绑定元宝")
		if count >= 1 then
			if lualib:ApplyItem(player, "500绑定元宝", false) then
				lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 1 ..");")
			end
		end
	end--]]
	
	if quest_id == 29 or quest_id == 46 or quest_id == 74 then
		local count = lualib:ItemCount(player, "500绑定元宝")
		if count >= 1 then
			if lualib:ApplyItem(player, "500绑定元宝", false) then
				lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 1 ..");")
			end
		end
	end
	
	if quest_id == 28 then
		local _t = {"血符1级·战", "血符1级·法", "血符1级·道"}
		local i = tonumber(lualib:Job(player))
		local count = lualib:ItemCount(player, _t[i])
		if count >= 1 then
			lualib:ApplyEquipEx(player,  _t[i])
		end
	end
	
	if quest_id == 53 then
		local count = lualib:ItemCount(player, "太初护盾")
		if count >= 1 then
			lualib:ApplyEquipEx(player, "太初护盾")
		end
	end
	
	
	--判断任务是否完成 --先注释备用
	--[[
	if quest_id == 74 then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local wing_l = lualib:GetInt(player, "wing_level")
		if wing_l >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 74, 444, 1)	
		end
	elseif quest_id == 76 then 
		local level = lualib:Level(player)
		if level >= 63 then
			lualib:SetQuestGroupHuntingsCount(player, 76, 444, 1)	
		end
	elseif quest_id == 79 then 
		local level = lualib:Level(player)
		if level >= 64 then
			lualib:SetQuestGroupHuntingsCount(player, 79, 444, 1)	
		end
		
	elseif quest_id == 82 then 
		local level = lualib:Level(player)
		if level >= 65 then
			lualib:SetQuestGroupHuntingsCount(player, 82, 444, 1)	
		end
		
	elseif quest_id == 85 then 
		local level = lualib:Level(player)
		if level >= 66 then
			lualib:SetQuestGroupHuntingsCount(player, 85, 444, 1)	
		end
		
		
	elseif quest_id == 87 then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts > 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 87, 444, counts)
		
		
	elseif quest_id == 88 then
		local level = lualib:Level(player)
		if level >= 67 then
			lualib:SetQuestGroupHuntingsCount(player, 88, 444, 1)	
		end
	
	elseif quest_id == 89 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts > 3 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 89, 444, counts)
		
	elseif quest_id == 90 then
		local level = lualib:Level(player)
		if level >= 68 then
			lualib:SetQuestGroupHuntingsCount(player, 90, 444, 1)	
		end
		
		
	elseif quest_id == 91 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 6 then 
					counts = counts + 1
					if counts > 0 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 91, 444, counts)
		
	elseif quest_id == 93 then
		local level = lualib:Level(player)
		if level >= 69 then
			lualib:SetQuestGroupHuntingsCount(player, 93, 444, 1)	
		end
		
	elseif quest_id == 94 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts > 5 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 94, 444, counts)
		
	elseif quest_id == 95 then
		local level = lualib:GetInt(player, "xuefu_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 95, 444, 1)	
		end
		
	elseif quest_id == 96 then
		local level = lualib:Level(player)
		if level >= 70 then
			lualib:SetQuestGroupHuntingsCount(player, 96, 444, 1)	
		end
		
	elseif quest_id == 97 then
		if lualib:GetFamilyName(player) ~= "" then	
			--lualib:SysPromptMsg(player, "有家族")	
			lualib:SetQuestGroupHuntingsCount(player, 97, 444, 1)
		end
		
	elseif quest_id == 99 then
		local level = lualib:Level(player)
		if level >= 71 then
			lualib:SetQuestGroupHuntingsCount(player, 99, 444, 1)	
		end
		
	elseif quest_id == 100 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 8 then 
					counts = counts + 1
					if counts > 0 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 100, 444, counts)
		
	elseif quest_id == 101 then
		local level = lualib:Level(player)
		if level >= 72 then
			lualib:SetQuestGroupHuntingsCount(player, 101, 444, 1)	
		end
		
	elseif quest_id == 102 then
		local level = lualib:GetInt(player, "hudun_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 102, 444, 1)	
		end
		
	elseif quest_id == 103 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 103, 444, counts)
		
	elseif quest_id == 104 then
		local level = lualib:Level(player)
		if level >= 73 then
			lualib:SetQuestGroupHuntingsCount(player, 104, 444, 1)	
		end
		
		
	elseif quest_id == 105 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 8 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 105, 444, counts)
		
	elseif quest_id == 106 then
		local level = lualib:Level(player)
		if level >= 74 then
			lualib:SetQuestGroupHuntingsCount(player, 106, 444, 1)	
		end
		
	elseif quest_id == 107 then	
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 107, 444, counts)
		
	elseif quest_id == 108 then
		local level = lualib:Level(player)
		if level >= 75 then
			lualib:SetQuestGroupHuntingsCount(player, 108, 444, 1)	
		end
	elseif quest_id == 109 then
		local level = lualib:GetInt(player, "Ach_xunz")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 109, 444, 1)	
		end
		
	elseif quest_id == 110 then
		local level = lualib:GetInt(player, "ach_level")
		if level >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 110, 444, 1)	
		end
	elseif quest_id == 111 then
		local level = lualib:Level(player)
		if level >= 76 then
			lualib:SetQuestGroupHuntingsCount(player, 111, 444, 1)	
		end	
		
	elseif quest_id == 112 then	
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 70 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 112, 444, counts)	
		
	elseif quest_id == 113 then
		local level = lualib:Level(player)
		if level >= 77 then
			lualib:SetQuestGroupHuntingsCount(player, 113, 444, 1)	
		end
	elseif quest_id == 115 then
		local level = lualib:Level(player)
		if level >= 78 then
			lualib:SetQuestGroupHuntingsCount(player, 115, 444, 1)	
		end
	elseif quest_id == 117 then
		local level = lualib:Level(player)
		if level >= 79 then
			lualib:SetQuestGroupHuntingsCount(player, 117, 444, 1)	
		end
	elseif quest_id == 119 then
		local level = lualib:Level(player)
		if level >= 80 then
			lualib:SetQuestGroupHuntingsCount(player, 119, 444, 1)	
		end
	elseif quest_id == 121 then
		local  boss_level = lualib:GetInt(player,"boss_level")
		if boss_level >= 1 then 
			lualib:SetQuestGroupHuntingsCount(player, 121, 444, 1)	
		end
		
	elseif quest_id == 122 then
		local level = lualib:Level(player)
		if level >= 81 then
			lualib:SetQuestGroupHuntingsCount(player, 122, 444, 1)	
		end
	elseif quest_id == 123 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 9 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 123, 444, counts)
	elseif quest_id == 124 then
		local level = lualib:Level(player)
		if level >= 82 then
			lualib:SetQuestGroupHuntingsCount(player, 124, 444, 1)	
		end
	elseif quest_id == 126 then
		local level = lualib:Level(player)
		if level >= 83 then
			lualib:SetQuestGroupHuntingsCount(player, 126, 444, 1)	
		end
	elseif quest_id == 127 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 127, 444, counts)
		
	elseif quest_id == 128 then
		local level = lualib:Level(player)
		if level >= 84 then
			lualib:SetQuestGroupHuntingsCount(player, 128, 444, 1)	
		end
	elseif quest_id == 130 then
		local level = lualib:Level(player)
		if level >= 85 then
			lualib:SetQuestGroupHuntingsCount(player, 130, 444, 1)	
		end
	elseif quest_id == 131 then
		local  reinLevel = lualib:GetInt(player,"reinLevel")
		if reinLevel >= 1 then 
			lualib:SetQuestGroupHuntingsCount(player, 131, 444, 1)	
		end
		
		
		
	elseif quest_id == 134 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 134, 444, counts)
		
	elseif quest_id == 138 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 80 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 138, 444, counts)
		
		
	elseif quest_id == 142 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 142, 444, counts)
		
	elseif quest_id == 144 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 144, 444, counts)
		
	elseif quest_id == 146 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:GetInt(Guid, "item_rein")
				if Level >= 1 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 146, 444, counts)
		
	elseif quest_id == 148 then
		local Guid = lualib:Player_GetItemGuid(player,  4) --获取装备位的物品GUID
		if Guid ~= "" then
			local Level = lualib:GetInt(Guid, "item_rein")
			if Level >= 1 then 
				lualib:SetQuestGroupHuntingsCount(player, 148, 444, 1)	
			end
		end
		
		
	elseif quest_id == 150 then
		local Guid = lualib:Player_GetItemGuid(player,  1) --获取装备位的物品GUID
		if Guid ~= "" then
			local Level = lualib:GetInt(Guid, "item_rein")
			if Level >= 1 then 
				lualib:SetQuestGroupHuntingsCount(player, 150, 444, 1)	
			end
		end
		
	end
	--]]
	
	if quest_id == 73 then
		lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(10)")
		local qianwang = lualib:GetDayInt(player, "qianwang5")
		if qianwang == 1 then 
			lualib:ForceQuestReady(player, quest_id)
		else
			lualib:ShowFormWithContent(player, "form文件表单", "Onboss")
		end
	elseif quest_id == 74 then
		--lualib:SysPromptMsg(player, "有76号任务") 
		local wing_l = lualib:GetInt(player, "wing_level")
		if wing_l >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 74, 444, 1)	
		end
	elseif quest_id == 76 then 
		local level = lualib:Level(player)
		if level >= 63 then
			lualib:SetQuestGroupHuntingsCount(player, 76, 444, 1)	
		end
	elseif quest_id == 77 then 
		local qianwang = lualib:GetDayInt(player, "qianwang6")
		if qianwang == 1 then 
			lualib:ForceQuestReady(player, quest_id)
		end
	elseif quest_id == 78 then 
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 50 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 78, 444, counts)
		
	elseif quest_id == 79 then 
		local level = lualib:Level(player)
		if level >= 64 then
			lualib:SetQuestGroupHuntingsCount(player, 79, 444, 1)	
		end
	elseif quest_id == 80 then 
		local qianwang = lualib:GetDayInt(player, "qianwang7")
		if qianwang == 1 then 
			lualib:ForceQuestReady(player, quest_id)
		end
	elseif quest_id == 81 then
		
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 81, 444, counts)
		
		
	elseif quest_id == 82 then
		local level = lualib:Level(player)
		if level >= 65 then
			lualib:SetQuestGroupHuntingsCount(player, 82, 444, 1)	
		end
	elseif quest_id == 85 then
		local level = lualib:Level(player)
		if level >= 66 then
			lualib:SetQuestGroupHuntingsCount(player, 85, 444, 1)	
		end
	elseif quest_id == 86 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 2 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 86, 444, counts)
		
	elseif quest_id == 87 then
		local level = lualib:GetInt(player, "xuefu_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 87, 444, 1)	
		end
		
	elseif quest_id == 88 then
		local level = lualib:Level(player)
		if level >= 67 then
			lualib:SetQuestGroupHuntingsCount(player, 88, 444, 1)	
		end
		
	elseif quest_id == 89 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 4 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 89, 444, counts)
		
	elseif quest_id == 90 then
		local level = lualib:GetInt(player, "Ach_xunz")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 90, 444, 1)	
		end
	elseif quest_id == 91 then
		local level = lualib:Level(player)
		if level >= 68 then
			lualib:SetQuestGroupHuntingsCount(player, 91, 444, 1)	
		end	
	elseif quest_id == 92 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Item_GetLevel(Guid)
				if Level > 60 then 
					counts = counts + 1
					if counts >= 6 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 92, 444, counts)
	elseif quest_id == 93 then
		local level = lualib:GetInt(player, "hudun_level")
		if level >= 2 then
			lualib:SetQuestGroupHuntingsCount(player, 93, 444, 1)	
		end
	elseif quest_id == 94 then
		local level = lualib:Level(player)
		if level >= 69 then
			lualib:SetQuestGroupHuntingsCount(player, 94, 444, 1)	
		end
				
	elseif quest_id == 95 then
		local level = lualib:GetInt(player, "ach_level")
		if level >= 1 then
			lualib:SetQuestGroupHuntingsCount(player, 95, 444, 1)	
		end
	elseif quest_id == 96 then
		local level = lualib:Level(player)
		if level >= 70 then
			lualib:SetQuestGroupHuntingsCount(player, 96, 444, 1)	
		end
		
	elseif quest_id == 97 then
		if lualib:GetFamilyName(player) ~= "" then	
			--lualib:SysPromptMsg(player, "有家族")	
			lualib:SetQuestGroupHuntingsCount(player, 97, 444, 1)
		end
	elseif quest_id == 98 then
		local level = lualib:Level(player)
		if level >= 75 then
			lualib:SetQuestGroupHuntingsCount(player, 98, 444, 1)	
		end
		
	elseif quest_id == 99 then
		local level = lualib:Level(player)
		if level >= 80 then
			lualib:SetQuestGroupHuntingsCount(player, 99, 444, 1)	
		end
	elseif quest_id == 100 then 
		local qianwang = lualib:GetDayInt(player, "qianwang8")
		if qianwang == 1 then 
			lualib:ForceQuestReady(player, quest_id)
		end
	elseif quest_id == 101 then
		local  boss_level = lualib:GetInt(player,"boss_level")
		if boss_level >= 1 then 
			lualib:SetQuestGroupHuntingsCount(player, 101, 444, 1)	
		end
	elseif quest_id == 102 then
		local level = lualib:Level(player)
		if level >= 85 then
			lualib:SetQuestGroupHuntingsCount(player, 102, 444, 1)	
		end	
	elseif quest_id == 103 then
		local  reinLevel = lualib:GetInt(player,"reinLevel")
		if reinLevel >= 1 then 
			lualib:SetQuestGroupHuntingsCount(player, 103, 444, 1)	
		end
	elseif quest_id == 104 then 
		local qianwang = lualib:GetDayInt(player, "qianwang9")
		if qianwang == 1 then 
			lualib:ForceQuestReady(player, quest_id)
		end
	elseif quest_id == 105 then
		local  reinLevel = lualib:GetInt(player,"reinLevel")
		if reinLevel >= 2 then 
			lualib:SetQuestGroupHuntingsCount(player, 105, 444, 1)	
		end
	elseif quest_id == 106 then
		local  reinLevel = lualib:GetInt(player,"reinLevel")
		if reinLevel >= 3 then 
			lualib:SetQuestGroupHuntingsCount(player, 106, 444, 1)	
		end
		
	elseif quest_id == 10001 then
		local counts = 0
		for i = 1, 17 do 
			local Guid = lualib:Player_GetItemGuid(player,  i) --获取装备位的物品GUID
			if Guid ~= "" then
				local Level = lualib:Equip_GetRefineLevel(player, Guid)
				if Level >= 6 then 
					counts = counts + 1
					if counts >= 1 then 
						break
					end
				end
			end
		end
		lualib:SetQuestGroupHuntingsCount(player, 10001, 444, counts)	
		
	elseif quest_id == 10002 then		
		lualib:ApplyItem(player, "灵石精华小", false);
	end
	

--[[	if quest_id == 22 then
		lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 4 ..");")
	end--]]
	
	return true
end 
	
function chuansong_1(player)
	lualib:Player_MapMoveXY(player, "蜈蚣洞一层", 93, 148, 1)
	lualib:SysPromptMsg(player, "传送成功！")
	lualib:DisableTimer(player, 999)
    return true
end


function on_accomplish(player,quest_id)
	
	lualib:Debug("quest_id = "..tostring(quest_id))
	local reward_path = "quest/"..tostring(quest_id).."_reward"
	lualib:Debug(reward_path)
	local data = require(reward_path)	
	
	if not data then
		return 
	end
	local item_table = data.item_table


	local gender = lualib:Gender(player)
	local job = lualib:Job(player)
	local player_name = lualib:Name(player)

--	lualib:Debug("gender = "..gender)
--	lualib:Debug("job = "..job)

	
	local tb = item_table[job][gender]
	local item_num = #tb -- rewards item count
	if lualib:Player_GetBagFree(player) < item_num then
		
		for k,v in pairs(tb) do
			local keyname = tostring(v[1])
			local count = tostring(v[2])
			local bind = tostring(v[3])
			lualib:Mail("神途", player_name, "由于你的包裹已满，现已将任务奖励通过邮件发送给你", 0, 0, {keyname,tonumber(count),tonumber(bind)})
		end
		lualib:SysMsg_SendTriggerMsg(player, "背包空间不够，需要"..item_num.."个格子！道具已通过邮件发送给你，请注意查收")
	else
		for k,v in pairs(tb) do
			local keyname = tostring(v[1])
			local count = tostring(v[2])
			local bind = tostring(v[3])
		--	lualib:Debug("v[name] = "..keyname)
		--	lualib:Debug("v[count] = "..count)
		--	lualib:Debug("v[bind] = "..bind)
			local b = false
			if bind == "1" then
				b = true
			end
			lualib:AddItem(player, keyname, tonumber(count), b, "任务赠送", "任务")  
		end		
		
	end
	
	if quest_id == 11 then
		if lualib:AddItem(player, "强效金创药",1 , false, "任务赠送", "任务")  then
			lualib:ShowFormWithContent(player,"脚本表单","CL:SetQuickBar(".. 1 ..",".. 9 ..",".. 13 ..")")
			lualib:ApplyItem(player, "强效金创药", false)
		end
	end
	
	if quest_id == 21 or quest_id == 29 then
		if lualib:ApplyItem(player, "乾坤囊", false) then
			--lualib:SysMsg_SendTriggerMsg(player, "已自动使用乾坤囊，增加了20格包裹。")	
			lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.Taskitem(" .. 7 ..");")
			
		else
			lualib:SysMsg_SendTriggerMsg(player, "自动使用乾坤囊失败。")
		end
	end

	if quest_id == 26 or quest_id == 52 then
		local varTb = {"xuefu_chip", "hudun_chip", "baoshi_chip", "hunzhu_chip"}
		local equipLvTb = {"xuefu_level", "hudun_level", "baoshi_level", "hunzhu_level"}
		local count = 0
		local varRequireTb = {
							["xuefu_chip"]= {200,200,500,1000,2000,4000,7000,11000,16000,22000,29000,37000,46000,56000,68000,82000,98000,116000,136000,160000,188000,220000,260000,308000,364000,99999999},
							["hudun_chip"]= {100,100,200,350,550,800,1100,1450,1850,2300,99999999},
							["baoshi_chip"]= {40,90,150,220,375,935,2340,4400,7020,11705,99999999},
							["hunzhu_chip"]= {40,70,120,230,810,1190,1550,1820,2630,3590,4010,4690,5660,5980,6440,7070,14010,17270,20890,24930,30250,99999999},
						}
		for i = 1, 4 do
			local chipName = varTb[i]
			local Level = lualib:GetInt(player, equipLvTb[i])
			if lualib:GetInt(player, chipName ) >= varRequireTb[varTb[i]][Level+1] then
				count = count + 1
			end
		end
		--lualib:SysPromptMsg(player, ""..count)
		if count > 0 then
			lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.SlNum("..count..")")
		end
	end

	if quest_id == 15 then
		local str = "" 
		str =str.. "local Handle = GetWindow(nil, \"TransmitMagic\")\n"
		str =str.."if Handle ~= 0 then\n"
		str =str.."GUI:WndClose(Handle)\n"
		str = str.."end\n"
		str = str.."if TaskWindow._wnd ~= 0 then\n"
		str = str.."WndDelEffect(TaskWindow._wnd)\n"
		str = str.."end\n"
		lualib:ShowFormWithContent(player,"脚本表单",str) 
	end
	
	if quest_id == 72 then
		lualib:ShowFormWithContent(player, "脚本表单","GameMainBar.OpenEnhanceFun()")
	end
	
	if quest_id == 74 then
		lualib:ForceAcceptQuest(player, 75)
	end
	
	--[[if quest_id == 79 then
		local count = lualib:ItemCount(player, "500绑定元宝")
		if count >= 1 then
			if lualib:ApplyItem(player, "500绑定元宝", false) then
				lualib:ShowFormWithContent(player,"脚本表单", "GameMainBar.Taskitem(".. 3 ..");")
			end
		end
	end--]]
	if  quest_id == 83 then 
		lualib:SetInt(player,"可以挖矿",1)
		if not lualib:HasQuest(player, 800) then
			lualib:AcceptQuest(player, 800)
			local ItemTble = lualib:BagItemList(player,true,false,false)
			local s = 0  
			local item = ""
			for i=1,#ItemTble do 
				if ItemTble[i] ~= nil then
					item = lualib:KeyName(ItemTble[i])
					if "青铜矿"==item then 
						s = s+1
					elseif "黑铁矿"==item then
						s = s+1
					elseif "白银矿"==item then 
						s = s+1
					elseif "黄金矿"==item then 
						s = s+1
					end
				end
			end
			if lualib:HasQuest(player, 800) then
				lualib:SetQuestGroupHuntingsCount(player, 800, 553, s)
			end
		end
	end 

	return true
end

function can_accomplish(player,quest_id)
	if lualib:GetInt(player, "task_id") == 0 then
		if quest_id == 15 then
			lualib:DelayCall(player, 300, "CallClientFun", player)
			lualib:SetInt(player, "task_id", 1)
		end
	end
	return true
end

function CallClientFun(player)
	lualib:ShowFormWithContent(player, "form文件表单", "TransmitMagic")
	return ""
end
