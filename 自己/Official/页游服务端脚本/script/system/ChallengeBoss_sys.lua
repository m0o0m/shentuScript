-----------------------ͼ����ʾ-----------------------------
function openChallengeBoss_show(player) 
	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 1, -1, "ChallengeBOSS", 1800200087, "����ʱ", "openChallenge","","ɱBOSS��װ��")
		return ""
	end 
	AddSEIcon(player, 1, -0.75, "ChallengeBOSS", 1800200087, "����ʱ", "openChallengeBoss","","ɱBOSS��װ��")
	return ""
end
-------------------ͼ�걻���-----------------------

function openChallenge(player)
	lualib:ShowFormWithContent(player, "form�ļ���", "BossWnd")
	return ""
end

function openChallengeBoss(player,param)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenBoss()")
	return ""
end
