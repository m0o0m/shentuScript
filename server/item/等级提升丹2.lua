function main(player,item) 
local dj = lualib:Level(player) 
local jy =  lualib:Player_GetExpLimit(player) 

if dj < 600  then
	lualib:SysMsg_SendPromptMsg(player, "�ȼ�����600����ʹ��")
	return false
  end
if dj >= 900  then
	lualib:SysMsg_SendPromptMsg(player, "�ȼ�����900����ʹ��")
	return false
  end

lualib:DelItem(player, lualib:KeyName(item), 1, 2, "�ȼ�������", "�ȼ�������")
	lualib:SetLevel(player, dj+1) 
		lualib:SysMsg_SendPromptMsg(player, "�����ɹ���~~~")
	return ""
end