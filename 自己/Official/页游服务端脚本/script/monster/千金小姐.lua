local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--巫山城
local npc_keyname =
{
	["wsc_keyname"] = {"乞丐1", "乞丐2", "挑水夫1", "挑水夫2", "学者1", "学者2", "小贩1", "小贩2", "捕快1", "捕快2", "富商1", "千金小姐1"},
	["lc_keyname"] = {"挑水夫3", "挑水夫4", "乞丐3", "小贩3", "小贩4", "木匠1"},
	["dlc_keyname"] = {"运货员1", "运货员2", "郎中1", "郎中2", "小贩5", "运货员3", "运货员4", "伐木工人1"},
}


local lj =
{
	["wsc_keyname"] =
	{
		["乞丐1"] = {192, 258, 153, 297, 199, 343, 239, 303, 205, 271},
		["乞丐2"] = {209, 366, 226, 382, 247, 361, 260, 374, 277, 347, 252, 323},
		["挑水夫1"] = {178, 243, 239, 301, 274, 266, 305, 297, 267, 335, 237, 301, 206, 270, 240, 234, 214, 207},
		["挑水夫2"] = {290, 259, 267, 336, 251, 324, 211, 367, 226, 382, 247, 361, 261, 375, 283, 353, 267, 337, 305, 299, 328, 321},
		["学者1"] = {253, 322, 237, 306, 273, 265, 305, 297, 268, 337},
		["学者2"] = {241, 233, 215, 208, 180, 242, 207, 269, 237, 300, 274, 265},
		["小贩1"] = {220, 320, 254, 286, 278, 261, 327, 213, 278, 261, 220, 320, 180, 360},
		["小贩2"] = {205, 269, 237, 306, 268, 337, 291, 357, 268, 337, 237, 306, 205, 269, 176, 240},
		["捕快1"] = {305, 235, 278, 262, 247, 293, 223, 317, 195, 345, 223, 317, 247, 293, 278, 262, 305, 235, 327, 213},
		["捕快2"] = {267, 337, 248, 318, 224, 289, 202, 269, 186, 253, 202, 269, 224, 289, 248, 318, 267, 337, 291, 361},
		["富商1"] = {177, 323, 197, 343, 218, 322, 249, 291, 273, 267, 240 , 234, 210, 264, 205, 269, 194, 258, 153, 299},
		["千金小姐1"] = {225, 383, 209, 367, 228, 348, 253, 323, 267, 337, 294, 310, 306, 298, 329, 321, 311, 339, 291, 359, 269, 337, 253, 321, 208, 366, 240, 398},
	},

	["lc_keyname"] =
	{
		["挑水夫3"] = {209, 183, 178, 214, 202, 238, 235, 209, 212, 183, 209, 158},
		["挑水夫4"] = {272, 234, 247, 214, 238, 199, 217, 223, 229, 243, 253, 251},
		["乞丐3"] = {221, 191, 201, 185 ,182, 204 ,182, 223 ,199, 238 ,210, 254 ,233, 275 ,254, 257 ,271, 234 , 247, 214},
		["小贩3"] = {188, 231, 197, 240, 221, 216, 228 ,200, 209 ,181, 184 ,207, 166 ,209},
		["小贩4"] = {258, 249, 238, 274, 226, 272, 219 ,260, 230 ,242, 250 ,240, 271 ,236},
		["木匠1"] = {216, 259, 195, 238, 173, 216, 195, 238, 216, 259, 234, 277},
	},

	["dlc_keyname"] =
	{
		["运货员1"] = {306 ,296, 311 ,311, 325 ,314, 334 ,324, 354 ,341, 369 ,321 ,350 ,299 ,328 ,281 ,302 ,278},
		["运货员2"] = {343 ,336, 328 ,321, 308 ,300 ,305 ,279, 324 ,279, 347 ,290 ,350 ,303 ,371 ,323 ,361 ,333},
		["郎中1"] = {313 ,270, 297 ,281, 308 ,293, 304 ,310, 325 ,279},
		["郎中2"] = {350 ,310, 338 ,311, 337 ,330, 357 ,340, 365 ,316, 351 ,301, 351 ,284},
		["小贩5"] = {330 ,320, 342 ,297, 328 ,281, 307 ,280, 307 ,306, 327 ,317, 317 ,330, 317 ,329},
		["运货员3"] = {410, 375, 389, 354, 410, 375, 428, 393},
		["运货员4"] = {406, 373, 427, 394, 406, 373, 387, 354},
		["伐木工人1"] = {306, 298, 323, 281, 340, 286, 332, 318, 318, 332, 311, 319},
	}
}

local str =
{
	["wsc_keyname"] =
	{
		["乞丐1"] = {"自从天魔来袭，这世道已经没法混了！", "这位白富美，打发点吧……", "不要看我沦落到这地步，可我还是有一颗高富帅的心！"},
		["乞丐2"] = {"从小流浪惯了，各种行业都做过，现在尝试做乞丐，呵呵", "我在乞丐中可是出了名的，你知道我为什么在乞丐行业里这么火吗？", "因为我只管向别的乞丐乞讨，哈哈！"},
		["挑水夫1"] = {"我这人就是很水，但是水里从不加黑料", "哎哟，伊尔哟~", "还好有高人守住了巫山城，才给了我们一个安定的生活环境！"},
		["挑水夫2"] = {"我这里每一滴水都是来自大自然", "我不是生产者，我只是大自然的搬运工！", "不是每一滴水都叫巫山水！"},
		["学者1"] = {"窈窕淑女，君子好逑啊，哈哈！", "君不见新手村内美人洗澡，日思夜想魂去不复返……", "你猜猜看，我是研究什么的学者？"},
		["学者2"] = {"我生从何来？死往何处？", "现在的你，还是曾经的你吗？", "宇宙终将走向尽头，还是会无限扩张？"},
		["小贩1"] = {"生意越来越不好做了，城管天天都来！", "赋税猛于虎也~", "像我们这种民营企业不好做啊！有钱就点商城充点吧，好人一生平安！"},
		["小贩2"] = {"龙城近日对巫山城加大了关税，出口好难呀！", "相信我，我这里不卖转基因！", "地沟油？没听过，那可是畜牲才能做的事啊！"},
		["捕快1"] = {"卖瓜的注意点！别逼大爷我抓你，告诉你，我以前可是城管！", "对不起，我是捕快！", "出来混迟早是要还的！"},
		["捕快2"] = {"一直以来，我都认为只能是事情改变人，人改变不了事情，但是神途的玩家们改变了一些事情！", "未来掌握在自己手里，所以路怎么走，你们自己选！", "如果一个人在做一件事情的时候很不专心的看着另外一个人，他就是捕快！"},
		["富商1"] = {"这块地不好拿呀，看来得找相关官员走点后门……", "今年把巫山城的房价全部炒起来，卖给那些傻民！", "调控？搞笑，整个巫山城经济都被我的房地产给绑架了，你认为短期调控有用？"},
		["千金小姐1"] = {"切切情长总是痴……", "人生若只如初见……", "花开堪折直须折……"},
	},

	["lc_keyname"] =
	{
		["挑水夫3"] = {"龙城地理位置不太好，挑个水要跑一座城，悲剧啊！", "更悲剧的是，这水还是不能喝的，各种垃圾全往里面丢，你说说这些人啊……", "曾经龙城中心还是有水的，后来砍伐树木多了，水土流失，你懂吧？"},
		["挑水夫4"] = {"下辈子再也不做挑水工了，你知道为什么吗？", "大老远跑过去挑水，居然有一群人管我要金币，不给还不让挑了！", "我这田呀，我这地哟~再不浇水就要干了……"},
		["乞丐3"] = {"流浪不是我的过，只因年轻犯的错！", "年轻时我也潇洒过……", "如果有一天我悄然离去，请把我埋在幻境里，那里可有好东西呀……"},
		["小贩3"] = {"哦~卖腊肉~卖大米~和红烧肉……", "做生意嘛，总是要赚钱的，我这叫提前消费，欠债嘛，再跟巫山城借好了，然后再逼它升值，我就不用还钱了！", "提前消费有秘诀滴……"},
		["小贩4"] = {"每天起早贪黑，不就为了糊口饭吃嘛！", "可是总有人要跟我赊账，而且还换马甲！", "其实只要花一个大洋，就能活得很滋润了……"},
		["木匠1"] = {"我是一个老木匠~木工本领强~我要把那新房子~做得很漂亮~", "龙城所有建筑都是我做的，不信？你去打听打听！", "龙城附近都快没什么树木了，这以后做木工活可麻烦了！"},
	},

	["dlc_keyname"] =
	{
		["运货员1"] = {"看一看，瞧一瞧呀，走过路过别错过啊！", "全市最低，品质最好！", "在这个年头，还能找到我这样的运货员不多了，谁肯在常年战争的城市里运货啊！"},
		["运货员2"] = {"每天就帮仓库运东西，搬来搬去，搬来搬去……", "一个仓库，不如一个包裹！", "总有一天我要开一个自己的仓库！"},
		["郎中1"] = {"病从口入，张开你的嘴！", "这药可是从十万八千里的高山上采下来的，你自己说，我卖贵一点怎么了？", "黄金有价药无价，懂吗？"},
		["郎中2"] = {"假药卖不得！", "这年头假药的销量比真药还好，真药都卖不出去，我……？", "好了，别说了，爱买不买，反正有病的不是我！"},
		["小贩5"] = {"我爸做官……我经商，你懂的……", "东临城正面临天魔袭击，刚好可以趁机发点战争财，嘿嘿。", "天魔进攻越厉害越好，我的货物就能卖得很好了，哈哈……"},
		["运货员3"] = {"听说天魔要袭击东临城了，我得赶紧给镇守边关的勇士们送货！", "大家一起来押镖啊，为了美好的生活，押呀！！", "押镖后能获得特殊道具，价值上千呢！"},
		["运货员4"] = {"快，快，别挡道！要来不及了，天魔就要来了……", "跟你说件事，别告诉别人哦！其实我以前是杀猪的！", "杀猪的就不能转行押镖送货啊？你搞笑吧！"},
		["伐木工人1"] = {"得赶在下次天魔来袭前，把投石车、城门所需要的木料赶紧砍伐好！", "想要好身材吗？跟我一起来伐木吧，这可是本世纪最佳的健身运动！", "瞧瞧，我的胸肌会动的！，还带节奏感的，你仔细看，别眨眼……"},
	}
}

local timerID     = 1
local elapse      = 10000
local monsterName = "千金小姐"
local npcname = "诗诗"

function main(monster, player)
	local player_name = lualib:Name(player)
	lualib:SysMsg_SendRoleTalk(monster, "梧桐树，三更雨，不道离情正苦。一叶叶，一声声，空阶滴到明！")
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#懂诗#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "多情自古伤离别，自古多情空余恨，长凝星空，独赏孤芳，你能理解我的心情吗？\n \n"
	msg = msg .. "#COLORCOLOR_BROWN#小提示：只要猜中懂诗小姐的心思，就能免费获取懂诗小姐的礼物！#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@duihua#"..player.. "#*01* [理解]>\n \n"
	if player_name == npcname then
		msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_SKYBLUE#慢慢：#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_BROWN#秋风十一运河畔，舟曲涟漪月露明。#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_BROWN#呢喃碎步星夜漫，冬月同生倚相倾。#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_BROWN#愿同心，渡福祸，携白首，不相离！#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_BROWN#                              十郎即兴——待有缘人阅此诗#COLOREND#\n"
		msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
		lualib:AddBuffEx(player, "同心连理", 60, 10)
	elseif player_name == monsterName then
		msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
		msg = msg .. "#COLORCOLOR_SKYBLUE#我的真实身份都被你发现了，高端啊！#COLOREND#\n \n \n \n \n"
		msg = msg.."#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	end
	lualib:NPCTalkDetail(player, msg, 500, 300)
return ""
end

function on_create(monster)

	lualib:AddBuff(monster, "无敌", 0)
	lualib:AddTimer(monster, timerID, elapse, -1, "say")
	local keyname = lualib:KeyName(monster)

	for k, v in pairs(npc_keyname)  do
		for k1, v1 in pairs(v) do
			if keyname == v[k1] then
				lualib:Monster_SetSeeker(monster, lj[k][v1], 1, true)
			end
			end
	end



end

function on_trigger_post_die(actor, killer)

end

function say(monster, timer_id)
	local keyname = lualib:KeyName(monster)
	for k, v in pairs(npc_keyname)  do
		for k1, v1 in pairs(v) do
			if keyname == v[k1] then
				local rnd = lualib:GenRandom(1, #str[k][v1])
				lualib:SysMsg_SendRoleTalk(monster, str[k][v1][rnd])
			end
		end
	end

end


function duihua(monster, player)
	local rd = lualib:GenRandom(1, 4)
	local msg = ""
	if	rd == 1 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@duihua1_a *01*常相伴，雅韵氤然……>\n"
	elseif rd == 2 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@duihua1_b *01*夜惆怅，孤枕难眠……>\n"
	elseif rd == 3 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@duihua1_c *01*倚长天，靠窗思汉……>\n"
	elseif rd == 4 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@duihua1_d#"..player.. "#*01* 雨阑珊，缘自谁来？？>\n"
	end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end


function duihua1_a(monster)
	local rd = lualib:GenRandom(1, 4)
	local msg = ""
	if	rd == 1 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*你愿意陪我吗？可是我不愿意！>\n"
	elseif rd == 2 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*可能你不是我想要的那人！>\n"
	elseif rd == 3 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*我其实，只是一时寂寞而已，别多想！>\n"
	elseif rd == 4 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*快看，天上有只猪在飞……>\n"
	end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function duihua1_b(monster)
	local rd = lualib:GenRandom(1, 4)
	local msg = ""
	if	rd == 1 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*入夜了，洗洗睡吧！>\n"
	elseif rd == 2 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*我怕黑，只是想要一个物体抱着睡而已！>\n"
	elseif rd == 3 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*今夜的歌声，又让谁失眠了？>\n"
	elseif rd == 4 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*半夜三更的，别吓人好不好！>\n"
	end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function duihua1_c(monster)
	local rd = lualib:GenRandom(1, 4)
	local msg = ""
	if	rd == 1 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*饭可乱吃，话不可乱说！>\n"
	elseif rd == 2 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*靠窗嘛，看看风景又有何妨？>\n"
	elseif rd == 3 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*讨厌，谁思汉啦？人家才没有呢！>\n"
	elseif rd == 4 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*你太邪恶了，走开！>\n"
	end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function duihua1_d(monster, player)
	local rd = lualib:GenRandom(1, 10)
	local msg = ""
	if	rd == 1 or rd == 2 or rd == 3 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*或许，只差那么一步了哦！>\n"
	elseif rd == 4 or rd == 5 or rd == 6 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*也许，我们是有缘无分了！>\n"
	elseif rd == 7 or rd == 8 or rd == 9 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@over *01*终于，你止步于此了……>\n"
	elseif rd == 10 then
		msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700017#<@duihua2_d#"..player.."#*01* 懂诗：我就知道是你！>\n"
	end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function duihua2_d(monster, player)
	local dongshi_day = lualib:GetAllDays(0)
	local dongshi_today = lualib:GetInt(player, "dongshi_today")
	local dongshi_bl = lualib:GetInt(player, "dongshi")
	if dongshi_day == dongshi_today  then
		if dongshi_bl >= 1 then
			lualib:SysMsg_SendPromptMsg(player, "你今日已经获取过祝福了!")
		end
		return ""
	end
	lualib:SetInt(player, "dongshi_today", dongshi_day)
	lualib:SetInt(player, "dongshi", 1)
	local player_name = lualib:Name(player)
	local rd = lualib:GenRandom(1, 4)
	local msg = ""
	msg = msg .. "懂诗小姐：我就知道是你！\n \n"
	msg = msg .. "#COLORCOLOR_GREENG#你获得了懂诗小姐的青睐，得到了玫瑰花！#COLOREND#\n"
	lualib:AddTitle(player, 44) --给称号
	lualib:SysMsg_SendCenterMsg(1, "["..player_name.."]→→获取了[懂诗小姐]的青睐，得到了懂诗小姐免费赠送的礼物！", "")
	if not lualib:AddItem(player,"玫瑰花",1,false,"目标任务奖励", player) then --给物品 
		msg = msg .. "你包裹满了或是其它情况，导致懂诗小姐没法正常送你玫瑰花！\n \n"
	end
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function over(monster)
	local msg = ""

	msg = msg .. "你没有得到懂诗小姐的垂青，洗洗睡吧，孩子！\n"
	msg = msg .. "                                                   #OFFSET<X:0,Y:5>##IMAGE1902700034##OFFSET<X:0,Y:-2>#<@guanbi *01*[关闭]>\n"
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function guanbi(monster)
	
	return ""
end