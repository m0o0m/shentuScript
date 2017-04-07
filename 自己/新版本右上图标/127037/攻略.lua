local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/目标系统")


-----------------------图标显示-----------------------------
function gonglue_xianshi(player)	
	--ShowTimeCount2(player, 0, 1906100029, "攻略",0,"") --显示目标图标
	AddSEIcon(player, 1, 0, "攻略", 1906100029, "倒计时", "gonglue", "", "必看攻略~")
	AddIconMagic(player, "攻略", 1094200000, -6, -6, 150)
end

-------------------图标被点击-----------------------
function gonglue(player)
	--ShowTimeCount2(player, 0, 1906100029, "攻略",0,"") --显示目标图标
	local msg = ""

	lualib:NPCTalkDetail(player, xianshi(player), 800, 300)
	return ""
end

function xianshi(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#升级推荐#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【新人推荐】#COLOREND#：幻境七层、祖玛寺庙、牛魔洞、封魔殿轻松升级打基础装备\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【每日除魔】#COLOREND#：降妖除魔使者处领取“每日除魔”，一个任务每天可以完成5次，得大量经验。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【聚灵道人】#COLOREND#：游戏中所有怪物均有几率掉落“聚灵珠”，普通聚灵珠可在聚灵道人处兑换英雄聚灵珠。聚灵珠只爆不卖。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【升级地图】#COLOREND#：地下宫殿、幻境、魔龙地图怪物经验丰富，建议使用装备回收开启双倍经验后前往练级。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【每日押镖】#COLOREND#：每天三次押镖,海量经验随你来拿!更有机会获得聚灵珠!\n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@xianshi *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end




-- 问答
function wenda(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：尸王殿怎么去?          答：老兵传送-)矿区洞口-)矿区A一层-)废矿区东部  坐标150:80 每30分钟会刷出进门尸王!也可打开大地图会有明显标注!也可以老兵-)声望传送直接进入\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：桃源之门怎么去?        答：桃源之门 可以从 老兵传送-)石墓洞口-)一直跑到石墓7层-) 在7层圆圈的位置 每60分钟会刷出进门石墓尸王!就可以进去!\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：桃源之门怎么去?        答: 桃源之门 也可以从 土城左下角-)镇魔守将-)洞察魔兽-)使用1颗金刚石前往困惑殿堂--传进去的地图就是桃源之门.当然前提是要你有1颗金刚石\n"    
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：火龙之心如何补充怒气?  答：火龙之心可以用书页.藏宝图进行怒气补充!也可以商铺直接购买\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：绑定元宝如何使用?      答：屏幕右下角有个商铺.打开后.右边有个绑定元宝栏目可以购买!可以翻页哟!\n" 
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：绑定金币如何使用?      答：在各大城市可以用绑定金币购买药品.或者其他首饰.二手市场的物品都需要非绑定金币购买!!\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#问：地下宫殿二层怎么去?    答：盟重土城-)镇魔守将-)宫殿迷宫-)宫殿长廊-)宫殿大厅-)地下宫殿二层(即天工神剪)!!\n" 		 		
	lualib:SetPanelSize(player, 800, 300)
	return msg
end

-- 赚钱
function zhuanqian(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#金币赚取#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【游戏充值】#COLOREND#：通过游戏平台进行充值获得。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【装备回收】#COLOREND#：通过各个地图打怪获得祖玛、赤月、魔龙等，去庄园装备回收NPC处获得大量金币。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_GREENG#【摆摊交易】#COLOREND#：可在庄园摆摊出售装备、技能、聚灵珠、金刚石、声望等获得金币。\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end






function zhuanyuanbao(player)
	lualib:SysMsg_SendWebMsg(player, "法师宝宝", "http://bbs.zhst.com/thread-42-1-1.html", "")
	return ""
end

--[[-- 赚元宝
function zhuanyuanbao(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#法师宠物#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "以下为对应地图内法师可以诱惑为宠物的怪物\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：钳虫            诱惑等级：24级       出生地图：蜈蚣洞\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：虎卫            诱惑等级：26级       出生地图：虎卫堂\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：牛头魔          诱惑等级：33级       出生地图：牛魔洞\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：天狼蜘蛛        诱惑等级：34级       出生地图：赤月地图\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：黑色恶蛆        诱惑等级：38级       出生地图：蜈蚣洞\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：魔龙血蛙        诱惑等级：43级       出生地图：魔龙地图\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：半兽勇士(300血) 诱惑等级：24级       出生地图：苍月岛/封魔谷\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：巨型多角虫      诱惑等级：11级       出生地图：盟重省30分钟随机刷新10 个300血,未知暗殿50分钟随机刷新20个900血\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#怪物名称：巨型草泥马      诱惑等级：45级       出生地图：未知暗殿30分钟随机刷新15个900血\n"
	msg = msg .. "                                                                                           #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@zhuanyuanbao *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end--]]



function dabao(player)
	lualib:SysMsg_SendWebMsg(player, "地图产出", "http://bbs.zhst.com/thread-406-1-1.html", "")
	return ""
end

--[[-- 打宝
function dabao(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#地图产出#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*高级技能>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【沃玛寺庙】小怪掉落聚灵珠、神羽、灵元珠；BOSS掉落三职业、赤月系列、魔族指令书、火龙凭证、幸运星、鸿运星、封印鉴定符、超级祝福油、沃玛号角。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【祖玛寺庙】小怪掉落掉落聚灵珠、神羽、灵元珠；极品祖玛掉落三职业、祖玛系列幸运星、封印鉴定符；BOSS掉落赤月系列、藏宝图、魔族指令书、火龙凭证、鸿运星、超级祝福油、祖玛头像。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【石墓洞】：小怪掉落聚灵珠、神羽、灵元珠；白野猪掉落、祖玛武器、幸运星、封印鉴定符；石墓尸王掉落火龙凭证、祖玛系列。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【赤月峡谷】小怪掉落聚灵珠、神羽、灵元珠；BOSS掉落、祖玛系列、赤月系列、苍月武器、魔族指令书、火龙凭证、幸运星、封印鉴定符、鸿运星、超级祝福油、魔血系列、虹魔系列、特殊首饰。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【封魔谷】小怪掉落聚灵珠、神羽、灵元珠；极品怪掉落、祖玛系列、幸运星、封印鉴定符；BOSS掉落赤月系列、魔族指令书、神羽、鸿运星、超级祝福油、魔血系列、虹魔系列。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【苍月岛】小怪掉落聚灵珠、神羽、灵元珠；极品怪掉落、祖玛系列、幸运星、封印鉴定符；BOSS掉落赤月系列、苍月武器、魔族指令书、神羽、鸿运星、超级祝福油。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【魔龙城】小怪掉落聚灵珠、神羽、灵元珠、、祖玛系列；极品怪掉落赤月系列、幸运星、封印鉴定符；BOSS掉落苍月武器、魔族指令书、火龙凭证、藏宝图、屠龙、嗜魂法杖、雷霆系列、强化系列、战神系列、鸿运星、超级祝福油。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【地下宫殿】小怪掉落聚灵珠、神羽、灵元珠；BOSS掉落祖玛系列、赤月系列、苍月武器、魔族指令书、火龙凭证、藏宝图、屠龙、嗜魂法杖、雷霆系列、强化系列、战神系列、鸿运星、超级祝福油。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【焰火屠魔】小怪掉落聚灵珠、神羽、灵元珠；BOSS掉落祖玛系列、赤月系列、雷霆系列、藏宝图、幸运星、封印鉴定符。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【BOSS之家】小怪掉落聚灵珠、神羽、灵元珠、、祖玛系列；极品怪掉落赤月系列、幸运星、封印鉴定符；BOSS掉落苍月武器、魔族指令书、火龙凭证、藏宝图、屠龙、嗜魂法杖、雷霆系列、强化系列、战神系列、鸿运星、超级祝福油。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【火龙神殿】BOSS掉落“龙魂”以及三职业所有终极装备。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【万恶之源】BOSS掉落祖玛系列、赤月系列、苍月武器、魔族指令书、火龙凭证、藏宝图、屠龙、嗜魂法杖、雷霆系列、强化系列、战神系列、鸿运星、超级祝福油。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【熔岩洞穴】BOSS掉落祖玛系列、赤月系列、苍月武器、魔族指令书、火龙凭证、藏宝图、屠龙、嗜魂法杖、雷霆系列、强化系列、战神系列、鸿运星、超级祝福油。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#【幸运项链】所有爆出灯笼项链、白色虎齿项链、记忆项链的怪物均有幸运几率，大家千万不要放过哦(幸运的显示红色.普通显示白色)。\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end--]]

--[[-- 地图产出
function mapchanchu(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#高级技能#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "以下各个职业主号新技能!\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  开天斩            所属职业：战士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  狮子吼            所属职业：战士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  灭天火            所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  寒冰掌            所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  四级魔法盾        所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  召唤月灵          所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  无极真气        所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  气功波            所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄开天斩        所属职业：战士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄狮子吼        所属职业：战士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄四级烈火剑法      所属职业：战士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄灭天火        所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄四级灭天火    所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄寒冰掌        所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄四级魔法盾    所属职业：法师       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄召唤月灵      所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄无极真气    所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄气功波        所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#技能名称:  英雄四级灵魂火符        所属职业：道士       获得方式:  庄园(龙人)合成        其他获得方式：尸王殿/桃园之门\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#特别提示1:书页各大地图打小怪均可爆出,龙人在庄园地图!尸王殿走法:老兵传送-)比奇矿区洞口-)矿区A一层-)废矿区东部  坐标150:80 每30分钟会刷出进门尸王!也可打开大地图会有明显标注!也可以盟重老兵-)声望传送直接进入!\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#特别提示2:桃源之门 可以从 老兵传送-)石墓洞口-)一直跑到石墓7层-) 在7层圆圈的位置 每60分钟会刷出进门石墓尸王!就可以进去!\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#特别提示3:桃源之门 也可以从 土城左下角-)镇魔守将-)洞察魔兽-)使用1颗金刚石前往困惑殿堂--传进去的地图就是桃源之门.当然前提是要你有2颗金刚石\n"  
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@mapchanchu *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end--]]


function itemdesc(player)
	lualib:SysMsg_SendWebMsg(player, "BOSS刷新", "http://bbs.zhst.com/thread-14-1-1.html", "")
	return ""
end


--BOSS刷新
--[[function itemdesc(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#BOSS刷新#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "以下为各大地图主要BOSS刷新时间.均以分钟为单位.怪物死亡后开始重新计算\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 尸王殿        怪物名称：尸王(30)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 桃源之门      怪物名称：骷髅 神兽(10)                \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 石墓七层      怪物名称：白野猪 石墓尸王(30)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 封魔殿        怪物名称：虹魔教主(120)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 骨魔洞        怪物名称：黄泉教主(120/180)        \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 赤月魔穴      怪物名称：赤月恶魔(120)        \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 恶魔祭坛      怪物名称：金刚 血魔(120)        \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 牛魔大厅      怪物名称：牛魔王(180) 暗之牛魔王(240)              \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 祖玛教主之家  怪物名称：祖玛教主(120)              \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 沃玛寺庙大厅  怪物名称：沃玛教主(120)           \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 王者禁地      怪物名称：六大暗之(240) 暗之魔龙战将 力士 巨蛾(180) \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 幻境五层      怪物名称：黄泉教主(120)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 幻境八层      怪物名称：虹魔教主(120)  魔龙战将 魔龙力士 魔龙巨蛾(180)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 幻境九层      怪物名称：双头金刚 双头血魔  (120)             \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 幻境十层      怪物名称：魔龙教主 牛魔王 暗之触龙神 赤月恶魔 暗之牛魔王 (120) (随机刷)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 影之道三层    怪物名称：祖玛教主(120)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 藏宝阁        怪物名称：牛魔王 黄泉教主 祖玛教主 虹魔教主(120) 六大暗之(180) 重装使者 地藏王(240) 魔龙树妖(300)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 六大暗之地图  怪物名称：暗之系列(180)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 宫殿长廊      怪物名称：双头金刚 双头血魔 暗之魔龙力士 战将 牛魔王 魔龙教主 重装使者 (120分钟)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 宫殿大厅      怪物名称：双头金刚 双头血魔(120分钟) 暗之魔龙力士 战将 牛魔王 魔龙教主 重装使者(180分钟) \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： BOSS之家一层  怪物名称：魔龙教主(120)牛魔王(54)暗之牛魔王(55)金刚 血魔(75 85)赤月恶魔(77)黄泉教主(58) 祖玛教主(59)虹魔教主(56)重装使者(57) 力士 巨蛾 战将(90)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： BOSS之家二层  怪物名称：魔龙教主(120).其他BOSS9(50-60)               \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 魔龙血路      怪物名称：魔龙战将 魔龙力士 魔龙巨蛾(20-40)            \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 魔龙血域      怪物名称：魔龙教主(180) 真魔龙战将 魔龙力士 魔龙巨蛾(120) 假魔龙战将 魔龙力士 魔龙巨蛾(20) 爆新技能 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 魔龙殿        怪物名称：魔龙教主(120)  真魔龙战将 魔龙力士 魔龙巨蛾(40) 假魔龙战将 魔龙力士 魔龙巨蛾(20) 爆新技能\n" 
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 万恶之路      怪物名称：双头金刚(180)  双头血魔(180) 黄泉教主(180) \n" 
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 万恶之源      怪物名称：暗之魔龙教主(180) 暗之赤月恶魔(120) 暗之赤月恶魔(45)  暗之魔龙战将 魔龙力士 魔龙巨蛾(150) 六大暗之衣服怪(90) \n" 
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#地图名称： 火龙神殿      怪物名称：火龙神(240)\n"   
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@itemdesc *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end--]]

-- 进阶
function jinjie(player)
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#高手进阶#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*攻城奖励>  \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#装备精炼：通过精炼使者(庄园)进行精炼，可提升装备属性。所需精炼道具击杀游戏中的怪物均可获得或在商铺购买.\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#装备解封：通过鉴定大师(庄园)进行解封，可释放装备封印属性。击杀精英BOSS怪有一定几率掉落封印鉴定符或在商铺购买..\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#武器锻造：凑齐金刚石以及材料，可在武器锻造师(庄园)进行相应的武器锻造，成功率100%。回收祖玛、赤月、重装、聚灵珠等物品可获得金刚石。\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#武器升级：使用黑铁矿石以及相应的首饰在神歌城武器店可升级武器，最高可升7点。(神歌城武器升级NPC有详细的几率说明可以去查看!)\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#荣誉勋章：积累金刚石可在勋章守护老人(庄园)兑换相应的荣誉勋章。\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#[翅膀]神之翼：搜集神羽288颗可在庄园NPC[神之翼]打造游逛之翼,并能逐步升级,排序为:游光之翼→青鸾之翼→紫鸾之翼→彩云之翼→绽放之翼→天葬之翼→火龙之翼.\n"  
	lualib:SetPanelSize(player, 800, 300)
	return msg
end

-- 攻城奖励
function baobao(player)
	local CastleWar = lualib:GetConstVar("CastleWar")
	local msg = "#COLORCOLOR_GREENG#【游戏攻略】#COLOREND# <@wenda *01*常见问答>\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*升级推荐>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*金币赚取>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*法师宠物>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*地图产出>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*BOSS刷新>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*高手进阶>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#攻城奖励#COLOREND# \n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n" 
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#一、一般开区第四天晚上20点进行集体攻城(你可以去神歌城外面老人具体查看),胜利行会奖励8000W金币(系统自动开启无需提交攻城申请,必须攻城19:00前建立行会有效)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#二、新区第三天开放此活动,19点开通行会争霸入口.19点45分关闭.胜利行会可领取3000W金币! 平时每周五举行此活动开启,19点开通行会争霸入口.19点45分关闭.胜利行会可领取1000W金币\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#三、合区方法：1-2区合区,3-4区合区.1-4区合区,5-8区合并一样(合区规则)。\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#四、每次合区的当天系统重新举行攻城,胜利行会奖励8000W金币(系统自动开启无需提交攻城申请,必须攻城19:00前建立行会有效)\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#提示:本区首次攻城时间为:#COLORCOLOR_GREENG#"..CastleWar.."#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#五、占领神歌后,神歌城城主可以每天领取2张火龙凭证,其他行会老大可自行提交祖玛头像攻城(无奖励).\n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@baobao *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 800, 300)
	return msg
end
