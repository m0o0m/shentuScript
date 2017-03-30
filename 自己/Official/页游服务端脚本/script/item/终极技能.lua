local skill = {
					["无间地狱1级"] = {"无间地狱1级", "", 1, 45},
					["无间地狱2级"] = {"无间地狱2级", "无间地狱1级", 1, 47},
					["无间地狱3级"] = {"无间地狱3级", "无间地狱2级", 1, 49},
					["无间地狱4级"] = {"无间地狱4级", "无间地狱3级", 1, 52},
                    ["无间地狱5级"] = {"无间地狱5级", "无间地狱4级", 1, 55},
					["凤凰涅槃1级"] = {"凤凰涅槃1级", "", 2, 45},
					["凤凰涅槃2级"] = {"凤凰涅槃2级", "凤凰涅槃1级", 2, 47},
					["凤凰涅槃3级"] = {"凤凰涅槃3级", "凤凰涅槃2级", 2, 49},
					["凤凰涅槃4级"] = {"凤凰涅槃4级", "凤凰涅槃3级", 2, 53},
                    ["凤凰涅槃5级"] = {"凤凰涅槃5级", "凤凰涅槃4级", 2, 55},
					["恶魔之怒1级"] = {"恶魔之怒1级", "", 3, 45},
					["恶魔之怒2级"] = {"恶魔之怒2级", "恶魔之怒1级", 3, 47},
					["恶魔之怒3级"] = {"恶魔之怒3级", "恶魔之怒2级", 3, 49},
					["恶魔之怒4级"] = {"恶魔之怒4级", "恶魔之怒3级", 3, 53},
                    ["恶魔之怒5级"] = {"恶魔之怒5级", "恶魔之怒4级", 3, 55},
				}--道具keyname     技能keyname   上一级技能keyname 		 职业：1战2法3道

				
function main(player, item)
	local itemName = lualib:KeyName(item)
	local job = lualib:Job(player)
	local level = lualib:Level(player)

	if level < skill[itemName][4] then
		lualib:SysMsg_SendWarnMsg(player, "你的等级不足，无法学习该技能！")
		return false
	end
	
	
	if job ~= skill[itemName][3] then
		lualib:SysMsg_SendWarnMsg(player, "你的职业不能学习该技能！")
		return false
	end
	
	
	
	local skillName = string.sub(itemName, 1, 8)
	local skillLevel = tonumber(string.sub(itemName, 9, 9))
	
	local req = 0
	for i = 1, 5 do
		local skillLevelName = skillName.. i .."级"
		if lualib:Player_IsHasSkill(player,skillLevelName) == true then
			req = i
			break
		end
	end

	if skillLevel < req then
		lualib:SysMsg_SendWarnMsg(player, "该技能已学习！")
        return false
	end
	
	
	if lualib:Player_IsHasSkill(player, skill[itemName][1]) == true then
		lualib:SysMsg_SendWarnMsg(player, "该技能已学习！")
        return false
	end
	
	if skill[itemName][2] ~= "" then
		if lualib:Player_IsHasSkill(player, skill[itemName][2]) ~= true then
			lualib:SysMsg_SendWarnMsg(player, "你还未学习"..skill[itemName][2].."无法学习"..skill[itemName][2])
			return false
		end
	end
	
	
	
	
	if skill[itemName][2] == "" then
		if not lualib:Item_Destroy(player, item, "", "") then
			lualib:SysMsg_SendPromptMsg(player, "扣除道具失败")
			return
		end
		lualib:AddSkill(player, skill[itemName][1])
		lualib:SysMsg_SendPromptMsg(player, "技能学习成功！")
		return true
	else
		if not 		lualib:Item_Destroy(player, item, "", "") then
			lualib:SysMsg_SendPromptMsg(player, "扣除道具失败")
			return
		end
		
		lualib:Player_RunGMCmd(player, "sd", skill[itemName][2])
		lualib:AddSkill(player, skill[itemName][1])
		lualib:SysMsg_SendPromptMsg(player, "技能学习成功！")
		return true
	end
end

function on_create(item)
	lualib:AddTimerEx(item, 1, 500, 1, "tip", "")
	
end

function tip(item)
	local item_name = lualib:Name(item)
	local item_map_guid = lualib:MapGuid(item)
	local item_map_name = lualib:Name(item_map_guid)
	local item_map_x = lualib:X(item)
	local item_map_y = lualib:Y(item)
	local item_role = lualib:ItemRole(item)
	local player_name = lualib:Name(item_role)
	
	if item_map_x < 20000 then
		if player_name == "" then
			local s = "【"..item_name.."】掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s, "", 1, 12)
		else
			--local s = "【"..item_name.."】被→→→".."["..player_name.."]一个人品爆发打了出来，掉落在"..item_map_name.."["..item_map_x..":"..item_map_y.."]！"
            local s = "【"..item_name.."】掉落在"..item_map_name.."的["..item_map_x..":"..item_map_y.."]！！！"
			local s1 = "#COLORCOLOR_BROWN#["..item_name.."] #COLORCOLOR_YELLOW#掉落在#COLORCOLOR_BROWN#["..item_map_name.."]#COLORCOLOR_YELLOW#的["..item_map_x..":"..item_map_y.."]！！！"
			lualib:SysMsg_SendCenterMsg(1, s, "")
			 lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		end
	else	
		return
	end
end
