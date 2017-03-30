function main(npc, player)
	
	local player_level = lualib:Level(player)
	local reinLevel = lualib:GetInt(player, "reinLevel")
	local map = 0
	if reinLevel == 0 then 
		if player_level < 70 then
			map = 1
		else
			map = 2
		end
		
	elseif reinLevel < 3 then
		map = 3
	elseif reinLevel < 5 then
		map = 4
	elseif reinLevel < 7 then
		map = 5
	elseif reinLevel < 9 then
		map = 6
	elseif reinLevel < 11 then
		map = 7
	elseif reinLevel < 13 then
		map = 8
	end
	if map ~= 0 then 
		--lualib:SysPromptMsg(player, "map="..map) 
		lualib:ShowFormWithContent(player, "form文件表单", "ReinTempleWnd#"..map)
		
	end 
	
	return ''
	
end
	
