function main(player,item) 
local dj = lualib:Level(player) 
local jy =  lualib:Player_GetExpLimit(player) 

if dj < 600  then
	lualib:SysMsg_SendPromptMsg(player, "等级不足600不能使用")
	return false
  end
if dj >= 900  then
	lualib:SysMsg_SendPromptMsg(player, "等级超过900不能使用")
	return false
  end

lualib:DelItem(player, lualib:KeyName(item), 1, 2, "等级提升丹", "等级提升丹")
	lualib:SetLevel(player, dj+1) 
		lualib:SysMsg_SendPromptMsg(player, "提升成功！~~~")
	return ""
end