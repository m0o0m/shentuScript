local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")
local client_award = 
{
    {"金砖中",1,0},
    {"金砖中",1,0},
    {"金砖中",1,0},
    {"金砖中",1,1},	
}



-----------------------图标显示-----------------------------
function download_show(player)	
	local aaaa = lualib:GetInt(player, "award_download")
	if aaaa == 0 then
		--ShowTimeCount2(player, 0, 1906100157, "客户端下载",1096000300,"",5) --显示目标图标
		--AddSEIcon(player, 1, -4, "客户端下载", 1800200067, "倒计时", "download","","")

------------------------------------------------------------------------------------		
		if lualib:GetInt(player, "getAllSpecialGift") == 0 then
			AddSEIcon(player, 1, -4, "客户端下载", 1800200067, "倒计时", "download","","下载客户端，领取超值礼包")
		else
			AddSEIcon(player, 1, -3, "客户端下载", 1800200067, "倒计时", "download","","下载客户端，领取超值礼包")
		end
------------------------------------------------------------------------------------
	end
end

-------------------图标被点击-----------------------
function download(player)

	
	local clientType = lualib:GetClientType(player)

	local tab = serialize(client_award)
	--lualib:ShowFormWithContent(player, "脚本表单", "client_award_t="..serialize(client_award))
	lualib:ShowFormWithContent(player, "form文件表单", "客户端下载表单#"..serialize(client_award).."#"..clientType)
	--lualib:download_award_t(player, "client_award_t="..serialize(client_award))
	
	
    --local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:SysMsg_SendWarnMsg(player, "客户端下载被点击")
    --lualib:SysMsg_SendWebPage(player, msg)
    return ""
end
