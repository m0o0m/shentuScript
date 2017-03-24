local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)


local skill_tb = {
["Ë²Õ¶"] = {"Ë²Õ¶"}, --Õ½

["Ä§¾¡"] = {"ÖÂÃüÒ»»÷"}, --·¨

["·âÉñ"] = {"Éñ¼¼-×çÖä"}, --µÀ

}

function pre_apply(actor, skillid,x,y)
	local skill_name = lualib:Id2KeyName(skillid, 17)
	local map = lualib:MapGuid(actor)
	local rwzb = {0,x,y,1,1}
	local gwzb = {0,x,y,1,1}
	
	local player_tb = lualib:Map_GetRegionPlayersEx(map, rwzb, true)
	local monster_tb = lualib:Map_GetRegionMonstersEx(map, "", gwzb, true, false)
	
	if #player_tb > 0 then 
		for k , v in pairs(skill_tb["Ë²Õ¶"]) do 
			if skill_name == v then 
				--for i = 1,#player_tb do 
					local jl = lualib:Distance(actor, player_tb[1])
					if jl <= 7 then 
						lualib:Player_MapMoveXY(actor, "", x, y, 1)
						--break
					else
						lualib:SysWarnMsg(actor, "¾àÀë¹ýÔ¶!")
						return false
					end
				--end
			end
		end 
		for k , v in pairs(skill_tb["Ä§¾¡"]) do 
			if skill_name == v then 
				lualib:AddTimer(actor, 20160323, 500, 6, "mojin")
				lualib:AddTrigger(actor, lua_trigger_pre_item_apply, "axkk")
			end
		end 
		for k , v in pairs(skill_tb["·âÉñ"]) do 
			if skill_name == v then 
				for i = 1,#player_tb do 
					lualib:AddBuff(player_tb[i], "¶¨Éí", 2)
					lualib:AddTrigger(player_tb[i], lua_trigger_pre_item_apply, "axkk")
				end
			end
		end 
	end
	
	if #monster_tb > 0 then 
		for k , v in pairs(skill_tb["Ë²Õ¶"]) do 
			if skill_name == v then 
				--for i = 1,#monster_tb do 
					local jl = lualib:Distance(actor, monster_tb[1])
					if jl <= 7 then 
						lualib:Player_MapMoveXY(actor, "", x, y, 1)
						--break
					else
						lualib:SysWarnMsg(actor, "¾àÀë¹ýÔ¶!"..jl)
						return false
					end
				--end 
			end
		end 
		for k , v in pairs(skill_tb["Ä§¾¡"]) do 
			if skill_name == v then 
				lualib:AddTimer(actor, 20160323, 500, 6, "mojin")
				lualib:AddTrigger(actor, lua_trigger_pre_item_apply, "axkk")
			end
		end 
		for k , v in pairs(skill_tb["·âÉñ"]) do 
			if skill_name == v then 
				for i = 1,#monster_tb do 
					lualib:AddBuff(monster_tb[i], "¶¨Éí", 2)
				end
			end
		end 
	end
	return true
end

function axkk(player, item, item_id, item_name)
	local pz_item = lualib:Item_DataRow(item_name)
	local yao = pz_item["LogicType"] 

	if yao == 5 then 
		lualib:DelayCall(player, 2000, "bcii", "")
		return false
	end
	lualib:DelayCall(player, 2000, "bcii", "")
	
	return true
end 

function bcii(player)
	if lualib:HasTrigger(player, lua_trigger_pre_item_apply, "axkk") then 
		lualib:RemoveTrigger(player, lua_trigger_pre_item_apply, "axkk")
	end
	
	return ""
end 

function mojin(player,timer_id)
	lualib:SetMp(player, 0, false)
	return ""
end