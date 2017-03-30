local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--#COLORCOLOR_GREENG##UILINK<WND:提交表单,PARAM:表单名字;函数名;参数1;参数2,STR:打开>##COLOREND#！"
--lualib:SysMsg_SendBoardMsg(player, "温馨小贴士",  "\n#COLORCOLOR_GREENG##UILINK<WND:提交表单,PARAM:小贴士;tmsk_ts;player,STR:爱瑶：请点我→[温馨小贴士]##COLOREND#", 10000)
--将军冢贴士

function jjz_ts(player)
	--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#将军冢产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  御战套装   御魔套装   御道套装\n  武圣之戒   奥普戒指   奥普项链\n  青云戒指   荧光项链   黄金手镯\n  勇士头盔   奥普手镯   境魂护腕#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#密匙残块 聚灵珠  坐骑聚灵珠#COLOREND#"
	
	lualib:NPCTalkDetail(player, msg, 265, 350)
	
return ""

	]]--
	
end

--废弃矿洞贴士

function fqkd_ts(player)
	--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#废弃矿洞产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  御战套装   御魔套装   御道套装\n  武圣之戒   奥普戒指   奥普项链\n  青云戒指   荧光项链   黄金手镯\n  勇士头盔   奥普手镯   境魂护腕#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#技能书#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 350)
	return ""    
		]]--
end

--妖山暗穴贴士

function ysax_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#妖山暗穴产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   审判       忘机       囚龙\n   十杀       龙渊       天瀑\n  斗士铠甲   灵魂法衣   护体道袍\n  铁战套装   聚魂套装   玄光套装\n  圣武套装   苍冥套装   飞尘套装\n  黄金头盔   阎魔头盔   魔化面具\n  银鳞吊坠#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#循环魔咒           超级护身符\n  灰色药粉(大)       黄色药粉(大)#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 360)
	return ""       
		]]--
end

--绝路城贴士

function jlc_ts(player)
		--[[
    local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#绝路城产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   审判        忘机      囚龙\n   十杀        龙渊      天瀑\n  斗士铠甲   灵魂法衣   护体道袍\n  铁战套装   聚魂套装   玄光套装\n  圣武套装   苍冥套装   飞尘套装\n  骷髅手套   绿玉项链   破坏戒指\n  摄魂戒指   龙牙手镯   唤魔铃铛\n  混元戒指   幻邪手镯   灵光石项链#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#坐骑口粮     号角      坐骑经验丹#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 275, 360)
	return ""    
		]]--
end


--天荒阵贴士

function thz_ts(player)
		--[[
    local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#天荒阵产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   十杀       龙渊       天瀑\n  斗士铠甲   灵魂法衣   护体道袍\n  圣武套装   苍冥套装   飞尘套装\n  骷髅手套   绿玉项链   破坏戒指\n  摄魂戒指   龙牙手镯   唤魔铃铛\n  混元戒指   幻邪手镯   魔化面具\n  黄金头盔   阎魔头盔   灵光石项链#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#天机罗盘#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_YELLOW#迷宫走法：#COLOREND#  \n  #COLORCOLOR_WHITE#左右右左左右右左#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 270, 390)
	return ""    
		]]--
end

--邪庙贴士

function xm_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#天荒邪庙产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   噬空        碎空       断空\n  赤峰战甲   阎罗长袍   光明道袍\n  末日套装   血夜套装   天劫套装\n  王者之链   魔炫护腕   君王战戒\n  残月之坠   紫炎护腕   星冥魔戒\n  天极项链   天翼手镯   上清玄指#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#修复油     城战令牌   修复神水#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_YELLOW#迷宫走法：#COLOREND#  \n  #COLORCOLOR_WHITE#左上上右上上#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 375)
	return ""    
		]]--
end

--天魔石窟贴士

function tmsk_ts(player)
		--[[
    local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#天魔石窟产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   帝释        残虹       无常\n  百裂战甲   圣灵法衣   太玄道袍\n  疾雷套装   火灵套装   云扬套装\n  魔炫护腕   紫炎护腕   天翼手镯\n  麒麟战盔   龙牙面具   无魂头盔#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#打捆绳    高级技能书   逍遥游#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 310)
	return ""    
		]]--
end

--海底贴士

function hd_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#秘境沉船产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  十殿阎罗   七劫浮屠   赤霄白帝\n  龙鳞战甲   璃梦法袍   天鼎道袍\n  天怒套装   深渊套装   四象套装\n  梵天之链   麒煌护腕   创世战戒\n  天缺项链   七炫护腕   天璃法戒\n  圣魂项链   上玄手镯   天元道指#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#道尊神符   道尊神毒   道尊灵毒   秘海精元     定位石#COLOREND#"

	lualib:NPCTalkDetail(player, msg, 265, 350)
	return ""    
		]]--
end

--镇魔禁地

function zmjd_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#镇魔禁地产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#      魅影战盔      天邪头盔  \n      龙元道盔      绝影天履  \n    辨识卷轴(武)  辨识卷轴(衣)\n    辨识卷轴(链)  辨识卷轴(戒)\n    辨识卷轴(鞋)  辨识卷轴(帽)\n    辨识卷轴(手)#OFFSET<X:260,Y:0>#    逐光套装(未辨识)\n    逍遥套装(未辨识)#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#辨识之石, 祝福神水,  辟火丹\n  封印鉴定符, 赤炎部落通行证\n \n"
 
	lualib:NPCTalkDetail(player, msg, 265, 380)
	return ""    
		]]--
end

--赤炎部落

function cybl_ts(player)
		--[[
	local player_name = lualib:Name(player)
	local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[温馨小贴士]#COLOREND#\n"
	msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
	msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#],请你听我说：\n#COLOREND#"
	msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700033>#赤炎部落产出：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#      罡风·怒破(未辨识)\n      长空·瓣轮(未辨识)\n      苍天·梢月(未辨识)\n      流萤·暮影(未辨识)\n      流萤·暮露(未辨识)\n      鹤流·瑶羽(未辨识)\n      鹤流·瑶纱(未辨识)\n      无痕·天饮(未辨识)\n      无痕·天曲(未辨识)\n      战龙套装(未辨识)\n      逐光套装(未辨识)\n      逍遥套装(未辨识)#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#暴击灵符, 鉴定灵符, 队友传送令\n  队友召集令   行会召集令#COLOREND#\n \n"
 
	lualib:NPCTalkDetail(player, msg, 265, 450)
	return ""    
		]]--
end


function web(player)
	local userid = lualib:Player_GetAccountID(player)
	local times = lualib:GetAllTime()
	lualib:SysMsg_SendWebMsg(player, "防沉迷验证", "http://www.hzyotoy.com/index.do?mod=account&act=info&sign=<SIGNSTR>&ct="..times.."&uid="..userid, "")
	return ""
end


--天魔石窟开启
function tmsk_kaiqi(player)
		--[[
	local player_name = lualib:Name(player)
    local tianmo_Open = lualib:IO_GetCustomVarInt("tianmo_Open")
    local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[天魔石窟开启]#COLOREND#\n"
        msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
		msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#]\n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"	
    if tianmo_Open < 50 then
        msg = msg .. "#COLORCOLOR_BROWN#天藏大陆上出现了#COLORCOLOR_SKYBLUE#["..tianmo_Open.."]#COLOREND##COLORCOLOR_BROWN#位#COLORCOLOR_YELLOW#[42级]#COLOREND##COLORCOLOR_BROWN#的勇士\n \n#COLORCOLOR_BROWN#当达到42级的勇士达到50名时\n \n  #COLORCOLOR_RED#————[天魔石窟将解除封印]！#COLOREND#"
    else
		msg = msg .. "#COLORCOLOR_BROWN#天藏大陆出现了#COLORCOLOR_SKYBLUE#[50位]#COLORCOLOR_YELLOW#[42级]#COLORCOLOR_BROWN#的勇士！\n \n天魔石窟的封印被解除！\n \n#COLORCOLOR_RED#通往天魔石窟的传送阵开启了！！！\n通往天魔石窟的传送阵开启了！！！\n通往天魔石窟的传送阵开启了！！！#COLOREND#"

        lualib:SysMsg_SendTopMsg(3, "天魔石窟的封印被50位勇士合力解除，通往天魔石窟的传送出现在东临城西北方！", "")
        lualib:SysMsg_SendBroadcastColor("天魔石窟的封印被50位勇士合力解除，通往天魔石窟的传送出现在东临城西北方！", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("天魔石窟的封印被50位勇士合力解除，通往天魔石窟的传送出现在东临城西北方！", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("天魔石窟的封印被50位勇士合力解除，通往天魔石窟的传送出现在东临城西北方！", "", 7, 11)
    end
	lualib:NPCTalkDetail(player, msg, 265, 300)
	return ""
		]]--
end

--海角秘境开启
function hjmj_kaiqi(player)
		--[[
	local player_name = lualib:Name(player)
    local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
        local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[海角秘境开启]#COLOREND#\n"
        msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
		msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#]\n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"	
    if haidi_Open < 20 then
		msg = msg .. "#COLORCOLOR_BROWN#天藏大陆上出现了#COLORCOLOR_SKYBLUE#["..haidi_Open.."]#COLOREND##COLORCOLOR_BROWN#位#COLORCOLOR_YELLOW#[47级]#COLOREND##COLORCOLOR_BROWN#的勇士\n \n#COLORCOLOR_BROWN#当达到47级的勇士达到20名时\n \n  #COLORCOLOR_RED#————[海角秘境将解除封印]！#COLOREND#"
    else
		msg = msg .. "#COLORCOLOR_BROWN#天藏大陆出现了#COLORCOLOR_SKYBLUE#[20位]#COLORCOLOR_YELLOW#[47级]#COLORCOLOR_BROWN#的勇士！\n \n海角秘境的封印被解除！\n \n#COLORCOLOR_RED#通往海角秘境的传送阵开启了！！！\n通往海角秘境的传送阵开启了！！！\n通往海角秘境的传送阵开启了！！！#COLOREND#"
        lualib:SysMsg_SendTopMsg(3, "海角秘境的封印被20位勇士解除，玩家可通过东临城NPC：海角引路人传送进入海角秘境！", "")
        lualib:SysMsg_SendBroadcastColor("海角秘境的封印被20位勇士解除，玩家可通过东临城NPC：海角引路人传送进入海角秘境！", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("海角秘境的封印被20位勇士解除，玩家可通过东临城NPC：海角引路人传送进入海角秘境！", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("海角秘境的封印被20位勇士解除，玩家可通过东临城NPC：海角引路人传送进入海角秘境！", "", 7, 11)
    end
	lualib:NPCTalkDetail(player, msg, 265, 300)
	return ""
		]]--
end

--镇魔城开启
function zmc_kaiqi(player)
		--[[
	local player_name = lualib:Name(player)
    local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
    local msg = "#OFFSET<X:80,Y:-0>##COLORCOLOR_BROWN#[镇魔城开启]#COLOREND#\n"
        msg = msg .. "#OFFSET<X:-20,Y:-20>##IMAGE<ID:1989905002>#\n"
		msg = msg .."#OFFSET<X:70,Y:-25>##COLORCOLOR_RED#→→爱瑶\n \n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:-10>##COLORCOLOR_YELLOW#嗨~亲爱的[#COLORCOLOR_GREENG#"..player_name.."#COLOREND##COLORCOLOR_YELLOW#]\n#COLOREND#"
		msg = msg .."#OFFSET<X:5,Y:0>##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━#COLOREND#\n"	
    if zhenmocheng_Open < 5 then
		msg = msg .. "#COLORCOLOR_BROWN#天藏大陆上出现了#COLORCOLOR_SKYBLUE#["..zhenmocheng_Open.."]#COLOREND##COLORCOLOR_BROWN#位#COLORCOLOR_YELLOW#[52级]#COLOREND##COLORCOLOR_BROWN#的勇士\n \n#COLORCOLOR_BROWN#当达到52级的勇士达到5名时\n \n  #COLORCOLOR_RED#————[镇魔城将解除封印]！#COLOREND#"
    else
		msg = msg .. "#COLORCOLOR_BROWN#天藏大陆出现了#COLORCOLOR_SKYBLUE#[5位]#COLORCOLOR_YELLOW#[52级]#COLORCOLOR_BROWN#的勇士！\n \n镇魔城的封印被解除！\n \n#COLORCOLOR_RED#通往镇魔城的传送阵开启了！！！\n通往镇魔城的传送阵开启了！！！\n通往镇魔城的传送阵开启了！！！#COLOREND#"
        lualib:SysMsg_SendTopMsg(3, "镇魔城的封印被5位勇士解除，通往镇魔城的传送出现在东临城西部！", "")
        lualib:SysMsg_SendBroadcastColor("镇魔城的封印被5位勇士解除，通往镇魔城的传送出现在东临城西部！", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("镇魔城的封印被5位勇士解除，通往镇魔城的传送出现在东临城西部！", "", 7, 11)
        lualib:SysMsg_SendBroadcastColor("镇魔城的封印被5位勇士解除，通往镇魔城的传送出现在东临城西部！", "", 7, 11)
    end
	lualib:NPCTalkDetail(player, msg, 265, 300)
	return ""
		]]--
end


--渡劫传送
function dujie_cs(player)
	local msg = ""
	local gold = 1500
	if not lualib:Player_IsGoldEnough(player, gold, false) then
		msg = msg.."当前传送需要1500金币，你金币不足，可通过东临城NPC[渡劫][318.300]进入！"
	lualib:NPCTalkDetail(player, msg, 265, 300)
    return msg
    end
	
	if not lualib:Player_SubGold(player, gold, false, "传送", player) then
	msg = msg.."扣除金币失败，可通过龙城NPC[渡劫][250.254]进入！"
	lualib:NPCTalkDetail(player, msg, 265, 300)
    return msg
    end
	
	lualib:Player_MapMoveXY(player, "龙城", 250, 254, 5)
	return ""
end