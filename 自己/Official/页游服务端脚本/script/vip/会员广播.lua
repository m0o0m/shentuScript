function main(player, vipLevel)
	local msg = ""
    msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
    msg = msg.."尊敬的会员：\n \n"
	msg = msg.."您每天可以在本频道免费发布10条全服公告！！！\n \n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700017>#<@huiyuan77 *01*「发布全服公告」>\n"
	msg = msg.."#COLORCOLOR_BROWN#▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂▂#COLOREND#\n \n"
	lualib:NPCTalk(player, msg)
	return ""
end

function huiyuan77(player)
	local vip8_day_jintian = lualib:GetAllDays(0)
	local vip8_guangbo_zuotian = lualib:Player_GetCustomVarInt(player, "vip8_guangbo_zuotian")
	if vip8_day_jintian == vip8_guangbo_zuotian then
		lualib:NPCTalk(player, "每天只能发布10条免费广播，明天再来吧！！！\n \n<@main *01*「返回」>\n")
		return ""
	end
	
	lualib:SysMsg_SendInputDlg(player, 2, "请输入需要发布的内容：(限制40字内)", 30, 80, "EnterSilver", "")
	return ""
end

function EnterSilver(id, player, silver, param)
	local player_name = lualib:Name(player)
	local msg = silver
	local vip8_day_jintian = lualib:GetAllDays(0)
	local huiyuan_guangbo_zhi = lualib:Player_GetCustomVarInt(player, "vip8_guangbo"..vip8_day_jintian)
		if huiyuan_guangbo_zhi > 8 then
			lualib:Player_SetCustomVarInt(player, "vip8_guangbo_zuotian", vip8_day_jintian)
			lualib:Player_SetCustomVarInt(player, "vip8_guangbo"..vip8_day_jintian, 0)
			lualib:NPCTalk(player, "当前为您今天发布的第10条免费广播，每天可以发布10条！！\n \n<@main *01*「返回」>\n")
			return ""
		else
			huiyuan_guangbo_zhi = huiyuan_guangbo_zhi + 1
			lualib:Player_SetCustomVarInt(player, "vip8_guangbo"..vip8_day_jintian, huiyuan_guangbo_zhi)
			lualib:SysMsg_SendBroadcastMsg(""..msg, "玩家【"..player_name.."】发布会员广播")
			lualib:NPCTalk(player, "当前为您今天发布的第"..huiyuan_guangbo_zhi.."条免费广播，每天可以发布10条！！\n \n<@main *01*「返回」>\n")
			return ""
		end
		return ""
end
	
	