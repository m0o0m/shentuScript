function main(player,item) 
local dj = lualib:Level(player) 
local jy =  lualib:Player_GetExpLimit(player) 

if dj >= 400  then
	lualib:SysMsg_SendPromptMsg(player, "�ȼ�����400����ʹ��")
	return false
  end
lualib:DelItem(player, lualib:KeyName(item), 1, 2, "�ȼ�������", "�ȼ�������")
if dj < 200 then 
	lualib:SetLevel(player, dj+1) 
	elseif dj < 300 then 
	jyz = jy*0.5
	lualib:Player_AddExp(player, jyz, "�ȼ�����", player)
	elseif dj < 350 then 
	jyz = jy*0.2
	lualib:Player_AddExp(player, jyz, "�ȼ�����", player)
	elseif dj < 400 then 
	jyz = jy*0.1

	lualib:Player_AddExp(player, jyz, "�ȼ�����", player)
	end
		lualib:SysMsg_SendPromptMsg(player, "�����ɹ���~~~")
	return ""
end