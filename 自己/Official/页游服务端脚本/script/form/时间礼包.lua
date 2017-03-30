--GetDayInt查询onlinegift可找到今日领取礼包次数



local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")

local client_award = 
{
    {"金砖小",1,0},
    {"金砖中",1,0},
    {"金砖中",1,0},
    {"金砖大",1,0},	
}

local olgifttbl = {
						{ 
							{ "金砖小" 			, 1 } , 
							{ "副本卷轴" 		, 1 } , 
						},
						{ 
							{ "金砖中" 			, 1 } , 
							{ "玛雅卷轴" 		, 1 } , 
						},
						{ 
							{ "金砖中"			, 1 } , 
							{ "转生神殿卷轴"	, 1 } , 
						},
						{ 
							{ "金砖大"			, 1 } , 
							{ "转生神殿卷轴"	, 1 } , 
						},
					
}


-----------------------图标显示-----------------------------
function onlinegift_show( sPlayerID )	
	if lualib:GetDayInt( sPlayerID , "onlinegift" ) == 0 then
		AddSEIcon( sPlayerID , 1 , -3 , "在线礼包" , 1906100009 , "倒计时" , "onlinegiftpickup" ,"" , "各种奖励领导手软" )
	end
end

-------------------图标被点击-----------------------
function onlinegiftpickup(player)
	local tab = serialize(client_award)
	lualib:ShowFormWithContent(player, "脚本表单", "client_award_t="..serialize(client_award))
	lualib:ShowFormWithContent(player, "礼包表单", "礼包表单")
    return ""
end

-------------------领取奖励-------------------------
function pickupolgift( sPlayerID )
	local this = lualib:GetDayInt( sPlayerID , "onlinegift" ) + 1
	if this >= 4 then
		return "领取失败"
	end
	if lualib:GetBagFree( sPlayerID ) < 2 then
		return "包裹空格不足2个，无法领取"
	end
	for i=1,#olgifttbl[this] do
		lualib:AddItem( sPlayerID , olgifttbl[this][i][1] , olgifttbl[this][i][2] , true , "在线领取奖励" , "在线领取奖励"..sPlayerID )
	end
	lualib:SetDayInt( sPlayerID , "onlinegift" , this )
end

function close(player)
	return ""
end