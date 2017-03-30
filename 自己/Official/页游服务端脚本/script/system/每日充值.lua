local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")


--lualib:SetFormAllowFunc({"dailyConsume_click"});  --check client submitForm

local gift_ = {

	{	--1000
		"�߼�ת����",	1,	1,
		"��ë",			10,	1,		
		"��ש��",		1,	1,
		"��������",		1,	1,
		"���ž���",		1,	1,
	},
	{	--4000
		"��ë",				20,	1,
		"��������",			4,	1,
		"�߼�BOSS�ٻ���",	1,	1,
		"��ʯ�ᾧ��",		1,	1,
		"�߼�ת����",		1,	1,
	},
	{	--5000
		"�߼�ת����",	1,	1,
		"��ʯ�ᾧ��",	1,	1,
		"������Ƭ��",	1,	1,
		"��������",		1,	1,
		"��ש��",		1,	1,
	},
	{	--40000
		"��ʯ�ᾧ��",	1,	1,
		"ת��������",	1,	1,
		"��ë",			30,	1,
		"��������",		3,	1,
		"��ש��",		1,	1,
	},
	{	--50000
		"������Ƭ��",	1,	1,
		"�߼�ת����",	1,	1,
		"��ʯ�ᾧ��",	1,	1,
		"ת��������",	1,	1,
		"��ש��",		1,	1,
	},
}
local consumeLvl_ = {1000, 4000, 5000, 40000, 50000}

-----------------------ͼ����ʾ-----------------------------
function dailyConsume_show(player)
	AddSEIcon(player, 2, -2, "ÿ�ճ�ֵ", 1800200051, "����ʱ", "dailyConsume_click","","ÿ����СǮ")
end

-------------------ͼ�걻���-----------------------
function dailyConsume_click(player)
	local starttime = lualib:Str2Time(lualib:Time2Str("%Y-%m-%d", lualib:GetAllTime()))

	if not lualib:PostDBEvt("select order_id,billin from tblbilllog where user_id=" .. lualib:UserID(player) .. " and billin >= 0 and time > " .. starttime , "web_bill2_jt", player) then
		return "����ʧ�ܣ�"
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
	
	lualib:ShowFormWithContent(player, "form�ļ���", "ÿ�ճ�ֵ_c#"..serialize(giftData_).."#"..day_cishu)

end


