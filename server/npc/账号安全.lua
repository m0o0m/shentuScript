function main(npc, player)
   	local msg = "#COLORCOLOR_BROWN#������������������������#COLOREND##COLORCOLOR_SKYBLUE#������#COLOREND##COLORCOLOR_BROWN#����������������������#COLOREND#\n"
	msg = msg..
	[[
	#COLORCOLOR_BROWN#1.�����������з�������֤�����������\n#COLOREND#
	#COLORCOLOR_BROWN#2.���������ﲹ����ϸ���ϣ��Ա��Ժ��ø������Ʒ�ͽ�����\n#COLOREND#
	]]
	msg = msg.."#IMAGE<ID:1902700030>#<@VerifyIndulge *01*��������֤>\n"
	msg = msg.."#IMAGE<ID:1902700030>#<@ziliao *01*��ϸ���ϲ���>\n"
    return msg
end

function InfoIndulge(npc, player)
    lualib:ShowForm(player, "�����Ա�")
    return ""
end

function VerifyIndulge(npc, player)
	local userid = lualib:Player_GetAccountID(player)
	lualib:SysMsg_SendWebMsg(player, "��������֤", "http://passport.173uu.com/verifygame/index.html?uid="..userid, "")
	return ""
end


function ziliao(npc, player)
	local userid = lualib:Player_GetAccountID(player)
	local times = lualib:GetAllTime()
	lualib:SysMsg_SendWebMsg(player, "��������֤", "http://www.hzyotoy.com/index.do?mod=account&act=info&sign=<SIGNSTR>&ct="..times.."&uid="..userid, "")
	return ""
end