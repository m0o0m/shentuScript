function main(npc,player)
	local msg = "\n                  #COLORCOLOR_GREENG#BOSS 大  厅#COLOREND#\n\n"
	local msg = msg.."#COLORCOLOR_BROWN#    毫无疑问，BOSS大厅绝对是神途里刷新最多BOSS的地方！数量多、刷新快，且掉落全系列装备！！\n"
	local msg = msg.."\n\n\n"
	local msg = msg.."                     #COLORCOLOR_GREENG#说  明#COLOREND##COLORCOLOR_BROWN#\n\n"
	local msg = msg.."  1.进入条件：#COLORCOLOR_GREENG#成为VIP#COLOREND##COLOREND##COLORCOLOR_BROWN#（充值1元就能成为VIP）\n\n"
	local msg = msg.."  2.BOSS数量：一层10个，二层5个，三层3个\n\n"
	local msg = msg.."  3.刷新时间：15-360分钟\n\n"
	local msg = msg.."  4.掉落材料：全系列材料\n\n"
	local msg = msg.."  5.掉落装备：全系列装备\n\n"
	local msg = msg.."\n\n\n\n\n\n"
	local msg = msg.."              <@jinru *01* →『进入BOSS大厅』←>\n"
	return msg
end

function jinru(npc,player,param)
	if lualib:GetVipLevel(player) >= 1 then 
		lualib:Player_MapMove(player, "BOSS大厅")
	else
		lualib:SysMsg_SendBottomColor(player, "您的VIP等级不足", 7, 2)
	end
	return ""
end
