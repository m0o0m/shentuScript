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
	
	
	
	
	
	
	
<@EveryDayDgn *01*����ÿ�ո���>
]]
	
	return msg
	
end

function EveryDayDgn(npc, player)
	lualib:SetInt(player, "hasAccept75Quest", 1)
	return main(npc,player) 
end

function get_vip(npc, player, index)
	lualib:SetVipLevel(player, tonumber(index))
	return main(npc,player) 
end
