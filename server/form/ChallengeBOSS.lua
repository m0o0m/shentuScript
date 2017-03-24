local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("campaign/挑战boss玩法")

-----------------------图标显示-----------------------------
function openChallengeBoss_show(player)
	
	AddSEIcon(player, 1, -3, "ChallengeBOSS", 1800200015, "ChallengeBOSS", "openChallenge", "", "杀BOSS狂爆装备")
	openChallengeBoss_magic(player)
	return ""
end

function openChallengeBoss_magic(player)
	AddIconMagic(player, "ChallengeBOSS",3020300700,-43,-47, 180)
	return ""
end
-------------------图标被点击-----------------------

function openChallenge(player)
	Goto(1, player);
	-- lualib:ShowFormWithContent(player, "form文件表单", "BossWnd")
	return ""
end


function tst(player)
	local str = "#COLORCOLOR_YELLOW#玩家#COLOREND##COLORCOLOR_BLUE#【"..lualib:Name(player).."】#COLOREND##COLORCOLOR_YELLOW#进入无尽深渊，无尽深渊可从巫山城NPC处进入！#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	-- lualib:SysMsg_SendTopColor(2, "[挑战BOSS]活动已开启，请英雄们速速进入困兽之地。", 11, 13)
	return ""
end
