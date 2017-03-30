local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local award_tb = {
					[20] = {
									[1] = {
											[1] = {"凌霜剑特殊","轻型战甲特殊","金手镯特殊","灯笼项链特殊","青铜头盔战特殊","金戒指特殊"},
											[2] = {"凌霜剑特殊","轻型战袍特殊","金手镯特殊","灯笼项链特殊","青铜头盔战特殊","金戒指特殊"}
											},
									[2] = {
											[1] = {"海魂特殊","魔力轻铠男特殊","黑檀手镯特殊","生命项链特殊","青铜头盔法特殊","六角戒指特殊"},
											[2]	= {"海魂特殊","魔力轻铠女特殊","黑檀手镯特殊","生命项链特殊","青铜头盔法特殊","六角戒指特殊"}
											},
									[3] = {
											[1] = {"半月特殊","轻型道袍特殊","道士手镯特殊","白金项链特殊","青铜头盔道特殊","珍珠戒指特殊"},
											[2] = {"半月特殊","轻型道衣特殊","道士手镯特殊","白金项链特殊","青铜头盔道特殊","珍珠戒指特殊"}
											}
									},
					[35] = {
									[1] = {
											[1] = {"井中月特殊","重型铠甲男特殊","死神手套特殊","魔鬼项链特殊","骷髅头盔战特殊","降妖除魔戒指特殊"},
											[2] = {"井中月特殊","重型铠甲女特殊","死神手套特殊","魔鬼项链特殊","骷髅头盔战特殊","降妖除魔戒指特殊"}
											},
									[2] = {
											[1] = {"魔杖特殊","魔法长袍男特殊","思贝儿手镯特殊","恶魔铃铛小特殊","黑铁头盔法特殊","蛇眼戒指特殊"},
											[2]	= {"魔杖特殊","魔法长袍女特殊","思贝儿手镯特殊","恶魔铃铛小特殊","黑铁头盔法特殊","蛇眼戒指特殊"}
											},
									[3] = {
											[1] = {"银蛇特殊","幽灵道袍特殊","心灵手镯特殊","黄色水晶项链特殊","道士头盔特殊","道德戒指特殊"},
											[2] = {"银蛇特殊","幽灵道衣特殊","心灵手镯特殊","黄色水晶项链特殊","道士头盔特殊","道德戒指特殊"}
											}
									},
					[45] = {
									[1] = {
											[1] = {"裁决特殊","战神铠甲男特殊","坚固手套特殊","蓝翡翠项链特殊","黑铁头盔特殊","力量戒指特殊"},
											[2] = {"裁决特殊","战神铠甲女特殊","坚固手套特殊","蓝翡翠项链特殊","黑铁头盔特殊","力量戒指特殊"}
											},
									[2] = {
											[1] = {"血饮特殊","恶魔长袍男特殊","龙之手镯特殊","恶魔铃铛大特殊","魔法头盔特殊","紫碧螺特殊"},
											[2]	= {"血饮特殊","恶魔长袍女特殊","龙之手镯特殊","恶魔铃铛大特殊","魔法头盔特殊","紫碧螺特殊"}
											},
									[3] = {
											[1] = {"龙纹特殊","灵巧道袍特殊","三眼手镯特殊","凤凰明珠特殊","骷髅头盔道特殊","泰坦戒指特殊"},
											[2] = {"龙纹特殊","灵巧道衣特殊","三眼手镯特殊","凤凰明珠特殊","骷髅头盔道特殊","泰坦戒指特殊"}
											}
									},
					[60] = {"天使之翼"},
					}
					
function level_up_award(player, level)
	
				
	local player_name = lualib:Name(player)  --获取玩家的名字
	local job = lualib:Job(player) 			 --获取玩家的职业
	local gender = lualib:Gender(player)	 --获取玩家的性别
	local lv = tonumber(level)
	local lv_award = award_tb[lv]

	if lv_award then
		local item_tb = {}
		if lv == 60 then
			if lualib:GetBagFree(player) < 1 then
				lualib:MailToPlayer("系统", player, "恭喜您升到"..lv.."级，由于您的背包空间不足，奖励内容发至邮箱", 0, 0, 
							{
								award_tb[lv][1],1,1,
							})
				lualib:SysPromptMsg(player, "背包空间不足，道具已通过邮件发送给您，请注意查收")
			else
				lualib:AddItem(player, award_tb[lv][1], 1, true, "升级奖励", "系统")
				lualib:ApplyEquipEx(player, award_tb[lv][1])
			end
		else
			item_tb = award_tb[lv][job][gender]
			if item_tb then
				--lualib:SysPromptMsg(player, "服务端lv="..lv.."job="..job.."gender="..gender)
				lualib:ShowFormWithContent(player, "form文件表单","升级礼包_c".."#" .. serialize(item_tb).."#"..lv.."#"..job.."#"..gender)
			end
		end
	else 
		return
	end
	return ""
	
end

function lingqu(player,level,job,gender)
	local lv = tonumber(level)
	local job = tonumber(job)
	local gender = tonumber(gender)
	if lualib:GetBagFree(player) < 6 then
		lualib:MailToPlayer("系统", player, "恭喜您升到"..lv.."级，由于您的背包空间不足，奖励内容发至邮箱", 0, 0, 
						{
							award_tb[lv][job][gender][1],1,1,
							award_tb[lv][job][gender][2],1,1,
							award_tb[lv][job][gender][3],1,1,
							award_tb[lv][job][gender][4],1,1,
							award_tb[lv][job][gender][5],1,1,
						})
		lualib:MailToPlayer("系统", player, "恭喜您升到"..lv.."级，由于您的背包空间不足，奖励内容发至邮箱", 0, 0, 
						{
							award_tb[lv][job][gender][6],1,1,
						})
		lualib:SysPromptMsg(player, "背包空间不足，道具已通过邮件发送给您，请注意查收")
	else
		
		for i = 1 , 6 do
			if i == 3 then 
				--[[
				local prop_table = lualib:Item_DataRow(award_tb[lv][job][gender][i]) 
				local quality = prop_table["Quality"]
				lualib:SysPromptMsg(player, ''..quality)
				local Guid0 = lualib:Player_GetItemGuid(player,  lua_site_wrist_0) --获取装备位的物品GUID
				if Guid0 ~= "" then
					local keyName0 = lualib:KeyName(Guid0)
					local prop_table0 = lualib:Item_DataRow(keyName0)
					local quality0 = prop_table0["Quality"]
					if quality >= quality0 then 
						lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_wrist_0)
					else
						local Guid1 = lualib:Player_GetItemGuid(player,  lua_site_wrist_1) --获取装备位的物品GUID
						if Guid1 ~= "" then
							local keyName1 = lualib:KeyName(Guid1)
							local prop_table1 = lualib:Item_DataRow(keyName1)
							local quality1 = prop_table1["Quality"]
							if quality >= quality1 then 
								
							else
								
							end	
							
						end
					local Level = lualib:Item_GetLevel(Guid)
					
					if Level > 70 then 
						counts = counts + 1
						if counts > 0 then 
							break
						end
					end
				end
				--]]
				local Guid0 = lualib:Player_GetItemGuid(player,  lua_site_wrist_0) --获取装备位的物品GUID
				if Guid0 == "" then 
					lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
					lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_wrist_0)
				else
					local Guid1 = lualib:Player_GetItemGuid(player,  lua_site_wrist_1) --获取装备位的物品GUID
					if Guid1 == "" then 
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
						lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_wrist_1)
					else
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
						lualib:ApplyEquipEx(player, award_tb[lv][job][gender][i])
					end
				end
				
			elseif i == 6 then 
				local Guid0 = lualib:Player_GetItemGuid(player,  lua_site_ring_0) --获取装备位的物品GUID
				if Guid0 == "" then 
					lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
					lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_ring_0)
				else
					local Guid1 = lualib:Player_GetItemGuid(player,  lua_site_ring_1) --获取装备位的物品GUID
					if Guid1 == "" then 
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
						lualib:TakeOnEx(player, award_tb[lv][job][gender][i], lua_site_ring_1)
					else
						lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
						lualib:ApplyEquipEx(player, award_tb[lv][job][gender][i])
					end
				end
			else
				lualib:AddItem(player, award_tb[lv][job][gender][i], 1, true, "升级奖励", "系统")
				--lualib:SysPromptMsg(player, award_tb[lv][job][gender][i])
				lualib:ApplyEquipEx(player, award_tb[lv][job][gender][i])
			end
		end
		
		local tab = {
			["a1"]={0,0},
			["a2"]={0,0},
			["a3"]={0,0},
			["a4"]={0,0},
			["a5"]={0,0},
			["a6"]={0,0},	}
		local pass = 0
		if lv == 20 then
			pass=1
			tab["a"..job]={14,437}
			tab["a4"]={0,115}
			tab["a5"]={0,85}
		elseif lv == 35 then
			pass=1
			tab["a"..job]={111,18}
			tab["a4"]={67,19}
			tab["a5"]={60,35}
			pass=1
		elseif lv == 45 then
			pass=1
			tab["a"..job]={87,40}
			tab["a4"]={25,15}
			tab["a5"]={15,30}
		end
		if pass == 1 then 
			local str = ""
			for i=1,6 do
				str = str .. i .. ","
				str = str .. tab["a"..i][1] .. ","
				if i == 6 then
					str = str .. tab["a"..i][2]
				else
					str = str .. tab["a"..i][2] .. "#"
				end
			end	
			lualib:ShowFormWithContent(player, "属性改变表单", str)
		end
	end
	lualib:SysCenterMsg( 0 , "恭喜获得"..lv.."级礼包" , player )
	--lualib:SysPromptMsg(player, "恭喜获得"..lv.."级礼包")
	return ""
end