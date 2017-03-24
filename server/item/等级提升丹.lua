function main(player,item) 
local dj = lualib:Level(player) 
local jy =  lualib:Player_GetExpLimit(player) 

if dj >= 400  then
	lualib:SysMsg_SendPromptMsg(player, "等级超过400不能使用")
	return false
  end
lualib:DelItem(player, lualib:KeyName(item), 1, 2, "等级提升丹", "等级提升丹")
if dj < 200 then 
	lualib:SetLevel(player, dj+1) 
	elseif dj < 300 then 
	jyz = jy*0.5
	lualib:Player_AddExp(player, jyz, "等级提升", player)
	elseif dj < 350 then 
	jyz = jy*0.2
	lualib:Player_AddExp(player, jyz, "等级提升", player)
	elseif dj < 400 then 
	jyz = jy*0.1

	lualib:Player_AddExp(player, jyz, "等级提升", player)
	end
		lualib:SysMsg_SendPromptMsg(player, "提升成功！~~~")
	return ""
end