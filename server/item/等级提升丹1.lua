function main(player,item) 
local dj = lualib:Level(player) 
local jy =  lualib:Player_GetExpLimit(player) 

if dj < 401  then
	lualib:SysMsg_SendPromptMsg(player, "�ȼ�����501����ʹ��")
	return false
  end
if dj > 600  then
	lualib:SysMsg_SendPromptMsg(player, "�ȼ�����600����ʹ��")
	return false
  end

lualib:DelItem(player, lualib:KeyName(item), 1, 2, "�ȼ�������", "�ȼ�������")
if dj < 500 then 
	jyz = jy*0.1
	lualib:Player_AddExp(player, jyz, "�ȼ�����", player)
	elseif dj < 600 then 
	jyz = jy*0.05
	lualib:Player_AddExp(player, jyz, "�ȼ�����", player)
	end
		lualib:SysMsg_SendPromptMsg(player, "�����ɹ���~~~")
	return ""
end