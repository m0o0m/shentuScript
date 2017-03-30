function main(npc,player)
	local msg = ""
	local distance = lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc))

	if distance == 1 then
		msg = msg.."您已经做好准备进入战斗区域了吗？\n\n"
		msg = msg.."<@move *01*是的，送我去吧！>\n"
		msg = msg.."<@leave *01*离开>\n"
	else
		msg = msg.."离得太远了！\n\n"
		msg = msg.."<@leave *01*离开>\n"
	end
	return msg
end
	
function leave()
	return ""
end

function move(npc,player)
	local map = lualib:MapGuid(player)
	local map_name =lualib:KeyName(map)
	local x = math.random(25,35)
	local y = math.random(42,56)
	lualib:Player_EnterDgn(player, map_name, x, y, 30)
	lualib:SetInt(player,"jyjjc_ruchangzhunbei",0)
	lualib:Player_DelBuff(player,"精英竞技场准备") --删除buff
	return ""
end