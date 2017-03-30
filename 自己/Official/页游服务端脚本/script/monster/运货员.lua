local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/logic_def_lua")

--巫山城
local npc_keyname =
{
	["wsc_keyname"] = {"乞丐1", "乞丐2", "挑水夫1", "挑水夫2", "学者1", "学者2", "小贩1", "小贩2", "捕快1", "捕快2", "富商1", "千金小姐1"},
	["lc_keyname"] = {"挑水夫3", "挑水夫4", "乞丐3", "小贩3", "小贩4", "运货员1"},
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
		["运货员1"] = {216, 259, 195, 238, 173, 216, 195, 238, 216, 259, 234, 277},
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
		["运货员1"] = {"我是一个老运货员~木工本领强~我要把那新房子~做得很漂亮~", "龙城所有建筑都是我做的，不信？你去打听打听！", "龙城附近都快没什么树木了，这以后做木工活可麻烦了！"},
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
	lualib:SysMsg_SendRoleTalk(monster, "城南到城北，我都能轻松运货，因为哥有轻功！")
	local msg = "#COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#运货员#COLOREND##COLORCOLOR_BROWN#━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "常年运货，身上东西太重，没点轻功可不行！只要你的#COLORCOLOR_GREENG#包裹前10格#COLOREND#放入任意#COLORCOLOR_RED#装备#COLOREND#，给我，我就给你一些#COLORCOLOR_YELLOW#能让你身轻如燕的东西!#COLOREND#想飞吗？亲~\n"
	msg = msg .. "#OFFSET<X:0,Y:10>##IMAGE1902700037#<@fei#"..player.. "#*01* [想飞的，亲]>\n"
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


function fei(monster, player)
	local msg = ""
	local item_site1 = lualib:Player_GetItemGuid(player, 22)
	local item_site2 = lualib:Player_GetItemGuid(player,23)
	local item_site3 = lualib:Player_GetItemGuid(player,24)
	local item_site4 = lualib:Player_GetItemGuid(player,25)
	local item_site5 = lualib:Player_GetItemGuid(player,26)
	local item_site6 = lualib:Player_GetItemGuid(player,27)
	local item_site7 = lualib:Player_GetItemGuid(player,28)
	local item_site8 = lualib:Player_GetItemGuid(player,29)
	local item_site9 = lualib:Player_GetItemGuid(player,30)
	local item_site10 = lualib:Player_GetItemGuid(player,31)
	
	local zb_keyname1 = lualib:KeyName(item_site1)
	local zb_keyname2 = lualib:KeyName(item_site2)
	local zb_keyname3 = lualib:KeyName(item_site3)
	local zb_keyname4 = lualib:KeyName(item_site4)
	local zb_keyname5 = lualib:KeyName(item_site5)
	local zb_keyname6 = lualib:KeyName(item_site6)
	local zb_keyname7 = lualib:KeyName(item_site7)
	local zb_keyname8 = lualib:KeyName(item_site8)
	local zb_keyname9 = lualib:KeyName(item_site9)
	local zb_keyname10 = lualib:KeyName(item_site10)
	
	local zb_name1 = lualib:Name(item_site1)
	local zb_name2 = lualib:Name(item_site2)
	local zb_name3 = lualib:Name(item_site3)
	local zb_name4 = lualib:Name(item_site4)
	local zb_name5 = lualib:Name(item_site5)
	local zb_name6 = lualib:Name(item_site6)
	local zb_name7 = lualib:Name(item_site7)
	local zb_name8 = lualib:Name(item_site8)
	local zb_name9 = lualib:Name(item_site9)
	local zb_name10 = lualib:Name(item_site10)

	
	local item_site = {item_site1, item_site2, item_site3, item_site4, item_site5, item_site6, item_site7, item_site8, item_site9, item_site10}
	
	for i = 1, #item_site do
		local item_type = lualib:Item_GetType(player,item_site[i])	
		local item_subtype = lualib:Item_GetSubType(player, item_site[i])
		if item_type ~= 1 then
			lualib:MsgBox(player, "你的包裹前10格有物品不是装备，休想糊弄我！")
			
		end
		
		if item_subtype == 5 then
			lualib:MsgBox(player, "你的包裹前10格有物品不是装备，休想糊弄我！")
			
		end
		
	end
	
	lualib:SysMsg_SendMsgDlg(player, 1, "#COLORCOLOR_WHITE#你确定要用如下物品变轻吗？#COLOREND#\n[#COLORCOLOR_GREENG#"..zb_name1.."#COLOREND#][#COLORCOLOR_YELLOW#"..zb_name2.."#COLOREND#][#COLORCOLOR_RED#"..zb_name3.."#COLOREND#][#COLORCOLOR_SKYBLUE#"..zb_name4.."#COLOREND#][#COLORCOLOR_GREENG#"..zb_name5.."#COLOREND#][#COLORCOLOR_YELLOW#"..zb_name6.."#COLOREND#][#COLORCOLOR_RED#"..zb_name7.."#COLOREND#][#COLORCOLOR_SKYBLUE#"..zb_name8.."#COLOREND#][#COLORCOLOR_GREENG#"..zb_name9.."#COLOREND#][#COLORCOLOR_YELLOW#"..zb_name10.."#COLOREND#]#BUTTON0#确定#BUTTONEND#", 100, "on_msg_dlg_ack", "")
	
	
	lualib:SetPanelSize(monster, 500, 300)
	return msg
end

function on_msg_dlg_ack(dlg_id, player, button_id, param)
	if button_id ~= 0 then return end

	local item_site1 = lualib:Player_GetItemGuid(player, 22)
	local item_site2 = lualib:Player_GetItemGuid(player,23)
	local item_site3 = lualib:Player_GetItemGuid(player,24)
	local item_site4 = lualib:Player_GetItemGuid(player,25)
	local item_site5 = lualib:Player_GetItemGuid(player,26)
	local item_site6 = lualib:Player_GetItemGuid(player,27)
	local item_site7 = lualib:Player_GetItemGuid(player,28)
	local item_site8 = lualib:Player_GetItemGuid(player,29)
	local item_site9 = lualib:Player_GetItemGuid(player,30)
	local item_site10 = lualib:Player_GetItemGuid(player,31)
	
	local zb_keyname1 = lualib:KeyName(item_site1)
	local zb_keyname2 = lualib:KeyName(item_site2)
	local zb_keyname3 = lualib:KeyName(item_site3)
	local zb_keyname4 = lualib:KeyName(item_site4)
	local zb_keyname5 = lualib:KeyName(item_site5)
	local zb_keyname6 = lualib:KeyName(item_site6)
	local zb_keyname7 = lualib:KeyName(item_site7)
	local zb_keyname8 = lualib:KeyName(item_site8)
	local zb_keyname9 = lualib:KeyName(item_site9)
	local zb_keyname10 = lualib:KeyName(item_site10)
	
	local zb_name1 = lualib:Name(item_site1)
	local zb_name2 = lualib:Name(item_site2)
	local zb_name3 = lualib:Name(item_site3)
	local zb_name4 = lualib:Name(item_site4)
	local zb_name5 = lualib:Name(item_site5)
	local zb_name6 = lualib:Name(item_site6)
	local zb_name7 = lualib:Name(item_site7)
	local zb_name8 = lualib:Name(item_site8)
	local zb_name9 = lualib:Name(item_site9)
	local zb_name10 = lualib:Name(item_site10)
	
	local table1 = lualib:Item_DataRow(zb_keyname1)
	local SellPrice1 = table1["SellPrice"]
	
	local table2 = lualib:Item_DataRow(zb_keyname2)
	local SellPrice2 = table2["SellPrice"]
	
	local table3 = lualib:Item_DataRow(zb_keyname3)
	local SellPrice3 = table3["SellPrice"]
	
	local table4 = lualib:Item_DataRow(zb_keyname4)
	local SellPrice4 = table4["SellPrice"]
	
	local table5 = lualib:Item_DataRow(zb_keyname5)
	local SellPrice5 = table5["SellPrice"]
	
	local table6 = lualib:Item_DataRow(zb_keyname6)
	local SellPrice6 = table6["SellPrice"]
	
	local table7 = lualib:Item_DataRow(zb_keyname7)
	local SellPrice7 = table7["SellPrice"]
	
	local table8 = lualib:Item_DataRow(zb_keyname8)
	local SellPrice8 = table8["SellPrice"]
	
	local table9 = lualib:Item_DataRow(zb_keyname9)
	local SellPrice9 = table9["SellPrice"]
	
	local table10 = lualib:Item_DataRow(zb_keyname10)
	local SellPrice10 = table10["SellPrice"]
	
	local sum = SellPrice1 + SellPrice2 + SellPrice3 + SellPrice4 + SellPrice5 + SellPrice6 + SellPrice7 + SellPrice8 + SellPrice9 + SellPrice10
	
	local yd_9 = {"东临城传送石", "巫山城传送石(小)", "随机传送(10次)", "龙城传送石", "巫山城传送石", "超负重神石(1级)", "超负重神石(2级)", "超负重神石(3级)"}

	
	local item_site = {item_site1, item_site2, item_site3, item_site4, item_site5, item_site6, item_site7, item_site8, item_site9, item_site10}
	local item_keyname = {zb_keyname1, zb_keyname2, zb_keyname3, zb_keyname4, zb_keyname5, zb_keyname6, zb_keyname7, zb_keyname8, zb_keyname9, zb_keyname10}
	
	
	for i = 1, #item_site do
		local item_type = lualib:Item_GetType(player,item_site[i])	
		local item_subtype = lualib:Item_GetSubType(player, item_site[i])
		if item_type ~= 1   then
			lualib:MsgBox(player, "你的包裹前10格有物品不是装备，休想糊弄我！")
		end
		
		if item_subtype == 5 then
			lualib:MsgBox(player, "你的包裹前10格有物品不是装备，休想糊弄我！")
		end
		
	end
	
	
	if sum < 30000 then
		lualib:MsgBox(player, "你给我的物品价值也太低了吧！")
		return
	end
	
	for i = 1, #item_keyname do
		if not lualib:DelItem(player, item_keyname[i], 1, 2, "运货员变轻扣除装备", player) then
			lualib:MsgBox(player, "很遗憾，变轻失败！")
		end
	end

		

	if not lualib:AddItem(player, yd_9[lualib:GenRandom(1, #yd_9)], 1, false, "运货员变轻", player) then
		lualib:MsgBox(player, "很遗憾，变轻失败！")
	end
	lualib:SysMsg_SendCenterMsg(1, "["..lualib:Name(player).."]→→在[运货员]处用垃圾装备换取了一个变轻的东东！", "")
	lualib:MsgBox(player, "变轻成功！请查看包裹！")

	
end

