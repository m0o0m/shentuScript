function main(npc,player) 
--lualib:SetInt(player, "reinLevel", 12)
	--[[
	lualib:ShowFormWithContent(player,"form�ļ���","ShenLu_tip")
	lualib:SysMsg_SendRoleTalk(npc, "����ɮ��ħ֮�����������衭��")
	if lualib:GetVipLevel(player) == 7 then 
		lualib:SetVipLevel(player,0)
	else
		lualib:SetVipLevel(player,7)
	end--]]
	--lualib:ShowFormWithContent(player,"�ű���","GameMainBar.Taskitem(".. 2  ..")")

	local msg = [[
	
	
	
	
	
	
	
<@get_gold *01*��ȡ����Ԫ������>
<@get_vip#1 *01*���vip�ȼ�1>
<@get_vip#2 *01*���vip�ȼ�2>
<@get_vip#3 *01*���vip�ȼ�3>
<@get_vip#4 *01*���vip�ȼ�4>
<@get_vip#5 *01*���vip�ȼ�5>
<@get_vip#6 *01*���vip�ȼ�6>
<@get_vip#7 *01*���vip�ȼ�7>
<@get_vip#8 *01*���vip�ȼ�8>
<@get_vip#9 *01*���vip�ȼ�9>
<@get_vip#10 *01*���vip�ȼ�10>
]]

	return "���ã���ӭ������;"--msg
	
end

function get_gold(npc, player)
	lualib:Player_AddGold(player, 10000000, false, "������", player)
	lualib:Player_AddIngot(player, 100000, false, "������", player)
	
	return main(npc,player) 
end

function get_vip(npc, player, index)
	lualib:SetVipLevel(player, tonumber(index))
	return main(npc,player) 
end
