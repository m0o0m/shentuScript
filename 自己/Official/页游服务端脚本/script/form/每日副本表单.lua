local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("form/ActivityDegree_s")

function OpenMainUI(player)
	local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本","67级宝石副本"}
	local tb = {}
	for i = 1, 6 do
		tb[i] = lualib:GetInt(player , dayIntNameTb[i])
	end
	tb[7] = tonumber(lualib:GetVipLevel(player))
	lualib:ShowFormWithContent(player, "form文件表单", "Daily_FB#"..serialize(tb))
	return ""
end

function OptionMap1(player)
	if lualib:Level(player) < 62 then				
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"等级不足\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept75Quest") ~= 1 then    ---是否接取过任务。。在《任务执行脚本》里面判断
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"需接取主线任务《古阵的开启》\");")
		return ""
	end--]]
	local isedNum = lualib:GetDayInt(player , "沃玛寺庙_Daily")
	local restNum = 2-lualib:GetInt(player , "62级经验副本")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	lualib:ShowFormWithContent(player, "form文件表单", "Dailyone#"..restNum.."#"..itemNum.."#1".."#"..isedNum)
	return ""
end

function OptionMap2(player)
	if lualib:Level(player) < 63 then
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"等级不足\");")
		return ""
	end
--[[	if lualib:GetInt(player, "hasAccept77Quest") ~= 1 then		---是否接取过任务。。在《任务执行脚本》里面判断
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"需接取主线任务《圣殿的开启》\");")
		return ""
	end--]]
	local isedNum = lualib:GetDayInt(player , "封魔恶谷_Daily")
	local restNum = 2-lualib:GetInt(player , "63级羽毛副本")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	lualib:ShowFormWithContent(player, "form文件表单", "Dailyone#"..restNum.."#"..itemNum.."#2".."#"..isedNum)
	return ""
end

function OptionMap3(player)
	if lualib:Level(player) < 64 then
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"等级不足\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept80Quest") ~= 1 then		---是否接取过任务。。在《任务执行脚本》里面判断
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"需接取主线任务《黑暗祭坛》\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "天空之城_Daily")
	local restNum = 2-lualib:GetInt(player , "64级盾牌副本")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	--lualib:SysPromptMsg(player,"restNum "..restNum)
	lualib:ShowFormWithContent(player, "form文件表单", "Dailyone#"..restNum.."#"..itemNum.."#3".."#"..isedNum)
	return ""
end

function OptionMap4(player)
	if lualib:Level(player) < 65 then
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"等级不足\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept83Quest") ~= 1 then		---是否接取过任务。。在《任务执行脚本》里面判断
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"需接取主线任务《上古邪庙》\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "祖玛寺庙_Daily")
	local restNum = 2-lualib:GetInt(player , "65级经验副本")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	lualib:ShowFormWithContent(player, "form文件表单", "Dailyone#".. restNum .."#"..itemNum.."#4".."#"..isedNum)
	return ""
end

function OptionMap5(player)
	if lualib:Level(player) < 66 then
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"等级不足\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then			---是否接取过任务。。在《任务执行脚本》里面判断
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"需接取主线任务《魔月峡谷》\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "赤月神殿_Daily")
	local restNum = 2-lualib:GetInt(player , "65级宝珠副本")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	lualib:ShowFormWithContent(player, "form文件表单", "Dailyone#".. restNum .."#"..itemNum.."#5".."#"..isedNum)
	return ""
end

function OptionMap6(player)
	if lualib:Level(player) < 67 then
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"等级不足\");")
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then			---是否接取过任务。。在《任务执行脚本》里面判断
		lualib:ShowFormWithContent(player, "脚本表单", "Daily_FB.MsgUp(\"需接取主线任务《魔月峡谷》\");")
		return ""
	end--]]
	
	local isedNum = lualib:GetDayInt(player , "雪域秘境_Daily")
	local restNum = 2-lualib:GetInt(player , "67级宝石副本")
	local viplevel = tonumber(lualib:GetVipLevel(player))
	if viplevel >= 4 then 
		restNum = restNum + 1
	end
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	lualib:ShowFormWithContent(player, "form文件表单", "Dailyone#".. restNum .."#"..itemNum.."#6".."#"..isedNum)
	return ""
end

function EnterMap1(player)
--[[	if lualib:GetInt(player, "hasAccept75Quest") ~= 1 then			---是否接取过任务。。在《任务执行脚本》里面判断
		
		return ""
	end--]]
	if lualib:Level(player) < 61 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "62级经验副本")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			local MapGuid = lualib:Map_CreateDgn("副本沃玛寺庙", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "62级经验副本" , lualib:GetInt( player , "62级经验副本" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "62级经验副本")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"脚本表单","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "副本沃玛寺庙" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 75) then
						lualib:ForceQuestReady(player, 75)  --*******改个编号
					end--]]
				end
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --进入一次副本完成80号任务
					if lualib:GetInt( player , "62级经验副本" ) + lualib:GetInt( player , "63级羽毛副本" ) + lualib:GetInt( player , "64级盾牌副本" ) + lualib:GetInt( player , "65级经验副本" ) + lualib:GetInt( player , "65级宝珠副本" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.closed();")
				return ""
			else
				return "您不被许可进入地图！\n "
			end
			
		end
	end
	return ""
end

function EnterMap2(player)
	if lualib:Level(player) < 63 then
		return ""
	end
	--[[if lualib:GetInt(player, "hasAccept77Quest") ~= 1 then			---是否接取过任务。。在《任务执行脚本》里面判断
		
		return ""
	end--]]
	
	local key = false
	local num = lualib:GetInt(player , "63级羽毛副本")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			local MapGuid = lualib:Map_CreateDgn("副本封魔恶谷", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt(player, "63级羽毛副本" , lualib:GetInt( player , "63级羽毛副本" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "63级羽毛副本")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"脚本表单","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn(player, "副本封魔恶谷" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 77) then
						lualib:ForceQuestReady(player, 77)		
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --进入一次副本完成80号任务
					if lualib:GetInt(player, "62级经验副本" ) + lualib:GetInt( player , "63级羽毛副本" ) + lualib:GetInt( player , "64级盾牌副本" ) + lualib:GetInt( player , "65级经验副本" ) + lualib:GetInt( player , "65级宝珠副本" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.closed();")
				return ""
			else
				return "您不被许可进入地图！\n "
			end
			
		end	
	end
	return ""
end

function EnterMap3(player)
	--[[if lualib:GetInt(player, "hasAccept80Quest") ~= 1 then			---是否接取过任务。。在《任务执行脚本》里面判断
		
		return ""
	end--]]
	
	
	if lualib:Level(player) < 64 then
		return ""
	end
	
	local key = false
	local num = lualib:GetInt(player , "64级盾牌副本")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			local MapGuid = lualib:Map_CreateDgn("副本天空之城", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "64级盾牌副本" , lualib:GetInt( player , "64级盾牌副本" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "64级盾牌副本")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"脚本表单","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "副本天空之城" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 80) then
						lualib:ForceQuestReady(player, 80)			 --*******改个编号
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --进入一次副本完成80号任务
					if lualib:GetInt(player, "62级经验副本" ) + lualib:GetInt( player , "63级羽毛副本" ) + lualib:GetInt( player , "64级盾牌副本" ) + lualib:GetInt( player , "65级经验副本" ) + lualib:GetInt( player , "65级宝珠副本" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.closed();")
				return ""
			else
				return "您不被许可进入地图！\n "
			end
			
		end	
	end
	return ""
end

function EnterMap4(player)
	--[[if lualib:GetInt(player, "hasAccept83Quest") ~= 1 then				---是否接取过任务。。在《任务执行脚本》里面判断
		
		return ""
	end--]]
	if lualib:Level(player) < 65 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "65级经验副本")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			local MapGuid = lualib:Map_CreateDgn("副本祖玛寺庙", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "65级经验副本" , lualib:GetInt( player , "65级经验副本" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "65级经验副本")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"脚本表单","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "副本祖玛寺庙" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 83) then
						lualib:ForceQuestReady(player, 83)				 --*******改个编号
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --进入一次副本完成80号任务
					if lualib:GetInt( player , "62级经验副本" ) + lualib:GetInt( player , "63级羽毛副本" ) + lualib:GetInt( player , "64级盾牌副本" ) + lualib:GetInt( player , "65级经验副本" ) + lualib:GetInt( player , "65级宝珠副本" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.closed();")
				return ""
			else
				return "您不被许可进入地图！\n "
			end
			
		end	
	end
	return ""
end

function EnterMap5(player)
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then				---是否接取过任务。。在《任务执行脚本》里面判断
		
		return ""
	end--]]
	if lualib:Level(player) < 66 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "65级宝珠副本")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			local MapGuid = lualib:Map_CreateDgn("副本赤月神殿", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "65级宝珠副本" , lualib:GetInt( player , "65级宝珠副本" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "65级宝珠副本")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"脚本表单","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "副本赤月神殿" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 86) then
						lualib:ForceQuestReady(player, 86)			 --*******改个编号
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --进入一次副本完成80号任务
					if lualib:GetInt( player , "62级经验副本" ) + lualib:GetInt( player , "63级羽毛副本" ) + lualib:GetInt( player , "64级盾牌副本" ) + lualib:GetInt( player , "65级经验副本" ) + lualib:GetInt( player , "65级宝珠副本" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.closed();")
				return ""
			else
				return "您不被许可进入地图！\n "
			end
			
		end	
	end
	return ""
end

function EnterMap6(player)
	--[[if lualib:GetInt(player, "hasAccept86Quest") ~= 1 then				---是否接取过任务。。在《任务执行脚本》里面判断
		
		return ""
	end--]]
	if lualib:Level(player) < 67 then
		return ""
	end
	local key = false
	local num = lualib:GetInt(player , "67级宝石副本")
	if num < 2 then 
		key = true
	elseif tonumber(lualib:GetVipLevel(player)) >= 4 and num < 3 then 
		key = true
	end
	
	if key then
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			local MapGuid = lualib:Map_CreateDgn("雪域秘境", true, 32 * 60 )
			if lualib:Player_SetDgnTicket(player ,MapGuid ) == true then
				lualib:SetInt( player , "67级宝石副本" , lualib:GetInt( player , "67级宝石副本" ) + 1 )
				addActivityDegree(player)
				lualib:NotifyVar(player, "67级宝石副本")
				if lualib:GetInt(player, "FirstCompleteDailyFB") == 0 then
					lualib:ShowFormWithContent(player,"脚本表单","FIRSTCOMPLETEDAILYFB=".. 1)
				end
				if lualib:Player_EnterDgn( player , "雪域秘境" , 73 , 89 , 0 ) then
					--[[if lualib:HasQuest(player, 86) then
						lualib:ForceQuestReady(player, 86)			 --*******改个编号
					end--]]
				end
				
				if lualib:GetInt(player, "No80TaskComplete") == 0 then   --进入一次副本完成80号任务
					if lualib:GetInt( player , "62级经验副本" ) + lualib:GetInt( player , "63级羽毛副本" ) + lualib:GetInt( player , "64级盾牌副本" ) + lualib:GetInt( player , "65级经验副本" ) + lualib:GetInt( player , "65级宝珠副本" ) == 1 then
						lualib:ForceQuestReady( player , 80 )
						lualib:SetInt(player, "No80TaskComplete", 1)
					end
				end
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.closed();")
				return ""
			else
				return "您不被许可进入地图！\n "
			end
			
		end	
	end
	return ""
end

function BuyFbKeys(player)
	if tonumber(lualib:GetBagFree(player) ) > 0 then
		if lualib:SubBindIngot(player, 300, "每日副本", "每日副本系统") then
			lualib:AddItem(player, "副本卷轴", 1, true, "每日副本", "每日副本系统")
			
			local itemNum = lualib:ItemCount(player, "副本卷轴")
			lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.itemnum("..itemNum..");")
		else
			lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.MsgUp(\"绑元不足\");")
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.MsgUp(\"背包不足\");")
	end
	return ""
end

function Sweeps(player,fb,param)
	local vip = lualib:GetVipLevel(player)
	if vip < 2 then
		
		lualib:ShowFormWithContent(player, "脚本表单", "GameMainBar.CommonRechage(\"VIP2即可扫荡\");")
		return ""
	end
	local dayIntNameTb = {"62级经验副本","63级羽毛副本","64级盾牌副本","65级经验副本","65级宝珠副本","67级宝石副本"}
	local yb = {98,188,188,98,188,38}
	local tab = {{1500000,{"魂珠碎片小",2,"狂暴之灵（小）"}},
				{600000,{"羽毛",12,"神灵之羽"}},
				{600000,{"护盾碎片小",25,"盾牌残片（小）"}},
				{1500000,{"魂珠碎片小",2,"狂暴之灵（小）"}},
				{600000,{"宝石结晶小",12,"珠宝碎片（小）"}},
				{600000,{"1级宝石箱",2,"1级宝石箱"}}
				}
		
	local i = tonumber(fb)
	local j = tonumber(param)
	local times = lualib:GetInt(player , dayIntNameTb[i])
	if vip >= 4  then 
		times = times -1
	end
	local num = 2-(times + 1)
	if times < 2 then
		if j == 2 then
			local ingot = lualib:GetIngot(player)
			if yb[i] > ingot then 
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.Msg(\"元宝不足\");")
				return ""
			end
		end
		if lualib:DelItem(player, "副本卷轴", 1, 2, "每日副本", "每日副本系统") then
			if j == 2 then
				if lualib:Player_SubIngot(player, yb[i], false, "每日副本", "发起人") then
					addActivityDegree(player)
					if vip >= 4  then 
						lualib:SetInt( player , dayIntNameTb[i] , times + 2 )
					else
						lualib:SetInt( player , dayIntNameTb[i] , times + 1 )
					end
					lualib:Player_AddExp(player ,tab[i][1]*2 , "镇魔圣殿" ,"system")
					lualib:AddItem(player , tab[i][2][1] , tab[i][2][2]*2 , true , "双", "每日副本系统")
					lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.down("..num..");Sweeps.closed()")
				else
					lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.Msg(\"元宝不足\");")
				end
			elseif j == 1 then
				addActivityDegree(player)
				if vip >= 4  then 
					lualib:SetInt( player , dayIntNameTb[i] , times + 2 )
				else
					lualib:SetInt( player , dayIntNameTb[i] , times + 1 )
				end
				lualib:Player_AddExp(player ,tab[i][1] , "镇魔圣殿" ,"system")
				lualib:AddItem(player , tab[i][2][1] , tab[i][2][2] , true , "单", "每日副本系统")
				lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.down("..num..");Sweeps.closed()")
			end
		else
			lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.Msg(\"副本卷轴不足\");")
		end
	else
		lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.Msg(\"今日次数已用完\");")
	end 
--[[	if i==1 then 
		OptionMap1(player)
	elseif i==2 then 
		OptionMap2(player)
	elseif i==3 then 
		OptionMap3(player)
	elseif i==4 then 
		OptionMap4(player)
	elseif i==5 then 
		OptionMap5(player)
	end--]]
	
	local itemNum = lualib:ItemCount(player, "副本卷轴")
	lualib:ShowFormWithContent(player, "脚本表单", "Dailyone.itemnum("..itemNum..");")
	return ""
end


----------活跃度相关
function addActivityDegree(player)
	local count = lualib:GetDayInt(player,"activityDgr_fb") + 1
	if 5 == count then
		lualib:SetDayInt(player,"activityDgr_fb", 5)
		lualib:SetDayInt(player,"totalActivityDegree", lualib:GetDayInt(player, "totalActivityDegree") + 10)
		ActivityDegree_setFlag(player)
	elseif 5 > count then
		lualib:SetDayInt(player,"activityDgr_fb", count)
	end
end