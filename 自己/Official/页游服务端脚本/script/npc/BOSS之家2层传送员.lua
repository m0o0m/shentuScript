



function main(npc,player)
	--[[local msg = "  BOSS大厅二层刷新5个神秘BOSS，只有强力玩家才能击杀，获得丰厚材料和极品装备！\n"
	local msg = msg.."———————————————————————————————\n"
	local msg = msg.."说明：\n"
	local msg = msg.."1.进入条件：#COLORCOLOR_GREENG#VIP2以上#COLOREND#玩家免费进入，VIP1玩家消耗10元宝进入\n"
	local msg = msg.."2.BOSS数量：5个\n"
	local msg = msg.."3.刷新时间：150-180分钟\n"
	local msg = msg.."4.掉落材料：全系列材料\n"
	local msg = msg.."5.掉落装备：全系列装备\n"
	local msg = msg.."————————————————————————————————\n"
	local msg = msg.."#OFFSET<X:150,Y:0>##COLORCOLOR_GREENG#<@jinru *01* 进入BOSS大厅2层> #COLOREND# \n"
	return msg--]]
	lualib:ShowFormWithContent(player, "form文件表单", "BOSS_SecondWnd")
	return ""
end

function jinru(npc,player,param)
	if lualib:GetVipLevel(player) >= 2 then 
		lualib:Player_MapMove(player, "BOSS大厅二层")
	elseif lualib:GetVipLevel(player) == 1 then
		if lualib:Player_SubIngot(player, 10, false, "扣元宝:原因", "发起人") then
			lualib:Player_MapMove(player, "BOSS大厅二层")
		else
			return "你身上元宝不足，VIP1级需要消耗10元宝才可以进入BOSS大厅二层"
		end
	elseif lualib:GetVipLevel(player) < 1 then
		lualib:SysMsg_SendBottomColor(player, "您的VIP等级不足", 7, 2)
	end
	return ""
end
