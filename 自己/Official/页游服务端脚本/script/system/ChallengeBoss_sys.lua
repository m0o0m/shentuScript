-----------------------图标显示-----------------------------
function openChallengeBoss_show(player) 
	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 1, -1, "ChallengeBOSS", 1800200087, "倒计时", "openChallenge","","杀BOSS狂爆装备")
		return ""
	end 
	AddSEIcon(player, 1, -0.75, "ChallengeBOSS", 1800200087, "倒计时", "openChallengeBoss","","杀BOSS狂爆装备")
	return ""
end
-------------------图标被点击-----------------------

function openChallenge(player)
	lualib:ShowFormWithContent(player, "form文件表单", "BossWnd")
	return ""
end

function openChallengeBoss(player,param)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenBoss()")
	return ""
end
