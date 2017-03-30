local lua_path = lualib:IO_GetLuaPath()
local package_path = package.path
package.path = string.format("%s;%s?.lua;%s?", package_path, lua_path, lua_path)
require("system/目标系统")


-----------------------图标显示-----------------------------
function gonglue_xianshi(player)	
	ShowTimeCount2(player, 0, 1903800058, "攻略",0,"") --显示目标图标
end

-------------------图标被点击-----------------------
function gonglue(player)
	ShowTimeCount2(player, 0, 1903800058, "攻略",0,"") --显示目标图标
	local msg = ""

	lualib:NPCTalkDetail(player, xianshi(player), 710, 500)
	return ""
end

function xianshi(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[经验]#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#245#221#1 *01*悬赏任务(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#天机老人#COLOREND#接取#COLORCOLOR_GREENG#悬赏任务#COLOREND#：在任意时期都能获得稳定且不低的经验和金币！\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#212#212#1 *01*镇魔殿(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#镇魔殿传送人#COLOREND#进入#COLORCOLOR_GREENG#镇魔殿#COLOREND#：需要组队进入，每天3次会获得海量经验！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#242#292#1 *01*炼药(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#炼药师#COLOREND#进行#COLORCOLOR_GREENG#炼药#COLOREND#：在炼药成功后可获得一定经验和药灵，药灵可用于换神药、转生石、召唤石！\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#195#687#1 *01*押镖(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#龙城军需官#COLOREND#进行#COLORCOLOR_GREENG#押镖#COLOREND#：可获得大量的经验！镖车的品质越高，经验越高！\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*藏宝阁之木人巷(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#藏宝阁守护者#COLOREND#进入#COLORCOLOR_GREENG#木人巷#COLOREND#：里面怪物经验超高，可获取大量经验，大号木人掉落经验丹和超级经验丹！\n \n"	
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#聚灵珠#COLOREND#：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#释灵珠#COLOREND#提取#COLORCOLOR_GREENG#聚灵珠#COLOREND#：内储存的经验，可快速获得经验！\n \n"
	
    msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#228#230#1 *01*挑战场(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#挑战者#COLOREND#进入#COLORCOLOR_GREENG#挑战场#COLOREND#：玩家达到40级可进入，消灭小怪可获得大量经验，消灭boss可获得珍贵装备！\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@xianshi *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- 赚钱
function zhuanqian(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[赚钱]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#245#221#1 *01*悬赏任务(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#天机老人#COLOREND#接取#COLORCOLOR_GREENG#悬赏任务#COLOREND#：在任意时期都能获得稳定且不低的经验和金币！\n \n"	
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#195#687#1 *01*押镖(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#龙城军需官#COLOREND#进行#COLORCOLOR_GREENG#押镖#COLOREND#：可获得大量的金币！镖车的品质越高，金币越高！\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#238#318#1 *01*抓坐骑(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#驯兽师#COLOREND#接取#COLORCOLOR_GREENG#坐骑征集任务#COLOREND#：去马场捕捉马，以及去藏宝阁之异兽栏捕捉稀有坐骑，交给驯兽师，可换取海量金币！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#目标#COLOREND#：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#目标#COLOREND#完成可获取海量#COLORCOLOR_GREENG#金币和金条#COLOREND#：每个目标里都会有海量的金币和金条，越到后期的目标，钱越多！\n \n"	
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#神歌城#334#205#1 *01*攻占神歌城(点击传送)>：\n"  
	msg = msg .. "      攻占下#COLORCOLOR_GREENG#神歌城#COLOREND#可每周领取#COLORCOLOR_GREENG#千万金币！#COLOREND#：占领神歌城后每周可领取千万金币，并且享受购买物品打折！\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#23#95#1 *01*挖矿(点击传送)>：\n"  
	msg = msg .. "      拿上矿镐#COLORCOLOR_GREENG#去废弃矿洞#COLOREND#挖矿，可获得各种矿石，卖店后#COLORCOLOR_GREENG#获得金币#COLOREND#：35级以后可以从武器店购买矿镐，去废弃矿洞任意地点进行挖矿，可获得价值不菲的矿石，卖商店后可获得大量金币！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#236#239#1 *01*击鼓传花(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#传花使者#COLOREND#进行#COLORCOLOR_GREENG#抢花#COLOREND#：只要最后一刻花在你手上，你就能获得所有参赛者的金币！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#打怪#COLOREND#：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#打怪#COLOREND#可获得#COLORCOLOR_GREENG#金币#COLOREND#：游戏里所有怪物都会掉落金币，掉落数量和概率分别是：普通怪小于精英怪小于头目怪小于BOSS小于特殊怪！\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end


-- 赚元宝
function zhuanyuanbao(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[赚元宝]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#成就与任务#COLOREND#：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#完成成就和任务#COLOREND#可获得大量的#COLORCOLOR_GREENG#绑定元宝和非绑定元宝#COLOREND#：完成部分成就，会获得大量非绑定元宝！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#232#229#1 *01*古墓夺宝(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#古墓守卫#COLOREND#进入#COLORCOLOR_GREENG#古墓#COLOREND#：夺取神秘宝盒，可每几秒获得大量的非绑定元宝！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#228#229#1 *01*夺宝英雄(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#夺宝英雄#COLOREND#进入#COLORCOLOR_GREENG#夺宝大厅#COLOREND#：等候地上刷新大量的元宝和物品，在想办法夺取！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#目标#COLOREND#：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#目标#COLOREND#完成可获取海量#COLORCOLOR_GREENG#非绑定元宝#COLOREND#：越到后面的目标，奖励的非绑定元宝越多！\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- 打宝
function dabao(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[打宝]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*藏宝阁(点击传送)>：\n"  
	
	msg = msg .. "      通过#COLORCOLOR_GREENG#藏宝阁守护者#COLOREND#进入#COLORCOLOR_GREENG#修炼场、珍宝洞、锁魔宫#COLOREND#：可获得经验卷轴，封印鉴定符，幸运星，护炼符等各种珍贵道具，这些道具就算是有RMB，在商城里也买不到！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#228#230#1 *01*挑战场(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#挑战者#COLOREND#进入#COLORCOLOR_GREENG#挑战场#COLOREND#：可挑战各种真的BOSS，获取大量宝物！普通玩家每日可免费挑战一次\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#195#687#1 *01*押镖(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#龙城军需官#COLOREND#进行#COLORCOLOR_GREENG#押镖或者劫镖#COLOREND#：可获得大量的装备强化道具！\n \n"	

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#天机罗盘#COLOREND#：\n"  
	msg = msg .. "      通过收集怪物掉落的#COLORCOLOR_GREENG#天机罗盘#COLOREND#有机会获得#COLORCOLOR_GREENG#一些宝物#COLOREND#：能不能打到天机罗盘和开出宝物，得看你的实力和运气了！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#打BOSS#COLOREND#：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#BOSS#COLOREND#可获得#COLORCOLOR_GREENG#各种宝物#COLOREND#：得看你的实力和运气了！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*高级药(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#藏宝阁守护者#COLOREND#进入#COLORCOLOR_GREENG#百草堂#COLOREND#：打败里面的守卫，可获得各种高级药品！\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- 地图产出
function mapchanchu(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[地图产出]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:0>#<@MapMoveXYA#巫山城#479#110#1 *01*将军冢(点击传送)>：#OFFSET<X:220,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#23#95#1 *01*废弃矿洞(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  御战套装   御魔套装   御道套装#OFFSET<X:150,Y:0>#  御战套装   御魔套装   御道套装\n  武圣之戒   奥普戒指   奥普项链#OFFSET<X:150,Y:0>#  武圣之戒   奥普戒指   奥普项链\n  青云戒指   荧光项链   黄金手镯#OFFSET<X:150,Y:0>#  青云戒指   荧光项链   黄金手镯\n  勇士头盔   奥普手镯   境魂护腕#OFFSET<X:150,Y:0>#  勇士头盔   奥普手镯   境魂护腕#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  #OFFSET<X:264,Y:0>#  #COLORCOLOR_RED#地图特产：#COLOREND#\n  #COLORCOLOR_GREENG#密匙残块 聚灵珠  坐骑聚灵珠#COLOREND##OFFSET<X:180,Y:0>##COLORCOLOR_GREENG#技能书   布料#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#23#95#1 *01*废弃矿洞(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  御战套装   御魔套装   御道套装\n  武圣之戒   奥普戒指   奥普项链\n  青云戒指   荧光项链   黄金手镯\n  勇士头盔   奥普手镯   境魂护腕#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#技能书#COLOREND#\n \n"
]]  
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMoveXYA#绝路岭#29#48#1 *01*绝路城(点击传送)>：#OFFSET<X:220,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#34#36#1 *01*妖山暗穴(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   审判        忘机      囚龙#OFFSET<X:175,Y:0>#   审判       忘机       囚龙\n   十杀        龙渊      天瀑#OFFSET<X:175,Y:0>#   十杀       龙渊       天瀑\n  斗士铠甲   灵魂法衣   护体道袍#OFFSET<X:150,Y:0>#  斗士铠甲   灵魂法衣   护体道袍\n  铁战套装   聚魂套装   玄光套装#OFFSET<X:150,Y:0>#  铁战套装   聚魂套装   玄光套装\n  圣武套装   苍冥套装   飞尘套装#OFFSET<X:150,Y:0>#  圣武套装   苍冥套装   飞尘套装\n  骷髅手套   绿玉项链   破坏戒指#OFFSET<X:150,Y:0>#  黄金头盔   阎魔头盔   魔化面具\n  摄魂戒指   龙牙手镯   唤魔铃铛#OFFSET<X:150,Y:0>#  银鳞吊坠\n  混元戒指   幻邪手镯   灵光石项链#COLOREND##OFFSET<X:150,Y:0>#\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  #OFFSET<X:265,Y:-17>#  #COLORCOLOR_RED#地图特产：#COLOREND#  \n#OFFSET<X:0,Y:17>#  #COLORCOLOR_GREENG#坐骑口粮     号角      坐骑经验丹#COLOREND##OFFSET<X:147,Y:-17>##COLORCOLOR_GREENG#循环魔咒           超级护身符\n#OFFSET<X:355,Y:0>#  灰色药粉(大)       黄色药粉(大)#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#34#36#1 *01*妖山暗穴(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   审判       忘机       囚龙\n   十杀       龙渊       天瀑\n  斗士铠甲   灵魂法衣   护体道袍\n  铁战套装   聚魂套装   玄光套装\n  圣武套装   苍冥套装   飞尘套装\n  黄金头盔   阎魔头盔   魔化面具\n  银鳞吊坠#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#循环魔咒           超级护身符\n  灰色药粉(大)       黄色药粉(大)#COLOREND#\n \n"
]]
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMoveXYA#龙城#209#198#1 *01*天荒阵(点击传送)>：#OFFSET<X:220,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#515#31#1 *01*邪庙(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   十杀       龙渊       天瀑#OFFSET<X:180,Y:0>#   噬空        碎空       断空\n  斗士铠甲   灵魂法衣   护体道袍#OFFSET<X:155,Y:0>#  赤峰战甲   阎罗长袍   光明道袍\n  圣武套装   苍冥套装   飞尘套装#OFFSET<X:155,Y:0>#  末日套装   血夜套装   天劫套装\n  骷髅手套   绿玉项链   破坏戒指#OFFSET<X:155,Y:0>#  王者之链   魔炫护腕   君王战戒\n  摄魂戒指   龙牙手镯   唤魔铃铛#OFFSET<X:155,Y:0>#  残月之坠   紫炎护腕   星冥魔戒\n  混元戒指   幻邪手镯   魔化面具#OFFSET<X:155,Y:0>#  天极项链   天翼手镯   上清玄指\n  黄金头盔   阎魔头盔   灵光石项链#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  #OFFSET<X:270,Y:0>#  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#天机罗盘#COLOREND##OFFSET<X:295,Y:0>#  #COLORCOLOR_GREENG#修复油     城战令牌   修复神水#COLOREND#\n \n"
	--msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_YELLOW#迷宫走法：#COLOREND#  #OFFSET<X:268,Y:0>#  #COLORCOLOR_YELLOW#迷宫走法：#COLOREND#  \n  #COLORCOLOR_WHITE#左右右左左右右左#COLOREND##OFFSET<X:240,Y:0>#  #COLORCOLOR_WHITE#左上上右上上#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#515#31#1 *01*邪庙(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   噬空        碎空       断空\n  赤峰战甲   阎罗长袍   光明道袍\n  末日套装   血夜套装   天劫套装\n  王者之链   魔炫护腕   君王战戒\n  残月之坠   紫炎护腕   星冥魔戒\n  天极项链   天翼手镯   上清玄指#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#修复油     城战令牌   修复神水#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_YELLOW#迷宫走法：#COLOREND#  \n  #COLORCOLOR_WHITE#左上上右上上#COLOREND#\n \n"
]]
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMoveXYA#龙城#34#48#1 *01*天魔石窟(点击传送)>：#OFFSET<X:210,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#海底入口#49#45#1 *01*海底沉船(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#   帝释        残虹       无常#OFFSET<X:175,Y:0>#  十殿阎罗   七劫浮屠   赤霄白帝\n  百裂战甲   圣灵法衣   太玄道袍#OFFSET<X:158,Y:0>#  龙鳞战甲   璃梦法袍   天鼎道袍\n  疾雷套装   火灵套装   云扬套装#OFFSET<X:158,Y:0>#  天怒套装   深渊套装   四象套装\n  魔炫护腕   紫炎护腕   天翼手镯#OFFSET<X:158,Y:0>#  梵天之链   麒煌护腕   创世战戒\n  麒麟战盔   龙牙面具   无魂头盔#OFFSET<X:158,Y:0>#  天缺项链   七炫护腕   天璃法戒\n#OFFSET<X:362,Y:0>#  圣魂项链   上玄手镯   天元道指#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  #OFFSET<X:272,Y:0>#  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#打捆绳    高级技能书   逍遥游#OFFSET<X:175,Y:0>#道尊神符   道尊神毒   道尊灵毒\n#OFFSET<X:360,Y:0>#  秘海精元   定位石#COLOREND#\n \n"
--[[	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#海底入口#49#45#1 *01*海底沉船(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  十殿阎罗   七劫浮屠   赤霄白帝\n  龙鳞战甲   璃梦法袍   天鼎道袍\n  天怒套装   深渊套装   四象套装\n  梵天之链   麒煌护腕   创世战戒\n  天缺项链   七炫护腕   天璃法戒\n  圣魂项链   上玄手镯   天元道指#COLOREND#\n \n"
	msg = msg .. "  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#道尊神符   道尊神毒   道尊灵毒  秘海精元      定位石#COLOREND#\n \n"
]]
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>#<@MapMove_zhenmo#镇魔城#35#31#1 *01*镇魔禁地(点击传送)>：#OFFSET<X:210,Y:0>##IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>##COLORCOLOR_YELLOW#赤炎部落(通过通行证传送)：#COLOREND#\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#      魅影战盔      天邪头盔  #OFFSET<X:172,Y:0>#  罡风·怒破(未辨识),  长空·瓣轮(未辨识)\n      龙元道盔      绝影天履  #OFFSET<X:172,Y:0>#  苍天·梢月(未辨识),  流萤·暮影(未辨识)\n    辨识卷轴(武)  辨识卷轴(衣)#OFFSET<X:170,Y:0>#  流萤·暮露(未辨识),  鹤流·瑶羽(未辨识)\n    辨识卷轴(链)  辨识卷轴(戒)#OFFSET<X:170,Y:0>#  鹤流·瑶纱(未辨识),  无痕·天饮(未辨识)\n    辨识卷轴(鞋)  辨识卷轴(帽)#OFFSET<X:170,Y:0>#  无痕·天曲(未辨识),  战龙套装(未辨识)\n    辨识卷轴(手)#OFFSET<X:260,Y:0>#  逐光套装(未辨识),    逍遥套装(未辨识)#COLOREND#\n \n"
	msg = msg .. "#OFFSET<X:0,Y:-10>#  #COLORCOLOR_RED#地图特产：#COLOREND#  #OFFSET<X:272,Y:0>#  #COLORCOLOR_RED#地图特产：#COLOREND#  \n  #COLORCOLOR_GREENG#辨识之石, 祝福神水,  辟火丹#OFFSET<X:185,Y:0># 暴击灵符, 队友传送令, 队友召集令\n  封印鉴定符, 赤炎部落通行证#COLOREND#\n \n"
    
    msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#236#239#1 *01*荣耀竞技场(点击传送)>：\n"  
	msg = msg .. "#COLORCOLOR_SKYBLUE#  狼牙        怒海        星矢\n  血魂套      冰魄套     月殇套\n  战神宝甲    法神长袍   道神宝衣#COLOREND#\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@mapchanchu *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

--道具
function itemdesc(player)
	local msg = "         "
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[道具]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#聚灵珠：#COLOREND#\n"  
	msg = msg .. "  可以存储经验的神奇宝珠，放在包裹中打怪时会将人物获得经验的数倍倍存入宝珠，存储有上限，提取经验需要消耗几个释灵珠。\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#坐骑聚灵珠：#COLOREND#\n"  
	msg = msg .. "  存储坐骑经验的神奇珠子，可存储打怪获得经验的数倍，有上限，右击使用需要一定的金币，使用后能增加装备在身上的坐骑经验(存储规则与聚灵珠相同，聚灵珠与坐骑聚灵珠在存入经验时只能同时存入一个！)\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#循环魔咒：#COLOREND#\n"  
	msg = msg .. "  在<@MapMoveXYA#龙城#245#221#1 *01*天机老人(点击传送)>处刷新悬赏任务以及在<@MapMoveXYA#龙城#195#687#1 *01*龙城军需官(点击传送)>处刷新镖车等级时的必须的道具!\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#坐骑口粮：#COLOREND#\n"  
	msg = msg .. "  右击使用，可补充坐骑饥饿度2。已死亡的坐骑无法使用！\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#坐骑经验丹：#COLOREND#\n"  
	msg = msg .. "  右击使用为当前装备的坐骑增加经验值。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#修复油：#COLOREND#\n"  
	msg = msg .. "  使用后可以修复手上武器的耐久，但是有概率降低武器的最大耐久1点。\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#战神油：#COLOREND#\n"  
	msg = msg .. "  使用后可以修复手上武器的耐久，并且不会损失武器耐久。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#修复神水：#COLOREND#\n"  
	msg = msg .. "  修复全身装备。\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#清心丹：#COLOREND#\n"  
	msg = msg .. "  清心静气，可减轻自己的罪孽，使用后清除90点PK值。\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#洗髓丹：#COLOREND#\n"  
	msg = msg .. "  使用可以使玩家重新分配50级以上获得的潜能点。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#打捆绳：#COLOREND#\n"  
	msg = msg .. "  用于高级药品打捆。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#逍遥游：#COLOREND#\n"  
	msg = msg .. "  右击使用，可传送到各个指定地图；拥有该道具时点击任务追踪面板中的超链接，可以快速到达任务地点（特殊地图除外），使用指定次数后消失。\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#定位石：#COLOREND#\n"  
	msg = msg .. "  使用后可以记录下当前坐标，下次使用回到记录的坐标点（特定地图不可定位）\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#时之沙砾：#COLOREND#\n"  
	msg = msg .. "  在<@MapMoveXYA#龙城#202#225#1 *01*龙城-藏宝阁守护(点击传送)>处兑换30分钟的探宝时间，藏宝阁内产出各种奇珍异兽！\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#镇魂笛：#COLOREND#\n"  
	msg = msg .. "  进入<@MapMoveXYA#龙城#236#217#1 *01*封魔阵(点击传送)>需要的道具，消灭封魔阵内的怪物可以获得高额经验和金币。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#英雄帖：#COLOREND#\n"  
	msg = msg .. "  参与<@MapMoveXYA#龙城#228#241#1 *01*龙城夺宝英雄(点击传送)>活动需要的门票，队长一人使用可将附近的队友传送入场，也可单人入场。\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#超级护身符：#COLOREND#\n"  
	msg = msg .. "  道士护身符，使用大多数道士技能的必需品。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#灰色药粉：#COLOREND#\n"  
	msg = msg .. "  道士使用该类毒药可以使目标在一段时间内持续掉血。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#黄色药粉：#COLOREND#\n"  
	msg = msg .. "  道士使用该类毒药可以使目标在一段时间内降低双防。\n \n"
			
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#道尊神符：#COLOREND#\n"  
	msg = msg .. "  道士护身符，使用大多数道士技能的必需品。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#道尊神毒：#COLOREND#\n"  
	msg = msg .. "  道士使用该类毒药可以使目标在一段时间内持续掉血。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#道尊灵毒：#COLOREND#\n"  
	msg = msg .. "  道士使用该类毒药可以使目标在一段时间内降低双防。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#号角：#COLOREND#\n"  
	msg = msg .. "  在<@MapMoveXYA#巫山城#256#208#1 *01*巫山城-行会管理员(点击传送)><256.208>处创建帮会需要的道具。\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#城战令牌：#COLOREND#\n"  
	msg = msg .. "  拥在<@MapMoveXYA#巫山城#259#208#1 *01*巫山城-攻城战申请人(点击传送)><259.208>处申请攻城战需要的道具。\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#秘海精元：#COLOREND#\n"  
	msg = msg .. "  拥有海之气息，揭开[新世界]秘密的关键道具，在<@MapMoveXYA#海底入口#38#67#1 *01*千幻阵(点击传送)>中将发挥极大的作用！传说千幻阵在海底深处……。\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#转生石：#COLOREND#\n"  
	msg = msg .. "  转生必须道具，达到指定等级后可以转生！转生后各项属性会得到永久性的提升。\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#天机密引：#COLOREND#\n"  
	msg = msg .. "  天机罗盘，密钥引之，可以打开#COLORCOLOR_GREENG#天机罗盘#COLOREND#获取其中的宝物 拥有无穷宝物的罗盘！\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#天机罗盘：#COLOREND#\n"  
	msg = msg .. "  拥有无穷宝物的罗盘！需要#COLORCOLOR_GREENG#天机密引#COLOREND#才能开启。\n \n"
		
	msg = msg .. "#IMAGE<ID:1902700037>##COLORCOLOR_YELLOW#密匙残块：#COLOREND#\n"  
	msg = msg .. "  坐骑聚灵珠使用10个#COLORCOLOR_GREENG#密匙残块#COLOREND#可合成1个#COLORCOLOR_GREENG#地下城密匙#COLOREND#,右击使用合成，地下城密匙可以打开超级练宝宝地图的大门\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@itemdesc *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- 进阶
function jinjie(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[进阶]#COLOREND#  #OFFSET<X:2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#244#217#1 *01*装备大师(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#装备大师#COLOREND#进行#COLORCOLOR_GREENG#精炼、封印#COLOREND#：可大大提升装备的属性！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#223#300#1 *01*装备合成大师(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#装备合成大师#COLOREND#进行#COLORCOLOR_GREENG#装备合成#COLOREND#：可将武器和衣服合成更高品级，属性会得到大幅提升！\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#221#303#1 *01*道具合成(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#道具合成#COLOREND#进行#COLORCOLOR_GREENG#道具合成#COLOREND#：可合成包裹、符咒、和特殊道具！\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#240#218#1 *01*附魔大师(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#附魔大师#COLOREND#进行#COLORCOLOR_GREENG#附魔#COLOREND#：可大大增强装备的额外属性！\n \n"
	
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#236#239#1 *01*荣耀装备兑换官(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#荣耀装备兑换官#COLOREND#进行#COLORCOLOR_GREENG#装备回收#COLOREND#：可获得金币、经验、荣耀等奖励\n \n"

	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#202#225#1 *01*藏宝阁之藏经楼(点击传送)>：\n"  
	msg = msg .. "      通过#COLORCOLOR_GREENG#藏宝阁守护者#COLOREND#进入#COLORCOLOR_GREENG#藏经楼#COLOREND#：可获取到终极技能残页，将残页合成[终极技能]学习后，对你将是一个质的飞跃！\n \n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

-- 宝宝
function baobao(player)
	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#[宝宝]#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuangbei *01*[装备]>\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	
	msg = msg .. "以下为对应地图内法师可以诱惑为宠物的怪物\n"  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#巫山城#238#304#1 *01*巫山城(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310058>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310001>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：鸡                                怪物名称：鹿\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：6                                 #OFFSET<X:1,Y:0>#诱惑等级：13\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310004>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310035>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：花蜘蛛                            #OFFSET<X:-2,Y:0>#怪物名称：毒蜘蛛\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：17                                #OFFSET<X:2,Y:0>#诱惑等级：17\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310005>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310037>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：顽猴                              #OFFSET<X:-1,Y:0>#怪物名称：泼猴\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：17                                 #OFFSET<X:-4,Y:0>#诱惑等级：17\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#绝路岭#101#257#1 *01*绝路岭(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310037>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310006>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：猿猴                              #OFFSET<X:-1,Y:0>#怪物名称：赤面猴\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：16                                #OFFSET<X:2,Y:0>#诱惑等级：23\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310038>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990340014>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：凶暴猿猴                          #OFFSET<X:-3,Y:0>#怪物名称：魔猿\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：23                                 #OFFSET<X:-5,Y:0>#诱惑等级：30\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#绝路谷#145#265#1 *01*绝路谷(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310042>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310043>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：青蛇                              #OFFSET<X:-1,Y:0>#怪物名称：红蛇\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：18                                 #OFFSET<X:-4,Y:0>#诱惑等级：18\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310009>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310044>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：黑水蛇                           #OFFSET<X:4,Y:0>#怪物名称：白蛇\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：19                                #OFFSET<X:2,Y:0>#诱惑等级：19\n" 
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990340012>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：魔蛇 \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：30 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#绝路城1#292#494#1 *01*绝路城(点击传送)>：\n"	  
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310007>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：飞蛾 \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：21 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#234#228#1 *01*龙城(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310041>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310008>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：野狼                              怪物名称：苍狼\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：17                                #OFFSET<X:2,Y:0>#诱惑等级：17\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310036>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990340013>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：天狼蜘蛛                          #OFFSET<X:-2,Y:0>#怪物名称：魔狼\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：17                                #OFFSET<X:2,Y:0>#诱惑等级：30\n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#妖山暗穴1#154#218#1 *01*妖山暗穴(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310055>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310019>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：飞芒                              怪物名称：飞萤\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：27                                #OFFSET<X:1,Y:0>#诱惑等级：27\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310054>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310021>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：魔萤                              怪物名称：妖面监工\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：27                                #OFFSET<X:1,Y:0>#诱惑等级：27\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310022>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：鬼面监工 \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：29 \n"	  
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#天荒阵1#91#97#1 *01*天荒阵(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310016>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990310061>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：巨蛾                              怪物名称：蟒蛇\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：33                                #OFFSET<X:2,Y:0>#诱惑等级：33\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310062>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：蛇蛟 \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：33 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#邪庙1#88#195#1 *01*天荒邪庙(点击传送)>：\n"	  
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990310046>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：邪翅 \n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：33 \n"
	msg = msg .. "#IMAGE<ID:1902700037>##OFFSET<X:0,Y:-2>#<@MapMoveXYA#龙城#109#48#1 *01*龙城(点击传送)>：\n"
	msg = msg .. "#OFFSET<X:0,Y:0>##IMAGE<ID:1990340018>#                                             #OFFSET<X:0,Y:0>##IMAGE<ID:1990340019>#\n"	
	msg = msg .. "#OFFSET<X:0,Y:-35>#                                怪物名称：恶战天魔                          #OFFSET<X:-2,Y:0>#怪物名称：金鳞妖蟒\n"  
	msg = msg .. "#OFFSET<X:0,Y:0>#                                诱惑等级：10                                诱惑等级：40\n \n"
	msg = msg .. "                                                                                        #IMAGE<ID:1900100105>##OFFSET<X:0,Y:-2>#<@baobao *01*[返回顶部]>\n"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

zhuangbei_table = {
	---战士
	{
		[30] = {
			{"审判","黄金头盔","骷髅手套","绿玉项链","御战戒指"}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"元灵铠甲(男)#元灵铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"骷髅手套",	--左手镯
				"骷髅手套",	--右手镯
				"破坏戒指",	--左戒指
				"破坏戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},
		[31] = {
			{"御战头盔"}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"元灵铠甲(男)#元灵铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"骷髅手套",	--左手镯
				"骷髅手套",	--右手镯
				"破坏戒指",	--左戒指
				"破坏戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},	
		[32] = {
			{}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"元灵铠甲(男)#元灵铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"骷髅手套",	--左手镯
				"骷髅手套",	--右手镯
				"破坏戒指",	--左戒指
				"破坏戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},	
		[33] = {
			{}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"元灵铠甲(男)#元灵铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"骷髅手套",	--左手镯
				"骷髅手套",	--右手镯
				"破坏戒指",	--左戒指
				"破坏戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},	
		[34] = {
			{"铁战靴子"}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"元灵铠甲(男)#元灵铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"骷髅手套",	--左手镯
				"骷髅手套",	--右手镯
				"破坏戒指",	--左戒指
				"破坏戒指",	--右戒指
				"铁战靴子",	--靴子
			}
		},		
		[35] = {
			{"斗士铠甲(男)","斗士铠甲(女)","铁战戒指"}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"斗士铠甲(男)#斗士铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"骷髅手套",	--左手镯
				"骷髅手套",	--右手镯
				"破坏戒指",	--左戒指
				"铁战戒指",	--右戒指
				"铁战靴子",	--靴子
			}
		},		
		[36] = {
			{"铁战护腕"}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"斗士铠甲(男)#斗士铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"铁战护腕",	--左手镯
				"铁战护腕",	--右手镯
				"破坏戒指",	--左戒指
				"铁战戒指",	--右戒指
				"铁战靴子",	--靴子
			}
		},	
		[37] = {
			{}, --当前级别可以穿戴的装备
			{
				"审判",	--武器
				"斗士铠甲(男)#斗士铠甲(女)",	--衣服
				"黄金头盔",	--头盔
				"绿玉项链",	--项链
				"铁战护腕",	--左手镯
				"铁战护腕",	--右手镯
				"破坏戒指",	--左戒指
				"铁战戒指",	--右戒指
				"铁战靴子",	--靴子
			}
		},	
		[38] = {
			{"十杀","麒麟战盔","魔炫护腕"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"斗士铠甲(男)#斗士铠甲(女)",	--衣服
				"麒麟战盔",	--头盔
				"绿玉项链",	--项链
				"魔炫护腕",	--左手镯
				"魔炫护腕",	--右手镯
				"破坏戒指",	--左戒指
				"铁战戒指",	--右戒指
				"铁战靴子",	--靴子
			}
		},	
		[39] = {
			{"圣武战靴","君王战戒"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"斗士铠甲(男)#斗士铠甲(女)",	--衣服
				"麒麟战盔",	--头盔
				"绿玉项链",	--项链
				"魔炫护腕",	--左手镯
				"铁战护腕",	--右手镯
				"君王战戒",	--左戒指
				"铁战戒指",	--右戒指
				"圣武战靴",	--靴子
			}
		},	
		[40] = {
			{"圣武护腕","赤峰战甲(男)","赤峰战甲(女)","王者之链","圣武戒指"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"赤峰战甲(男)#赤峰战甲(女)",	--衣服
				"麒麟战盔",	--头盔
				"王者之链",	--项链
				"魔炫护腕",	--左手镯
				"圣武护腕",	--右手镯
				"君王战戒",	--左戒指
				"圣武戒指",	--右戒指
				"圣武战靴",	--靴子
			}
		},	
		[41] = {
			{"圣武头盔"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"赤峰战甲(男)#赤峰战甲(女)",	--衣服
				"麒麟战盔",	--头盔
				"王者之链",	--项链
				"魔炫护腕",	--左手镯
				"圣武护腕",	--右手镯
				"君王战戒",	--左戒指
				"圣武戒指",	--右戒指
				"圣武战靴",	--靴子
			}
		},	
		[42] = {
			{}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"赤峰战甲(男)#赤峰战甲(女)",	--衣服
				"麒麟战盔",	--头盔
				"王者之链",	--项链
				"魔炫护腕",	--左手镯
				"圣武护腕",	--右手镯
				"君王战戒",	--左戒指
				"圣武戒指",	--右戒指
				"圣武战靴",	--靴子
			}
		},	
		[43] = {
			{"末日战靴"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"赤峰战甲(男)#赤峰战甲(女)",	--衣服
				"麒麟战盔",	--头盔
				"王者之链",	--项链
				"魔炫护腕",	--左手镯
				"圣武护腕",	--右手镯
				"君王战戒",	--左戒指
				"圣武戒指",	--右戒指
				"圣武战靴",	--靴子
			}
		},	
		[44] = {
			{"末日头盔","创世战戒"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"赤峰战甲(男)#赤峰战甲(女)",	--衣服
				"末日头盔",	--头盔
				"王者之链",	--项链
				"魔炫护腕",	--左手镯
				"圣武护腕",	--右手镯
				"创世战戒",	--左戒指
				"圣武戒指",	--右戒指
				"末日战靴",	--靴子
			}
		},	
		[45] = {
			{"百裂战甲(男)","百裂战甲(女)","末日项链"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"百裂战甲(男)#百裂战甲(女)",	--衣服
				"末日头盔",	--头盔
				"末日项链",	--项链
				"魔炫护腕",	--左手镯
				"圣武护腕",	--右手镯
				"创世战戒",	--左戒指
				"圣武戒指",	--右戒指
				"末日战靴",	--靴子
			}
		},	
		[46] = {
			{"麒煌护腕","梵天之链","末日戒指"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"百裂战甲(男)#百裂战甲(女)",	--衣服
				"末日头盔",	--头盔
				"末日项链",	--项链
				"麒煌护腕",	--左手镯
				"圣武护腕",	--右手镯
				"创世战戒",	--左戒指
				"圣武戒指",	--右戒指
				"末日战靴",	--靴子
			}
		},	
		[47] = {
			{"末日护腕"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"百裂战甲(男)#百裂战甲(女)",	--衣服
				"末日头盔",	--头盔
				"末日项链",	--项链
				"末日护腕",	--左手镯
				"圣武护腕",	--右手镯
				"创世战戒",	--左戒指
				"圣武戒指",	--右戒指
				"末日战靴",	--靴子
			}
		},			
		[48] = {
			{"疾雷战靴"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"百裂战甲(男)#百裂战甲(女)",	--衣服
				"末日头盔",	--头盔
				"末日项链",	--项链
				"末日护腕",	--左手镯
				"圣武护腕",	--右手镯
				"创世战戒",	--左戒指
				"圣武戒指",	--右戒指
				"疾雷战靴",	--靴子
			}
		},		
		[49] = {
			{"疾雷头盔"}, --当前级别可以穿戴的装备
			{
				"十杀",	--武器
				"百裂战甲(男)#百裂战甲(女)",	--衣服
				"疾雷头盔",	--头盔
				"末日项链",	--项链
				"末日护腕",	--左手镯
				"圣武护腕",	--右手镯
				"创世战戒",	--左戒指
				"圣武戒指",	--右戒指
				"疾雷战靴",	--靴子
			}
		},	
		[50] = {
			{"帝释","龙鳞战甲(男)","龙鳞战甲(女)","疾雷项链"}, --当前级别可以穿戴的装备
			{
				"帝释",	--武器
				"龙鳞战甲(男)#龙鳞战甲(女)",	--衣服
				"疾雷头盔",	--头盔
				"末日项链",	--项链
				"末日护腕",	--左手镯
				"圣武护腕",	--右手镯
				"末日戒指",	--左戒指
				"圣武戒指",	--右戒指
				"疾雷战靴",	--靴子
			}
		},	
		[51] = {
			{"疾雷护腕(神)","疾雷护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"帝释",	--武器
				"龙鳞战甲(男)#龙鳞战甲(女)",	--衣服
				"疾雷头盔",	--头盔
				"末日项链",	--项链
				"疾雷护腕(神)",	--左手镯
				"疾雷护腕(圣)",	--右手镯
				"末日戒指",	--左戒指
				"创世战戒",	--右戒指
				"疾雷战靴",	--靴子
			}
		},	
		[52] = {
			{"疾雷戒指(神)","疾雷戒指(圣)"}, --当前级别可以穿戴的装备
			{
				"帝释",	--武器
				"龙鳞战甲(男)#龙鳞战甲(女)",	--衣服
				"疾雷头盔",	--头盔
				"疾雷项链",	--项链
				"疾雷护腕(神)",	--左手镯
				"疾雷护腕(圣)",	--右手镯
				"疾雷戒指(神)",	--左戒指
				"疾雷戒指(圣)",	--右戒指
				"疾雷战靴",	--靴子
			}
		},
		[53] = {
			{"天怒战靴"}, --当前级别可以穿戴的装备
			{
				"帝释",	--武器
				"龙鳞战甲(男)#龙鳞战甲(女)",	--衣服
				"疾雷头盔",	--头盔
				"疾雷项链",	--项链
				"疾雷护腕(神)",	--左手镯
				"疾雷护腕(圣)",	--右手镯
				"疾雷戒指(神)",	--左戒指
				"疾雷戒指(圣)",	--右戒指
				"疾雷战靴",	--靴子
			}
		},	
		[54] = {
			{"天怒头盔"}, --当前级别可以穿戴的装备
			{
				"帝释",	--武器
				"龙鳞战甲(男)#龙鳞战甲(女)",	--衣服
				"疾雷头盔",	--头盔
				"疾雷项链",	--项链
				"疾雷护腕(神)",	--左手镯
				"疾雷护腕(圣)",	--右手镯
				"疾雷戒指(神)",	--左戒指
				"疾雷戒指(圣)",	--右戒指
				"疾雷战靴",	--靴子
			}
		},	
		[55] = {
			{"十殿阎罗","无痕天饮","无痕天曲","天怒项链"}, --当前级别可以穿戴的装备
			{
				"十殿阎罗",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"疾雷护腕(神)",	--左手镯
				"疾雷护腕(圣)",	--右手镯
				"疾雷戒指(神)",	--左戒指
				"疾雷戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},	
		[56] = {
			{"天怒护腕(神)","天怒护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"十殿阎罗",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"天怒护腕(神)",	--左手镯
				"天怒护腕(圣)",	--右手镯
				"疾雷戒指(神)",	--左戒指
				"疾雷戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},		
		[57] = {
			{"天怒戒指(神)","天怒戒指(圣)"}, --当前级别可以穿戴的装备
			{
				"十殿阎罗",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"天怒护腕(神)",	--左手镯
				"天怒护腕(圣)",	--右手镯
				"天怒戒指(神)",	--左戒指
				"天怒戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},	
		[58] = {
			{"飞龙战靴"}, --当前级别可以穿戴的装备
			{
				"十殿阎罗",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"天怒护腕(神)",	--左手镯
				"天怒护腕(圣)",	--右手镯
				"天怒戒指(神)",	--左戒指
				"天怒戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},	
		[59] = {
			{"战龙头盔"}, --当前级别可以穿戴的装备
			{
				"十殿阎罗",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"天怒护腕(神)",	--左手镯
				"天怒护腕(圣)",	--右手镯
				"天怒戒指(神)",	--左戒指
				"天怒戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},	
		[60] = {
			{"罡风怒破","战龙项链"}, --当前级别可以穿戴的装备
			{
				"罡风怒破",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"天怒护腕(神)",	--左手镯
				"天怒护腕(圣)",	--右手镯
				"天怒戒指(神)",	--左戒指
				"天怒戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},		
		[61] = {
			{"战龙护腕"}, --当前级别可以穿戴的装备
			{
				"罡风怒破",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"天怒头盔",	--头盔
				"天怒项链",	--项链
				"天怒护腕(神)",	--左手镯
				"天怒护腕(圣)",	--右手镯
				"天怒戒指(神)",	--左戒指
				"天怒戒指(圣)",	--右戒指
				"天怒战靴",	--靴子
			}
		},	
		[62] = {
			{"战龙戒指"}, --当前级别可以穿戴的装备
			{
				"罡风怒破",	--武器
				"无痕天饮#无痕天曲",	--衣服
				"战龙头盔",	--头盔
				"战龙项链",	--项链
				"天怒护腕(神)",	--左手镯
				"战龙护腕",	--右手镯
				"天怒戒指(神)",	--左戒指
				"战龙戒指",	--右戒指
				"飞龙战靴",	--靴子
			}
		},			
	},
	
	
	---法师
	{
		[30] = {
			{"囚龙","阎魔头盔","龙牙手镯","唤魔铃铛","御魔戒指"}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"魔力法袍(男)#魔力法袍(女)",	--衣服
				"阎魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"龙牙手镯",	--左手镯
				"龙牙手镯",	--右手镯
				"御魔戒指",	--左戒指
				"御魔戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},
		[31] = {
			{"御魔头盔"}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"魔力法袍(男)#魔力法袍(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"龙牙手镯",	--左手镯
				"龙牙手镯",	--右手镯
				"御魔戒指",	--左戒指
				"御魔戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},
		[32] = {
			{}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"魔力法袍(男)#魔力法袍(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"龙牙手镯",	--左手镯
				"龙牙手镯",	--右手镯
				"御魔戒指",	--左戒指
				"御魔戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},		
		[33] = {
			{"浮云"}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"魔力法袍(男)#魔力法袍(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"龙牙手镯",	--左手镯
				"龙牙手镯",	--右手镯
				"御魔戒指",	--左戒指
				"御魔戒指",	--右戒指
				"浮云",	--靴子
			}
		},
		[34] = {
			{"聚魂靴子"}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"魔力法袍(男)#魔力法袍(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"龙牙手镯",	--左手镯
				"龙牙手镯",	--右手镯
				"御魔戒指",	--左戒指
				"御魔戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[35] = {
			{"灵魂法衣(男)","灵魂法衣(女)","聚魂戒指"}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"灵魂法衣(男)#灵魂法衣(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"龙牙手镯",	--左手镯
				"龙牙手镯",	--右手镯
				"聚魂戒指",	--左戒指
				"聚魂戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[36] = {
			{"聚魂护腕"}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"灵魂法衣(男)#灵魂法衣(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"聚魂护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"聚魂戒指",	--左戒指
				"聚魂戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[37] = {
			{}, --当前级别可以穿戴的装备
			{
				"囚龙",	--武器
				"灵魂法衣(男)#灵魂法衣(女)",	--衣服
				"御魔头盔",	--头盔
				"唤魔铃铛",	--项链
				"聚魂护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"聚魂戒指",	--左戒指
				"聚魂戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[38] = {
			{"天瀑","龙牙面具","紫炎护腕"}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"灵魂法衣(男)#灵魂法衣(女)",	--衣服
				"龙牙面具",	--头盔
				"唤魔铃铛",	--项链
				"紫炎护腕",	--左手镯
				"紫炎护腕",	--右手镯
				"聚魂戒指",	--左戒指
				"聚魂戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[39] = {
			{"苍冥魔靴","星冥魔戒"}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"灵魂法衣(男)#灵魂法衣(女)",	--衣服
				"龙牙面具",	--头盔
				"唤魔铃铛",	--项链
				"紫炎护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"星冥魔戒",	--左戒指
				"星冥魔戒",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[40] = {
			{"苍冥护腕","阎罗长袍(男)","阎罗长袍(女)","残月之坠","苍冥戒指"}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"阎罗长袍(男)#阎罗长袍(女)",	--衣服
				"龙牙面具",	--头盔
				"残月之坠",	--项链
				"苍冥护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"星冥魔戒",	--左戒指
				"苍冥戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[41] = {
			{"苍冥头盔"}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"阎罗长袍(男)#阎罗长袍(女)",	--衣服
				"龙牙面具",	--头盔
				"残月之坠",	--项链
				"苍冥护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"星冥魔戒",	--左戒指
				"苍冥戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[42] = {
			{}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"阎罗长袍(男)#阎罗长袍(女)",	--衣服
				"龙牙面具",	--头盔
				"残月之坠",	--项链
				"苍冥护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"星冥魔戒",	--左戒指
				"苍冥戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[43] = {
			{"血夜魔靴"}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"阎罗长袍(男)#阎罗长袍(女)",	--衣服
				"龙牙面具",	--头盔
				"残月之坠",	--项链
				"苍冥护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"星冥魔戒",	--左戒指
				"苍冥戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[44] = {
			{"血夜魔盔","天璃法戒"}, --当前级别可以穿戴的装备
			{
				"天瀑",	--武器
				"阎罗长袍(男)#阎罗长袍(女)",	--衣服
				"血夜魔盔",	--头盔
				"残月之坠",	--项链
				"苍冥护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"天璃法戒",	--左戒指
				"苍冥戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[45] = {
			{"碎空","天邪头盔","圣灵法衣(男)","圣灵法衣(女)","血夜项链"}, --当前级别可以穿戴的装备
			{
				"碎空",	--武器
				"圣灵法衣(男)#圣灵法衣(女)",	--衣服
				"血夜魔盔",	--头盔
				"血夜项链",	--项链
				"苍冥护腕",	--左手镯
				"聚魂护腕",	--右手镯
				"天璃法戒",	--左戒指
				"苍冥戒指",	--右戒指
				"聚魂靴子",	--靴子
			}
		},
		[46] = {
			{"七炫护腕","天缺项链","血夜魔指"}, --当前级别可以穿戴的装备
			{
				"碎空",	--武器
				"圣灵法衣(男)#圣灵法衣(女)",	--衣服
				"血夜魔盔",	--头盔
				"天缺项链",	--项链
				"苍冥护腕",	--左手镯
				"七炫护腕",	--右手镯
				"天璃法戒",	--左戒指
				"苍冥戒指",	--右戒指
				"血夜魔靴",	--靴子
			}
		},
		[46] = {
			{"七炫护腕","天缺项链","血夜魔指"}, --当前级别可以穿戴的装备
			{
				"碎空",	--武器
				"圣灵法衣(男)#圣灵法衣(女)",	--衣服
				"血夜魔盔",	--头盔
				"天缺项链",	--项链
				"苍冥护腕",	--左手镯
				"七炫护腕",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"血夜魔靴",	--靴子
			}
		},
		[47] = {
			{"血夜护腕"}, --当前级别可以穿戴的装备
			{
				"碎空",	--武器
				"圣灵法衣(男)#圣灵法衣(女)",	--衣服
				"血夜魔盔",	--头盔
				"天缺项链",	--项链
				"苍冥护腕",	--左手镯
				"七炫护腕",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"血夜魔靴",	--靴子
			}
		},	
		[48] = {
			{"火灵魔靴"}, --当前级别可以穿戴的装备
			{
				"碎空",	--武器
				"圣灵法衣(男)#圣灵法衣(女)",	--衣服
				"血夜魔盔",	--头盔
				"天缺项链",	--项链
				"苍冥护腕",	--左手镯
				"七炫护腕",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"血夜魔靴",	--靴子
			}
		},	
		[49] = {
			{"火灵头盔"}, --当前级别可以穿戴的装备
			{
				"碎空",	--武器
				"圣灵法衣(男)#圣灵法衣(女)",	--衣服
				"火灵头盔",	--头盔
				"血夜项链",	--项链
				"苍冥护腕",	--左手镯
				"七炫护腕",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"火灵魔靴",	--靴子
			}
		},	
		[50] = {
			{"残虹","璃梦法袍(男)","璃梦法袍(女)","火灵项链"}, --当前级别可以穿戴的装备
			{
				"残虹",	--武器
				"璃梦法袍(男)#璃梦法袍(女)",	--衣服
				"火灵头盔",	--头盔
				"血夜项链",	--项链
				"苍冥护腕",	--左手镯
				"七炫护腕",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"火灵魔靴",	--靴子
			}
		},	
		[51] = {
			{"火灵护腕(神)","火灵护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"残虹",	--武器
				"璃梦法袍(男)#璃梦法袍(女)",	--衣服
				"火灵头盔",	--头盔
				"血夜项链",	--项链
				"苍冥护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"火灵魔靴",	--靴子
			}
		},	
		[52] = {
			{"火灵戒指(神)","火灵戒指(圣)"}, --当前级别可以穿戴的装备
			{
				"残虹",	--武器
				"璃梦法袍(男)#璃梦法袍(女)",	--衣服
				"火灵头盔",	--头盔
				"血夜项链",	--项链
				"苍冥护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"火灵魔靴",	--靴子
			}
		},		
		[53] = {
			{"深渊魔靴"}, --当前级别可以穿戴的装备
			{
				"残虹",	--武器
				"璃梦法袍(男)#璃梦法袍(女)",	--衣服
				"火灵头盔",	--头盔
				"血夜项链",	--项链
				"苍冥护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"苍冥戒指",	--右戒指
				"深渊魔靴",	--靴子
			}
		},		
		[54] = {
			{"深渊头盔"}, --当前级别可以穿戴的装备
			{
				"残虹",	--武器
				"璃梦法袍(男)#璃梦法袍(女)",	--衣服
				"深渊头盔",	--头盔
				"血夜项链",	--项链
				"七炫护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"火灵戒指(神)",	--右戒指
				"深渊魔靴",	--靴子
			}
		},	
		[55] = {
			{"七劫浮屠","流萤暮影","流萤暮露","深渊项链"}, --当前级别可以穿戴的装备
			{
				"七劫浮屠",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"深渊头盔",	--头盔
				"深渊项链",	--项链
				"血夜护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"火灵戒指(神)",	--右戒指
				"深渊魔靴",	--靴子
			}
		},	
		[56] = {
			{"深渊护腕(神)","深渊护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"七劫浮屠",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"深渊头盔",	--头盔
				"深渊项链",	--项链
				"血夜护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"火灵戒指(神)",	--右戒指
				"深渊魔靴",	--靴子
			}
		},			
		[56] = {
			{"深渊护腕(神)","深渊护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"七劫浮屠",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"深渊头盔",	--头盔
				"深渊项链",	--项链
				"血夜护腕",	--左手镯
				"火灵护腕(神)",	--右手镯
				"血夜魔指",	--左戒指
				"火灵戒指(神)",	--右戒指
				"深渊魔靴",	--靴子
			}
		},	
		[57] = {
			{"深渊戒指(神)","深渊戒指(圣)"}, --当前级别可以穿戴的装备
			{
				"七劫浮屠",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"深渊头盔",	--头盔
				"深渊项链",	--项链
				"深渊护腕(神)",	--左手镯
				"火灵护腕(神)",	--右手镯
				"深渊戒指(神)",	--左戒指
				"火灵戒指(神)",	--右戒指
				"深渊魔靴",	--靴子
			}
		},	
		[58] = {
			{"逐光霞履"}, --当前级别可以穿戴的装备
			{
				"七劫浮屠",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"深渊头盔",	--头盔
				"深渊项链",	--项链
				"深渊护腕(神)",	--左手镯
				"火灵护腕(神)",	--右手镯
				"深渊戒指(神)",	--左戒指
				"火灵戒指(神)",	--右戒指
				"深渊魔靴",	--靴子
			}
		},	
		[59] = {
			{"逐光头冠"}, --当前级别可以穿戴的装备
			{
				"七劫浮屠",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"逐光头冠",	--头盔
				"深渊项链",	--项链
				"深渊护腕(神)",	--左手镯
				"火灵护腕(神)",	--右手镯
				"深渊戒指(神)",	--左戒指
				"火灵戒指(神)",	--右戒指
				"逐光霞履",	--靴子
			}
		},	
		[60] = {
			{"长空瓣轮","逐光项链"}, --当前级别可以穿戴的装备
			{
				"长空瓣轮",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"逐光头冠",	--头盔
				"逐光项链",	--项链
				"深渊护腕(神)",	--左手镯
				"火灵护腕(神)",	--右手镯
				"深渊戒指(神)",	--左戒指
				"火灵戒指(神)",	--右戒指
				"逐光霞履",	--靴子
			}
		},	
		[61] = {
			{"逐光护腕"}, --当前级别可以穿戴的装备
			{
				"长空瓣轮",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"逐光头冠",	--头盔
				"逐光项链",	--项链
				"深渊护腕(神)",	--左手镯
				"火灵护腕(神)",	--右手镯
				"深渊戒指(神)",	--左戒指
				"火灵戒指(神)",	--右戒指
				"逐光霞履",	--靴子
			}
		},	
		[62] = {
			{"逐光戒指"}, --当前级别可以穿戴的装备
			{
				"长空瓣轮",	--武器
				"流萤暮影#流萤暮露",	--衣服
				"逐光头冠",	--头盔
				"逐光项链",	--项链
				"深渊护腕(神)",	--左手镯
				"逐光护腕",	--右手镯
				"深渊戒指(神)",	--左戒指
				"逐光戒指",	--右戒指
				"逐光霞履",	--靴子
			}
		},	
	},
	
	
	---道士
	{
		[30] = {
			{"忘机","魔化面具","幻邪手镯","灵光石项链","御道戒指"}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"降魔道衣(男)#降魔道衣(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"幻邪手镯",	--左手镯
				"幻邪手镯",	--右手镯
				"混元戒指",	--左戒指
				"混元戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},
		[31] = {
			{"御道头盔"}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"降魔道衣(男)#降魔道衣(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"幻邪手镯",	--左手镯
				"幻邪手镯",	--右手镯
				"混元戒指",	--左戒指
				"混元戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},
		[32] = {
			{}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"降魔道衣(男)#降魔道衣(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"幻邪手镯",	--左手镯
				"幻邪手镯",	--右手镯
				"混元戒指",	--左戒指
				"混元戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},	
		[33] = {
			{}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"降魔道衣(男)#降魔道衣(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"幻邪手镯",	--左手镯
				"幻邪手镯",	--右手镯
				"混元戒指",	--左戒指
				"混元戒指",	--右戒指
				"紫霞靴",	--靴子
			}
		},		
		[34] = {
			{"玄光靴子"}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"降魔道衣(男)#降魔道衣(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"幻邪手镯",	--左手镯
				"幻邪手镯",	--右手镯
				"混元戒指",	--左戒指
				"混元戒指",	--右戒指
				"玄光靴子",	--靴子
			}
		},	
		[35] = {
			{"护体道袍(男)","护体道袍(女)","玄光戒指"}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"护体道袍(男)#护体道袍(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"幻邪手镯",	--左手镯
				"幻邪手镯",	--右手镯
				"玄光戒指",	--左戒指
				"玄光戒指",	--右戒指
				"玄光靴子",	--靴子
			}
		},			
		[36] = {
			{"玄光护腕"}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"护体道袍(男)#护体道袍(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"玄光护腕",	--左手镯
				"玄光护腕",	--右手镯
				"玄光戒指",	--左戒指
				"玄光戒指",	--右戒指
				"玄光靴子",	--靴子
			}
		},	
		[37] = {
			{}, --当前级别可以穿戴的装备
			{
				"忘机",	--武器
				"护体道袍(男)#护体道袍(女)",	--衣服
				"魔化面具",	--头盔
				"灵光石项链",	--项链
				"玄光护腕",	--左手镯
				"玄光护腕",	--右手镯
				"玄光戒指",	--左戒指
				"玄光戒指",	--右戒指
				"玄光靴子",	--靴子
			}
		},			
		[38] = {
			{"龙渊","无魂头盔","天翼手镯"}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"护体道袍(男)#护体道袍(女)",	--衣服
				"无魂头盔",	--头盔
				"灵光石项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"玄光戒指",	--左戒指
				"玄光戒指",	--右戒指
				"玄光靴子",	--靴子
			}
		},	
		[39] = {
			{"飞尘道靴","上清玄指"}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"护体道袍(男)#护体道袍(女)",	--衣服
				"无魂头盔",	--头盔
				"灵光石项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"上清玄指",	--左戒指
				"上清玄指",	--右戒指
				"飞尘道靴",	--靴子
			}
		},	
		[40] = {
			{"飞尘护腕","光明道袍(男)","光明道袍(女)"}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"光明道袍(男)#光明道袍(女)",	--衣服
				"无魂头盔",	--头盔
				"灵光石项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"上清玄指",	--左戒指
				"上清玄指",	--右戒指
				"飞尘道靴",	--靴子
			}
		},	
		[41] = {
			{"飞尘护腕","光明道袍(男)","光明道袍(女)","天极项链","飞尘戒指"}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"光明道袍(男)#光明道袍(女)",	--衣服
				"无魂头盔",	--头盔
				"天极项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"飞尘戒指",	--左戒指
				"上清玄指",	--右戒指
				"飞尘道靴",	--靴子
			}
		},	
		[42] = {
			{}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"光明道袍(男)#光明道袍(女)",	--衣服
				"无魂头盔",	--头盔
				"天极项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"飞尘戒指",	--左戒指
				"上清玄指",	--右戒指
				"飞尘道靴",	--靴子
			}
		},	
		[43] = {
			{"天劫道靴"}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"光明道袍(男)#光明道袍(女)",	--衣服
				"无魂头盔",	--头盔
				"天极项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"飞尘戒指",	--左戒指
				"上清玄指",	--右戒指
				"天劫道靴",	--靴子
			}
		},	
		[44] = {
			{"天劫道盔","天元道指"}, --当前级别可以穿戴的装备
			{
				"龙渊",	--武器
				"光明道袍(男)#光明道袍(女)",	--衣服
				"天劫道盔",	--头盔
				"天极项链",	--项链
				"天翼手镯",	--左手镯
				"天翼手镯",	--右手镯
				"飞尘戒指",	--左戒指
				"天元道指",	--右戒指
				"天劫道靴",	--靴子
			}
		},	
		[45] = {
			{"噬空","龙元道盔","太玄道袍(男)","太玄道袍(女)","天劫项链"}, --当前级别可以穿戴的装备
			{
				"噬空",	--武器
				"太玄道袍(男)#太玄道袍(女)",	--衣服
				"天劫道盔",	--头盔
				"天极项链",	--项链
				"飞尘护腕",	--左手镯
				"天翼手镯",	--右手镯
				"飞尘戒指",	--左戒指
				"天元道指",	--右戒指
				"天劫道靴",	--靴子
			}
		},	
		[46] = {
			{"上玄手镯","圣魂项链","天劫道指"}, --当前级别可以穿戴的装备
			{
				"噬空",	--武器
				"太玄道袍(男)#太玄道袍(女)",	--衣服
				"天劫道盔",	--头盔
				"天极项链",	--项链
				"飞尘护腕",	--右手镯
				"上玄手镯",	--左手镯
				"飞尘戒指",	--左戒指
				"天劫道指",	--右戒指
				"天劫道靴",	--靴子
			}
		},	
		[47] = {
			{"天劫护腕"}, --当前级别可以穿戴的装备
			{
				"噬空",	--武器
				"太玄道袍(男)#太玄道袍(女)",	--衣服
				"天劫道盔",	--头盔
				"天极项链",	--项链
				"飞尘护腕",	--右手镯
				"上玄手镯",	--左手镯
				"飞尘戒指",	--左戒指
				"天劫道指",	--右戒指
				"天劫道靴",	--靴子
			}
		},	
		[48] = {
			{"云扬道靴"}, --当前级别可以穿戴的装备
			{
				"噬空",	--武器
				"太玄道袍(男)#太玄道袍(女)",	--衣服
				"天劫道盔",	--头盔
				"天极项链",	--项链
				"飞尘护腕",	--右手镯
				"上玄手镯",	--左手镯
				"飞尘戒指",	--左戒指
				"天劫道指",	--右戒指
				"天劫道靴",	--靴子
			}
		},	
		[49] = {
			{"云扬头盔"}, --当前级别可以穿戴的装备
			{
				"噬空",	--武器
				"太玄道袍(男)#太玄道袍(女)",	--衣服
				"云扬头盔",	--头盔
				"天劫项链",	--项链
				"飞尘护腕",	--右手镯
				"上玄手镯",	--左手镯
				"飞尘戒指",	--左戒指
				"天劫道指",	--右戒指
				"云扬道靴",	--靴子
			}
		},	
		[50] = {
			{"无常","天鼎道袍(男)","天鼎道袍(女)","云扬项链"}, --当前级别可以穿戴的装备
			{
				"无常",	--武器
				"天鼎道袍(男)#天鼎道袍(女)",	--衣服
				"云扬头盔",	--头盔
				"天劫项链",	--项链
				"飞尘护腕",	--右手镯
				"上玄手镯",	--左手镯
				"飞尘戒指",	--左戒指
				"天劫道指",	--右戒指
				"云扬道靴",	--靴子
			}
		},	
		[51] = {
			{"云扬护腕(神)","云扬护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"无常",	--武器
				"天鼎道袍(男)#天鼎道袍(女)",	--衣服
				"云扬头盔",	--头盔
				"天劫项链",	--项链
				"云扬护腕(神)",	--右手镯
				"云扬护腕(圣)",	--左手镯
				"天劫道指",	--左戒指
				"天劫道指",	--右戒指
				"云扬道靴",	--靴子
			}
		},	
		[52] = {
			{"云扬戒指(神)","云扬戒指(圣)"}, --当前级别可以穿戴的装备
			{
				"无常",	--武器
				"天鼎道袍(男)#天鼎道袍(女)",	--衣服
				"云扬头盔",	--头盔
				"云扬项链",	--项链
				"云扬护腕(神)",	--右手镯
				"云扬护腕(圣)",	--左手镯
				"云扬戒指(神)",	--左戒指
				"云扬戒指(圣)",	--右戒指
				"云扬道靴",	--靴子
			}
		},	
		[53] = {
			{"四象道靴"}, --当前级别可以穿戴的装备
			{
				"无常",	--武器
				"天鼎道袍(男)#天鼎道袍(女)",	--衣服
				"云扬头盔",	--头盔
				"云扬项链",	--项链
				"云扬护腕(神)",	--右手镯
				"云扬护腕(圣)",	--左手镯
				"云扬戒指(神)",	--左戒指
				"云扬戒指(圣)",	--右戒指
				"云扬道靴",	--靴子
			}
		},	
		[54] = {
			{"四象头盔"}, --当前级别可以穿戴的装备
			{
				"无常",	--武器
				"天鼎道袍(男)#天鼎道袍(女)",	--衣服
				"四象头盔",	--头盔
				"云扬项链",	--项链
				"云扬护腕(神)",	--右手镯
				"云扬护腕(圣)",	--左手镯
				"云扬戒指(神)",	--左戒指
				"云扬戒指(圣)",	--右戒指
				"四象道靴",	--靴子
			}
		},	
		[55] = {
			{"赤霄白帝","鹤流瑶羽","鹤流瑶纱","四象项链"}, --当前级别可以穿戴的装备
			{
				"赤霄白帝",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"四象头盔",	--头盔
				"四象项链",	--项链
				"云扬护腕(神)",	--右手镯
				"云扬护腕(圣)",	--左手镯
				"云扬戒指(神)",	--左戒指
				"云扬戒指(圣)",	--右戒指
				"四象道靴",	--靴子
			}
		},	
		[56] = {
			{"四象护腕(神)","四象护腕(圣)"}, --当前级别可以穿戴的装备
			{
				"赤霄白帝",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"四象头盔",	--头盔
				"四象项链",	--项链
				"云扬护腕(神)",	--右手镯
				"四象护腕(圣)",	--左手镯
				"云扬戒指(神)",	--左戒指
				"云扬戒指(圣)",	--右戒指
				"四象道靴",	--靴子
			}
		},	
		[57] = {
			{"四象戒指(神)","四象戒指(圣)"}, --当前级别可以穿戴的装备
			{
				"赤霄白帝",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"四象头盔",	--头盔
				"四象项链",	--项链
				"四象护腕(神)",	--右手镯
				"四象护腕(圣)",	--左手镯
				"四象戒指(神)",	--左戒指
				"四象戒指(圣)",	--右戒指
				"四象道靴",	--靴子
			}
		},	
		[58] = {
			{"逍遥游梦"}, --当前级别可以穿戴的装备
			{
				"赤霄白帝",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"四象头盔",	--头盔
				"四象项链",	--项链
				"四象护腕(神)",	--右手镯
				"四象护腕(圣)",	--左手镯
				"四象戒指(神)",	--左戒指
				"四象戒指(圣)",	--右戒指
				"四象道靴",	--靴子
			}
		},	
		[59] = {
			{"逍遥道冠"}, --当前级别可以穿戴的装备
			{
				"赤霄白帝",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"四象头盔",	--头盔
				"四象项链",	--项链
				"四象护腕(神)",	--右手镯
				"四象护腕(圣)",	--左手镯
				"四象戒指(神)",	--左戒指
				"四象戒指(圣)",	--右戒指
				"四象道靴",	--靴子
			}
		},	
		[60] = {
			{"苍天梢月","逍遥项链"}, --当前级别可以穿戴的装备
			{
				"苍天梢月",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"逍遥道冠",	--头盔
				"逍遥项链",	--项链
				"四象护腕(神)",	--右手镯
				"四象护腕(圣)",	--左手镯
				"四象戒指(神)",	--左戒指
				"四象戒指(圣)",	--右戒指
				"逍遥游梦",	--靴子
			}
		},	
		[61] = {
			{"逍遥手镯"}, --当前级别可以穿戴的装备
			{
				"苍天梢月",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"逍遥道冠",	--头盔
				"逍遥项链",	--项链
				"逍遥手镯",	--右手镯
				"逍遥手镯",	--左手镯
				"四象戒指(神)",	--左戒指
				"四象戒指(圣)",	--右戒指
				"逍遥游梦",	--靴子
			}
		},	
		[62] = {
			{"逍遥戒指"}, --当前级别可以穿戴的装备
			{
				"苍天梢月",	--武器
				"鹤流瑶羽#鹤流瑶纱",	--衣服
				"逍遥道冠",	--头盔
				"逍遥项链",	--项链
				"逍遥手镯",	--右手镯
				"逍遥手镯",	--左手镯
				"逍遥戒指",	--左戒指
				"逍遥戒指",	--右戒指
				"逍遥游梦",	--靴子
			}
		},	
	},
}

local job_name = {
	"战士",
	"法师",
	"道士",
}

local job_shuxing = {
	"MaxPhyAtk",
	"MaxMagAtk",
	"MaxTaoAtk",
}

--装备
function zhuangbei(player,lv)
	local job = lualib:Job(player)
	
	if lv == nil then
		lv = lualib:Level(player)
	else
		lv = tonumber(lv)
	end

	if lv > table.maxn(zhuangbei_table[job]) or lv < 30 then
		lv = table.maxn(zhuangbei_table[job])
	end
		
	local yifu = ""
	local yifu_table = lualib:StrSplit(zhuangbei_table[job][lv][2][2],"#")
	if lualib:Gender(player) == 1 then
		yifu = yifu_table[1]
	else
		yifu = yifu_table[2]
	end
	
	--获取当前级别装备搭配物品
	local tuijie_name = {
		zhuangbei_table[job][lv][2][1], --武器
		yifu, --衣服
		zhuangbei_table[job][lv][2][3], --头盔
		zhuangbei_table[job][lv][2][4], --项链
		zhuangbei_table[job][lv][2][5],  --左护腕
		zhuangbei_table[job][lv][2][6], --右护腕
		zhuangbei_table[job][lv][2][7], --左戒指
		zhuangbei_table[job][lv][2][8], --右戒指
		zhuangbei_table[job][lv][2][9], --靴子
	}
	
	--获取玩家身上装备guid
	local weapon = lualib:Item_GetBySite(player,lua_site_weapon)		--获得身上武器guid
	local armor = lualib:Item_GetBySite(player,lua_site_armor)			--获得身上衣服guid
	local helmet = lualib:Item_GetBySite(player,lua_site_helmet)		--获得身上头盔guid
	local necklace = lualib:Item_GetBySite(player,lua_site_necklace)	--获得身上项链guid
	local wrist_0 = lualib:Item_GetBySite(player,lua_site_wrist_0)		--获得身上左手镯guid
	local wrist_1 = lualib:Item_GetBySite(player,lua_site_wrist_1)		--获得身上右手镯guid
	local ring_0 = lualib:Item_GetBySite(player,lua_site_ring_0)		--获得身上左戒指guid
	local ring_1 = lualib:Item_GetBySite(player,lua_site_ring_1)		--获得身上右戒指guid
	local shoes = lualib:Item_GetBySite(player,lua_site_shoes)			--获得身上靴子guid
	
	--获取玩家身上装备名字
	local shenshang_name = {
		lualib:KeyName(weapon),		--获得身上武器名字
		lualib:KeyName(armor),		--获得身上衣服名字
		lualib:KeyName(helmet),		--获得身上头盔名字
		lualib:KeyName(necklace),	--获得身上项链名字
		lualib:KeyName(wrist_0),	--获得身上左手镯名字
		lualib:KeyName(wrist_1),	--获得身上右手镯名字
		lualib:KeyName(ring_0),		--获得身上左戒指名字
		lualib:KeyName(ring_1),		--获得身上右戒指名字
		lualib:KeyName(shoes),		--获得身上靴子名字
	}

	--设置武器衣服头盔显示的图片	
	local tupian_table = {}
	
	for i=1,3 do
		local tbale = lualib:Item_DataRow(tuijie_name[i])
		tupian_table[i] = tbale.BigIcon
	end
	
	--设置穿戴装备图片
	local kechuan_table = {}
	for i=1,5 do
		if zhuangbei_table[job][lv][1][i] ~= nil then
			kechuan_table[i] = {zhuangbei_table[job][lv][1][i],1}
		else
			kechuan_table[i] = {"",0}
		end
	end
	
	--根据职业设置要判断装备好坏的属性
	local shuxing = job_shuxing[job]

	--各属性变化table
	local tisheng_table = {
		MaxPhyAtk = 0,--物理攻击
		MaxMagAtk = 0,--魔法攻击
		MaxTaoAtk = 0,--道术攻击
		MaxPhyDef = 0,--物理防御
		MaxMagDef = 0,--魔法防御
		LC = 0,--诅咒/幸运
		Hit = 0,--命中
		Miss = 0,--闪避
		Burst = 0,--暴击
	}

	--设置是否显示上升图片
	local shangsheng_table = {}
	for i=1,9 do
		local item_1 = lualib:Item_DataRow(tuijie_name[i])
		
		--获取推荐装备的基础属性
		tisheng_table.MaxPhyAtk = tisheng_table.MaxPhyAtk + item_1.MaxPhyAtk	--物理攻击
		tisheng_table.MaxMagAtk = tisheng_table.MaxMagAtk + item_1.MaxMagAtk	--魔法攻击
		tisheng_table.MaxTaoAtk = tisheng_table.MaxTaoAtk + item_1.MaxTaoAtk	--道术攻击
		tisheng_table.MaxPhyDef = tisheng_table.MaxPhyDef + item_1.MaxPhyDef	--物理防御
		tisheng_table.MaxMagDef = tisheng_table.MaxMagDef + item_1.MaxMagDef	--魔法防御
		tisheng_table.LC = tisheng_table.LC + item_1.LC	--幸运/诅咒
		tisheng_table.Hit = tisheng_table.Hit + item_1.Hit	--命中
		tisheng_table.Miss = tisheng_table.Miss + item_1.Miss	--闪避
		tisheng_table.Burst = tisheng_table.Burst + item_1.Burst	--暴击
		
		if tuijie_name[i] ~= "" and shenshang_name[i] ~= "" then
			local item_2 = lualib:Item_DataRow(shenshang_name[i])
			--获取身上装备的属性，并减少这件装备的属性
			tisheng_table.MaxPhyAtk = tisheng_table.MaxPhyAtk - item_2.MaxPhyAtk	--物理攻击
			tisheng_table.MaxMagAtk = tisheng_table.MaxMagAtk - item_2.MaxMagAtk	--魔法攻击
			tisheng_table.MaxTaoAtk = tisheng_table.MaxTaoAtk - item_2.MaxTaoAtk	--道术攻击
			tisheng_table.MaxPhyDef = tisheng_table.MaxPhyDef - item_2.MaxPhyDef	--物理防御
			tisheng_table.MaxMagDef = tisheng_table.MaxMagDef - item_2.MaxMagDef	--魔法防御
			tisheng_table.LC = tisheng_table.LC - item_2.LC	--幸运/诅咒
			tisheng_table.Hit = tisheng_table.Hit - item_2.Hit	--命中
			tisheng_table.Miss = tisheng_table.Miss - item_2.Miss	--闪避
			tisheng_table.Burst = tisheng_table.Burst - item_2.Burst	--暴击
		
			if item_1[shuxing] > item_2[shuxing] then
				shangsheng_table[i] = 1
			else
				shangsheng_table[i] = 0
			end
		elseif shenshang_name[i] == "" then
			shangsheng_table[i] = 1
		else
			shangsheng_table[i] = 0	
		end
	end

	local msg = "                                                 #COLORCOLOR_GREENG#【攻略】#COLOREND#\n                            #COLORCOLOR_RED#快捷传送费用：#COLOREND#40级以下#COLORCOLOR_YELLOW#300#COLOREND#金币；40级以上#COLORCOLOR_YELLOW#3000#COLOREND#金币\n"
	msg = msg .. "#IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@xianshi *01*[经验]>  #OFFSET<X:-2,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanqian *01*[赚钱]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@zhuanyuanbao *01*[赚元宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@dabao *01*[打宝]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@mapchanchu *01*[地图产出]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@itemdesc *01*[道具]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##OFFSET<X:0,Y:-4>#<@jinjie *01*[进阶]>  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100003>##COLORCOLOR_RED##OFFSET<X:0,Y:-4>#<@baobao *01*[宝宝]>#COLOREND#  #OFFSET<X:0,Y:4>##IMAGE<ID:1900100001>##OFFSET<X:0,Y:-4>##COLORCOLOR_RED#[装备]#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:0,Y:-10>##COLORCOLOR_BROWN#------------------------------------------------------------------------------------------------------------#COLOREND#\n"
	msg = msg .. "#POS<X:270>##POS<Y:70>##COLORCOLOR_ORANGE#装备基础属性于与你对比结果：#COLOREND#\n\n"
	msg = msg .. "#POS<X:270>#物理攻击："..shuzizengjian(tisheng_table.MaxPhyAtk).."\n"
	msg = msg .. "#POS<X:270>#魔法攻击："..shuzizengjian(tisheng_table.MaxMagAtk).."\n"
	msg = msg .. "#POS<X:270>#道术攻击："..shuzizengjian(tisheng_table.MaxTaoAtk).."\n"
	msg = msg .. "#POS<X:270>#物理防御："..shuzizengjian(tisheng_table.MaxPhyDef).."\n"
	msg = msg .. "#POS<X:270>#魔法防御："..shuzizengjian(tisheng_table.MaxMagDef).."\n"
	msg = msg .. "#POS<X:270>#诅咒/幸运："..shuzizengjian(tisheng_table.LC).."\n"
	msg = msg .. "#POS<X:270>#命中："..shuzizengjian(tisheng_table.Hit).."\n"
	msg = msg .. "#POS<X:270>#闪避："..shuzizengjian(tisheng_table.Miss).."\n"
	msg = msg .. "#POS<X:270>#暴击："..shuzizengjian(tisheng_table.Burst).."\n"
	msg = msg .. "#POS<X:270>##POS<Y:280>##COLORCOLOR_ORANGE#"..lv.."级可穿戴装备：#COLOREND#\n\n"
	msg = msg .. "#POS<X:270>##POS<Y:350>##COLORCOLOR_ORANGE#点击以下等级查看推荐装备搭配：#COLOREND#\n\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#30 *01*30级>  <@zhuangbei#31 *01*31级>  <@zhuangbei#32 *01*32级>  <@zhuangbei#33 *01*33级>  <@zhuangbei#34 *01*34级>  <@zhuangbei#35 *01*35级>  <@zhuangbei#36 *01*36级>  <@zhuangbei#37 *01*37级>  <@zhuangbei#38 *01*38级>  <@zhuangbei#39 *01*39级>\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#40 *01*40级>  <@zhuangbei#41 *01*41级>  <@zhuangbei#42 *01*42级>  <@zhuangbei#43 *01*43级>  <@zhuangbei#44 *01*44级>  <@zhuangbei#45 *01*45级>  <@zhuangbei#46 *01*46级>  <@zhuangbei#47 *01*47级>  <@zhuangbei#48 *01*48级>  <@zhuangbei#49 *01*49级>\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#50 *01*50级>  <@zhuangbei#51 *01*51级>  <@zhuangbei#52 *01*52级>  <@zhuangbei#53 *01*53级>  <@zhuangbei#54 *01*54级>  <@zhuangbei#55 *01*55级>  <@zhuangbei#56 *01*56级>  <@zhuangbei#57 *01*57级>  <@zhuangbei#58 *01*58级>  <@zhuangbei#59 *01*59级>\n"
	msg = msg .. "#POS<X:270>#<@zhuangbei#60 *01*60级>  <@zhuangbei#61 *01*61级>  <@zhuangbei#62 *01*62级>\n"
	
	local str = "<form default_parent=NpcTalk,Container>"
	str = str .. "<itemctrl id=头盔 x=110 y=200 init_item="..tuijie_name[3].." count=1 is_bound=false />"
	str = str .. "<image id=图片2 x=0 y=65 type=normal image=1900800000 />"
	str = str .. "<image id=武器图片 x=-10 y=115 type=normal image="..tupian_table[1].." />"
	str = str .. "<image id=衣服图片 x=-10 y=115 type=normal image="..tupian_table[2].." />"
	str = str .. "<image id=头盔图片 x=-10 y=115 type=normal image="..tupian_table[3].." />"
	str = str .. "<richedit id=文字1 x=60 y=80 w=200 h=30 text=#COLORCOLOR_BLUE#"..lv.."级"..job_name[job].."推荐搭配#COLOREND# font=SIMLI18 />"
	str = str .. "<richedit id=文字2 x=27 y=92 w=200 h=30 text="..lv.." />"
	str = str .. "<itemctrl id=武器 x=64 y=264 init_item="..tuijie_name[1].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=衣服 x=110 y=274 init_item="..tuijie_name[2].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=项链 x=214 y=204 init_item="..tuijie_name[4].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=左护腕 x=18 y=308 init_item="..tuijie_name[5].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=右护腕 x=214 y=308 init_item="..tuijie_name[6].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=左戒指 x=18 y=359 init_item="..tuijie_name[7].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=右戒指 x=214 y=359 init_item="..tuijie_name[8].." count=1 is_bound=false />"
	str = str .. "<itemctrl id=靴子 x=164 y=411 init_item="..tuijie_name[9].." count=1 is_bound=false />"

	str = str .. "<image id=头盔+ x=136 y=223 type=normal image=1905600010 visible="..shangsheng_table[3].." />"
	str = str .. "<image id=武器+ x=90	y=287 type=normal image=1905600010 visible="..shangsheng_table[1].." />"
	str = str .. "<image id=衣服+ x=136	y=297 type=normal image=1905600010 visible="..shangsheng_table[2].." />"
	str = str .. "<image id=项链+ x=240	y=227 type=normal image=1905600010 visible="..shangsheng_table[4].." />"
	str = str .. "<image id=左护腕+ x=44 y=331 type=normal image=1905600010 visible="..shangsheng_table[5].." />"
	str = str .. "<image id=右护腕+ x=240 y=331 type=normal image=1905600010 visible="..shangsheng_table[6].." />"
	str = str .. "<image id=左戒指+ x=44 y=382 type=normal image=1905600010 visible="..shangsheng_table[7].." />"
	str = str .. "<image id=右戒指+ x=240 y=382 type=normal image=1905600010 visible="..shangsheng_table[8].." />"
	str = str .. "<image id=靴子+ x=190 y=434 type=normal image=1905600010 visible="..shangsheng_table[9].." />"
	
	str = str .. "<itemctrl id=装备1 x=274 y=298 init_item="..kechuan_table[1][1].." count=1 is_bound=false visible="..kechuan_table[1][2].." />"
	str = str .. "<itemctrl id=装备2 x=314 y=298 init_item="..kechuan_table[2][1].." count=1 is_bound=false visible="..kechuan_table[2][2].." />"
	str = str .. "<itemctrl id=装备3 x=354 y=298 init_item="..kechuan_table[3][1].." count=1 is_bound=false visible="..kechuan_table[3][2].." />"
	str = str .. "<itemctrl id=装备4 x=394 y=298 init_item="..kechuan_table[4][1].." count=1 is_bound=false visible="..kechuan_table[4][2].." />"
	str = str .. "<itemctrl id=装备5 x=434 y=298 init_item="..kechuan_table[5][1].." count=1 is_bound=false visible="..kechuan_table[5][2].." />"
	
	msg = str .. "<text><![CDATA["..msg.."]]></text></form>"
	lualib:SetPanelSize(player, 710, 500)
	return msg
end

--------------------彩色数字增减效果-----------------------
function shuzizengjian(i)
	i = tonumber(i)
	local msg = ""
	local s = ""
	if i == 0 then
		msg = "#IMAGE<ID:1900408300>#"
	elseif i > 0 then
		msg = "#IMAGE<ID:1900403300>#"
		s = tostring(i)
		for i1=1,#s do
			if string.sub(s,i1,i1)+3 >= 10 then
				msg = msg .. "#IMAGE<ID:190040"..string.sub(s,i1,i1)+63 .."00>#"
			else
				msg = msg .. "#IMAGE<ID:1900406"..string.sub(s,i1,i1)+3 .."00>#"
			end
		end
	else
		msg = "#IMAGE<ID:1900414200>#"
		i = 65535 - (i + 65535)
		s = tostring(i)
		for i1=1,#s do
			if string.sub(s,i1,i1)+3 >= 10 then
				msg = msg .. "#IMAGE<ID:190040"..string.sub(s,i1,i1)+83 .."00>#"
			else
				msg = msg .. "#IMAGE<ID:1900408"..string.sub(s,i1,i1)+3 .."00>#"
			end
		end
	end
	return msg
end

function MapMoveXYA(player, map_key_name, x, y, r)
	local msg=""
	
	if map_key_name == "海底入口" then
		local haidi_Open = lualib:IO_GetCustomVarInt("haidi_Open")
		if haidi_Open < 20 then
			return "海角秘境还未被勇士开启，当大陆出现".. 20 .."位47级的勇士时，海角秘境的探险之路将会开启！"
		end
	end
	
	
	local level = lualib:Level(player)
	if level >= 40 then
		gold = 3000
	else
		gold = 300
	end
	
	if not lualib:Player_SubGold(player, gold, false, "扣除金币：传送费", "攻略") then return "你的金币不足"..gold.."，不能传送！\n \n \n \n \n \n \n \n                                                    #OFFSET<X:0,Y:0>##IMAGE1902700019##OFFSET<X:0,Y:-2>#<@xianshi *01*「返回」>" end
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	local mapname = {"巫山城", "东临城", "新手村", "龙城武器店", "龙城首饰店", "龙城书店", "龙城", "神歌城"}
	
	for i = 1, #mapname do
		if map_key_name == mapname[1] then
			lualib:AddTimerEx(player, 124, 300, 1, "mvtx", "巫山城".."#"..x.."#"..y)
		elseif map_key_name == mapname[2] then
			lualib:AddTimerEx(player, 125, 300, 1, "mvtx", "东临城".."#"..x.."#"..y)
		elseif map_key_name == mapname[3] then
			lualib:AddTimerEx(player, 126, 300, 1, "mvtx", "新手村".."#"..x.."#"..y)
		elseif map_key_name == mapname[4] then
			lualib:AddTimerEx(player, 127, 300, 1, "mvtx", "龙城武器店".."#"..x.."#"..y)
		elseif map_key_name == mapname[5] then
			lualib:AddTimerEx(player, 128, 300, 1, "mvtx", "龙城首饰店".."#"..x.."#"..y)
		elseif map_key_name == mapname[6] then
			lualib:AddTimerEx(player, 129, 300, 1, "mvtx", "龙城书店".."#"..x.."#"..y)
		elseif map_key_name == mapname[7] then
			lualib:AddTimerEx(player, 129, 300, 1, "mvtx", "龙城".."#"..x.."#"..y)	
		elseif map_key_name == mapname[8] then
			lualib:AddTimerEx(player, 129, 300, 1, "mvtx", "神歌城".."#"..x.."#"..y)		
		end
	end

	if lualib:HasBuff(player,"摆摊") then
		lualib:SysPromptMsg(player,"你当前处于摆摊状态，无法传送")
		return false
	end
	
	return msg
end

function MapMove_zhenmo(npc, player, map_key_name, x, y, r)
	local zmc_key = 5
	local zhenmocheng_Open = lualib:IO_GetCustomVarInt("zhenmocheng_Open")
	if zhenmocheng_Open < zmc_key then
		return "镇魔城还未被勇士开启，当大陆出现"..zmc_key.."位50级的勇士时，镇魔城的探险之路将会开启！"
	end
	
	x = tonumber(x)
	y = tonumber(y)
	r = tonumber(r)
	
	local mapguid = lualib:MapGuid(player)
	local player_x = lualib:X(player)
	local player_y = lualib:Y(player)
	lualib:RunClientScript(mapguid, "mapeffect", "texiao", "100001670#"..player_x.."#"..player_y.."#0#0")

	local ret = lualib:Player_MapMoveXY(player,map_key_name, x, y, r)

	if ret ~= true then
		return "跳地图失败"
    end
	
	return ""
end

function mvtx(player, tierid, param1, param2, param3)

	mapming = param1
	map_x = param2
	map_y = param3

	local canshu = {"巫山城", "东临城", "新手村", "龙城武器店", "龙城首饰店", "龙城书店", "龙城", "神歌城"}
	for i = 1, #canshu do
		if mapming == canshu[i] then
			local csmapguid = lualib:Map_GetMapGuid(canshu[i])
			lualib:RunClientScript(csmapguid, "mapeffect", "texiao", "100001671#"..map_x.."#"..map_y.."#0#0")
		end
	end

end