function main(npc, player)
   	local msg = "#COLORCOLOR_BROWN#────────────#COLOREND##COLORCOLOR_SKYBLUE#防沉迷#COLOREND##COLORCOLOR_BROWN#───────────#COLOREND#\n"
	msg = msg..
	[[
	#COLORCOLOR_BROWN#1.你可我这里进行防沉迷验证，解除防沉迷\n#COLOREND#
	#COLORCOLOR_BROWN#2.可在我这里补充详细资料，以便以后获得更多的礼品和奖励！\n#COLOREND#
	]]
	msg = msg.."#IMAGE<ID:1902700030>#<@VerifyIndulge *01*防沉迷验证>\n"
	msg = msg.."#IMAGE<ID:1902700030>#<@ziliao *01*详细资料补充>\n"
    return msg
end

function InfoIndulge(npc, player)
    lualib:ShowForm(player, "防沉迷表单")
    return ""
end

function VerifyIndulge(npc, player)
	local userid = lualib:Player_GetAccountID(player)
	lualib:SysMsg_SendWebMsg(player, "防沉迷验证", "http://passport.173uu.com/verifygame/index.html?uid="..userid, "")
	return ""
end


function ziliao(npc, player)
	local userid = lualib:Player_GetAccountID(player)
	local times = lualib:GetAllTime()
	lualib:SysMsg_SendWebMsg(player, "防沉迷验证", "http://www.hzyotoy.com/index.do?mod=account&act=info&sign=<SIGNSTR>&ct="..times.."&uid="..userid, "")
	return ""
end