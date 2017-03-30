local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/serializer")
require("system/timecount_def")


-------------------首充大礼  start-----------------------
local _weapons = ""
local firstConsume_cmpt = 0

-----------------------首充大礼 图标显示-----------------------------   
function firstConsume_show(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		AddSEIcon(player, 2, -2, "首充大礼", 1800200043, "倒计时", "firstConsume_click","","充值任意金额，获得+6神兵")
		return ""
	end--]]
	------------*******************END********************-----------------
	
	AddSEIcon(player,2, -2, "首充大礼", 1800200023, "倒计时", "firstConsume_click","","充值任意金额，获得+6神兵")

	AddIconMagic(player, "首充大礼",3000100600, -19,-19, 150)
	return ""
end

-------------------图标被点击-----------------------
function firstConsume_click(player)

	local _weaponsPic = 0
	local job = lualib:Job(player)
	if job == 1 then 
		_weapons = "武魂战刃Plus"
		_weaponsPic = 1990440649
	end
	if job == 2 then 
		_weapons = "魔魂法杖Plus"
		_weaponsPic = 1990440491
	end
	if job == 3 then 
		_weapons = "玄魂道剑Plus"
		_weaponsPic = 1990409003
	end

	local gift_ = {
	{	6, _weapons, 1, 1,_weaponsPic},
	{	"直升一级丹", 1, 1,
		"高级转生丹", 1, 1,
		"七日返利", 1, 1,
	}
}
	if lualib:GetTotalBill(player) ~= 0 then
		firstConsume_cmpt = 1
	end
	--lualib:SysPromptMsg(player, tostring(lualib:GetTotalBill(player)))
	lualib:ShowFormWithContent(player, "form文件表单", "首充大礼_c#"..serialize(gift_).."#"..firstConsume_cmpt)
	return ""
end


-------------------首充大礼  end-----------------------



-------------------探宝  start-----------------------
local BayeEquip = {"霸业神剑", "12级物攻宝石", "12级魔攻宝石", {"霸业神甲男", "霸业神甲女"}, "12级道攻宝石", "12级生命宝石"}
local ZhiZunEquip = {"至尊傲天战刃", "天狂玄傲法杖", "傲天元法道剑", {"至尊傲天战甲", "至尊傲天战袍"}, {"天狂玄傲法袍", "天狂玄傲羽衣"}, {"傲天元法道袍", "傲天元法道衣"}}

function openTreasureHouse_show(player)
	AddSEIcon(player, 2, -3, "探宝", 1800200079, "倒计时", "openTreasureHouse","","探宝得极品装备")
    --  AddIconMagic(player, "探宝",1094200000 , 0,62, 150)
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
		lualib:ShowFormWithContent(player, "form文件表单", "TreasureWnd#".. serialize(ZhiZunEquip) .. "#" .. serialize(BayeEquip) .. "#" .. score .. "#" .. serialize(newDisplay) .. "#" .. serialize(strDataBase))
		return ""
	end
	---------------------------------
	--lualib:SetDBNum("ActivityUnderway",0)
	--local ActivityVar = lualib:GetDBNum("ActivityUnderway")
	--lualib:SysPromptMsg(player, ""..ActivityVar)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenTreasure()")
    return ""
end

-------------------探宝  end-----------------------


-------------------每日充值  start-----------------------
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

-------------------每日充值  end-----------------------



-------------------开服活动  start-----------------------

-----------------------图标显示-----------------------------
function openServiceActivities_show(player)
	local state1 = lualib:GetInt(player, "specialGift_gift1")
	local state2 = lualib:GetInt(player, "specialGift_gift2")
	local state3 = lualib:GetInt(player, "specialGift_gift3")
	local state4 = lualib:GetInt(player, "specialGift_gift4")
	if state1 == 0 or state2 == 0 or state3 == 0 or state4 == 0 then
		AddSEIcon(player, 1, -3, "开服活动", 1800200047, "倒计时", "openServiceActivities","","开服活动")
	end
end

-------------------图标被点击-----------------------
function openServiceActivities(player,param)
	local tips1 = 0
	if param ~= "" and param ~= nil then
		tips1 = tonumber(param)
	end
	--lualib:ShowFormWithContent(player, "form文件表单", "OpenServiceActivities#".. tips1)
	--lualib:ShowFormWithContent(player, "form文件表单", "ServiceActivities#".. tips1)
	lualib:ShowFormWithContent(player, "脚本表单", "CLOnOpenServiceActivities()")
    return ""
end

-------------------开服活动  end-----------------------

-------------------战神   start-----------------------
--——————————图标显示——————————
function openMarsPage_show(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		else
			AddSEIcon(player, 2, -4, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	if lualib:GetInt(player,"tanbao_score") > 0 then
		AddSEIcon(player, 2, -5, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	else
		AddSEIcon(player, 2, -4, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	end

	return ""
end

function AddMarsIcon(player)
	------*****************页游、微端资源同步后删除*****************------
--[[	if lualib:GetClientType(player) == 0 then
		if lualib:GetInt(player,"tanbao_score") > 0 then
			AddSEIcon(player, 2, -5, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		else
			AddSEIcon(player, 2, -4, "战神", 1800200011, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
		end
		return ""
	end--]]
	------------*******************END********************-----------------
	
	local tanbaoScore = lualib:GetInt(player,"tanbao_score")
	if tanbaoScore > 0 then
		AddSEIcon(player, 2, -5, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	else
		AddSEIcon(player, 2, -4, "战神", 1800200083, "倒计时", "openMarsPage","","英雄战神与你一起战斗")
	end
	FirstCall(player)
	return ""
end

-------------------战神   end-----------------------

-------------------BOSS   start-----------------------
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

-------------------BOSS   end-----------------------


 
-------------------积分装备   start-----------------------
local shownItem = ""	
local str1 = ""
local item1 = {
				{
					{"神武战刃","天武战刃",50},{"圣武战刃","神武战刃",100},{"威武战刃","圣武战刃",200},
					{"洪武行天战刃","威武战刃",300},{"雄武震天战刃","洪武行天战刃",400},{"尊武凌天战刃","雄武震天战刃",600},
					{"神威亢天战刃","尊武凌天战刃",800}
				},
				{
					{"神武战甲","天武战甲",40},{"神武战袍","天武战袍",40},{"圣武战甲","神武战甲",80},{"圣武战袍","神武战袍",80},
					{"威武战甲","圣武战甲",150},{"威武战袍","圣武战袍",150},{"洪武行天战甲","威武战甲",200},{"洪武行天战袍","威武战袍",200},
					{"雄武震天战甲","洪武行天战甲",300},{"雄武震天战袍","洪武行天战袍",300},{"尊武凌天战甲","雄武震天战甲",450},{"尊武凌天战袍","雄武震天战袍",450},
					{"神威亢天战甲" ,"尊武凌天战甲",650},{"神威亢天战袍","尊武凌天战袍",650},
				},
				{
					{"神武战袍","神武战甲",10},{"神武战甲","神武战袍",10},{"圣武战袍","圣武战甲",20},{"圣武战甲","圣武战袍",20},
					{"威武战袍","威武战甲",30},{"威武战甲","威武战袍",30},{"洪武行天战袍","洪武行天战甲",40},{"洪武行天战甲","洪武行天战袍",40},
					{"雄武震天战袍","雄武震天战甲",60},{"雄武震天战甲","雄武震天战袍",60},{"尊武凌天战袍","尊武凌天战甲",80},{"尊武凌天战甲","尊武凌天战袍",80}
				},
				{
					{"威武头盔","神武头盔",35},{"威武手镯","神武手镯",45},{"威武靴子","神武靴子",35},
					{"洪武行天项链","圣武项链",100},{"洪武行天戒指","圣武戒指",100},{"洪武行天腰带","圣武腰带",100}
				},
				{
					{"宝石结晶小","",1},{"宝石结晶中","",20},{"宝石结晶大","",200},{"魂珠碎片中","",20},
					{"魂珠碎片大","",180},{"金砖小","",1},{"金砖大","",2}
				}
			 }


local item2 = {
				{
					{"神魔法杖","天魔法杖",50},{"圣魔法杖","神魔法杖",100},{"幻神法杖","圣魔法杖",200},
					{"天地玄奇法杖","幻神法杖",300},{"天异玄奥法杖","天地玄奇法杖",400},{"天魁玄灵法杖","天异玄奥法杖",600},
					{"天暴玄宗法杖","天魁玄灵法杖",800}
				},
				{
					{"神魔法袍","天魔法袍",40},{"神魔羽衣","天魔羽衣",40},{"圣魔法袍","神魔法袍",80},{"圣魔羽衣","神魔羽衣",80},
					{"幻神法袍","圣魔法袍",150},{"幻神羽衣","圣魔羽衣",150},{"天地玄奇法袍","幻神法袍",200},{"天地玄奇羽衣","幻神羽衣",200},
					{"天异玄奥法袍","天地玄奇法袍",300},{"天异玄奥羽衣","天地玄奇羽衣",300},{"天魁玄灵法袍","天异玄奥法袍",450},{"天魁玄灵羽衣","天异玄奥羽衣",450},
					{"天暴玄宗法袍" ,"天魁玄灵法袍",650},{"天暴玄宗羽衣","天魁玄灵羽衣",650},
				},
				{
					{"神魔羽衣","神魔法袍",10},{"神魔法袍","神魔羽衣",10},{"圣魔羽衣","圣魔法袍",20},{"圣魔法袍","圣魔羽衣",20},
					{"幻神羽衣","幻神法袍",30},{"幻神法袍","幻神羽衣",30},{"天地玄奇羽衣","天地玄奇法袍",40},{"天地玄奇法袍","天地玄奇羽衣",40},
					{"天异玄奥羽衣","天异玄奥法袍",60},{"天异玄奥法袍","天异玄奥羽衣",60},{"天魁玄灵羽衣","天魁玄灵法袍",80},{"天魁玄灵法袍","天魁玄灵羽衣",80}
				},
				{
					{"幻神头盔","神魔头盔",35},{"幻神手镯","神魔手镯",45},{"幻神靴子","神魔靴子",35},
					{"天地玄奇项链","圣魔项链",100},{"天地玄奇戒指","圣魔戒指",100},{"天地玄奇腰带","圣魔腰带",100}
				},
				{
					{"宝石结晶小","",1},{"宝石结晶中","",20},{"宝石结晶大","",200},{"魂珠碎片中","",20},
					{"魂珠碎片大","",180},{"金砖小","",1},{"金砖大","",2}
				}
			 }

local item3 = {
				{
					{"神灵道扇","天灵道剑",50},{"圣灵道剑","神灵道扇",100},{"无量道剑","圣灵道剑",200},
					{"玄天妙法道扇","无量道剑",300},{"混天广法道剑","玄天妙法道扇",400},{"鸿天明法道剑","混天广法道剑",600},
					{"昊天玄尊道剑","鸿天明法道剑",800}
				},
				{
					{"神灵道袍","天灵道袍",40},{"神灵道衣","天灵道衣",40},{"圣灵道袍","神灵道袍",80},{"圣灵道衣","神灵道衣",80},
					{"无量道袍","圣灵道袍",150},{"无量道衣","圣灵道衣",150},{"玄天妙法道袍","无量道袍",200},{"玄天妙法道衣","无量道衣",200},
					{"混天广法道袍","玄天妙法道袍",300},{"混天广法道衣","玄天妙法道衣",300},{"鸿天明法道袍","混天广法道袍",450},{"鸿天明法道衣","混天广法道衣",450},
					{"昊天玄尊道袍" ,"鸿天明法道袍",650},{"昊天玄尊道衣","鸿天明法道衣",650},
				},
				{
					{"神灵道衣","神灵道袍",10},{"神灵道袍","神灵道衣",10},{"圣灵道衣","圣灵道袍",20},{"圣灵道袍","圣灵道衣",20},
					{"无量道衣","无量道袍",30},{"无量道袍","无量道衣",30},{"玄天妙法道衣","玄天妙法道袍",40},{"玄天妙法道袍","玄天妙法道衣",40},
					{"混天广法道衣","混天广法道袍",60},{"混天广法道袍","混天广法道衣",60},{"鸿天明法道衣","鸿天明法道袍",80},{"鸿天明法道袍","鸿天明法道衣",80}
				},
				{
					{"无量头盔","神灵头盔",35},{"无量手镯","神灵手镯",45},{"无量靴子","神灵靴子",35},
					{"玄天妙法项链","圣灵项链",100},{"玄天妙法戒指","圣灵戒指",100},{"玄天妙法腰带","圣灵腰带",100}
				},
				{
					{"宝石结晶小","",1},{"宝石结晶中","",20},{"宝石结晶大","",200},{"魂珠碎片中","",20},
					{"魂珠碎片大","",180},{"金砖小","",1},{"金砖大","",2}
				}
			 }


local genderEx = {
					["神武战袍"]={"神武战甲",10},["神武战甲"]={"神武战袍",10},["圣武战袍"]={"圣武战甲",20},["圣武战甲"]={"圣武战袍",20},
					["威武战袍"]={"威武战甲",30},["威武战甲"]={"威武战袍",30},["洪武行天战袍"]={"洪武行天战甲",40},["洪武行天战甲"]={"洪武行天战袍",40},
					["雄武震天战袍"]={"雄武震天战甲",60},["雄武震天战甲"]={"雄武震天战袍",60},["尊武凌天战袍"]={"尊武凌天战甲",80},["尊武凌天战甲"]={"尊武凌天战袍",80},
					
					["神魔羽衣"]={"神魔法袍",10},["神魔法袍"]={"神魔羽衣",10},["圣魔羽衣"]={"圣魔法袍",20},["圣魔法袍"]={"圣魔羽衣",20},
					["幻神羽衣"]={"幻神法袍",30},["幻神法袍"]={"幻神羽衣",30},["天地玄奇羽衣"]={"天地玄奇法袍",40},["天地玄奇法袍"]={"天地玄奇羽衣",40},
					["天异玄奥羽衣"]={"天异玄奥法袍",60},["天异玄奥法袍"]={"天异玄奥羽衣",60},["天魁玄灵羽衣"]={"天魁玄灵法袍",80},["天魁玄灵法袍"]={"天魁玄灵羽衣",80},
					
					["神灵道衣"]={"神灵道袍",10},["神灵道袍"]={"神灵道衣",10},["圣灵道衣"]={"圣灵道袍",20},["圣灵道袍"]={"圣灵道衣",20},
					["无量道衣"]={"无量道袍",30},["无量道袍"]={"无量道衣",30},["玄天妙法道衣"]={"玄天妙法道袍",40},["玄天妙法道袍"]={"玄天妙法道衣",40},
					["混天广法道衣"]={"混天广法道袍",60},["混天广法道袍"]={"混天广法道衣",60},["鸿天明法道衣"]={"鸿天明法道袍",80},["鸿天明法道袍"]={"鸿天明法道衣",80},
}

local itemOpt = {item1,item2,item3}

--——————————图标显示——————————
function openExchangePage_show(player)
	AddSEIcon(player, 2, -4, "积分装备", 1800200039, "倒计时", "openExchangePage","","兑换极品装备")
	return ""
end

-------------------图标被点击-----------------------
function openExchangePage(player)
	local index = lualib:Job(player)
	local item = itemOpt[index]
	local _isExistlist1 = isExistItem(player)
	local str = lualib:GetDBStr("exchange_MsgDataBase")
	local score = lualib:GetInt(player,"tanbao_score")
	if str ~= "" then
		local tab = json.decode(str)		
		lualib:ShowFormWithContent(player, "form文件表单", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1).."#"..serialize(tab))
	else
		lualib:ShowFormWithContent(player, "form文件表单", "Marks2Item_c#"..serialize(item).."#"..score.."#"..serialize(_isExistlist1))
	end	
    return ""
end


-------------------积分装备   end-----------------------



-------------------客户端下载   start-----------------------

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


-------------------客户端下载   end-----------------------
