function main(npc,player)
	local msg = "     凡人！我对这个世界了如指掌，可以告诉你一些必要的情报，不过……凡人，你有棒棒糖吗？\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:6>#        #IMAGE<ID:1902700017>#<@digong *01*「地宫介绍」>            #IMAGE<ID:1902700017>#<@huodong *01*「活动介绍」>\n \n"
	msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_RED#●#COLOREND#　地宫介绍为各大探险打怪地图\n"
	msg = msg.."#COLORCOLOR_RED#●#COLOREND#　活动介绍为游戏中各种活动的内容和规则玩法等\n"
    msg = msg.."#OFFSET<X:0,Y:-4>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                                 #IMAGE<ID:1902700019>#<@likai *01*「离开」>\n"
	return msg
end

function likai(npc,player)
	return ""
end

function digong(npc,player)
	local msg = "#COLORCOLOR_BROWN#────────请查看您想要了解的地宫────────#COLOREND#\n \n"
	msg = msg.." #OFFSET<X:0,Y:-8>##COLORCOLOR_SKYBLUE#【将 军 冢】#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#适合等级15-20级探险#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#坐标：巫山城[459:94#OFFSET<X:2,Y:0>#]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#【废弃矿洞】#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#适合等级20-25级探险#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#坐标：巫山城[ 19:91 ]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#【绝 路 城】#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#适合等级25-35级探险#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#坐标：绝路岭[ 16:54 #OFFSET<X:-1,Y:0>#]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#【妖山暗穴】#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#适合等级25-35级探险#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#坐标：龙　城[ 30:47 #OFFSET<X:-2,Y:0>#]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#【天 荒 阵】#COLOREND##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#适合等级30-40级探险#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#坐标：龙　城[210:197]#COLOREND#\n"
	msg = msg.." #COLORCOLOR_SKYBLUE#【天荒邪庙】#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#适合等级35-45级探险#COLOREND##OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND##COLORCOLOR_ORANGE#坐标：龙　城[518:23 #OFFSET<X:-1,Y:0>#]#COLOREND#\n"
	msg = msg.."                             	                  #IMAGE<ID:1902700019>#<@main *01*「返回」>\n"

return msg
end

function huodong(npc,player)
	local msg = "           #COLORCOLOR_BROWN#卍卍卍→#COLOREND##COLORCOLOR_RED#请选择您想要了解的活动#COLOREND##COLORCOLOR_BROWN#←卍卍卍#COLOREND#\n \n"
        msg = msg.."#COLORCOLOR_RED#●#COLOREND#<@chuji *01*【  试  炼  】>    #COLORCOLOR_RED#●#COLOREND#<@piaoliu *01*【 漂 流 岛 】>    #COLORCOLOR_RED#●#COLOREND#<@yinling *01*【 引 灵 寺 】>\n"
        msg = msg.."#COLORCOLOR_RED#●#COLOREND#<@suomo *01*【 锁 魔 宫 】>    #COLORCOLOR_RED#●#COLOREND#<@fengmo *01*【 封 魔 阵 】>    #COLORCOLOR_RED#●#COLOREND#<@wudouchang *01*【 武 斗 场 】>\n"
        msg = msg.."#COLORCOLOR_RED#●#COLOREND#<@zhongji *01*【 中级试炼 】>    #OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND#<@kexing *01*【 克星挑战 】>    #OFFSET<X:-1,Y:0##COLORCOLOR_RED#●#COLOREND#<@gumuduobao *01*【 古墓夺宝 】>\n"
        msg = msg.."#COLORCOLOR_RED#●#COLOREND#<@duobaoyingxiong *01*【 夺宝英雄 】>    #OFFSET<X:-1,Y:0>##COLORCOLOR_RED#●#COLOREND#<@wangling *01*【 亡灵禁地 】>\n"
        msg = msg.."#COLORCOLOR_RED#●#COLOREND#<@tianxiadiyi *01*【天下第一战】>    #OFFSET<X:-2,Y:0>##COLORCOLOR_RED#●#COLOREND#<@ditianchongtian *01*【三重天秘洞】>\n"
	msg = msg.."                             	                  #IMAGE<ID:1902700019>#<@main *01*「返回」>\n"
	return msg
end


function jiangjunzhong(npc,player)
	local msg = "#COLORCOLOR_BROWN# ───────────将　军　冢───────────#COLOREND#\n \n"
	msg = msg.."#COLORCOLOR_GOLD#╔━━━━━━━╗#COLOREND#　　　　#COLORCOLOR_ORANGE#仙路渺渺　神途遥遥#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#┃#COLOREND#　将　军　冢　#COLORCOLOR_GOLD#┃#COLOREND#　　　　#COLORCOLOR_ORANGE#天藏大陆  分外妖娆#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╚━━━━━━━╝#COLOREND#　　　　#COLORCOLOR_ORANGE#历经万难　终寻大道#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-2>##COLORCOLOR_BLUE#┏━━━━━━━┳━━━━━━━━━━━━━━━━━┓#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#适合等级#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#合适15-20级玩家探险#COLOREND#          #COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┣━━━━━━━╋━━━━━━━━━━━━━━━━━┫\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#进入坐标#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#可从巫山城[459:94]进入#COLOREND#       #COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┗━━━━━━━┻━━━━━━━━━━━━━━━━━┛#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*「返回」>\n"
	return msg
end

function jiangshimu(npc,player)
       local msg = "#COLORCOLOR_GOLD#╔━━━━━━━━━━╗#COLOREND#　　#COLORCOLOR_ORANGE#仙路渺渺　神途遥遥#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╠#COLOREND##COLORCOLOR_RED#废#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#弃#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#矿#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#洞#COLOREND##COLORCOLOR_GOLD#╣#COLOREND#　　#COLORCOLOR_ORANGE#天藏大陆  分外妖娆#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╚━━━━━━━━━━╝#COLOREND#　　#COLORCOLOR_ORANGE#历经万难　终寻大道#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┏━━━━━━━┳━━━━━━━━━━━━━━━━━┓#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#适合等级#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#合适20-25级玩家探险#COLOREND#          #COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┣━━━━━━━╋━━━━━━━━━━━━━━━━━┫\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#进入坐标#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#可从巫山城[19:91]进入#COLOREND#         #OFFSET<X:-2,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┗━━━━━━━┻━━━━━━━━━━━━━━━━━┛#COLOREND#\n"
	msg = msg.."                                            #IMAGE<ID:1902700019>#<@digong *01*「返回」>\n"
	return msg
end

function yaoshan(npc,player)
       local msg = "#COLORCOLOR_GOLD#╔━━━━━━━━━━╗#COLOREND#　　#COLORCOLOR_ORANGE#仙路渺渺　神途遥遥#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╠#COLOREND##COLORCOLOR_RED#妖#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#山#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#暗#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#穴#COLOREND##COLORCOLOR_GOLD#╣#COLOREND#　　#COLORCOLOR_ORANGE#天藏大陆  分外妖娆#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╚━━━━━━━━━━╝#COLOREND#　　#COLORCOLOR_ORANGE#历经万难　终寻大道#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┏━━━━━━━┳━━━━━━━━━━━━━━━━━┓#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#适合等级#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#合适25-35级玩家探险#COLOREND#          #COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┣━━━━━━━╋━━━━━━━━━━━━━━━━━┫\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#进入坐标#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#可从龙城[30:47]进入#COLOREND#          #OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┗━━━━━━━┻━━━━━━━━━━━━━━━━━┛#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*「返回」>\n"
	return msg
end

function juelucheng(npc,player)
       local msg = "#COLORCOLOR_GOLD#╔━━━━━━━╗#COLOREND#　　　　#COLORCOLOR_ORANGE#仙路渺渺　神途遥遥#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╠#COLOREND##COLORCOLOR_RED#绝#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#路#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#城#COLOREND##COLORCOLOR_GOLD#╣#COLOREND#　　　　#COLORCOLOR_ORANGE#天藏大陆  分外妖娆#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╚━━━━━━━╝#COLOREND#　　　　#COLORCOLOR_ORANGE#历经万难　终寻大道#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┏━━━━━━━┳━━━━━━━━━━━━━━━━━┓#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#适合等级#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#合适25-35级玩家探险#COLOREND#          #COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┣━━━━━━━╋━━━━━━━━━━━━━━━━━┫\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#进入坐标#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#可从绝路岭[16:54]进入#COLOREND#        #OFFSET<X:1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┗━━━━━━━┻━━━━━━━━━━━━━━━━━┛#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*「返回」>\n"
	return msg
end

function tianhuangzhen(npc,player)
       local msg = "#COLORCOLOR_GOLD#╔━━━━━━━╗#COLOREND#　　　　#COLORCOLOR_ORANGE#仙路渺渺　神途遥遥#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╠#COLOREND##COLORCOLOR_RED#天#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#荒#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#阵#COLOREND##COLORCOLOR_GOLD#╣#COLOREND#　　　　#COLORCOLOR_ORANGE#天藏大陆  分外妖娆#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╚━━━━━━━╝#COLOREND#　　　　#COLORCOLOR_ORANGE#历经万难　终寻大道#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┏━━━━━━━┳━━━━━━━━━━━━━━━━━┓#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#适合等级#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#合适30-40级玩家探险#COLOREND#          #OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┣━━━━━━━╋━━━━━━━━━━━━━━━━━┫\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#进入坐标#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#可从龙城[210:197]进入#COLOREND#         #COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┗━━━━━━━┻━━━━━━━━━━━━━━━━━┛#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*「返回」>\n"
	return msg
end

function xiemiao(npc,player)
       local msg = "#COLORCOLOR_GOLD#╔━━━━━━━━━━╗#COLOREND#　　#COLORCOLOR_ORANGE#仙路渺渺　神途遥遥#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╠#COLOREND##COLORCOLOR_RED#天#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#荒#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#邪#COLOREND##COLORCOLOR_GOLD#╣╠#COLOREND##COLORCOLOR_RED#庙#COLOREND##COLORCOLOR_GOLD#╣#COLOREND#　　#COLORCOLOR_ORANGE#天藏大陆  分外妖娆#COLOREND#\n"
	msg = msg.."#OFFSET<X:0,Y:-3>##COLORCOLOR_GOLD#╚━━━━━━━━━━╝#COLOREND#　　#COLORCOLOR_ORANGE#历经万难　终寻大道#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┏━━━━━━━┳━━━━━━━━━━━━━━━━━┓#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#适合等级#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#合适35-45级玩家探险#COLOREND#          #OFFSET<X:-1,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┣━━━━━━━╋━━━━━━━━━━━━━━━━━┫\n"
	msg = msg.."#COLORCOLOR_BLUE#┃#COLOREND# #COLORCOLOR_GREENG#■#COLOREND##COLORCOLOR_GOLD#进入坐标#COLOREND##COLORCOLOR_GREENG#■#COLOREND# #COLORCOLOR_BLUE#┃#COLOREND#       #COLORCOLOR_GOLD#可从龙城[518:23]进入#COLOREND#         #OFFSET<X:4,Y:0>##COLORCOLOR_BLUE#┃#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BLUE#┗━━━━━━━┻━━━━━━━━━━━━━━━━━┛#COLOREND#\n"
	msg = msg.."                                             #IMAGE<ID:1902700019>#<@digong *01*「返回」>\n"
	return msg
end

function tianxiadiyi(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#天下第一战:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#周一到周四巫山城都会举办一场比赛，从而角逐出最强实力的\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#高手，可以通过巫山城[330:270]-武馆教头参与活动。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"
	return msg
end

function piaoliu(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#漂 流 岛:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每天13:00:00、19:00:00、21:00:00开启活动，可通过龙城[240:220]\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#通灵师参与活动，每次活动持续半小时。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function chuji(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#试  炼:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#16-45级的玩家每天可以参与3次试炼任务，第1次免费进入，之\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#后需要缴纳一张试炼场通行证才可进入，可从龙城[232:215]-\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#试炼教头进入。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #OFFSET<X:0,Y:-4>##IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function zhongji(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#中级试炼:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#26-35级的玩家每天可以参与一次试炼任务，可从龙城[228:219]\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#中级试炼教头进入。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end



function ditianchongtian(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#第三重天秘洞:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每天15:00:00、16:30:00、22:00:00、23:30:00开启活动，可从龙城\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#[237:215]-何童天小妖进入。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end


function kexing(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#克星挑战:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#玩家每天可以参与一次克星挑战，可从龙城[227:216]点击克星挑\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#战NPC参与。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end
-----
function wangling(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#亡灵禁地:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#亡灵禁地每天14:30~15:00　20:00~20:30开放，玩家可从龙城\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#[239:216]寻找禁地使者参与活动。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function fengmo(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#封 魔 阵:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每天可以参与3次封魔阵，可从龙城[231:239]寻找封魔阵引路人\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#进入，参与的玩家必须登记大于等于25，并缴纳一个封魔令牌。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function yinling(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#引 灵 寺:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每天14:00~14:30　20:30~21:00开启活动，可从龙城引灵尊者\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#[242:224]进入地图。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function suomo(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#锁 魔 宫:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#全天开放，可从龙城锁魔宫传送人[228:239]进入地图探险，进入\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每人需要缴纳50000金币。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function gumuduobao(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#古墓夺宝:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每周二、周四、周六  17:00~17:30　21:30~22:00开启活动，可从\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#龙城古墓守卫[222:224]进入地图探险。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function duobaoyingxiong(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#夺宝英雄:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每周一、周三、周五 17:00~17:30　21:30~22:00开启活动，可从龙\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#城夺宝英雄[234:238]进入地图探险。\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                           #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end

function wudouchang(npc,player)
	local msg = "#COLORCOLOR_BROWN#───────────活动详细介绍───────────#COLOREND#\n \n"
	 msg = msg.."#OFFSET<X:0,Y:-6>##COLORCOLOR_ORANGE#武 斗 场:#COLOREND#\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#每日 13:30、15:30、16:30、19:30、21:00:00开启活动，35级以下玩\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#家通过巫山城武斗场使者[242,309]进入地图，或者系统提示，点\n"
	 msg = msg.."#OFFSET<X:0,Y:3>#击直接进入活动!\n"
	 msg = msg.."#OFFSET<X:0,Y:5>##COLORCOLOR_BROWN#────────────────────────────#COLOREND#\n"
	msg = msg.."                                          #OFFSET<X:0,Y:-4># #IMAGE<ID:1902700019># <@huodong *01*「返回」>\n"

	return msg
end