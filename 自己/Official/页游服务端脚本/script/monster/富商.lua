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
		["千金小姐1"] = {"今天妈妈又安排了个男人来跟我相亲了……", "爱情真的存在吗？为何我现在还没遇到一个让我心动的男人？", "是你吗？那个可以骑着神级坐骑来迎娶我的男人！"},
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
local monsterName = ""



	 --猜对乞丐数字奖励
local jl ={"精炼大礼包", "祝福大礼包", "鉴定大礼包", "超值大礼包", "豪华大礼包", "至尊大礼包"}






function main(monster, player)
	local talkX, talkY = 690, 400
	lualib:SysMsg_SendRoleTalk(monster, "想投资吗？那你可是找对人了！")
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#富商#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#COLORCOLOR_GREENG#投资手册1：只要往我这里投资任意装备，便能获得不错的红利回报！\n \n#COLORCOLOR_YELLOW#投资手册2：每次投资都会分你一部分基础红利！\n \n#COLORCOLOR_RED#投资手册3：每次投资都有机会获得至少#COLORCOLOR_YELLOW#4000000#COLORCOLOR_RED#金币的超级红利！\n \n#COLORCOLOR_SKYBLUE#投资手册4：投入的装备越好，获得超级红利的机会越大！\n \n#COLORCOLOR_WHITE#投资手册5：越舍得投入，才会有越大的回报，不是吗？#COLOREND#\n \n"
	msg = msg .. "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#投资#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700037#<@touzi#"..player.. "*01* [我要投资]>\n"
	
	--首页竖线
	local chang = 32
	while chang < 350 do
		msg = msg.. "#POS<X:400,Y:".. chang ..">##IMAGE1902700048#"
		chang = chang + 32
	end
	
	--获取data目录文件信息并处理
	local txt = {}
	if lualib:IO_FileExists("touzi.txt") == true then
		for i = 1, 10 do
			local txtStr = tostring(lualib:IO_TextFileGetLine("touzi.txt", i))
			if txtStr == "填充" then
				break
			end
			txt[i] = txtStr
		end
	end
	
	--显示中奖者列表
	local txt_y = 0
	for i = 1, #txt do
		local str_n1 = string.sub(txt[i], 1, 37)
		local str_n2 = string.sub(txt[i], 38, 70)
		msg = msg.. "#POS<X:410,Y:".. 40 + txt_y ..">#"..str_n1..""
		msg = msg.. "#POS<X:410,Y:".. 55 + txt_y ..">#"..str_n2..""
		txt_y = txt_y + 40
	end
	
	
	lualib:NPCTalkDetail(player, msg, talkX, talkY)
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


function touzi(monster, player, equip1, equip2, equip3, equip4, equip5)
	local talkX, talkY = 690, 400
	local msg = "#POS<X:".. talkX / 2 - 68 ..",Y:-10>##IMAGE1904600048#"
	
	msg = msg..image(monster, player, equip1, equip2, equip3, equip4, equip5)
	lualib:NPCTalkDetail(player, msg, talkX, talkY)
	return ""
end

function image(monster, player, equip1, equip2, equip3, equip4, equip5)

	local chang = 32
	local msg = ""
	msg = msg.."#POS<X:25,Y:60>#请放入要投资的装备"
	
	local index = 80
	for i = 1, 5 do
		msg = msg.."#POS<X:"..index..",Y:120>##IMAGE1902900006#"
		index = index + 50
	end
	
	while chang < 350 do
		msg = msg.. "#POS<X:400,Y:".. chang ..">##IMAGE1902700048#"
		chang = chang + 32
	end
	
	--装备显示
	msg = msg.."#POS<X:".. 525 ..",Y:10>#装备"
	
	local num = 0
	local numx = 42
	local numy = 60
	
	
	
	local s = ""
	local guid_t = {}
	guid_t[1] = equip1
	guid_t[2] = equip2
	guid_t[3] = equip3
	guid_t[4] = equip4
	guid_t[5] = equip5
	
	for i = 1, #guid_t do
		if guid_t[i] ~= "" and guid_t[i] ~= nil then
			s = s.."#"..guid_t[i]
		end
	end
	
	
	local itemNum = 0
	for i = 22, 221 do
		local bagItemGuid = lualib:Player_GetItemGuid(player, i)

		if bagItemGuid ~= "" and bagItemGuid ~= nil then
			local itemName = lualib:Name(bagItemGuid)
			local itemKeyName = lualib:KeyName(bagItemGuid)
			local itemType = lualib:Item_GetType(player, bagItemGuid)
			local itemSubType = lualib:Item_GetSubType(player, bagItemGuid)
			if itemType == 1 and lualib:Item_IsBind(player, bagItemGuid) == false then
				itemNum = itemNum + 1
				local itemData = lualib:Item_DataRow(itemKeyName)
				local Icon = itemData["Icon"]
				msg = msg.."#POS<X:".. 431 + numx * num ..",Y:".. numy + 4 ..">##IMAGE1902900006#"
				msg = msg.."#POS<X:".. 435 + numx * num ..",Y:".. numy ..">##IMAGE".. Icon .."#"
				
				if bagItemGuid == equip1 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#选中"
					msg = msg.."#POS<X:85,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip2 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#选中"
					msg = msg.."#POS<X:135,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip3 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#选中"
					msg = msg.."#POS<X:185,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip4 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#选中"
					msg = msg.."#POS<X:235,Y:115>##IMAGE".. Icon .."#"
				elseif bagItemGuid == equip5 then
					msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 19 + numy ..">#选中"
					msg = msg.."#POS<X:285,Y:115>##IMAGE".. Icon .."#"
				else
					if equip1 ~= nil and equip2 ~= nil and equip3 ~= nil and equip4 ~= nil and equip5 ~= nil then
					
					else
						msg = msg.."#POS<X:".. 440 + numx * num ..",Y:".. 18 + numy ..">#<@touzi#"..player..s.."#"..bagItemGuid.." *01*放入>"
					end
				end	
				num = num + 1
				if num >= 5 then
					num = 0
					numy = 60 + numy
				end
				
				if itemNum == 25 then
					break
				end
				
			end
		end
	end
	
	
	--描述显示
	local imageIconId = {
							{"1902700044", 60, 423},
							{"1902700045", 327, 423},
							{"1902700047", 60, 525},
							{"1902700046", 327, 525},
						}
	local imageIconIdTow = {
							{"1902700051", 71, 416, 1},
							{"1902700050", 70, 525, 1},
							{"1902700048", 60, 455, 2},
							{"1902700049", 334, 455, 2},
						}

	for j = 1, #imageIconId do
		msg = msg.."#POS<X:".. imageIconId[j][2] ..",Y:".. imageIconId[j][3] - 280 ..">##IMAGE"..imageIconId[j][1].."#"
	end

	local numEx2 = 0
	for i =1, #imageIconIdTow do
			local numx2 = 0
			local numy2 = 0
			
			local a = 0
			local b = 0
			if imageIconIdTow[i][4] == 1 then
				a = 230
				b = 0
			elseif imageIconIdTow[i][4] == 2 then
				a = 0
				b = 65
			end
			while a > numx2 or b > numy2 do
				msg = msg.."#POS<X:".. numEx2 + imageIconIdTow[i][2] + numx2 ..",Y:".. imageIconIdTow[i][3] + numy2 - 280 ..">##IMAGE"..imageIconIdTow[i][1].."#"
				if imageIconIdTow[i][4] == 1 then
					numx2 = numx2 + 32 
				else
					numy2 = numy2 + 32
				end
			end
		end
		
		local info = {
						"#COLORCOLOR_YELLOW#1：每次投资都会分你一部分基础红利#COLOREND#",
						"#COLORCOLOR_SKYBLUE#2：投入装备越好，获得超级红利的机会越大#COLOREND#",
						"#COLORCOLOR_RED#3：超级红利至少：#COLOREND##COLORCOLOR_YELLOW#4000000#COLOREND##COLORCOLOR_RED#到#COLOREND##COLORCOLOR_YELLOW#上千万#COLOREND#",
						"#COLORCOLOR_WHITE#4.我这里投资，只收装备！祝君好运^_^#COLOREND#"
					}
		local infoNum = 0
		for i = 1, #info do
			msg = msg.."#POS<X:73,Y:".. 154 + infoNum ..">##OFFSET<X:0,Y:20>#"..info[i]..""
			infoNum = infoNum + 15
		end
	local MaxSellPrice = 0
	for i = 1, #guid_t do
		if guid_t[i] ~= nil and guid_t[i] ~= "" then
			local itemName = lualib:KeyName(guid_t[i])
			local itemData = lualib:Item_DataRow(itemName)
			local SellPrice = tonumber(itemData["SellPrice"]) * 0.4
			MaxSellPrice = MaxSellPrice + SellPrice
		end
	end
	
	
	msg = msg.."#POS<X:80,Y:270>#获得回报：".."#POS<X:150,Y:277>##IMAGE1904400012#".."#POS<X:190,Y:269>#"..MaxSellPrice..""
	msg = msg.."#POS<X:175,Y:322>##IMAGE1904300004#".."#POS<X:188,Y:310>#<@touziEx#"..player..s.." *01*我要投资>"
	msg = msg.."#POS<X:305,Y:322>##IMAGE1904300004#".."#POS<X:320,Y:310>#<@touzi#"..player.." *01*重置面板>"
	return msg
end

function touziEx(monster, player, equip1, equip2, equip3, equip4, equip5)
	local guid_t = {}
	guid_t[1] = equip1
	guid_t[2] = equip2
	guid_t[3] = equip3
	guid_t[4] = equip4
	guid_t[5] = equip5
	
	local reqItem = false
	local MaxSellPrice = 0
	for i = 1, #guid_t do
		if guid_t[i] ~= nil and guid_t[i] ~= "" then
			if lualib:Item_GetSite(player, guid_t[i]) < 22 or lualib:Item_GetSite(player, guid_t[i]) > 221 then
				lualib:SysMsg_SendBottomColor(player, "您放入的装备有所变动，请重新放入！", 7, 2)
				return touzi(monster, player)
			end
			
			if lualib:Item_IsBind(player, guid_t[i]) == true then
				lualib:SysMsg_SendBottomColor(player, "您放入的装备有绑定装备，请重新放入！", 7, 2)
			end
			
			local itemName = lualib:KeyName(guid_t[i])
			local itemData = lualib:Item_DataRow(itemName)
			local SellPrice = tonumber(itemData["SellPrice"]) * 0.4
			MaxSellPrice = MaxSellPrice + SellPrice
			reqItem = true
		end
	end
	
	if reqItem == false then
		lualib:SysMsg_SendBottomColor(player, "请放入装备！", 7, 2)
		return touzi(monster, player)
	end
	
	
	for i = 1, #guid_t do
		if guid_t[i] ~= nil and guid_t[i] ~= "" then
			if not lualib:Item_Destroy(player, guid_t[i], "富人投资", player) then
				lualib:SysMsg_SendBottomColor(player, "扣除道具失败", 7, 2)
				return
			end
		end
	end
	
	local s1 = ""
	local playerName = lualib:Name(player)
	local goldNum = lualib:IO_GetCustomVarInt("fushang_touzi")
	--print(goldNum)
	if tonumber(goldNum) + MaxSellPrice > 10000000 then
		local fanhuan = math.random(4,9) * 1000000
		lualib:Player_AddGold(player, fanhuan, false, "富人投资", player)
		lualib:IO_SetCustomVarInt("fushang_touzi", tonumber(goldNum) - fanhuan)
		s1 = "富商：玩家["..playerName.."]".."在我这里投资，获得了"..fanhuan.."金币的丰厚回报，恭喜，恭喜啊！"
		lualib:SysMsg_SendCenterMsg(1, s1, "")
		lualib:SysMsg_SendBroadcastColor(s1, "", 1, 12)
		
		
		--文件
		if lualib:IO_FileExists("touzi.txt") == false then
			lualib:IO_CreateTextFile("touzi.txt", false)
			for i = 1, 10 do
				lualib:IO_TextFileInsertLine("touzi.txt", i, "填充")
			end
		end
		local times = lualib:Time2Str("%Y-%m-%d %H:%M:%S", lualib:GetAllTime())

		local name_start, name_end = string.find(playerName, playerName)
		if name_end % 2 > 0 then
			playerName = playerName.." "
		end
		local s2 = "玩家["..playerName.."]在"..times.."获得了"..fanhuan.."金币的投资回报！"
		lualib:IO_TextFileInsertLine("touzi.txt", 1, s2)
	else
		s1 = "这个是你的投资回报，请笑纳！"
		lualib:SysMsg_SendTriggerMsg(player, s1)
		lualib:Player_AddGold(player, MaxSellPrice, false, "富人投资", player)
		lualib:IO_SetCustomVarInt("fushang_touzi", tonumber(goldNum) + MaxSellPrice)
	end
	
	
	return touzi(monster, player)
end
