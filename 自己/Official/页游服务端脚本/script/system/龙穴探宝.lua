local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

local jiage1 = 100 --探宝1次的元宝价格
local jiage10 = 950 --探宝10次的元宝价格
local jiage50 = 4500 --探宝50次的元宝价格

local cangku_rongliang = 100 --探宝仓库大小

--界面上显示出来的奖励
local item_xianshi = {
                    "金条", 
                    "钱袋(50万)", 
                    "乾坤囊(40格)", 
                    "999朵玫瑰花", 
                    "附魔石", 
                    "鸿运星", 
                    "幻梦星", 
                    "封印鉴定符", 
                    "3倍经验卷轴", 
                    "开光印", 
                    "储存箱(20格)", 
                    "高级转神石", 
                    "暴击灵符10级", 
                    "高级灵元精粹", 
                    "高级物攻精炼符", 
                    "高级魔攻精炼符", 
                    "高级道术精炼符", 
                    "高级HP精炼符", 
                    "独角兽(未开光)", 
                    "梦魇兽(未开光)", 
                    "雪域天狼(未开光)", 
                    "吼天兽(未开光)", 
                    "裂天魔狮(未开光)", 
                    "神兽(未开光)", 
                    "霸下玄龟(未开光)", 
                    "不死鸟(未开光)", 
                    "龙鹰(未开光)"
                    }

--实际能获得的奖励
local item = {
	 --物品索引名，给与数量，占随机比重，是否显示在探宝公告中（1为显示，0不显示），物品图标编号
        {"灵元珠", 1, 172269, 1, 1990130007}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"坐骑经验丹", 2, 38282, 1, 1990135356}, 
        {"循环魔咒", 1, 45938, 1, 1990135255}, 
        {"朱果", 1, 68907, 1, 1990100019}, 
        {"经验丹", 1, 68907, 1, 1990135239}, 
        {"9朵玫瑰花", 1, 38282, 1, 1990135279}, 
        {"巫山城传送卷(5次)", 1, 34453, 1, 1990125000}, 
        {"龙城传送石(5次)", 1, 34453, 1, 1990125001}, 
        {"初级藏宝图", 1, 34453, 1, 1990125010}, 
        {"定位石", 1, 34453, 1, 1990125002}, 
        {"清心丹", 1, 34453, 1, 1990120028}, 
        {"1.5倍经验卷轴", 1, 34453, 1, 1990120053}, 
        {"祝福神水", 1, 34453, 1, 1990130006}, 
        {"天机罗盘", 1, 34453, 1, 1990135297}, 
        {"随机传送(10次)", 1, 34453, 1, 1990135284}, 
        {"释灵珠", 1, 34453, 1, 1990135238}, 
        {"初级藏宝图", 1, 34453, 1, 1990135252}, 
        {"坐骑还魂丹", 1, 34453, 1, 1990135357}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"中型坐骑经验丹", 1, 22969, 1, 1990135356}, 
        {"双倍经验卷轴", 1, 17226, 1, 1990120029}, 
        {"修复神水", 1, 17226, 1, 1990135043}, 
        {"初级藏宝图", 1, 17226, 1, 1990135240}, 
        {"钱袋(5万)", 1, 17226, 1, 1990145002}, 
        {"钱袋(10万)", 1, 17226, 1, 1990145002}, 
        {"大型坐骑经验丹", 1, 11484, 1, 1990135356}, 
        {"战神油", 1, 6890, 1, 1990120026}, 
        {"3倍经验卷轴", 1, 6890, 1, 1990120030}, 
        {"大型经验丹", 1, 6890, 1, 1990135239}, 
        {"中级藏宝图", 1, 6890, 1, 1990135241}, 
        {"钱袋(50万)", 1, 6890, 1, 1990145002}, 
        {"储存箱(10格)", 1, 4593, 1, 1990145005}, 
        {"99朵玫瑰花", 1, 3480, 1, 1990135280}, 
        {"逍遥法外", 1, 3445, 1, 1990120081}, 
        {"灵元珠", 1, 114846, 1, 1990130007}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"坐骑经验丹", 3, 38282, 1, 1990135356}, 
        {"朱果", 1, 68907, 1, 1990100019}, 
        {"经验丹", 1, 68907, 1, 1990135239}, 
        {"9朵玫瑰花", 1, 38282, 1, 1990135279}, 
        {"巫山城传送", 1, 34453, 1, 1990125000}, 
        {"龙城传送", 1, 34453, 1, 1990125001}, 
        {"中级藏宝图", 1, 34453, 1, 1990125010}, 
        {"定位石", 1, 34453, 1, 1990125002}, 
        {"清心丹", 1, 34453, 1, 1990120028}, 
        {"1.5倍经验卷轴", 1, 34453, 1, 1990120053}, 
        {"祝福神水", 1, 34453, 1, 1990130006}, 
        {"天机罗盘", 1, 34453, 1, 1990135297}, 
        {"随机传送(10次)", 1, 34453, 1, 1990135284}, 
        {"释灵珠", 1, 34453, 1, 1990135238}, 
        {"坐骑还魂丹", 1, 34453, 1, 1990135357}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"中型坐骑经验丹", 1, 22969, 1, 1990135356}, 
        {"双倍经验卷轴", 1, 17226, 1, 1990120029}, 
        {"修复神水", 1, 17226, 1, 1990135043}, 
        {"初级藏宝图", 1, 17226, 1, 1990135240}, 
        {"钱袋(5万)", 1, 17226, 1, 1990145002}, 
        {"钱袋(10万)", 1, 17226, 1, 1990145002}, 
        {"大型坐骑经验丹", 1, 11484, 1, 1990135356}, 
        {"战神油", 1, 6890, 1, 1990120026}, 
        {"3倍经验卷轴", 1, 6890, 1, 1990120030}, 
        {"大型经验丹", 1, 6890, 1, 1990135239}, 
        {"中级藏宝图", 1, 6890, 1, 1990135241}, 
        {"钱袋(50万)", 1, 6890, 1, 1990145002}, 
        {"储存箱(10格)", 1, 4593, 1, 1990145005}, 
        {"99朵玫瑰花", 1, 3480, 1, 1990135280}, 
        {"逍遥法外", 1, 3445, 1, 1990120081}, 
        {"逍遥游(10次)", 1, 3445, 1, 1990125003}, 
        {"逍遥游(20次)", 1, 3445, 1, 1990125003}, 
        {"定位石", 1, 3445, 1, 1990125002}, 
        {"随机传送(50次)", 1, 3445, 1, 1990135284}, 
        {"金条", 1, 3445, 1, 1990165504}, 
        {"超级坐骑经验丹", 1, 2296, 1, 1990135356}, 
        {"储存箱(20格)", 1, 2296, 1, 1990145005}, 
        {"乾坤囊(10格)", 1, 1722, 1, 1990145004}, 
        {"逍遥游(50次)", 1, 68, 1, 1990125003}, 
        {"高级藏宝图", 1, 68, 1, 1990135242}, 
        {"乾坤囊(20格)", 1, 57, 1, 1990145004}, 
        {"999朵玫瑰花", 1, 34, 1, 1990135281}, 
        {"乾坤囊(30格)", 1, 34, 1, 1990145004}, 
        {"乾坤囊(40格)", 1, 17, 1, 1990145004}, 
        {"低级物攻精炼符", 1, 17226, 1, 1990120056}, 
        {"中级物攻精炼符", 1, 5742, 1, 1990120056}, 
        {"高级物攻精炼符", 1, 2026, 1, 1990120056}, 
        {"低级魔攻精炼符", 1, 17226, 1, 1990120059}, 
        {"中级魔攻精炼符", 1, 5742, 1, 1990120059}, 
        {"高级魔攻精炼符", 1, 2026, 1, 1990120059}, 
        {"低级道术精炼符", 1, 17226, 1, 1990120062}, 
        {"中级道术精炼符", 1, 5742, 1, 1990120062}, 
        {"高级道术精炼符", 1, 2026, 1, 1990120062}, 
        {"低级物防精炼符", 1, 17226, 1, 1990120065}, 
        {"中级物防精炼符", 1, 5742, 1, 1990120065}, 
        {"高级物防精炼符", 1, 2026, 1, 1990120065}, 
        {"低级魔防精炼符", 1, 17226, 1, 1990120068}, 
        {"中级魔防精炼符", 1, 5742, 1, 1990120068}, 
        {"高级魔防精炼符", 1, 2026, 1, 1990120068}, 
        {"低级HP精炼符", 1, 17226, 1, 1990120071}, 
        {"中级HP精炼符", 1, 5742, 1, 1990120071}, 
        {"高级HP精炼符", 1, 2026, 1, 1990120071}, 
        {"低级MP精炼符", 1, 17226, 1, 1990120074}, 
        {"中级MP精炼符", 1, 5742, 1, 1990120074}, 
        {"高级MP精炼符", 1, 2026, 1, 1990120074}, 
        {"灵元精华", 10, 34453, 1, 1990135351}, 
        {"护炼符", 1, 34453, 1, 1990130008}, 
        {"封印鉴定符", 1, 34453, 1, 1990130025}, 
        {"附魔石", 1, 68, 1, 1990135305}, 
        {"开光印", 1, 34453, 1, 1990135336}, 
        {"低级灵元精粹", 1, 34453, 1, 1990135351}, 
        {"中级灵元精粹", 1, 11484, 1, 1990135352}, 
        {"高级灵元精粹", 1, 3445, 1, 1990135353}, 
        {"幸运星", 1, 34453, 1, 1990120443}, 
        {"灵元珠", 1, 114846, 1, 1990130007}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"钱袋(1万)", 1, 68907, 1, 1990145002}, 
        {"坐骑经验丹", 3, 38282, 1, 1990135356}, 
        {"朱果", 1, 68907, 1, 1990100019}, 
        {"经验丹", 1, 68907, 1, 1990135239}, 
        {"9朵玫瑰花", 1, 38282, 1, 1990135279}, 
        {"巫山城传送石", 1, 34453, 1, 1990125000}, 
        {"龙城传送石", 1, 34453, 1, 1990125001}, 
        {"高级藏宝图", 1, 34453, 1, 1990125010}, 
        {"定位石", 1, 34453, 1, 1990125002}, 
        {"清心丹", 1, 34453, 1, 1990120028}, 
        {"1.5倍经验卷轴", 1, 34453, 1, 1990120053}, 
        {"祝福神水", 1, 34453, 1, 1990130006}, 
        {"天机罗盘", 1, 34453, 1, 1990135297}, 
        {"随机传送(50次)", 1, 34453, 1, 1990135284}, 
        {"释灵珠", 1, 34453, 1, 1990135238}, 
        {"坐骑还魂丹", 1, 34453, 1, 1990135357}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"钱袋(2万)", 1, 34453, 1, 1990145002}, 
        {"中型坐骑经验丹", 1, 22969, 1, 1990135356}, 
        {"双倍经验卷轴", 1, 17226, 1, 1990120029}, 
        {"修复神水", 1, 17226, 1, 1990135043}, 
        {"初级藏宝图", 1, 17226, 1, 1990135240}, 
        {"钱袋(5万)", 1, 17226, 1, 1990145002}, 
        {"钱袋(10万)", 1, 17226, 1, 1990145002}, 
        {"大型坐骑经验丹", 1, 11484, 1, 1990135356}, 
        {"战神油", 1, 6890, 1, 1990120026}, 
        {"3倍经验卷轴", 1, 6890, 1, 1990120030}, 
        {"大型经验丹", 1, 6890, 1, 1990135239}, 
        {"中级藏宝图", 1, 6890, 1, 1990135241}, 
        {"钱袋(50万)", 1, 6890, 1, 1990145002}, 
        {"储存箱(10格)", 1, 4593, 1, 1990145005}, 
        {"99朵玫瑰花", 1, 3480, 1, 1990135280}, 
        {"逍遥法外", 1, 3445, 1, 1990120081}, 
        {"逍遥游(10次)", 1, 3445, 1, 1990125003}, 
        {"逍遥游(20次)", 1, 3445, 1, 1990125003}, 
        {"定位石(100次)", 1, 3445, 1, 1990125002}, 
        {"随机传送(50次)", 1, 3445, 1, 1990135284}, 
        {"金条", 1, 3445, 1, 1990165504}, 
        {"超级坐骑经验丹", 1, 2296, 1, 1990135356}, 
        {"储存箱(20格)", 1, 2296, 1, 1990145005}, 
        {"乾坤囊(10格)", 1, 1722, 1, 1990145004}, 
        {"逍遥游(500次)", 1, 68, 1, 1990125003}, 
        {"高级藏宝图", 1, 68, 1, 1990135242}, 
        {"乾坤囊(20格)", 1, 57, 1, 1990145004}, 
        {"999朵玫瑰花", 1, 34, 1, 1990135281}, 
        {"乾坤囊(30格)", 1, 34, 1, 1990145004}, 
        {"乾坤囊(40格)", 1, 17, 1, 1990145004}, 
        {"低级物攻精炼符", 1, 17226, 1, 1990120056}, 
        {"中级物攻精炼符", 1, 5742, 1, 1990120056}, 
        {"高级物攻精炼符", 1, 2026, 1, 1990120056}, 
        {"低级魔攻精炼符", 1, 17226, 1, 1990120059}, 
        {"中级魔攻精炼符", 1, 5742, 1, 1990120059}, 
        {"高级魔攻精炼符", 1, 2026, 1, 1990120059}, 
        {"低级道术精炼符", 1, 17226, 1, 1990120062}, 
        {"中级道术精炼符", 1, 5742, 1, 1990120062}, 
        {"高级道术精炼符", 1, 2026, 1, 1990120062}, 
        {"低级物防精炼符", 1, 17226, 1, 1990120065}, 
        {"中级物防精炼符", 1, 5742, 1, 1990120065}, 
        {"高级物防精炼符", 1, 2026, 1, 1990120065}, 
        {"低级魔防精炼符", 1, 17226, 1, 1990120068}, 
        {"中级魔防精炼符", 1, 5742, 1, 1990120068}, 
        {"高级魔防精炼符", 1, 2026, 1, 1990120068}, 
        {"低级HP精炼符", 1, 17226, 1, 1990120071}, 
        {"中级HP精炼符", 1, 5742, 1, 1990120071}, 
        {"高级HP精炼符", 1, 2026, 1, 1990120071}, 
        {"低级MP精炼符", 1, 17226, 1, 1990120074}, 
        {"中级MP精炼符", 1, 5742, 1, 1990120074}, 
        {"高级MP精炼符", 1, 2026, 1, 1990120074}, 
        {"灵元精华", 10, 34453, 1, 1990135351}, 
        {"护炼符", 1, 34453, 1, 1990130008}, 
        {"封印鉴定符", 1, 34453, 1, 1990130025}, 
        {"附魔石", 1, 68, 1, 1990135305}, 
        {"开光印", 1, 34453, 1, 1990135336}, 
        {"低级灵元精粹", 1, 34453, 1, 1990135351}, 
        {"中级灵元精粹", 1, 11484, 1, 1990135352}, 
        {"高级灵元精粹", 1, 3445, 1, 1990135353}, 
        {"幸运星", 1, 34453, 1, 1990120443}, 
        {"独角兽(未开光)", 1, 68, 1, 1990120194}, 
        {"梦魇兽(未开光)", 1, 57, 1, 1990120195}, 
        {"雪域天狼(未开光)", 1, 49, 1, 1990120198}, 
        {"吼天兽(未开光)", 1, 43, 1, 1990120199}, 
        {"裂天魔狮(未开光)", 1, 38, 1, 1990120200}, 
        {"神兽(未开光)", 1, 11, 1, 1990120214}, 
        {"霸下玄龟(未开光)", 1, 68, 1, 1990120353}, 
        {"不死鸟(未开光)", 1, 11, 1, 1990120201}, 
        {"龙鹰(未开光)", 1, 11, 1, 1990120204}, 
}


-----------------------图标显示-----------------------------
function tanbao_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800050, "龙穴探宝",0,"") --显示龙穴探宝图标
end

-------------------图标被点击-----------------------
function tanbao(player,huode)
	ShowTimeCount2(player, 0, 1903800050, "龙穴探宝",0,"") --显示龙穴探宝图标

	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --取得探宝仓库table
	end
	
	local msg = "#POS<X:380>##POS<Y:30>##IMAGE<ID:1902700031>#<@tanbaocangku#1 *01*探宝仓库> 容量:"..#cangku.."/"..cangku_rongliang
		
	msg = msg .. "#POS<X:0>##POS<Y:0>#龙穴探宝有机会获得：#COLORCOLOR_ORANGE#钱袋，#COLOREND##COLORCOLOR_BLUE#金条，#COLOREND##COLORCOLOR_GREENG#稀有道具#COLOREND#  剩余金币：#COLORCOLOR_BLUE#"..lualib:GetGold(player).."#COLOREND#  <@web *01*快速充值>\n\n"
	
	msg = msg .. "#POS<X:0>##POS<Y:150>##IMAGE1902700037#<@jinxingtanbao#1 *01*探宝1次>(5万金币或寻宝图1张)    #IMAGE1902700037#<@jinxingtanbao#2 *01*100元宝代替寻宝图>    #IMAGE1902700037#<@jinxingtanbao#3 *01*1000积分代替寻宝图>\n\n"	

	--显示出探宝公告
--[[	msg = msg .. "#COLORCOLOR_BLUE#【探宝公告】#COLOREND#\n"
	local gonggao = {}
	if lualib:GetStr("0","tanbao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","tanbao_gonggao")) --取得探宝公告table
	end
	for k,v in pairs(gonggao) do
		msg = msg .. v .."\n"
	end]]

	--探宝获得显示
	if huode ~= nil then
		msg = msg .. "#COLORCOLOR_ORANGE#【探宝获得】#COLOREND#  "
		for k,v in pairs(huode) do
			msg = msg .. "#COLORCOLOR_GREENG#"..v.."#COLOREND#  "
		end
		lualib:RunClientScript(player, "ItemEffect", "choujiang", 0 .."#".. 200)
	end
	
	local str = [[<form default_parent="NpcTalk,Container">]]
	local x = 0
	local y = 30
	for i=1,#item_xianshi do
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..item_xianshi[i].." count=1 is_bound=false use_back=true />"
		x = x + 40
		if i == 9 then
			x = 0
			y = 70
			str = str .. "\n"
		elseif i == 18 then
			x = 0
			y = 110
			str = str .. "\n"
		elseif i == 27 then
			str = str .. "\n"
		end
	end
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:NPCTalkDetail(player, msg, 600, 240)
	return ""
end

function web(player)
    local name = lualib:Player_GetStrProp(player, lua_role_user_name)
    local userid = lualib:Player_GetAccountID(player)
    local grpid = lualib:GetGroupId()
    local msg = "http://pay.hzyotoy.com/index.do?mod=pay&groupid=" .. grpid
    lualib:SysMsg_SendWebPage(player, msg)
    return ""
end

--------------------进行探宝----------------------------
function jinxingtanbao(player,types)
	local cishu = 1
	local types = tonumber(types)
	local jiage = 0
	if types == 1 then
		if lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
		else
			jiage = 50000
			if lualib:Player_IsGoldEnough(player,jiage,false) == false then
				lualib:SysMsg_SendPromptMsg(player,"你的金币不足,无法寻宝！")
				--lualib:SysMsg_SendMsgDlg(player,1,"元宝不足！是否快速充值？#BUTTON0#快速充值#BUTTONEND##BUTTON0#关闭窗口#BUTTONEND#", 100, "chongzhiqueren", "")
				tanbao(player)
				return ""
			end
		end
	elseif types == 2 then
		jiage = 100
		if lualib:Player_IsIngotEnough(player,jiage,false) == false then
			lualib:SysMsg_SendMsgDlg(player,1,"元宝不足！是否快速充值？#BUTTON0#快速充值#BUTTONEND##BUTTON0#关闭窗口#BUTTONEND#", 100, "chongzhiqueren", "")
			tanbao(player)
			return ""
		end
	elseif types == 3 then
		jiage = 1000
		if lualib:Player_IsIntegralEnough(player, jiage) == false then
			lualib:SysMsg_SendPromptMsg(player,"你的积分不足,无法寻宝！")
			tanbao(player)
			return ""
		end
	end

	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --取得探宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --取得探宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --取得探宝仓库图标table
	end
	
	local gonggao = {}
	if lualib:GetStr("0","tanbao_gonggao") ~= "" then
		gonggao = json.decode(lualib:GetStr("0","tanbao_gonggao")) --取得探宝公告table
	end

	local huode = {} --创建存放本次获得奖励信息的table
	
	if cishu + #cangku > cangku_rongliang then
		lualib:SysMsg_SendMsgDlg(player,1,"探宝仓库空位不足，请取出仓库中的道具或者减少探宝次数再试。#BUTTON0#关闭窗口#BUTTONEND#", 100, "guanbi", "")
		tanbao(player)
		return ""
	end
	
	if types == 1 then
		if cishu == 1 and lualib:ItemCountByKey(player, "寻宝图", true, false, false, 2) >= 1 then
			if not lualib:DelItem(player, "寻宝图", 1, 2, "龙穴探宝", player) then --删道具
				return "扣除道具失败"
			end
		else
			if lualib:Player_SubGold(player,jiage,false,"龙穴探宝",player) == false then --扣元宝
				lualib:SysMsg_SendWarnMsg(player,"扣除金币失败！")
				return ""
			end
		end
	elseif types == 2 then
		if lualib:Player_SubIngot(player,jiage,false,"龙穴探宝",player) == false then --扣元宝
			lualib:SysMsg_SendWarnMsg(player,"扣除元宝失败！")
			return ""
		end
	elseif types == 3 then
		if lualib:Player_SubIntegral(player,jiage,"龙穴探宝",player) == false then --扣元宝
			lualib:SysMsg_SendWarnMsg(player,"扣除积分失败！")
			return ""
		end
	end
	
	local suiji_zongzhi = 0  --随机总值
	local suiji = 0 --随机值
	
	--首先获得随机总值
	for k,v in pairs(item) do
		suiji_zongzhi = suiji_zongzhi + v[3]
	end
	
	--根据探宝次数循环多次
	for i=1,cishu do
		suiji = math.random(suiji_zongzhi) --获得随机值
		local suiji_1 = 0
		--开始遍历随机值对应哪个物品
		for k,v in pairs(item) do
			local suiji_2 = suiji_1 + v[3]
			if suiji >= suiji_1 and  suiji < suiji_2 then
				cangku[#cangku+1] = v[1] --给与物品到探宝仓库
				cangku_number[#cangku_number+1] = v[2] --记录物品数量到探宝仓库
				cangku_icon[#cangku_icon+1] = v[5] --记录物品图标到探宝仓库
				if v[4] == 1 then
					table.insert(gonggao,1,lualib:Time2Str("%Y-%m-%d %H:%M:%S",0).."  #COLORCOLOR_ORANGE#"..lualib:KeyName(player).."#COLOREND#在探宝中获得：#COLORCOLOR_GREENG#"..v[1] .. "*" .. v[2].."#COLOREND#") --记录到探宝公告中
					if #gonggao > 10 then
						table.remove(gonggao,11)
					end
				end
				huode[#huode+1] = "#COLORCOLOR_GREENG#".. v[1] .. "*" .. v[2] .. "#COLOREND#" --记录本次探宝显示信息
				break
			else
				suiji_1 = suiji_1 + v[3]
			end
		end
	end

	lualib:SetStr(player,"tanbao_cangku",json.encode(cangku)) --将探宝仓库table保存字符串变量
	lualib:SetStr(player,"tanbao_cangku_number",json.encode(cangku_number)) --将探宝仓库table保存字符串变量
	lualib:SetStr(player,"tanbao_cangku_icon",json.encode(cangku_icon)) --将探宝仓库table保存字符串变量
	lualib:SetStr("0","tanbao_gonggao",json.encode(gonggao)) --将公告table保存字符串变量
	local player_name = lualib:KeyName(player)
	lualib:SysMsg_SendCenterMsg(1,"【"..player_name.."】进行了 "..cishu.." 次龙穴探宝，获得大量珍宝。","") --屏幕中间提示
	tanbao(player,huode) --返回到函数tanbao显示出本次探宝获得物品信息
	return ""
end

function chongzhiqueren(id,player,xuanzhe)
	if xuanzhe == 0 then
		web(player)
	end
end

function guanbi()
	return ""
end

--------------------------探宝仓库-------------------------------
function tanbaocangku(player,qizhiweizhi)
	qizhiweizhi = tonumber(qizhiweizhi)
	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --取得探宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --取得探宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --取得探宝仓库图标table
	end

	if qizhiweizhi < 1 then
		qizhiweizhi = 1
	elseif qizhiweizhi > cangku_rongliang then
		qizhiweizhi = qizhiweizhi - 20
	end
	
	local yeshu = math.modf(qizhiweizhi/20) + 1 --当前页数
	
	--根据仓库容量算出总共页数
	local p1,p2 = math.modf(cangku_rongliang/20)
	if p2 > 0 then
		p1 = p1 + 1
	end
	
	local msg = "#COLORCOLOR_ORANGE#【探宝仓库】#COLOREND# 容量:"..#cangku.."/"..cangku_rongliang.."  #COLORCOLOR_BLUE#<@tanbaocangku#"..qizhiweizhi-20 .." *01*【上一页】> "..yeshu.."/"..p1.." <@tanbaocangku#"..qizhiweizhi+20 .." *01*【下一页】>#COLOREND#  <@tanbaocangku_quanbuquchu#"..qizhiweizhi.." *01*【全部取出】>  <@tanbao *01*【返回探宝】>\n\n"

	if cangku[qizhiweizhi] == nil then
		return msg
	end
	
	--显示仓库物品信息
	local jieshuweizhi = qizhiweizhi+19
	
	if jieshuweizhi > #cangku then
		jieshuweizhi = #cangku
	end

	local p = 0 --记录物品出现为第几个
	local str = [[<form default_parent="NpcTalk,Container">]]
	
	for i=qizhiweizhi,jieshuweizhi do
		p = p + 1
		--显示物品图标
		local yushu = p%4
		local x = 139 --长度间隔
		local y = 50 --高度间隔
		
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		if yushu == 1 then
			x = 0
		else
			x = (yushu-1) * x
		end
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">#"
		
		str = str .. "<itemctrl id="..i.." x="..x.." y="..y.." w=35 h=35 init_item="..cangku[i].." count="..cangku_number[i].." is_bound=false use_back=true />"
		
		msg = msg .. "#POS<X:".. x+40 .. ">##POS<Y:"..y+20 ..">#<@tanbaocangku_quwu#"..i.." *01*取出物品>\n"
		
		--显示名字
		local yushu = p%4
		local x = 139 --长度间隔
		local y = 50 --高度间隔
		if yushu == 0 then
			yushu = 4
		end
		
		y = math.modf((p-1)/4) * y + 30
		
		if yushu == 1 then
			x = 34
		else
			x = (yushu-1) * x + 34
		end
		
		msg = msg .. "#POS<X:".. x .. ">##POS<Y:"..y..">##COLORCOLOR_GREENG#"..cangku[i].."*"..cangku_number[i].."#COLOREND#\n"
	end
	msg = msg .. "\n"
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:SetPanelSize(player, 600, 300)
	return msg
end

-----------------探宝仓库物品全部取出----------------------
function tanbaocangku_quanbuquchu(player,weizhi)
	local msg = ""
	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --取得探宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --取得探宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --取得探宝仓库数量table
	end
	
	if #cangku > 0 then
	else
		lualib:SysMsg_SendMsgDlg(player,1,"没有物品可以取出，是否进行探宝获得？#BUTTON0#进行探宝#BUTTONEND##BUTTON0#关闭窗口#BUTTONEND#", 100, "tanbaocangku_quanbuquchu1", "")
		return ""
	end

	local qizhiweizhi =math.modf((weizhi-1)/20) * 20 + 1
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end
	
	local shuliang = 0
	for k,v in pairs(cangku_number) do
		shuliang = shuliang + v
	end
	
	if lualib:Player_GetBagFree(player) < shuliang then
		return "包裹空位不足"..shuliang.."格！请整理以后再来！\n\n<@tanbaocangku#"..qizhiweizhi.." *01*返回>\n"
	end
	
	for k,v in pairs(cangku) do
		lualib:AddItem(player,v,cangku_number[k],false,"探宝取物品", player) --给物品
		lualib:SysMsg_SendWarnMsg(player,"从探宝仓库取出："..v.."*"..cangku_number[k])
		cangku[k] = nil
		cangku_number[k] = nil
		cangku_icon[k] = nil
	end
	lualib:SetStr(player,"tanbao_cangku",json.encode(cangku)) --将探宝仓库table保存字符串变量
	lualib:SetStr(player,"tanbao_cangku_number",json.encode(cangku_number)) --将探宝仓库table保存字符串变量
	lualib:SetStr(player,"tanbao_cangku_icon",json.encode(cangku_icon)) --将探宝仓库table保存字符串变量
	tanbaocangku(player,1)
	lualib:SetPanelSize(player, 600, 300)
	return msg
end

-----------------提示是否进行探宝----------------------
function tanbaocangku_quanbuquchu1(id,player,xuanzhe)

	if xuanzhe == 0 then
		tanbao(player)
	end
	return ""
end

-----------------探宝仓库取物----------------------
function tanbaocangku_quwu(player,weizhi)
	local msg = ""
	weizhi = tonumber(weizhi)
	local cangku = {}
	if lualib:GetStr(player,"tanbao_cangku") ~= "" then
		cangku = json.decode(lualib:GetStr(player,"tanbao_cangku")) --取得探宝仓库table
	end
	
	local cangku_number = {}
	if lualib:GetStr(player,"tanbao_cangku_number") ~= "" then
		cangku_number = json.decode(lualib:GetStr(player,"tanbao_cangku_number")) --取得探宝仓库数量table
	end
	
	local cangku_icon = {}
	if lualib:GetStr(player,"tanbao_cangku_icon") ~= "" then
		cangku_icon = json.decode(lualib:GetStr(player,"tanbao_cangku_icon")) --取得探宝仓库图标table
	end
	
	local qizhiweizhi =math.modf((weizhi-1)/20) * 20 + 1
	
	if qizhiweizhi < 1 or qizhiweizhi > cangku_rongliang then
		qizhiweizhi = 1
	end

	if lualib:Player_GetBagFree(player) < cangku_number[weizhi] then
		return "包裹空位不足"..cangku_number[weizhi].."格！请整理以后再来！\n\n<@tanbaocangku#"..qizhiweizhi.." *01*返回>\n"
	end
	
	lualib:AddItem(player,cangku[weizhi],cangku_number[weizhi],false,"探宝取物品", player) --给物品
	lualib:SysMsg_SendWarnMsg(player,"从探宝仓库取出："..cangku[weizhi].."*"..cangku_number[weizhi])
	table.remove(cangku,weizhi)
	table.remove(cangku_number,weizhi)
	table.remove(cangku_icon,weizhi)
	lualib:SetStr(player,"tanbao_cangku",json.encode(cangku)) --将探宝仓库table保存字符串变量
	lualib:SetStr(player,"tanbao_cangku_number",json.encode(cangku_number)) --将探宝仓库table保存字符串变量
	lualib:SetStr(player,"tanbao_cangku_icon",json.encode(cangku_icon)) --将探宝仓库table保存字符串变量
	lualib:SetPanelSize(player, 600, 300)
	return 	tanbaocangku(player,qizhiweizhi)
end