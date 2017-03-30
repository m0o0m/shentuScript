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
			AddSEIcon(player, 1, -8, "客户端下载", 1800200067, "倒计时", "download","","下载客户端，领取超值礼包")
		else
			AddSEIcon(player, 1, -8, "客户端下载", 1800200067, "倒计时", "download","","下载客户端，领取超值礼包")
		end
------------------------------------------------------------------------------------
	end
end

-------------------图标被点击-----------------------
function download(player)
	lualib:RunClientScript(player, "CommonScriptFun", "GetIsClient", "")
	--lualib:ShowFormWithContent(player,"脚本表单","GetIsClient()")
	--local clientType = lualib:GetClientType(player)
	
	--local tab = serialize(client_award)
	--lualib:ShowFormWithContent(player, "脚本表单", "client_award_t="..serialize(client_award))
	--lualib:ShowFormWithContent(player, "form文件表单", "客户端下载表单#"..serialize(client_award).."#"..clientType)
	--lualib:download_award_t(player, "client_award_t="..serialize(client_award))
	
	
    --local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:SysMsg_SendWarnMsg(player, "客户端下载被点击")
    --lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

function clintSet(player,clientType)
	--lualib:SysPromptMsg(player,"clientType = "..clientType)
	local tab = serialize(client_award)

	lualib:ShowFormWithContent(player, "form文件表单", "客户端下载表单#"..serialize(client_award).."#"..clientType)
    return ""
end

function get_download_award(player,clientType)
	--local types = lualib:GetClientType(player)
	--lualib:SysPromptMsg(player,"clientType = "..clientType)
	if tonumber(clientType) ~= 0 then
		lualib:SysPromptMsg(player, "请用客户端登陆!")
		return ""
	end
	
	local aaaa = lualib:GetInt(player, "award_download")
	if aaaa == 1 then
		lualib:SysPromptMsg(player, "你已经领取过奖励!")
		return ""
	end
	
	if lualib:Player_GetBagFree(player) < #client_award then
		lualib:SysPromptMsg(player, "背包不足!")
		return ""
	end
	
	lualib:SetInt(player, "award_download", 1)
	for i = 1, #client_award do
		local bind = false
		if client_award[i][3] == 1 then
			bind = true
		end
		lualib:AddItem(player, client_award[i][1], client_award[i][2], bind, "客户端下载奖励", player)
		lualib:SysPromptMsg(player, "领取下载奖励了"..lualib:KeyName2Name(client_award[i][1], 4).." + "..client_award[i][2].."!")
	end
	--AddSEIcon(line, pos, name, image, file, func, param, tips)
	local str = "WndClose(nil,\"下载奖励\");"
	lualib:ShowFormWithContent(player, "脚本表单", str)
	--DelIcon(player,"客户端下载")
	--ShowTimeCount2(player, -1, 1906100157, "客户端下载",1096000300,"",5) --显示目标图标
	
	---------------------------------------------------------------------------
	if lualib:GetInt(player,"getAllSpecialGift") == 0 then
		if lualib:GetInt(player,"storeUp_flag") == 0 then      --存在开服活动、游戏收藏
			DelIcon(player,"客户端下载")
			AddSEIcon(player, 1, -4,"收藏游戏", 1800200071, "倒计时", "store_aaa","","收藏游戏，领取礼包")
		else  --存在开服活动、不存在游戏收藏
			DelIcon(player,"客户端下载")
		end
	else
		if lualib:GetInt(player,"storeUp_flag") == 0 then      --不存在开服活动、存在游戏收藏
			DelIcon(player,"客户端下载")
			AddSEIcon(player, 1, -3,"收藏游戏", 1800200071, "倒计时", "store_aaa","","收藏游戏，领取礼包")
		else
			DelIcon(player,"客户端下载")
		end
	end
	----------------------------------------------------------------------------
	
	return ""
end

function download_web(player)
	--登陆器下载链接
	local msg = "http://serverlist.oss-cn-hangzhou.aliyuncs.com/yycest/yycest.exe"
	--lualib:SysMsg_SendWebPage(player, msg)
	return ""
end	

function close(player)
	return ""
end