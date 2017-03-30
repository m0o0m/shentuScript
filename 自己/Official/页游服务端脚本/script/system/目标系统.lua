local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/horse")

--目标奖励
local mubiao_jiangli = {
	["驯兽达人1"] = {2,{"独角兽(未开光)",1},{"钱袋(10万)",1}},  --2为领取需要的包裹空格数
	["驯兽达人2"] = {2,{"裂天魔狮(未开光)",1},{"钱袋(20万)",1}},
	["驯兽达人3"] = {3,{"神兽(未开光)",1},{"金条",1},{"5000元宝",1}},
	["驯兽达人4"] = {1,{"不死鸟(未开光)",1},{"金条",1},{"5000元宝",1}},
	["驯兽达人5"] = {1,{"龙鹰(未开光)",1},{"金条",1},{"5000元宝",1}},
	["装备达人1"] = {2,{"绑钱袋(10万)",1},{"灵元珠",10}},
	["装备达人2"] = {2,{"钱袋(50万)",1},{"灵元珠",50}},
	["装备达人3"] = {2,{"金条",1},{"500元宝",1}},
	["攻城略地1"] = {1,{"绑钱袋(10万)",1}},
	["攻城略地2"] = {1,{"经验",500000},{"绑钱袋(50万)",1}},
	["降妖除魔1"] = {0,{"经验",10000}},
	["降妖除魔2"] = {0,{"经验",50000}},
	["降妖除魔3"] = {1,{"经验",100000},{"钱袋(10万)",1}},
	["降妖除魔4"] = {1,{"经验",500000},{"钱袋(50万)",1}},
	["降妖除魔5"] = {1,{"经验",1000000},{"金条",1}},
	["降妖除魔6"] = {2,{"经验",2000000},{"金条",2}},
	["降妖除魔7"] = {5,{"经验",5000000},{"金条",5}},
	["降妖除魔8"] = {10,{"经验",10000000},{"金条",10}},
	["猎杀boss1"] = {0,{"经验",50000}},
	["猎杀boss2"] = {1,{"经验",100000},{"钱袋(10万)",1}},
	["猎杀boss3"] = {1,{"经验",500000},{"钱袋(50万)",1}},
	["猎杀boss4"] = {1,{"经验",1000000},{"金条",1}},
	["猎杀boss5"] = {2,{"经验",2000000},{"金条",2}},
	["猎杀boss6"] = {5,{"经验",5000000},{"金条",5}},
	["猎杀boss7"] = {10,{"经验",10000000},{"金条",10}},
}


-----------------------图标显示-----------------------------
function mubiao_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800054, "目标系统",0,"") --显示目标图标
end

-------------------图标被点击-----------------------
function mubiao(player)
	ShowTimeCount2(player, 0, 1903800054, "目标系统",0,"") --显示目标图标
	local msg = ""

	if lualib:GetInt(player,"mubiao_zhuangbei_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【精炼装备3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到12\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990165504>#金条，#IMAGE<ID:1990165505>#500元宝"
		msg = msg .. "  <@mubiao_lingjiang#装备达人3#mubiao_zhuangbei_3#mubiao *01*领取奖励>\n\n\n\n"
	end

	if lualib:GetInt(player,"mubiao_zhuangbei_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【精炼装备2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到9\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#钱袋(50万)，#IMAGE<ID:1990130007>#灵元珠*50"
		msg = msg .. "  <@mubiao_lingjiang#装备达人2#mubiao_zhuangbei_2#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_zhuangbei_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【精炼装备1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到6\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#钱袋(10万)，#IMAGE<ID:1990130007>#灵元珠*10"
		msg = msg .. "  <@mubiao_lingjiang#装备达人1#mubiao_zhuangbei_1#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss7】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1000只boss怪(1000/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1000w，#IMAGE<ID:1990165504>#金条*10"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss7#mubiao_boss_7#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss6】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀500只boss怪(500/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验500w，#IMAGE<ID:1990165504>#金条*5"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss6#mubiao_boss_6#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss5】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀200只boss怪(200/200)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验200w，#IMAGE<ID:1990165504>#金条*2"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss5#mubiao_boss_5#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss4】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀100只boss怪(100/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验100w，#IMAGE<ID:1990165504>#金条"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss4#mubiao_boss_4#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀50只boss怪(50/50)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#钱袋(50万)"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss3#mubiao_boss_3#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10只boss怪(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验10w，#IMAGE<ID:1990145002>#钱袋(10万)"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss2#mubiao_boss_2#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_boss_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1只boss怪(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验5w"
		msg = msg .. "  <@mubiao_lingjiang#猎杀boss1#mubiao_boss_1#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_8") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔8】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10000只精英怪(10000/10000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1000w，#IMAGE<ID:1990165504>#金条*10"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔8#mubiao_chumo_8#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔7】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀5000只精英怪(5000/5000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验500w，#IMAGE<ID:1990165504>#金条*5"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔7#mubiao_chumo_7#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔6】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀2000只精英怪(2000/2000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验200w，#IMAGE<ID:1990165504>#金条*2"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔6#mubiao_chumo_6#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔5】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1000只精英怪(1000/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验100w，#IMAGE<ID:1990165504>#金条"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔5#mubiao_chumo_5#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔4】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀500只精英怪(500/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#钱袋(50万)"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔4#mubiao_chumo_4#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀100只精英怪(100/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验10w，#IMAGE<ID:1990145002>#钱袋(10万)"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔3#mubiao_chumo_3#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10只精英怪(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验5w"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔2#mubiao_chumo_2#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if lualib:GetInt(player,"mubiao_chumo_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1只精英怪(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1w"
		msg = msg .. "  <@mubiao_lingjiang#降妖除魔1#mubiao_chumo_1#mubiao *01*领取奖励>\n\n\n\n"
	end
	
	if #msg > 1 then
		msg = "你已完成以下成就，是否<@mubiao_yijianlingqu *01*一键领取>奖励？\n\n"..msg
		
		lualib:NPCTalkDetail(player, msg, 700, 600)
		return ""
	end
	
	mubiao_xunshou(player)
	return ""
end


-------------------一键领取-----------------------
function mubiao_yijianlingqu(player)
	local msg = ""
	if lualib:GetInt(player,"mubiao_zhuangbei_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【精炼装备3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到12\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990165504>#金条，#IMAGE<ID:1990165505>#500元宝"
		mubiao_lingjiang(player,"装备达人3","mubiao_zhuangbei_3")
	end

	if lualib:GetInt(player,"mubiao_zhuangbei_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【精炼装备2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到9\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#钱袋(50万)，#IMAGE<ID:1990130007>#灵元珠*50"
		mubiao_lingjiang(player,"装备达人2","mubiao_zhuangbei_2")
	end
	
	if lualib:GetInt(player,"mubiao_zhuangbei_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【精炼装备1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到6\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#钱袋(10万)，#IMAGE<ID:1990130007>#灵元珠*10"
		mubiao_lingjiang(player,"装备达人1","mubiao_zhuangbei_1")
	end
	
	if lualib:GetInt(player,"mubiao_boss_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss7】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1000只boss怪("..shuliang.."/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1000w，#IMAGE<ID:1990165504>#金条*10"
		mubiao_lingjiang(player,"猎杀boss7","mubiao_boss_7")
	end
	
	if lualib:GetInt(player,"mubiao_boss_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss6】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀500只boss怪("..shuliang.."/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验500w，#IMAGE<ID:1990165504>#金条*5"
		mubiao_lingjiang(player,"猎杀boss6","mubiao_boss_6")
	end
	
	if lualib:GetInt(player,"mubiao_boss_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss5】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀200只boss怪("..shuliang.."/200)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验200w，#IMAGE<ID:1990165504>#金条*2"
		mubiao_lingjiang(player,"猎杀boss5","mubiao_boss_5")
	end
	
	if lualib:GetInt(player,"mubiao_boss_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss4】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀100只boss怪("..shuliang.."/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验100w，#IMAGE<ID:1990165504>#金条"
		mubiao_lingjiang(player,"猎杀boss4","mubiao_boss_4")
	end
	
	if lualib:GetInt(player,"mubiao_boss_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀50只boss怪(50/50)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#钱袋(50万)"
		mubiao_lingjiang(player,"猎杀boss3","mubiao_boss_3")
	end
	
	if lualib:GetInt(player,"mubiao_boss_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10只boss怪(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验10w，#IMAGE<ID:1990145002>#钱袋(10万)"
		mubiao_lingjiang(player,"猎杀boss2","mubiao_boss_2")
	end
	
	if lualib:GetInt(player,"mubiao_boss_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1只boss怪(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验5w"
		mubiao_lingjiang(player,"猎杀boss1","mubiao_boss_1")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_8") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔8】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10000只精英怪(10000/10000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1000w，#IMAGE<ID:1990165504>#金条*10"
		mubiao_lingjiang(player,"降妖除魔8","mubiao_chumo_8")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_7") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔7】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀5000只精英怪(5000/5000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验500w，#IMAGE<ID:1990165504>#金条*5"
		mubiao_lingjiang(player,"降妖除魔7","mubiao_chumo_7")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_6") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔6】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀2000只精英怪("..shuliang.."/2000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验200w，#IMAGE<ID:1990165504>#金条*2"
		mubiao_lingjiang(player,"降妖除魔6","mubiao_chumo_6")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_5") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔5】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1000只精英怪(1000/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验100w，#IMAGE<ID:1990165504>#金条"
		mubiao_lingjiang(player,"降妖除魔5","mubiao_chumo_5")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_4") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔4】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀500只精英怪(500/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#钱袋(50万)"
		mubiao_lingjiang(player,"降妖除魔4","mubiao_chumo_4")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_3") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀100只精英怪(100/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验10w，#IMAGE<ID:1990145002>#钱袋(10万)"
		mubiao_lingjiang(player,"降妖除魔3","mubiao_chumo_3")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_2") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10只精英怪(10/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验5w"
		mubiao_lingjiang(player,"降妖除魔2","mubiao_chumo_2")
	end
	
	if lualib:GetInt(player,"mubiao_chumo_1") == 1 then
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1只精英怪(1/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1w"
		mubiao_lingjiang(player,"降妖除魔1","mubiao_chumo_1")
	end
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end


-------------------驯兽达人-----------------------
function mubiao_xunshou(player)
	local msg = "                                    #COLORCOLOR_GREENG#【目标系统】#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100001>##COLORCOLOR_RED#[驯兽达人]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[装备达人]>    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[攻城略地]>    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[降妖除魔]>    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[猎杀boss]>\n \n \n"

	local x1,x2,x3,x4,x5 = 0,0,0,0,0
	local y1,y2,y3,y4,y5 = 0,0,0,0,0
	
		x1 = 206
		y1 = 100
		
		x2 = 206
		y2 = 300
		
		x3 = 206
		y3 = 500
		
		x4 = 206
		y4 = 700
		
		x5 = 206
		y5 = 900
	
		local x1_1 = 0
		local y1_1 = 0
		x1_1 = -135
		y1_1 = y1 - 150
		msg = msg .. "#POS<X:"..x1 ..">##POS<Y:"..y1 ..">##COLORCOLOR_RED#【驯兽达人1】#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#目标：#COLOREND#练成一只40级的坐骑#COLORCOLOR_RED#(需要40级才能领取)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990120194>#稀有坐骑:独角兽#IMAGE<ID:1990145002>#钱袋(10万)"
		if lualib:GetInt(player,"mubiao_xunshou_1") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang1 *01*领取奖励>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#"
		end
		
		local x2_1 = 0
		local y2_1 = 0
		x2_1 = -150
		y2_1 = y2 - 190
		msg = msg .. "#POS<X:"..x2 ..">##POS<Y:"..y2 ..">##COLORCOLOR_RED#【驯兽达人2】#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#目标：#COLOREND#练成一只50级的坐骑#COLORCOLOR_RED#(需要50级才能领取)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990120200>#稀有坐骑:裂天魔狮#IMAGE<ID:1990165504>#钱袋(20万)"
		if lualib:GetInt(player,"mubiao_xunshou_2") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang2 *01*领取奖励>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#"
		end
		
		local x3_1 = 0
		local y3_1 = 0
		x3_1 = -135
		y3_1 = y3 - 190
		msg = msg .. "#POS<X:"..x3 ..">##POS<Y:"..y3 ..">##COLORCOLOR_RED#【驯兽达人3】#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#目标：#COLOREND#练成一只神级50级坐骑#COLORCOLOR_RED#(需要55级才能领取)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990120214>#稀有坐骑:神兽#IMAGE<ID:1990165504>#金条*1#IMAGE<ID:1990165505>#5000元宝"
		if lualib:GetInt(player,"mubiao_xunshou_3") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang3 *01*领取奖励>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#"
		end
		
		local x4_1 = 0
		local y4_1 = 0
		x4_1 = -120
		y4_1 = y4 - 190
		msg = msg .. "#POS<X:"..x4 ..">##POS<Y:"..y4 ..">##COLORCOLOR_RED#【驯兽达人4】#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#目标：#COLOREND#练成一只神级50级坐骑#COLORCOLOR_RED#(需要55级才能领取)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990020213>#稀有坐骑:不死鸟#IMAGE<ID:1990165504>#金条*1#IMAGE<ID:1990165505>#5000元宝"
		if lualib:GetInt(player,"mubiao_xunshou_4") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang4 *01*领取奖励>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#"
		end
		
		local x5_1 = 0
		local y5_1 = 0
		x5_1 = -120
		y5_1 = y5 - 190
		msg = msg .. "#POS<X:"..x5 ..">##POS<Y:"..y5 ..">##COLORCOLOR_RED#【驯兽达人5】#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#目标：#COLOREND#练成一只神级50级坐骑#COLORCOLOR_RED#(需要55级才能领取)#COLOREND#\n"
		msg = msg .. "                                  #COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990020204>#稀有坐骑:龙鹰#IMAGE<ID:1990165504>#金条*1#IMAGE<ID:1990165505>#5000元宝"
		if lualib:GetInt(player,"mubiao_xunshou_5") == 0 then
			msg = msg .. "  <@mubiao_xunshou_lingjiang5 *01*领取奖励>"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#"
		end
		

	local str = [[<form default_parent="NpcTalk,Container">
					<image id="图片1" x=-150 y=-50 type=animate image=1210522200/>
					<image id="图片2" x=-130 y=150 type=animate image=1210722200/>
					<image id="图片3" x=-150 y=350 type=animate image=1211022200/>
					<image id="图片4" x=-80 y=550 type=animate image=1211122200/>
					<image id="图片5" x=-70 y=750 type=animate image=1211222200/>
	]]
	
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------装备达人-----------------------
function mubiao_zhuangbei(player)
	local msg = "                                    #COLORCOLOR_GREENG#【目标系统】#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[驯兽达人]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[装备达人]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[攻城略地]>    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[降妖除魔]>    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[猎杀boss]>\n\n\n"
		
		msg = msg .. "#COLORCOLOR_RED#【精炼装备1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到6\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#钱袋(10万)，#IMAGE<ID:1990130007>#灵元珠*10"
		if lualib:GetInt(player,"mubiao_zhuangbei_1") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_zhuangbei_1") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#装备达人1#mubiao_zhuangbei_1 *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		msg = msg .. "#COLORCOLOR_RED#【精炼装备2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到9\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#钱袋(50万)，#IMAGE<ID:1990130007>#灵元珠*50"
		if lualib:GetInt(player,"mubiao_zhuangbei_2") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_zhuangbei_2") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#装备达人2#mubiao_zhuangbei_2 *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		msg = msg .. "#COLORCOLOR_RED#【精炼装备3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#将任意装备精练到12\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990165504>#金条，#IMAGE<ID:1990165505>#500元宝"
		if lualib:GetInt(player,"mubiao_zhuangbei_3") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_zhuangbei_3") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#装备达人3#mubiao_zhuangbei_3 *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------攻城略地-----------------------
function mubiao_gongcheng(player)
	local msg = "                                    #COLORCOLOR_GREENG#【目标系统】#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[驯兽达人]>    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[装备达人]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[攻城略地]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[降妖除魔]>    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[猎杀boss]>\n\n\n"

		msg = msg .. "#COLORCOLOR_RED#【攻城略地1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#加入行会\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND##IMAGE<ID:1990145002>#绑定钱袋(10万)"
		if lualib:GetInt(player,"mubiao_gongcheng_1") == 0 then
			msg = msg .. "  <@mubiao_gongcheng_lingjiang1 *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		msg = msg .. "#COLORCOLOR_RED#【攻城略地2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#成为神歌城占领者行会的成员(必须大于20级)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#绑钱袋(50万)"
		if lualib:GetInt(player,"mubiao_gongcheng_2") == 0 then
			msg = msg .. "  <@mubiao_gongcheng_lingjiang2 *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
	
	
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end
	
-------------------猎杀boss-----------------------
function mubiao_boss(player)
	local msg = "                                    #COLORCOLOR_GREENG#【目标系统】#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[驯兽达人]>    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[装备达人]>    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[攻城略地]>    #IMAGE<ID:1900100003>#<@mubiao_chumo *01*[降妖除魔]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[猎杀boss]#COLOREND#\n\n\n"
	
	
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 1 then
			shuliang = 1
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1只boss怪("..shuliang.."/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验5w"
		if lualib:GetInt(player,"mubiao_boss_1") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_1") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss1#mubiao_boss_1#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 10 then
			shuliang = 10
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10只boss怪("..shuliang.."/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验10w，#IMAGE<ID:1990145002>#钱袋(10万)"
		if lualib:GetInt(player,"mubiao_boss_2") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_2") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss2#mubiao_boss_2#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
			
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 50 then
			shuliang = 50
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀50只boss怪("..shuliang.."/50)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#钱袋(50万)"
		if lualib:GetInt(player,"mubiao_boss_3") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_3") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss3#mubiao_boss_3#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 100 then
			shuliang = 100
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss4】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀100只boss怪("..shuliang.."/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验100w，#IMAGE<ID:1990165504>#金条"
		if lualib:GetInt(player,"mubiao_boss_4") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_4") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss4#mubiao_boss_4#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 200 then
			shuliang = 200
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss5】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀200只boss怪("..shuliang.."/200)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验200w，#IMAGE<ID:1990165504>#金条*2"
		if lualib:GetInt(player,"mubiao_boss_5") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_5") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss5#mubiao_boss_5#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 500 then
			shuliang = 500
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss6】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀500只boss怪("..shuliang.."/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验500w，#IMAGE<ID:1990165504>#金条*5"
		if lualib:GetInt(player,"mubiao_boss_6") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_6") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss6#mubiao_boss_6#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_boss_shuliang")
		if shuliang >= 1000 then
			shuliang = 1000
		end
		msg = msg .. "#COLORCOLOR_RED#【猎杀boss7】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1000只boss怪("..shuliang.."/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1000w，#IMAGE<ID:1990165504>#金条*10"
		if lualib:GetInt(player,"mubiao_boss_7") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_boss_7") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#猎杀boss7#mubiao_boss_7#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------降妖除魔-----------------------
function mubiao_chumo(player)
	local msg = "                                    #COLORCOLOR_GREENG#【目标系统】#COLOREND#\n\n"
	msg = msg .. "#IMAGE<ID:1900100003>#<@mubiao_xunshou *01*[驯兽达人]>    #IMAGE<ID:1900100003>#<@mubiao_zhuangbei *01*[装备达人]>    #IMAGE<ID:1900100003>#<@mubiao_gongcheng *01*[攻城略地]>    #IMAGE<ID:1900100001>##COLORCOLOR_RED#[降妖除魔]#COLOREND#    #IMAGE<ID:1900100003>#<@mubiao_boss *01*[猎杀boss]>\n\n\n"
	
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 1 then
			shuliang = 1
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔1】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1只精英怪("..shuliang.."/1)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1w"
		if lualib:GetInt(player,"mubiao_chumo_1") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_1") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔1#mubiao_chumo_1#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 10 then
			shuliang = 10
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔2】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10只精英怪("..shuliang.."/10)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验5w"
		if lualib:GetInt(player,"mubiao_chumo_2") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_2") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔2#mubiao_chumo_2#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 100 then
			shuliang = 100
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔3】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀100只精英怪("..shuliang.."/100)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验10w，#IMAGE<ID:1990145002>#钱袋(10万)"
		if lualib:GetInt(player,"mubiao_chumo_3") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_3") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔3#mubiao_chumo_3#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 500 then
			shuliang = 500
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔4】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀500只精英怪("..shuliang.."/500)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验50w，#IMAGE<ID:1990145002>#钱袋(50万)"
		if lualib:GetInt(player,"mubiao_chumo_4") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_4") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔4#mubiao_chumo_4#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 1000 then
			shuliang = 1000
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔5】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀1000只精英怪("..shuliang.."/1000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验100w，#IMAGE<ID:1990165504>#金条"
		if lualib:GetInt(player,"mubiao_chumo_5") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_5") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔5#mubiao_chumo_5#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 2000 then
			shuliang = 2000
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔6】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀2000只精英怪("..shuliang.."/2000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验200w，#IMAGE<ID:1990165504>#金条*2"
		if lualib:GetInt(player,"mubiao_chumo_6") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_6") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔6#mubiao_chumo_6#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 5000 then
			shuliang = 5000
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔7】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀5000只精英怪("..shuliang.."/5000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验500w，#IMAGE<ID:1990165504>#金条*5"
		if lualib:GetInt(player,"mubiao_chumo_7") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_7") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔7#mubiao_chumo_7#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
		
		local shuliang = lualib:GetInt(player,"mubiao_chumo_shuliang")
		if shuliang >= 10000 then
			shuliang = 10000
		end
		msg = msg .. "#COLORCOLOR_RED#【降妖除魔8】#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_ORANGE#目标：#COLOREND#猎杀10000只精英怪("..shuliang.."/10000)\n"
		msg = msg .. "#COLORCOLOR_ORANGE#奖励：#COLOREND#经验1000w，#IMAGE<ID:1990165504>#金条*10"
		if lualib:GetInt(player,"mubiao_chumo_8") == 0 then
			msg = msg .. "  #COLORCOLOR_BLUE#未完成#COLOREND#\n\n\n\n"
		elseif lualib:GetInt(player,"mubiao_chumo_8") == 1 then
			msg = msg .. "  <@mubiao_lingjiang#降妖除魔8#mubiao_chumo_8#mubiao_boss *01*领取奖励>\n\n\n\n"
		else
			msg = msg .. "  #COLORCOLOR_BLUE#已领取#COLOREND#\n\n\n\n"
		end
	lualib:NPCTalkDetail(player, msg, 700, 600)
	return ""
end

-------------------给与奖励----------------------------
function mubiao_lingjiang(player,mubiao,bianliang,hanshu,jindu)
	if lualib:Player_GetBagFree(player) < mubiao_jiangli[mubiao][1] then
		return "包裹空位不足"..mubiao_jiangli[mubiao][1].."格！请整理以后再来！\n\n<@guanbi *01*关闭>\n"
	end
	
	lualib:SetInt(player,bianliang,lualib:GetInt(player,bianliang)+1) --目标任务领取状况+1
	if jindu ~= nil then
		lualib:SetInt(player,jindu,lualib:GetInt(player,jindu)+1) --目标任务进度+1
	end
	
	for k,v in pairs(mubiao_jiangli[mubiao]) do
		if k ~= 1 then
			if v[1] ~= "经验" then
				if string.find(v[1],"绑钱袋") ~= nil then
					lualib:AddItem(player,v[1],v[2],true,"目标任务奖励", player) --给物品
				else
					lualib:AddItem(player,v[1],v[2],false,"目标任务奖励", player) --给物品
				end
				
				lualib:SysMsg_SendWarnMsg(player,"完成目标["..mubiao.."]，获得道具："..v[1].."*"..v[2])
			else
				lualib:Player_AddExp(player, v[2], "目标任务奖励", player)
				lualib:SysMsg_SendWarnMsg(player,"完成目标["..mubiao.."]，获得"..v[1].."："..v[2])
			end
		end
	end
	
	local s1 = _G[hanshu]
	if type(s1) == "function" then
		s1(player)
	end

	return ""
end

-------------------驯兽达人1判断----------------------------
function mubiao_xunshou_lingjiang1(player)
	return "领取前请将一只40级以上的坐骑放在包裹第一个位置。\n#COLORCOLOR_RED#注意：领取奖励成功后，这只坐骑会被系统回收掉！#COLOREND#\n\n<@mubiao_xunshou_lingjiang1_1 *01*同意回收并领奖>\n<@mubiao *01*返回>"
end

function mubiao_xunshou_lingjiang1_1(player)
	
	local lv_requre = 40
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "等级不足，此目标需要"..lv_requre.."才能领取\n\n<@guanbi *01*关闭>"
    end

	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 40 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["驯兽达人1"][1] then
				return "包裹空位不足"..mubiao_jiangli["驯兽达人1"][1].."格！请整理以后再来！\n\n<@guanbi *01*关闭>\n"
			end
	
			if not lualib:Item_Destroy(player, item,"目标达成", player) then --删除坐骑
				return "扣除道具失败"
			end

			mubiao_lingjiang(player,"驯兽达人1","mubiao_xunshou_1","mubiao_xunshou","mubiao_xunshou")
		else
			return "第一格位置的坐骑等级没有达到40级，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
		end
	else
		return "第一格位置的物品不是坐骑，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
	end

	return ""
end

-------------------驯兽达人2判断----------------------------
function mubiao_xunshou_lingjiang2(player)
	return "领取前请将一只50级以上的坐骑放在包裹第一个位置。\n#COLORCOLOR_RED#注意：领取奖励成功后，这只坐骑会被系统回收掉！#COLOREND#\n\n<@mubiao_xunshou_lingjiang2_1 *01*同意回收并领奖>\n<@mubiao *01*返回>"
end

function mubiao_xunshou_lingjiang2_1(player)
	local lv_requre = 50
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "等级不足，此目标需要"..lv_requre.."才能领取\n\n<@guanbi *01*关闭>"
    end
	
	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["驯兽达人2"][1] then
				return "包裹空位不足"..mubiao_jiangli["驯兽达人2"][1].."格！请整理以后再来！\n\n<@guanbi *01*关闭>\n"
			end
			
			if not lualib:Item_Destroy(player, item,"目标达成", player) then --删除坐骑
				return "扣除道具失败"
			end
			mubiao_lingjiang(player,"驯兽达人2","mubiao_xunshou_2","mubiao_xunshou","mubiao_xunshou")
		else
			return "第一格位置的坐骑等级没有达到50级，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
		end
	else
		return "第一格位置的物品不是坐骑，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
	end

	return ""
end

-------------------驯兽达人3判断----------------------------
function mubiao_xunshou_lingjiang3(player)
	return "领取前请将一只50级以上的神级坐骑放在包裹第一个位置。\n#COLORCOLOR_RED#注意：领取奖励成功后，这只坐骑会被系统回收掉！#COLOREND#\n\n<@mubiao_xunshou_lingjiang3_1 *01*同意回收并领奖>\n<@mubiao *01*返回>"
end

function mubiao_xunshou_lingjiang3_1(player)
    local lv_requre = 55
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "等级不足，此目标需要"..lv_requre.."才能领取\n\n<@guanbi *01*关闭>"
    end

	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 and get_horse_type(player, item) == 5 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["驯兽达人3"][1] then
				return "包裹空位不足"..mubiao_jiangli["驯兽达人3"][1].."格！请整理以后再来！\n\n<@guanbi *01*关闭>\n"
			end
			
			if not lualib:Item_Destroy(player, item,"目标达成", player) then --删除坐骑
				return "扣除道具失败"
			end
			mubiao_lingjiang(player,"驯兽达人3","mubiao_xunshou_3","mubiao_xunshou","mubiao_xunshou")
		else
			return "第一格位置的坐骑等级没有达到50级或不是神级品质，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
		end
	else
		return "第一格位置的物品不是坐骑，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
	end

	return ""
end

-------------------驯兽达人4判断----------------------------
function mubiao_xunshou_lingjiang4(player)
	return "领取前请将一只50级以上的神级坐骑放在包裹第一个位置。\n#COLORCOLOR_RED#注意：领取奖励成功后，这只坐骑会被系统回收掉！#COLOREND#\n\n<@mubiao_xunshou_lingjiang4_1 *01*同意回收并领奖>\n<@mubiao *01*返回>"
end

function mubiao_xunshou_lingjiang4_1(player)
	local lv_requre = 55
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "等级不足，此目标需要"..lv_requre.."才能领取\n\n<@guanbi *01*关闭>"
    end
	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 and get_horse_type(player, item) == 5 then
			if lualib:Player_GetBagFree(player) < mubiao_jiangli["驯兽达人4"][1] then
				return "包裹空位不足"..mubiao_jiangli["驯兽达人4"][1].."格！请整理以后再来！\n\n<@guanbi *01*关闭>\n"
			end
			
			if not lualib:Item_Destroy(player, item,"目标达成", player) then --删除坐骑
				return "扣除道具失败"
			end
			mubiao_lingjiang(player,"驯兽达人4","mubiao_xunshou_4","mubiao_xunshou","mubiao_xunshou")
		else
			return "第一格位置的坐骑等级没有达到50级或不是神级品质，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
		end
	else
		return "第一格位置的物品不是坐骑，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
	end

	return ""
end

-------------------驯兽达人5判断----------------------------
function mubiao_xunshou_lingjiang5(player)
	return "领取前请将一只50级以上的神级坐骑放在包裹第一个位置。\n#COLORCOLOR_RED#注意：领取奖励成功后，这只坐骑会被系统回收掉！#COLOREND#\n\n<@mubiao_xunshou_lingjiang5_1 *01*同意回收并领奖>\n<@mubiao *01*返回>"
end

function mubiao_xunshou_lingjiang5_1(player)
	local lv_requre = 55
    local lv = lualib:Level(player)
	local ItemTble = {}
	item = lualib:Item_GetBySite(player, 22)
    if lv < lv_requre then
        return "等级不足，此目标需要"..lv_requre.."才能领取\n\n<@guanbi *01*关闭>"
    end
	if item ~= nil and lualib:Item_GetType(player,item) == 1 and lualib:Item_GetSubType(player,item) == 14 then
		if get_horse_level(player, item) >= 50 and get_horse_type(player, item) == 5 then
			if not lualib:Item_Destroy(player, item,"目标达成", player) then --删除坐骑
				return "扣除道具失败"
			end
			mubiao_lingjiang(player,"驯兽达人5","mubiao_xunshou_5","mubiao_xunshou","mubiao_xunshou")
		else
			return "第一格位置的坐骑等级没有达到50级或不是神级品质，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
		end
	else
		return "第一格位置的物品不是坐骑，你无法领取该奖励！\n\n<@guanbi *01*关闭>"
	end

	return ""
end

-------------------加入行会领奖判断----------------------------
function mubiao_gongcheng_lingjiang1(player)
	if lualib:GetFamilyName(player) == "" then
		return "你还没有加入任何行会！\n\n<@guanbi *01*关闭>"
	end
	
	mubiao_lingjiang(player,"攻城略地1","mubiao_gongcheng_1","mubiao_gongcheng","mubiao_gongcheng")

	return ""
end

-------------------神歌成员领奖判断----------------------------
function mubiao_gongcheng_lingjiang2(player)
	if lualib:GetFamilyName(player) == "" then
		return "你还没有加入任何行会！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:GetFamilyName(player) ~= lualib:GetCastleOwnFamily("神歌城") then
		return "你不是神歌城成员！\n\n<@guanbi *01*关闭>"
	end
	
	if lualib:Level(player) >= 20 then
	else
		return "你等级小于20级，不能领取该奖励！\n\n<@guanbi *01*关闭>"
	end
	mubiao_lingjiang(player,"攻城略地2","mubiao_gongcheng_2","mubiao_gongcheng","mubiao_gongcheng")

	return ""
end