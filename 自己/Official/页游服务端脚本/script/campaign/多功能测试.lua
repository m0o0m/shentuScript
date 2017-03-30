function main(npc,player) 
--lualib:SetInt(player, "reinLevel", 12)
	--[[
	lualib:ShowFormWithContent(player,"form文件表单","ShenLu_tip")
	lualib:SysMsg_SendRoleTalk(npc, "梵天僧：魔之天道，听我梵歌……")
	if lualib:GetVipLevel(player) == 7 then 
		lualib:SetVipLevel(player,0)
	else
		lualib:SetVipLevel(player,7)
	end--]]
	--lualib:ShowFormWithContent(player,"脚本表单","GameMainBar.Taskitem(".. 2  ..")")

	local msg = [[
	
	
	
	
	
	
	
<@EveryDayDgn *01*开启每日副本>
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
