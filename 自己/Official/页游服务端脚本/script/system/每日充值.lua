local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")


--lualib:SetFormAllowFunc({"dailyConsume_click"});  --check client submitForm

local gift_ = {

	{	--1000
		"高级转生丹",	1,	1,
		"羽毛",			10,	1,		
		"金砖大",		1,	1,
		"副本卷轴",		1,	1,
		"玛雅卷轴",		1,	1,
	},
	{	--4000
		"羽毛",				20,	1,
		"法神令牌",			4,	1,
		"高级BOSS召唤令",	1,	1,
		"宝石结晶中",		1,	1,
		"高级转生丹",		1,	1,
	},
	{	--5000
		"高级转生丹",	1,	1,
		"宝石结晶中",	1,	1,
		"魂珠碎片中",	1,	1,
		"法神令牌",		1,	1,
		"金砖大",		1,	1,
	},
	{	--40000
		"宝石结晶大",	1,	1,
		"转生神殿卷轴",	1,	1,
		"羽毛",			30,	1,
		"副本卷轴",		3,	1,
		"金砖大",		1,	1,
	},
	{	--50000
		"魂珠碎片大",	1,	1,
		"高级转生丹",	1,	1,
		"宝石结晶大",	1,	1,
		"转生神殿卷轴",	1,	1,
		"金砖大",		1,	1,
	},
}
local consumeLvl_ = {1000, 4000, 5000, 40000, 50000}

-----------------------图标显示-----------------------------
function dailyConsume_show(player)
	AddSEIcon(player, 2, -2, "每日充值", 1800200051, "倒计时", "dailyConsume_click","","每天充点小钱")
end

-------------------图标被点击-----------------------
function dailyConsume_click(player)
	local starttime = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()))

	if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin >= 0 and time > " .. starttime , "web_bill2_jt", player) then
		return "操作失败！"
		else
		return ""
	end	

	
	return "" 
end




function web_bill2_jt(bResult,dwError,strError,iResultNum,tRecordSets,player)
	local msg_error = ""
	if bResult == false then

		return
	end
	local chongzhi_cishu = 0
	local id = tostring(lualib:Player_GetAccountID(player))
	local day_num = 0
	for k,v in pairs(tRecordSets) do
		day_num = day_num + tonumber(v[2])
	end
	local giftData_ = {}
	for i, v in pairs(consumeLvl_) do
		if day_num < v then
			giftData_ = {v - day_num, gift_[i]}
			break
		end
	end
	local day_cishu = lualib:GetDayInt(player, "dailyConsume_reward")
	
	lualib:ShowFormWithContent(player, "form文件表单", "每日充值_c#"..serialize(giftData_).."#"..day_cishu)

end


