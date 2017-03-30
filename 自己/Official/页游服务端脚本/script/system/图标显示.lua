local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")


-------------------�׳����  start-----------------------
local _weapons = ""
local firstConsume_cmpt = 0

-----------------------�׳���� ͼ����ʾ-----------------------------   
function firstConsume_show(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 2, -2, "�׳����", 1800200043, "����ʱ", "firstConsume_click","","��ֵ��������+6���")
		return ""
	end--]]
	------------*******************END********************-----------------
	
	AddSEIcon(player,2, -2, "�׳����", 1800200023, "����ʱ", "firstConsume_click","","��ֵ��������+6���")

	AddIconMagic(player, "�׳����",3000100600, -19,-19, 150)
	return ""
end

-------------------ͼ�걻���-----------------------
function firstConsume_click(player)

	local _weaponsPic = 0
	local job = lualib:Job(player)
	if job == 1 then 
		_weapons = "���ս��Plus"
		_weaponsPic = 1990440649
	end
	if job == 2 then 
		_weapons = "ħ�귨��Plus"
		_weaponsPic = 1990440491
	end
	if job == 3 then 
		_weapons = "�������Plus"
		_weaponsPic = 1990409003
	end

	local gift_ = {
	{	6, _weapons, 1, 1,_weaponsPic},
	{	"ֱ��һ����", 1, 1,
		"�߼�ת����", 1, 1,
		"���շ���", 1, 1,
	}
}
	if lualib:GetTotalBill(player) ~= 0 then
		firstConsume_cmpt = 1
	end
	--lualib:SysPromptMsg(player, tostring(lualib:GetTotalBill(player)))
	lualib:ShowFormWithContent(player, "form�ļ���", "�׳����_c#"..serialize(gift_).."#"..firstConsume_cmpt)
	return ""
end


-------------------�׳����  end-----------------------



-------------------̽��  start-----------------------
local BayeEquip = {"��ҵ��", "12���﹥��ʯ", "12��ħ����ʯ", {"��ҵ�����", "��ҵ���Ů"}, "12��������ʯ", "12��������ʯ"}
local ZhiZunEquip = {"�������ս��", "�����������", "����Ԫ������", {"�������ս��", "�������ս��"}, {"�����������", "�����������"}, {"����Ԫ������", "����Ԫ������"}}

function openTreasureHouse_show(player)
	AddSEIcon(player, 2, -3, "̽��", 1800200079, "����ʱ", "openTreasureHouse","","̽���ü�Ʒװ��")
    --  AddIconMagic(player, "̽��",1094200000 , 0,62, 150)
	return ""
end

function openTreasureHouse(player)
	-------------weiduan--------------
	if lualib:GetClientType(player) == 0 then
		local score = lualib:GetInt(player, "tanbao_score")
		local newDisplay = playDisplayFive(player)
		local treasureTxt = lualib:GetDBStr("treasureMsgDataBase")
		local strDataBase = {}
		if treasureTxt ~= "" then
			strDataBase = json.decode(treasureTxt)
		end
		lualib:ShowFormWithContent(player, "form�ļ���", "TreasureWnd#".. serialize(ZhiZunEquip) .. "#" .. serialize(BayeEquip) .. "#" .. score .. "#" .. serialize(newDisplay) .. "#" .. serialize(strDataBase))
		return ""
	end
	---------------------------------
	--lualib:SetDBNum("ActivityUnderway",0)
	--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	--lualib:SysPromptMsg(player, ""..ActivityVar)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenTreasure()")
    return ""
end

-------------------̽��  end-----------------------


-------------------ÿ�ճ�ֵ  start-----------------------
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

-------------------ÿ�ճ�ֵ  end-----------------------



-------------------�����  start-----------------------

-----------------------ͼ����ʾ-----------------------------
function openServiceActivities_show(player)
	local state1 = lualib:GetInt(player, "specialGift_gift1")
	local state2 = lualib:GetInt(player, "specialGift_gift2")
	local state3 = lualib:GetInt(player, "specialGift_gift3")
	local state4 = lualib:GetInt(player, "specialGift_gift4")
	if state1 == 0 or state2 == 0 or state3 == 0 or state4 == 0 then
		AddSEIcon(player, 1, -3, "�����", 1800200047, "����ʱ", "openServiceActivities","","�����")
	end
end

-------------------ͼ�걻���-----------------------
function openServiceActivities(player,param)
	local tips1 = 0
	if param ~= "" and param ~= nil then
		tips1 = tonumber(param)
	end
	--lualib:ShowFormWithContent(player, "form�ļ���", "OpenServiceActivities#".. tips1)
	--lualib:ShowFormWithContent(player, "form�ļ���", "ServiceActivities#".. tips1)
	lualib:ShowFormWithContent(player, "�ű���", "CLOnOpenServiceActivities()")
    return ""
end

-------------------�����  end-----------------------

-------------------ս��   start-----------------------
--��������������������ͼ����ʾ��������������������
function openMarsPage_show(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		else
			AddSEIcon(player, 2, -4, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	if lualib:GetInt(player,"tanbao_score") > 0 then
		AddSEIcon(player, 2, -5, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	else
		AddSEIcon(player, 2, -4, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	end

	return ""
end

function AddMarsIcon(player)
	------*****************ҳ�Ρ�΢����Դͬ����ɾ��*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		else
			AddSEIcon(player, 2, -4, "ս��", 1800200011, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	
	local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	if tanbaoScore > 0 then
		AddSEIcon(player, 2, -5, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	else
		AddSEIcon(player, 2, -4, "ս��", 1800200083, "����ʱ", "openMarsPage","","Ӣ��ս������һ��ս��")
	end
	FirstCall(player)
	return ""
end

-------------------ս��   end-----------------------

-------------------BOSS   start-----------------------
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

-------------------BOSS   end-----------------------


 
-------------------����װ��   start-----------------------
local shownItem = ""	
local str1 = ""
local item1 = {
				{
					{"����ս��","����ս��",50},{"ʥ��ս��","����ս��",100},{"����ս��","ʥ��ս��",200},
					{"��������ս��","����ս��",300},{"��������ս��","��������ս��",400},{"��������ս��","��������ս��",600},
					{"��������ս��","��������ս��",800}
				},
				{
					{"����ս��","����ս��",40},{"����ս��","����ս��",40},{"ʥ��ս��","����ս��",80},{"ʥ��ս��","����ս��",80},
					{"����ս��","ʥ��ս��",150},{"����ս��","ʥ��ս��",150},{"��������ս��","����ս��",200},{"��������ս��","����ս��",200},
					{"��������ս��","��������ս��",300},{"��������ս��","��������ս��",300},{"��������ս��","��������ս��",450},{"��������ս��","��������ս��",450},
					{"��������ս��" ,"��������ս��",650},{"��������ս��","��������ս��",650},
				},
				{
					{"����ս��","����ս��",10},{"����ս��","����ս��",10},{"ʥ��ս��","ʥ��ս��",20},{"ʥ��ս��","ʥ��ս��",20},
					{"����ս��","����ս��",30},{"����ս��","����ս��",30},{"��������ս��","��������ս��",40},{"��������ս��","��������ս��",40},
					{"��������ս��","��������ս��",60},{"��������ս��","��������ս��",60},{"��������ս��","��������ս��",80},{"��������ս��","��������ս��",80}
				},
				{
					{"����ͷ��","����ͷ��",35},{"��������","��������",45},{"����ѥ��","����ѥ��",35},
					{"������������","ʥ������",100},{"���������ָ","ʥ���ָ",100},{"������������","ʥ������",100}
				},
				{
					{"��ʯ�ᾧС","",1},{"��ʯ�ᾧ��","",20},{"��ʯ�ᾧ��","",200},{"������Ƭ��","",20},
					{"������Ƭ��","",180},{"��שС","",1},{"��ש��","",2}
				}
			 }


local item2 = {
				{
					{"��ħ����","��ħ����",50},{"ʥħ����","��ħ����",100},{"������","ʥħ����",200},
					{"������淨��","������",300},{"�������·���","������淨��",400},{"������鷨��","�������·���",600},
					{"�챩���ڷ���","������鷨��",800}
				},
				{
					{"��ħ����","��ħ����",40},{"��ħ����","��ħ����",40},{"ʥħ����","��ħ����",80},{"ʥħ����","��ħ����",80},
					{"������","ʥħ����",150},{"��������","ʥħ����",150},{"������淨��","������",200},{"�����������","��������",200},
					{"�������·���","������淨��",300},{"������������","�����������",300},{"������鷨��","�������·���",450},{"�����������","������������",450},
					{"�챩���ڷ���" ,"������鷨��",650},{"�챩��������","�����������",650},
				},
				{
					{"��ħ����","��ħ����",10},{"��ħ����","��ħ����",10},{"ʥħ����","ʥħ����",20},{"ʥħ����","ʥħ����",20},
					{"��������","������",30},{"������","��������",30},{"�����������","������淨��",40},{"������淨��","�����������",40},
					{"������������","�������·���",60},{"�������·���","������������",60},{"�����������","������鷨��",80},{"������鷨��","�����������",80}
				},
				{
					{"����ͷ��","��ħͷ��",35},{"��������","��ħ����",45},{"����ѥ��","��ħѥ��",35},
					{"�����������","ʥħ����",100},{"��������ָ","ʥħ��ָ",100},{"�����������","ʥħ����",100}
				},
				{
					{"��ʯ�ᾧС","",1},{"��ʯ�ᾧ��","",20},{"��ʯ�ᾧ��","",200},{"������Ƭ��","",20},
					{"������Ƭ��","",180},{"��שС","",1},{"��ש��","",2}
				}
			 }

local item3 = {
				{
					{"�������","�������",50},{"ʥ�����","�������",100},{"��������","ʥ�����",200},
					{"���������","��������",300},{"����㷨����","���������",400},{"������������","����㷨����",600},
					{"����������","������������",800}
				},
				{
					{"�������","�������",40},{"�������","�������",40},{"ʥ�����","�������",80},{"ʥ�����","�������",80},
					{"��������","ʥ�����",150},{"��������","ʥ�����",150},{"���������","��������",200},{"���������","��������",200},
					{"����㷨����","���������",300},{"����㷨����","���������",300},{"������������","����㷨����",450},{"������������","����㷨����",450},
					{"����������" ,"������������",650},{"����������","������������",650},
				},
				{
					{"�������","�������",10},{"�������","�������",10},{"ʥ�����","ʥ�����",20},{"ʥ�����","ʥ�����",20},
					{"��������","��������",30},{"��������","��������",30},{"���������","���������",40},{"���������","���������",40},
					{"����㷨����","����㷨����",60},{"����㷨����","����㷨����",60},{"������������","������������",80},{"������������","������������",80}
				},
				{
					{"����ͷ��","����ͷ��",35},{"��������","��������",45},{"����ѥ��","����ѥ��",35},
					{"���������","ʥ������",100},{"�������ָ","ʥ���ָ",100},{"���������","ʥ������",100}
				},
				{
					{"��ʯ�ᾧС","",1},{"��ʯ�ᾧ��","",20},{"��ʯ�ᾧ��","",200},{"������Ƭ��","",20},
					{"������Ƭ��","",180},{"��שС","",1},{"��ש��","",2}
				}
			 }


local genderEx = {
					["����ս��"]={"����ս��",10},["����ս��"]={"����ս��",10},["ʥ��ս��"]={"ʥ��ս��",20},["ʥ��ս��"]={"ʥ��ս��",20},
					["����ս��"]={"����ս��",30},["����ս��"]={"����ս��",30},["��������ս��"]={"��������ս��",40},["��������ս��"]={"��������ս��",40},
					["��������ս��"]={"��������ս��",60},["��������ս��"]={"��������ս��",60},["��������ս��"]={"��������ս��",80},["��������ս��"]={"��������ս��",80},
					
					["��ħ����"]={"��ħ����",10},["��ħ����"]={"��ħ����",10},["ʥħ����"]={"ʥħ����",20},["ʥħ����"]={"ʥħ����",20},
					["��������"]={"������",30},["������"]={"��������",30},["�����������"]={"������淨��",40},["������淨��"]={"�����������",40},
					["������������"]={"�������·���",60},["�������·���"]={"������������",60},["�����������"]={"������鷨��",80},["������鷨��"]={"�����������",80},
					
					["�������"]={"�������",10},["�������"]={"�������",10},["ʥ�����"]={"ʥ�����",20},["ʥ�����"]={"ʥ�����",20},
					["��������"]={"��������",30},["��������"]={"��������",30},["���������"]={"���������",40},["���������"]={"���������",40},
					["����㷨����"]={"����㷨����",60},["����㷨����"]={"����㷨����",60},["������������"]={"������������",80},["������������"]={"������������",80},
}

local itemOpt = {item1,item2,item3}

--��������������������ͼ����ʾ��������������������
function openExchangePage_show(player)
	AddSEIcon(player, 2, -4, "����װ��", 1800200039, "����ʱ", "openExchangePage","","�һ���Ʒװ��")
	return ""
end

-------------------ͼ�걻���-----------------------
function openExchangePage(player)
	local index = lualib:Job(player)
	local item = itemOpt[index]
	local _isExistlist1 = isExistItem(player)
	local str = lualib:GetDBStr("exchange_MsgDataBase")
	local score = lualib:GetInt(player,"tanbao_score")
	if str ~= "" then
		local tab = json.decode(str)		
		lualib:ShowFormWithContent(player, "form�ļ���", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1).."#"..serialize(tab))
	else
		lualib:ShowFormWithContent(player, "form�ļ���", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1))
	end	
    return ""
end


-------------------����װ��   end-----------------------



-------------------�ͻ�������   start-----------------------

local client_award = 
{
    {"��ש��",1,0},
    {"��ש��",1,0},
    {"��ש��",1,0},
    {"��ש��",1,1},	
}



-----------------------ͼ����ʾ-----------------------------
function download_show(player)	
	local aaaa = lualib:GetInt(player, "award_download")
	if aaaa == 0 then
		--ShowTimeCount2(player, 0, 1906100157, "�ͻ�������",1096000300,"",5) --��ʾĿ��ͼ��
		--AddSEIcon(player, 1, -4, "�ͻ�������", 1800200067, "����ʱ", "download","","")

------------------------------------------------------------------------------------		
		if lualib:GetInt(player, "getAllSpecialGift") == 0 then
			AddSEIcon(player, 1, -4, "�ͻ�������", 1800200067, "����ʱ", "download","","���ؿͻ��ˣ���ȡ��ֵ���")
		else
			AddSEIcon(player, 1, -3, "�ͻ�������", 1800200067, "����ʱ", "download","","���ؿͻ��ˣ���ȡ��ֵ���")
		end
------------------------------------------------------------------------------------
	end
end

-------------------ͼ�걻���-----------------------
function download(player)

	
	local clientType = lualib:GetClientType(player)

	local tab = serialize(client_award)
	--lualib:ShowFormWithContent(player, "�ű���", "client_award_t="..serialize(client_award))
	lualib:ShowFormWithContent(player, "form�ļ���", "�ͻ������ر�#"..serialize(client_award).."#"..clientType)
	--lualib:download_award_t(player, "client_award_t="..serialize(client_award))
	
	
    --local msg = "http://www.hzyotoy.com/index.do?mod=pay&groupid=" .. lualib:GetGroupId()
	--lualib:SysMsg_SendWarnMsg(player, "�ͻ������ر����")
    --lualib:SysMsg_SendWebPage(player, msg)
    return ""
end


-------------------�ͻ�������   end-----------------------
