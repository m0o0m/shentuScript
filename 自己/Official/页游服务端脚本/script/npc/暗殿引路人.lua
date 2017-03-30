


function main(npc,player)
	local msg = "                      #COLORCOLOR_BROWN#暗殿引路人#COLOREND#                    \n"
	local msg = msg.."\n"
	local msg = msg.."    暗殿刷新BOSS，数量多，刷新时间快，容易击杀，掉落70级以下全系列装备和大量副本卷，前期必抢\n"
	local msg = msg.."\n"
	local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."\n"
	local msg = msg.."说明：\n"
	local msg = msg.."\n"
	local msg = msg.."    1.进入条件：每次进入消耗#COLORCOLOR_GREENG#500绑定元宝#COLOREND#\n"
	local msg = msg.."\n"
	local msg = msg.."    2.BOSS数量：10个\n"
	local msg = msg.."\n"
	local msg = msg.."    3.刷新时间：30-60分钟\n"
	local msg = msg.."\n"
	local msg = msg.."    4.掉落材料：海量副本卷\n"
	local msg = msg.."\n"
	local msg = msg.."    5.掉落装备：#COLORCOLOR_GREENG#70级#COLOREND#以下全系列装备（可回收海量经验）\n"
	local msg = msg.."\n"
	local msg = msg.."    #COLORCOLOR_GRAY#┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉┉#COLOREND#\n"
	local msg = msg.."\n"
	local msg = msg.."\n"
	local msg = msg.."#OFFSET<X:140,Y:0>##COLORCOLOR_GREENG#<@entermap *01* 进入暗殿>#COLOREND# \n"
	local msg = msg.."\n"
	local msg = msg.."#OFFSET<X:135,Y:0>#消耗绑定元宝:#COLORCOLOR_GOLD#500#COLOREND# \n"
	lualib:NPCTalkDetailEx(npc, player, msg, 350, 490)
	--lualib:NPCTalkDetail( player, msg, 350, 490)
	--lualib:NPCTalkDetail( sPlayerID , msg , 350 , 490 )
end

function entermap(npc,player)
	if lualib:GetBindIngot(player) >= 500 then
		lualib:SubBindIngot(player, 500, "暗殿门票", lualib:Name(player))
		lualib:Player_MapMove(player, "未知暗殿")
	else
		lualib:SysMsg_SendBottomColor(player, "您的绑定元宝不足", 7, 2)
	end
	return ""
end