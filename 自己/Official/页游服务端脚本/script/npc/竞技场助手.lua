function main(npc,player)
	local msg = ""
	local distance = lualib:Map_GetDistance(lualib:Player_GetPosX(player), lualib:Player_GetPosY(player), lualib:Npc_GetPosX(npc), lualib:Npc_GetPosY(npc))

	if distance == 1 then
		msg = msg.."���Ѿ�����׼������ս����������\n\n"
		msg = msg.."<@move *01*�ǵģ�����ȥ�ɣ�>\n"
		msg = msg.."<@leave *01*�뿪>\n"
	else
		msg = msg.."���̫Զ�ˣ�\n\n"
		msg = msg.."<@leave *01*�뿪>\n"
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
	lualib:Player_DelBuff(player,"��Ӣ������׼��") --ɾ��buff
	return ""
end