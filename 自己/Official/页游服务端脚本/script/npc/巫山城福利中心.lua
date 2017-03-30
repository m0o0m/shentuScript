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
	
	
	
	
	
	
	
<@get_gold *01*领取测试元宝与金币>
<@get_vip#1 *01*获得vip等级1>
<@get_vip#2 *01*获得vip等级2>
<@get_vip#3 *01*获得vip等级3>
<@get_vip#4 *01*获得vip等级4>
<@get_vip#5 *01*获得vip等级5>
<@get_vip#6 *01*获得vip等级6>
<@get_vip#7 *01*获得vip等级7>
<@get_vip#8 *01*获得vip等级8>
<@get_vip#9 *01*获得vip等级9>
<@get_vip#10 *01*获得vip等级10>
]]

	return "您好，欢迎来到神途"--msg
	
end

function get_gold(npc, player)
	lualib:Player_AddGold(player, 10000000, false, "测试用", player)
	lualib:Player_AddIngot(player, 100000, false, "测试用", player)
	
	return main(npc,player) 
end

function get_vip(npc, player, index)
	lualib:SetVipLevel(player, tonumber(index))
	return main(npc,player) 
end
