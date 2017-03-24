local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("campaign/��սboss�淨")

-----------------------ͼ����ʾ-----------------------------
function openChallengeBoss_show(player)
	
	AddSEIcon(player, 1, -3, "ChallengeBOSS", 1800200015, "ChallengeBOSS", "openChallenge", "", "ɱBOSS��װ��")
	openChallengeBoss_magic(player)
	return ""
end

function openChallengeBoss_magic(player)
	AddIconMagic(player, "ChallengeBOSS",3020300700,-43,-47, 180)
	return ""
end
-------------------ͼ�걻���-----------------------

function openChallenge(player)
	Goto(1, player);
	-- lualib:ShowFormWithContent(player, "form�ļ���", "BossWnd")
	return ""
end


function tst(player)
	local str = "#COLORCOLOR_YELLOW#���#COLOREND##COLORCOLOR_BLUE#��"..lualib:Name(player).."��#COLOREND##COLORCOLOR_YELLOW#�����޾���Ԩ���޾���Ԩ�ɴ���ɽ��NPC�����룡#COLOREND#";
	lualib:SysMsg_SendBroadcastColor(str, "", 1, 12);
	-- lualib:SysMsg_SendTopColor(2, "[��սBOSS]��ѿ�������Ӣ�������ٽ�������֮�ء�", 11, 13)
	return ""
end
