function main(player,item) 
local dj = lualib:Level(player) 
local jy =  lualib:Player_GetExpLimit(player) 

if dj < 401  then
	lualib:SysMsg_SendPromptMsg(player, "等级不足501不能使用")
	return false
  end
if dj > 600  then
	lualib:SysMsg_SendPromptMsg(player, "等级超过600不能使用")
	return false
  end

lualib:DelItem(player, lualib:KeyName(item), 1, 2, "等级提升丹", "等级提升丹")
if dj < 500 then 
	jyz = jy*0.1
	lualib:Player_AddExp(player, jyz, "等级提升", player)
	elseif dj < 600 then 
	jyz = jy*0.05
	lualib:Player_AddExp(player, jyz, "等级提升", player)
	end
		lualib:SysMsg_SendPromptMsg(player, "提升成功！~~~")
	return ""
end