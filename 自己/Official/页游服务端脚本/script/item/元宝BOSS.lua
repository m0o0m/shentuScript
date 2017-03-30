function on_create(monster)
	--lualib:AddTrigger(monster, lua_trigger_attack_ex , "on_attack")
--	lualib:AddTrigger(monster, lua_trigger_monster_post_die , "on_post_die")
	lualib:AddTrigger(monster, lua_trigger_post_die, "on_post_die")
	
	return ""
end

function on_attack(self, target, hp, skill)
	lualib:SetHp(self, 9999998,false)
	return ""
end

function on_post_die(monster, killer)
	
	local monName = lualib:Name(monster)
	--local x = lualib:Monster_GetPosX(monster)
	--local y = lualib:Monster_GetPosY(monster)
	--lualib:SysPromptMsg(killer,lualib:Name(killer).."已死，黄天当立！")
	
	local x = lualib:X(monster)
    local y = lualib:Y(monster)
	local mapguid = lualib:MapGuid(monster)     
	for i=1,100 do 
		if i<6 then 
			--lualib:Map_GenItemRnd(mapguid, x, y, 3, "100元宝", 1, true, 90)
			lualib:Map_GenItemRnd(mapguid, x, y, 3, "1000绑定元宝", 1, true, 45)
		end
		lualib:Map_GenItemRnd(mapguid, x, y, 3, "100绑定元宝", 1, true, 45)
	end
	local playerList = lualib:Map_GetMapPlayers(mapguid, true)
	lualib:SysMsg_SendTopColor(1,"#COLORCOLOR_YELLOW#".. monName.."已死，45秒后掉落的元宝可自由拾取", 11, 2)
	
    for i=1, #playerList do 
		if playerList[i] ~= "" then
			lualib:SysPromptMsg( playerList[i],monName.."已死，45秒后掉落的元宝可自由拾取")
		end 
	end
	
	return ""
end
