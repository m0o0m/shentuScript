local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/timecount_def")
local save_client_award = {
    {"金砖小",1,0},
    {"金砖小",1,0},
    {"金砖小",1,0},
    {"金砖小",1,1},
}

-----------------------图标显示-----------------------------
function storeUp_show(player)	
	local types = lualib:GetClientType(player)
	if types ==  1 then
		local flag = lualib:GetInt(player,"storeUp_flag")
		if flag == 0 then
			AddSEIcon(player, 1, -6,"收藏游戏", 1800200071, "倒计时", "store_aaa","","")
			--ShowTimeCount2(player, 0, 1906100153, "收藏游戏",0,"",5) --显示目标图标
-------------------------------------------------------------------------------

---------------------------------------------------------------------------------
		end
	end	
end

-------------------图标被点击-----------------------
function store_aaa(player)
	--ShowTimeCount2(player, 0, 1903800079, "收藏游戏",0,"",5) --显示目标图标
	--local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:ShowFormWithContent(player, "收藏游戏表单", ""..lualib:GetGroupId())
	--lualib:SysMsg_SendWarnMsg(player, "收藏游戏被点击,表单已发送")
	--lualib:SysMsg_SendWebPage(player, msg)
	
	lualib:ShowFormWithContent(player, "form文件表单","CollectAward#");
    return ""
end

function CollectAwardGetAward(player)
	local storeUp_flag = lualib:GetInt(player,"storeUp_flag");
	if storeUp_flag == 1 then 
		lualib:Error(""..player.."已经收藏,试图重复领奖");
		return ""
	end
	for i = 1, #save_client_award do
		local bind = false
		if save_client_award[i][3] == 1 then
			bind = true
		end
		lualib:AddItem(player, save_client_award[i][1], save_client_award[i][2], bind, "客户端下载奖励", player)
		lualib:SysPromptMsg(player, "领取了收藏奖励"..lualib:KeyName2Name(save_client_award[i][1], 4).." + "..save_client_award[i][2].."!")
	end
	lualib:SetInt(player,"storeUp_flag", 1)
	DelIcon(player,"收藏游戏")
   	return ""
end


function close(player)
	return ""
end