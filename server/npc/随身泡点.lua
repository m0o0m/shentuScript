local timeId = 12582	--定时器ID

local second = 1	--多少秒加一次经验

local limit = 200	--多少级开始不能使用泡点


function main(npc,player)
	local mes = " NpcKeyName = \"【随身泡点】\""--标题
	lualib:ShowFormWithContent(player, "脚本表单", mes)
	local msg = [[




   #COLORCOLOR_ORANGE#一个追逐梦想的传奇故事，一份值得珍藏的兄弟情义

   #COLORCOLOR_BLUE#青春的记忆里有着传奇的点点滴滴，不忘热血续写初心

   #COLORCOLOR_MAGENTA#提示：#COLORCOLOR_GREENG#时间沉淀经典，只要您努力一切皆有可能，可泡至顶级#COLOREND#

            

                    #IMAGE1902700015##OFFSET<Y:-2>#<@sure *01*【欢迎您开启天怒之旅】>           
	]]
 
lualib:SetPanelSize(npc, 426, 258)
	
	return msg
end






function sure(npc, player)

	if lualib:Level(player) >= 200 then
		showmsg(player, "您超过"..limit.."级无法继续使用泡点功能。")
		return ""
    end
	
	if lualib:HasTimer(player, timeId) then
		showmsg(player, "您已经开启过泡点了")
		return ""
	end
	lualib:AddTimer(player, timeId, second * 1000, -1, "on_time_exp")
	lualib:Player_MapMoveXY(player,"天怒之城",255,405,5)
	showmsg(player, "开启泡点成功。")
	return ""
end


function on_time_exp(player, id)
	if lualib:Level(player) >= limit then
		lualib:DisableTimer(player, id)
		lualib:SysWarnMsg(player, "等级达到"..limit.."级无法再进行随身泡点。")
		return false
	end
	if lualib:IsOffline(player) then
		lualib:DisableTimer(player, id)
		return false
	end
	
	local temp = lualib:GetTempInt(player, "tbingot") + 1

	lualib:AddExp(player, 100000, "加经验:随身泡点", player)

end


function showmsg(player, msg)
	lualib:ShowFormWithContent(player, "脚本表单", "msgbox = "..string.format("%q", msg))
	lualib:ShowFormWithContent(player, "form文件表单", "MsgBox")
end