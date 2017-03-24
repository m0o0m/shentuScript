local ye = 12
local weapon_t = {--武器列表
	{"双龙剑(无特效)","双龙剑","赤龙刃","绿玉屠龙","西域战刀","铁血之刃","怒火狂刀","魔域巨刃",},--战士武器
	{"寂灭法杖","轮回法杖","新武器2","新武器3","铁血法杖","新武器1",},--法师武器
	{"赤霄剑","龙泉剑","七星剑","西域道剑","铁血赤扇","玄冰夜火","无名剑","轮回道剑",},--道士武器
	{"光剑","光剑2","貂蝉双剑","赵云长枪","关羽大刀","方天画戟","诸葛亮羽毛扇","死神镰刀","金箍棒","唐僧法杖","擀面杖","双节棍","榔头","菜刀","电锯","板凳",},--通用武器
}
local armor_t = {
	{"赤峰战甲(女)","赤峰战甲(男)","天启战甲(女)","天启战甲(男)","浩宇战甲(男)","浩宇战甲(女)","铁血盔甲(男)","铁血盔甲(女)","西域战甲(男)","西域战甲(女)","噬魔战甲(男)","噬魔战甲(女)","伏虎战甲(男)","伏虎战甲(女)","琅环战甲(男)","琅环战甲(女)","雷光铠甲(男)","雷光铠甲(女)","镇威战神","战神吕布","战神李牧","战神项羽","天威战神(男)","武威战神(男)"},--战士衣服
	{"圣灵法袍(女)","圣灵法袍(男)","天启法袍(女)","天启法袍(男)","浩宇法袍(男)","浩宇法袍(女)","西域法袍(男)","西域法袍(女)","猴年衣服(女)","猴年衣服(男)","赤蓝法袍(男)","赤蓝法袍(女)","灵狐法袍(男)","灵狐法袍(女)","天瑞法袍(男)","天瑞法袍(女)","蓝魅之晶(女)","蓝魅之晶(男)"},--法师
	{"星辰道袍","星辰道衣","太玄道衣(女)","太玄道衣(男)","天启道袍(女)","天启道袍(男)","浩宇道袍(女)","浩宇道袍(男)","西域神袍(男)","西域神袍(女)","无极道袍(男)","无极道袍(女)","追风道袍(男)","追风道袍(女)","泉清道袍(男)","泉清道袍(女)"},--道士
	{"魔域氅衣(女)","魔域氅衣(男)","龙袍","龙袍(头盔)","凤袍","凤袍(头盔)","关羽套装","吕布套装","赵云套装","貂婵套装","诸葛亮套装","孙悟空套装","唐僧套装","死神之袍","死神头套","魔皇长袍","魔皇头盔","妖后长裙","妖后头冠","马超套装"},--其他
}



local talk_t = {"想要看到最新的美术收费资源，请点我！"}

function on_create(npc)
	lualib:AddTimer(npc, 1, 23000, -1, "on_timer_talk")
end

function on_timer_talk(npc, timer_id)

		lualib:SysMsg_SendRoleTalk(npc, talk_t[lualib:GenRandom(1, #talk_t)])

end

function main(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术最新翅膀资源展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_RED#     我这里可以看到最新的美术翅膀资源，请注意自己的包裹空间\n是否足够！#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."        #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@zhuangbei *01*「装备」   >  #IMAGE1902700036#<@chibang *01*「翅膀」   >  #IMAGE1902700036#<@guaiwu *01*「怪物」   >  #IMAGE1902700036#<@qita *01*「其他」   >#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:150,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@qingli *01*一键清除包裹物品>    #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@baoguo *01*扩充包裹>\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."#OFFSET<X:500,Y:0>##IMAGE1902700034##OFFSET<X:0,Y:0>#<@leave *01*「离开」>\n"
	return msg
end


function zhuangbei(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     这里可以领取武器装备和首饰！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."               #IMAGE1902700036#<@armor#1 *01*「服装」   >        #IMAGE1902700036#<@shoushi *01*「首饰」   >        #IMAGE1902700036#<@dunpai *01*「盾牌」   >#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function weapon(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源武器展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种武器！点击标题即可领取该项武器，比如点击「战士武器」即可领取所有的\n战士武器！领取前，请注意包裹空间是否足够！#COLOREND#\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*「战士武器」>   #COLORCOLOR_BROWN#│  #COLOREND# <@ww#2 *01*「法师武器」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ww#3 *01*「道士武器」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ww#4 *01*「另类武器」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#│                  │                  │                  │                  │"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#├─────────┼─────────┼─────────┼─────────┤"
		end
		yt = yt + 1
		for j = 1 , #weapon_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #weapon_t[j] then
				x = 78 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_weapon#"..weapon_t[j][i].."#"..t.." *01*"..weapon_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@weaponAg#"..t.." *01*「上一页」>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@weaponNe#"..t.." *01*「下一页」>      <@zhuangbei *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
    return ""
end

function weaponAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return weapon(npc,player,t)
end

function weaponNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if weapon_t[1][k] ~= nil or weapon_t[2][k] ~= nil or weapon_t[3][k] ~= nil or weapon_t[4][k] ~= nil then
		t = t + 1
	end
	return weapon(npc,player,t)
end

function get_weapon(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"测试","测试")
	return weapon(npc,player,t)
end

function armor(npc, player,t)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源服装展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种服装！点击标题即可领取该项武器，比如点击「战士服装」即可领取所有的\n战士服装！#COLOREND#\n\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND#<@fuf#1 *01*「战士服装」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND#  #OFFSET<X:-2,Y:0>#<@fuf#2 *01*「法师服装」>  #COLORCOLOR_BROWN#│  #COLOREND# <@fuf#3 *01*「道士服装」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@fuf#4 *01*「通用服装」>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#│                  │                  │                  │                  │"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#├─────────┼─────────┼─────────┼─────────┤"
		end
		yt = yt + 1
		for j = 1 , #armor_t do 
			local x = 36 + 120 * j
			if j ~= 4 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #armor_t[j] then
				x = 78 + 120 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_armor#"..armor_t[j][i].."#"..t.." *01*"..armor_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"    
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@armorAg#"..t.." *01*「上一页」>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@armorNe#"..t.." *01*「下一页」>      <@zhuangbei *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,600)
	return ""
end

function armorAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return armor(npc,player,t)
end

function armorNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if armor_t[1][k] ~= nil or armor_t[2][k] ~= nil or armor_t[3][k] ~= nil or armor_t[4][k] ~= nil then
		t = t + 1
	end
	return armor(npc,player,t)
end

function get_armor(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"测试","测试")
	return armor(npc,player,t)
end
  
function shoushi(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源首饰展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以成套领取各种首饰！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#1 *01*傲慢首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#2 *01*冷血首饰套>   #COLORCOLOR_BROWN#│   #COLOREND# <@ss#3 *01*九阳首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND# <@ss#4 *01*虚空首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#5 *01*紫晶首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#6 *01*吕布首饰套>   #COLORCOLOR_BROWN#│   #COLOREND# <@ss#7 *01*死神首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND# <@ss#8 *01*海龙首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#9 *01*天魔首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#10 *01*朝阳首饰套>   #COLORCOLOR_BROWN#│   #COLOREND# <@ss#11 *01*木域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND# <@ss#12 *01*水域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#13 *01*土域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#14 *01*铜域首饰套>   #COLORCOLOR_BROWN#│   #COLOREND# <@ss#15 *01*金域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND# <@ss#16 *01*神域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#17 *01*火域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ss#18 *01*红宝石首饰套>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND# <@ss#19 *01*绿宝石首饰套>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND# <@ss#20 *01*冰魄首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#21 *01*蓝魅首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#22 *01*玄冰首饰套>   #COLORCOLOR_BROWN#│   #COLOREND# <@ss#23 *01*神圣首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@ss#24 *01*魔域首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#25 *01*冥界首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#26 *01*幽域首饰套>   #COLORCOLOR_BROWN#│   #COLOREND# <@ss#27 *01*赤峰首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@ss#28 *01*星耀首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@ss#29 *01*金蝉首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@ss#30 *01*圣影首饰套>   #COLORCOLOR_BROWN#│   #COLOREND#<@ss#31 *01*羊年通用首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#<@ss#32 *01*羊年战士首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND#<@ss#33 *01*羊年道士首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND# #OFFSET<X:-2,Y:0>#<@ss#34 *01*羊年法师首饰套>  #COLORCOLOR_BROWN#│ #COLOREND#<@ss#35 *01*情人节通用首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#<@ss#36 *01*西域战士首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND#<@ss#37 *01*西域法师首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND# #OFFSET<X:-2,Y:0>#<@ss#38 *01*西域道士首饰套>  #COLORCOLOR_BROWN#│ #COLOREND#<@ss#39 *01*魔宫战士首饰套>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#<@ss#40 *01*魔宫法师首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND#<@ss#41 *01*魔宫道士首饰套> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:-2,Y:0>#<@ss#42  *01*    元灵首饰套>   #COLORCOLOR_BROWN#│ #COLOREND#<@ss#43 *01*   御灵首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#<@ss#44 *01*  通灵首饰套>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND#<@ss#45 *01* 七星首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND# #OFFSET<X:-2,Y:0>#<@ss#46  *01*   铁血头盔套>   #COLORCOLOR_BROWN#│ #COLOREND#                 #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│   #COLOREND#               #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │   #COLOREND#<@ss#47 *01*赤星首饰套>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:-2,Y:0>#<@ss#48  *01*  惊鸿首饰套>    #COLORCOLOR_BROWN# │ #COLOREND#<@ss#49 *01*  鬼焰首饰套>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │   #COLOREND#<@ss#50 *01*   玄阴首饰套>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n\n"  
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@zhuangbei *01*「返回上一页」>  <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end

function dunpai(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源武器展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种盾牌！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@dp#1 *01*修罗盾牌>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#  │   #COLOREND#  #OFFSET<X:-2,Y:0>#<@dp#2 *01*烬火盾牌>  #COLORCOLOR_BROWN#   │    #COLOREND# <@dp#3 *01*星辰盾牌>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND# <@dp#4 *01*九幽盾牌>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@dp#5 *01*刑天盾牌>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@dp#6 *01*雷霆盾牌>     #COLORCOLOR_BROWN#│     #COLOREND# <@dp#7 *01*帝释盾牌>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@dp#8 *01*寒魄盾牌>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@dp#9 *01*战王盾牌>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@dp#10 *01*铁王盾牌>    #COLORCOLOR_BROWN# │      #COLOREND#            #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │      #COLOREND#            #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"   
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end

function chibang(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源翅膀展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种翅膀！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#1 *01*风神翼  >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#2 *01*焚天翼 >     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0># │  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#3 *01*落焰翼 >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#4 *01*清霜翼 >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#5 *01*天凤翼 >      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#6 *01*雷霆翼 >     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0># │  #COLOREND##OFFSET<X:0,Y:0>#  <@cb#7 *01*浣纱洗练翼>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#8 *01*梦魇翼 >     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#9 *01*新翅膀9>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0># │  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#10 *01*新翅膀10>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#11 *01*新翅膀11>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#12 *01*新翅膀12>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#13 *01*新翅膀13>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#14 *01*新翅膀 1>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#15 *01*冰龙之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#16 *01*天使之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#17 *01*天羽之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#18 *01*荣光之翼>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#19 *01*圣战之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:0,Y:0>#   <@cb#20 *01*幽灵黄焰翼>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#  <@cb#21 *01*幻灵虹霓翅>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#  <@cb#22 *01*光芒天使羽>    #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#23 *01*冻之魂羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#24 *01*凤舞金羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │  #COLOREND##OFFSET<X:0,Y:0>#  <@cb#25 *01*紫琉璃羽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:0,Y:0>#  <@cb#26 *01*圣战之翼大版>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0># <@cb#27 *01*荣光之翼大版>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0># <@cb#28 *01*天羽之翼大版>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:0>#  <@cb#29 *01*天道之翼大版>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND##OFFSET<X:0,Y:0>#  <@cb#30 *01*魔幻佑翼(初级)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND##OFFSET<X:0,Y:0>#  <@cb#31 *01*魔幻佑翼(高级)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND##OFFSET<X:0,Y:0>#  <@cb#32 *01*封神羽翼(初级)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │#COLOREND##OFFSET<X:0,Y:0>#  <@cb#33 *01*封神羽翼(高级)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND##OFFSET<X:0,Y:0>#  <@cb#34 *01*弑神之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND##OFFSET<X:0,Y:0>#  <@cb#35 *01*君临之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND##OFFSET<X:0,Y:0>#  <@cb#36 *01*神之黄羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#37 *01*蓝影之羽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#38 *01*圣洁绿羽>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#39 *01*红芒神翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#40 *01*天劫之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#41 *01*无双之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#42 *01*风云之翼>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#43 *01*缥缈之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#44 *01*紫炎之羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │#COLOREND##OFFSET<X:0,Y:0>#  <@cb#45 *01*凤天魔翼(高级)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND##OFFSET<X:0,Y:0>#  <@cb#46 *01*凤天魔翼(初级)>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#47 *01*虚空之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#48 *01*赤炎之羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#49 *01*兰炎之羽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#50 *01*寸芒之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#51 *01*星辰之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#52 *01*莽荒之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#  <@cb#53 *01*九霄神天翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#54 *01*伏魔金翅>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#55 *01*嗜血魔翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:0>#   <@cb#56 *01*玄清道羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#57 *01*炽天战羽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#58 *01*幽冥法羽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#  <@cb#59 *01*雷霆闪电翼>    #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#60 *01*双龙翼>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#61 *01*启天之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#62 *01*流澜之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#63 *01*风魂之羽>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"   
	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#64 *01*蓝妖之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#65 *01*血色神羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#66 *01*绿野仙翅>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#67 *01*烈焰之羽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#68 *01*风雪之翅>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#69 *01*金丝魔翼>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#70 *01*浩然之翅>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#71 *01*罗兰幻羽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#72 *01*圣光之翼>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 

	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#77 *01*大乘之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#78 *01*新翅膀1>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#79 *01*新翅膀2>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 
 	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#80 *01*新翅膀3>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#81 *01*新翅膀4>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#82 *01*新翅膀5>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 
 	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#83 *01*新翅膀6>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#84 *01*新翅膀7>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#85 *01*新翅膀8>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 
   	


	msg = msg.."#COLORCOLOR_BROWN#      │ #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#73 *01*圣蓝之翼>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:0,Y:-2>#   <@cb#74 *01*紫光之翼>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#75 *01*天道之翼>#COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#   <@cb#76 *01*金羽之翼>     #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│  #COLOREND#                #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n" 
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@acb#18 *01*一键领取所有翅膀>\n"
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,400)
	return ""
end

function zuoqi(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源武器展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种坐骑！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@zq#1 *01*火龙>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#2 *01*冰龙>      #COLORCOLOR_BROWN#│    #COLOREND# <@zq#3 *01*嗜血飞龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND# <@zq#4 *01*七彩鸟>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@zq#5 *01*铁甲大象1>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#6 *01*铁甲大象2>    #COLORCOLOR_BROWN#│     #COLOREND# <@zq#7 *01*大角羊>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@zq#8 *01*铁甲犀牛>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@zq#9 *01*蓝色狮鹫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#10 *01*黄色狮鹫>     #COLORCOLOR_BROWN#│      #COLOREND# <@zq#11 *01*神鹿>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@zq#12 *01*黑豹>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@zq#13 *01*猎豹>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#  #OFFSET<X:-2,Y:0>#<@zq#14 *01*刺龙>      #COLORCOLOR_BROWN#│    #COLOREND# <@zq#15 *01*白翼飞龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@zq#16 *01*骨龙>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@zq#17 *01*熔岩犀牛>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@zq#18 *01*九尾狐(冰)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@zq#19 *01*九尾狐(火)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@zq#20 *01*烈焰巨龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND# <@zq#21 *01*寒霜巨龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@zq#22 *01*海马>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#<@zq#23 *01*风雨扇>      #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│    #COLOREND# <@zq#24 *01*御剑>         #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"   
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@azq#18 *01*一键领取所有坐骑>\n"
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end

function guaiwu(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源怪物展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以在你身边刷新各种怪物！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"																					  
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@gw#1 *01*九千岁>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#2 *01*强盗>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#3 *01*强盗头目>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#4 *01*邪恶剑客>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"	
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@gw#5 *01*山贼>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#    #OFFSET<X:-2,Y:0>#<@gw#6 *01*叛军>      #COLORCOLOR_BROWN#│     #COLOREND# <@gw#7 *01*狼骑兵>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#8 *01*锦衣卫>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#9 *01*铁甲犀牛>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#10 *01*大角羊>     #COLORCOLOR_BROWN#│    #COLOREND# <@gw#11 *01*铁甲大象1>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#12 *01*铁甲大象2>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │      #COLOREND#<@gw#13 *01*七彩鸟>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#14 *01*嗜血飞龙>    #COLORCOLOR_BROWN#│      #COLOREND# <@gw#15 *01*冰龙>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@gw#16 *01*火龙>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@gw#17 *01*蓝鹿>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#18 *01*熔岩犀牛>    #COLORCOLOR_BROWN#│      #COLOREND# <@gw#19 *01*犀牛>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#20 *01*熔岩毒虫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#21 *01*古代僵尸>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#22 *01*僵尸护卫>    #COLORCOLOR_BROWN#│    #COLOREND# <@gw#23 *01*嗜血僵尸>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#24 *01*熔岩蜘蛛>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@gw#25 *01*熔岩召唤兽>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#26 *01*熔岩骑兽>    #COLORCOLOR_BROWN#│    #COLOREND# <@gw#27 *01*熔岩巨人>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@gw#28 *01*毒龙>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#29 *01*噬魔邪君>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#30 *01*噬魂戾兽>    #COLORCOLOR_BROWN#│    #COLOREND# <@gw#31 *01*烈焰盘龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#32 *01*寒冰盘龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#33 *01*剧毒盘龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#34 *01*神圣盘龙>    #COLORCOLOR_BROWN#│      #COLOREND# <@gw#35 *01*兽王>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#36 *01*恶灵祭祀>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#37 *01*血色屠夫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#38 *01*雪域巨猿>    #COLORCOLOR_BROWN#│    #COLOREND#<@gw#39 *01*冰域钳兽人>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#40 *01*冰原法师>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#41 *01*铁锤巨人>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#42 *01*冰原狼人>    #COLORCOLOR_BROWN#│    #COLOREND#<@gw#43 *01*九尾狐(冰)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#  <@gw#44 *01*九尾狐(火)>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#45 *01*雪域魔女>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#46 *01*雪域巨熊>    #COLORCOLOR_BROWN#│    #COLOREND#<@gw#47 *01*雪域食人兽>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#48 *01*雪域黑猿>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@gw#49 *01*九尾狐(棕)>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#50 *01*暗岩龙>     #COLORCOLOR_BROWN#│     #COLOREND#<@gw#51 *01*赤骨棘兽>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#52 *01*烈焰巨龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#53 *01*寒霜巨龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#54 *01*蛮族统领>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@gw#55 *01*通天塔统领>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#56 *01*赤火巨魔>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#57 *01*勾魂法师>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#  <@gw#58 *01*沙魂>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#59 *01*赤发妖僧>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#60 *01*鼓妖僧>     #COLORCOLOR_BROWN#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@gw#61 *01*沙人>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND#  <@gw#62 *01*沙盗弓箭手>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#<@gw#63 *01*沙镰蛇>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#64 *01*伏地妖僧>    #COLORCOLOR_BROWN#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#65 *01*赤炎神将>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#66 *01*旋龟>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#67 *01*火焰石人>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#68 *01*狸猫道士>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#69 *01*鹿力大仙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#70 *01*恶鬼>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#71 *01*守财刀奴>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#72 *01*通天鼠妖>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@gw#73 *01*阴鬼>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#74 *01*恶灵>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#75 *01*藏宝女巫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#76 *01*死亡尸虫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#77 *01*玄眉道长>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#78 *01*镇宝大将>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#<@gw#79 *01*大力士>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#80 *01*魔婴>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#81 *01*死亡秃鹰>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#82 *01*厉鬼>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#83 *01*暗忍>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│       #COLOREND#<@gw#84 *01*浪人>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#85 *01*嗜血无常>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#86 *01*死亡魇魅>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#87 *01*食人夜叉>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#<@gw#88 *01*食尸兽>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#89 *01*火云邪神>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#90 *01*星空石灵>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#91 *01*嗤颅狂魔>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#<@gw#92 *01*守护者>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#93 *01*噬魂魔女>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#94 *01*星空灵蟒>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#95 *01*星空幽灵>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#96 *01*食尸蝙蝠>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#97 *01*星空战灵>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#<@gw#98 *01*血罗汉>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#99 *01*嗜血战将>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#100 *01*星空战神>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#101 *01*沙漠刀客>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#102 *01*嗜血野猪>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#103 *01*嗜血刀客>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#104 *01*通天炎魔>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#105 *01*沙漠骑士>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#106 *01*星空亡灵>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#107 *01*星空兽灵>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#108 *01*木乃伊>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#109 *01*冰原野蛮人>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#110 *01*亡灵守卫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#111 *01*冰原猎人>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#112 *01*古代木乃伊>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#113 *01*亡灵法师>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#114 *01*亡灵教主>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#115 *01*剧毒甲虫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#116 *01*亡灵力士>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#117 *01*嗜血蝙蝠人>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#118 *01*远古女巫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#119 *01*远古沙虫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#120 *01*远古树人>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#121 *01*远古毒虫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#122 *01*远古守卫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#123 *01*地鬼王>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#124 *01*蛊族遗民>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n" 
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#125 *01*王陵守卫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#126 *01*王陵战将>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#127 *01*王陵魔像>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#<@gw#128 *01*蛊族邪灵法师>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#129 *01*蛊虫>         #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#130 *01*嗜血滕花>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#131 *01*嗜沙虫>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#132 *01*嗜沙皇虫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#133 *01*皇陵苦工>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#134 *01*皇陵劳工>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#135 *01*皇陵弓箭手>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#136 *01*皇陵督军>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n" 
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#137 *01*双头巨魔>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#138 *01*皇陵统领>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#139 *01*铁血大帝>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@gw#140 *01*铁血狂徒>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#141 *01*铁血突袭者>   #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#142 *01*铁血巡守>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND#<@gw#143 *01*铁血祭祀>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND# <@gw#144 *01*刺龙>        #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#145 *01*黄色狮鹫>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#146 *01*蓝色狮鹫>    #COLORCOLOR_BROWN#│      #COLOREND# <@gw#147 *01*骨龙>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND# <@gw#148 *01*白翼飞龙>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@gw#149 *01*黑炎巨魔>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#  #OFFSET<X:-2,Y:0>#<@gw#150 *01*妖后>      #COLORCOLOR_BROWN#│      #COLOREND# <@gw#151 *01*魔皇>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#    <@gw#152 *01*剑灵>    #COLORCOLOR_BROWN##OFFSET<X:0,Y:0>#   │#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"  
    msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,500)
	return ""
end

function qita(npc,player)
		msg = "\n#COLORCOLOR_GREENG#     这里是其他杂项！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."            #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@jineng *01*「新技能」   >            #IMAGE1902700036#<@waiguan *01*「外观特效」   >            #IMAGE1902700036#<@fabao *01*「法宝」   >#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ─────────────────────────────────────────#COLOREND#\n"
	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function fabao(npc,player)
		msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源武器展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以领取各种法宝！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │    #COLOREND#<@fb#1 *01*江山社稷图>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@fb#2 *01*天地玄黄塔>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@fb#3 *01*九龙神火罩>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#<@fb#4 *01*新紫金葫芦>    #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"	
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │     #COLOREND#<@fb#5 *01*新摄魂铃>     #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│   #COLOREND#   #OFFSET<X:-2,Y:0>#<@fb#6 *01*遁龙桩>      #COLORCOLOR_BROWN#│     #COLOREND# <@fb#7 *01*和氏璧>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND# <@fb#8 *01*轮回盘>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │      #COLOREND#<@fb#9 *01*乾坤袋>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│    #COLOREND#  #OFFSET<X:-2,Y:0>#<@fb#10 *01*万鸦壶>      #COLORCOLOR_BROWN#│     #COLOREND# <@fb#11 *01*神农鼎>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│     #COLOREND# <@fb#12 *01*混元伞>      #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"   
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@afb#18 *01*一键领取所有法宝>\n"
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:450,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,350)
	return ""
end	

function waiguan(npc, player)
	msg = "\n#COLORCOLOR_YELLOW#    ━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源外观展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#     这里可以在你身上演示外观特效！#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      ┌─────────┬─────────┬─────────┬─────────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@texiao#1 *01*8453>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#  #OFFSET<X:-2,Y:0>#<@texiao#2 *01*8454>      #COLORCOLOR_BROWN#│      #COLOREND# <@texiao#3 *01*8455>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@texiao#4 *01*8456>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@texiao#5 *01*8457>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#  #OFFSET<X:-2,Y:0>#<@texiao#6 *01*8458>      #COLORCOLOR_BROWN#│      #COLOREND# <@texiao#7 *01*8459>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@texiao#8 *01*8460>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├─────────┼─────────┼─────────┼─────────┤#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │       #COLOREND#<@texiao#9 *01*8461>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND#  #OFFSET<X:-2,Y:0>#<@texiao#10 *01*8462>      #COLORCOLOR_BROWN#│      #COLOREND# <@texiao#11 *01*8463>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│      #COLOREND# <@texiao#12 *01*8464>       #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│#COLOREND#\n"
 	msg = msg.."#COLORCOLOR_BROWN#      └─────────┴─────────┴─────────┴─────────┘#COLOREND#\n"   
	msg = msg.."#COLORCOLOR_BROWN#    ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:400,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2># <@xiaote *01*「消除特效」>  <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,618,500)
	return ""
end

function fb(npc, player,key)
	key= tonumber(key)
	local fbao = {
					{"江山社稷图"},
					{"天地玄黄塔"},
					{"九龙神火罩"},
					{"新紫金葫芦"},
					{"新摄魂铃"},
					{"遁龙桩"},
					{"和氏璧"},
					{"轮回盘"},
					{"乾坤袋"},
					{"万鸦壶"},
					{"神农鼎"},
					{"混元伞"},
}
	for i = 1, #fbao[key] do
		 if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
			lualib:AddItem(player, fbao[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fbao[key][1].."!")
			return "你获得了["..fbao[key][1].."]!\n  \n<@fabao *01*返回>\n"
		end
	end
end	

function afb(npc, player,key)
	local fbao = {
					"江山社稷图",
					"天地玄黄塔",
					"九龙神火罩",
					"新紫金葫芦",
					"新摄魂铃",
					"遁龙桩",
					"和氏璧",
					"轮回盘",
					"乾坤袋",
					"万鸦壶",
					"神农鼎",
					"混元伞",
					
}
	tempstr =""
	for i = 1, #fbao do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
			lualib:AddItem(player, fbao[i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fbao[i].."!")
			tempstr = tempstr .. ",[" .. fbao[i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@fabao *01*返回>\n"
end

function zw(npc, player,key)
	key= tonumber(key)
	local zwuqi = {
					{"双龙剑"},
					{"赤龙刃"},
					{"绿玉屠龙"},
					{"西域战刀"},
					{"铁血之刃"},
					{"怒火狂刀"},
					{"魔域巨刃"},

}
	for i = 1, #zwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, zwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..zwuqi[key][1].."!")
			return "你获得了["..zwuqi[key][1].."]!\n  \n<@wuqi1 *01*返回>\n"
		end
	end
end

function fw(npc, player,key)
	key= tonumber(key)
	local fwuqi = {
					{"寂灭法杖"},
					{"轮回法杖"},
					{"新武器2"},
					{"新武器3"},
					{"铁血法杖"},
					{"新武器1"},
					
}
	for i = 1, #fwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, fwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fwuqi[key][1].."!")
			return "你获得了["..fwuqi[key][1].."]!\n  \n<@wuqi1 *01*返回>\n"
		end
	end
end

function dw(npc, player,key)
	key= tonumber(key)
	local dwuqi = {
					{"赤霄剑"},
					{"龙泉剑"},
					{"七星剑"},
					{"西域道剑"},
					{"铁血赤扇"},
					{"玄冰夜火"},
					{"无名剑"},
					{"轮回道剑"},					
}
	for i = 1, #dwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, dwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..dwuqi[key][1].."!")
			return "你获得了["..dwuqi[key][1].."]!\n  \n<@wuqi1 *01*返回>\n"
		end
	end
end

function lw(npc, player,key)
	key= tonumber(key)
	local lwuqi = {
					{"光剑"},
					{"光剑2"},
					{"貂蝉双剑"},
					{"赵云长枪"},
					{"关羽大刀"},
					{"方天画戟"},
					{"诸葛亮羽毛扇"},
					{"死神镰刀"},
					{"金箍棒"},
					{"唐僧法杖"},
					{"擀面杖"},
					{"双节棍"},
					{"榔头"},
					{"菜刀"},
					{"电锯"},
					{"板凳"},
}
	for i = 1, #lwuqi[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, lwuqi[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..lwuqi[key][1].."!")
			return "你获得了["..lwuqi[key][1].."]!\n  \n<@wuqi1 *01*返回>\n"
		end
	end
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #weapon_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
			lualib:AddItem(player, weapon_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..weapon_t[key][i].."!")
			tempstr = tempstr .. ",[" .. weapon_t[key][i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@weapon#1 *01*返回>\n"
end

function zf(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"赤峰战甲(女)新"},
					{"赤峰战甲(男)新"},
					{"天启战甲(女)"},
					{"天启战甲(男)"},
					{"浩宇战甲(男)"},
					{"浩宇战甲(女)"},
					{"铁血盔甲(男)"},
					{"铁血盔甲(女)"},
					{"西域战甲(男)"},
					{"西域战甲(女)"},
					{"噬魔战甲(男)"},
					{"噬魔战甲(女)"},
					{"伏虎战甲(男)"},
					{"伏虎战甲(女)"},
					{"琅环战甲(男)"},
					{"琅环战甲(女)"},
					{"雷光铠甲(男)"},
					{"雷光铠甲(女)"},
					{"镇威战神"},
					{"战神吕布"},
					{"战神李牧"},
					{"战神项羽"},
					{"天威战神(男)"},
					{"武威战神(男)"},
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fuz[key][1].."!")
			return "你获得了["..fuz[key][1].."]!\n  \n<@fuzhuang *01*返回>\n"
		end
	end
end

function ff(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"圣灵法袍(女)新"},
					{"圣灵法袍(男)新"},
					{"天启法袍(女)"},
					{"天启法袍(男)"},
					{"浩宇法袍(男)"},
					{"浩宇法袍(女)"},
					{"西域法袍(男)"},
					{"西域法袍(女)"},
					{"猴年衣服(女)"},
					{"猴年衣服(男)"},
					{"赤蓝法袍(男)"},
					{"赤蓝法袍(女)"},
					{"灵狐法袍(男)"},
					{"灵狐法袍(女)"},
					{"天瑞法袍(男)"},
					{"天瑞法袍(女)"},
					{"蓝魅之晶(女)"},
					{"蓝魅之晶(男)"},
					
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fuz[key][1].."!")
			return "你获得了["..fuz[key][1].."]!\n  \n<@fuzhuang *01*返回>\n"
		end
	end
end

function df(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"太玄道衣(女)新"},
					{"太玄道衣(男)新"},
					{"天启道袍(女)"},
					{"天启道袍(男)"},
					{"浩宇道袍(女)"},
					{"浩宇道袍(男)"},
					{"西域道袍(男)"},
					{"西域道袍(女)"},
					{"无极道袍(男)"},
					{"无极道袍(女)"},
					{"追风道袍(男)"},
					{"追风道袍(女)"},
					{"泉清道袍(男)"},
					{"泉清道袍(女)"},
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fuz[key][1].."!")
			return "你获得了["..fuz[key][1].."]!\n  \n<@fuzhuang *01*返回>\n"
		end
	end
end

function lf(npc, player,key)
	key= tonumber(key)
	local fuz = {
					{"魔域氅衣(女)"},
					{"魔域氅衣(男)"},
					{"龙袍"},
					{"龙袍(头盔)"},
					{"凤袍"},
					{"凤袍(头盔)"},
					{"关羽套装"},
					{"吕布套装"},
					{"赵云套装"},
					{"貂婵套装"},
					{"诸葛亮套装"},
					{"孙悟空套装"},
					{"唐僧套装"},
					{"死神之袍"},
					{"死神头套"},
					{"魔皇长袍"},
					{"魔皇头盔"},
					{"妖后长裙"},
					{"妖后头冠"},
					{"马超套装"},
}
	for i = 1, #fuz[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
		lualib:AddItem(player, fuz[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..fuz[key][1].."!")
			return "你获得了["..fuz[key][1].."]!\n  \n<@fuzhuang *01*返回>\n"
		end
	end
end

function fuf(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #armor_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
			lualib:AddItem(player, armor_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..armor_t[key][i].."!")
			tempstr = tempstr .. ",[" .. armor_t[key][i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@armor#1 *01*返回>\n"
end

function ss(npc, player,key)
	key= tonumber(key)
	local shous = {
					{"傲慢之靴","傲慢手镯","傲慢手镯","傲慢项链","傲慢之盔","傲慢腰带","傲慢戒指","傲慢戒指"},
					{"冷血长靴","冷血腰带","冷血项链","冷血手镯","冷血手镯","冷血戒指","冷血戒指"},
					{"九阳金盔","九阳金靴","九阳金带","九阳龙镯","九阳龙镯","九阳金戒","九阳金戒","九阳金链"},
					{"虚空头盔","虚空之靴","虚空腰带","虚空护腕","虚空护腕","虚空戒指","虚空戒指","虚空项链"},
					{"紫晶头盔","紫晶之靴","紫晶腰带","紫晶护腕","紫晶护腕","紫晶戒指","紫晶戒指","紫晶项链","蓝晶头盔"},
					{"吕布之靴","吕布腰带","吕布护腕","吕布护腕","吕布戒指","吕布戒指","吕布项链"},
					{"死鬼之面","死亡之靴","死神之恋","死虫之带","死者之腕","死者之腕","死灭之瞳","死灭之瞳"},
					{"海龙之盔","海龙之靴","海龙腰带","海龙戒指","海龙戒指","海龙护腕","海龙护腕"},
					{"天魔之盔","天魔之靴","天魔腰带","天魔戒指","天魔戒指","天魔护腕","天魔护腕","天魔项链"},
					{"朝阳之盔","朝阳之靴","朝阳腰带","朝阳戒指","朝阳戒指","朝阳护腕","朝阳护腕","朝阳项链"},
					{"木域之盔","木域之靴","木域腰带","木域戒指","木域戒指","木域护腕","木域护腕","木域项链"},
					{"水域之盔","水域之靴","水域腰带","水域戒指","水域戒指","水域护腕","水域护腕","水域项链"},
					{"土域之盔","土域之靴","土域腰带","土域戒指","土域戒指","土域护腕","土域护腕","土域项链"},
					{"铜域之盔","铜域之靴","铜域腰带","铜域戒指","铜域戒指","铜域护腕","铜域护腕","铜域项链"},
					{"金域之盔","金域之靴","金域腰带","金域戒指","金域戒指","金域护腕","金域护腕","金域项链"},
					{"神域之盔","神域之靴","神域腰带","神域戒指","神域戒指","神域护腕","神域护腕","神域项链"},
					{"火域之盔","火域之靴","火域腰带","火域戒指","火域戒指","火域护腕","火域护腕","火域项链"},
					{"红宝石之盔","红宝石腰带","红宝石之靴","红宝石手镯","红宝石手镯","红宝石之戒","红宝石之戒","红宝石项链"},
					{"绿宝石之盔","绿宝石腰带","绿宝石之靴","绿宝石手镯","绿宝石手镯","绿宝石之戒","绿宝石之戒","绿宝石项链"},
					{"冰魄之盔","冰魄之靴","冰魄腰带","冰魄之戒","冰魄之戒","冰魄护腕","冰魄护腕","冰魄项链"},
					{"蓝魅之盔","蓝魅之靴","蓝魅腰带","蓝魅之戒","蓝魅之戒","蓝魅护腕","蓝魅护腕","蓝魅项链"},
					{"玄冰之盔","玄冰之靴","玄冰腰带","玄冰之戒","玄冰之戒","玄冰护腕","玄冰护腕","玄冰项链"},
					{"神圣之盔","神圣之靴","神圣腰带","神圣之戒","神圣之戒","神圣之手","神圣之手","神圣项链"},
					{"魔域之盔","魔域之靴","魔域腰带","魔域戒指","魔域戒指","魔域护腕","魔域护腕","魔域项链","魔域勋章"},
					{"冥界项链","冥界戒指","冥界戒指","冥界护腕","冥界护腕","冥界腰带","冥界靴子","冥界勋章","冥界之盔"},
					{"幽域项链","幽域戒指","幽域戒指","幽域护腕","幽域护腕","幽域腰带","幽域靴子","幽域勋章","幽域之盔"},
					{"赤峰项链","赤峰戒指","赤峰戒指","赤峰护腕","赤峰护腕","赤峰腰带","赤峰靴子","赤峰勋章","赤峰之盔"},
					{"星耀项链","星耀戒指","星耀戒指","星耀护腕","星耀护腕","星耀腰带","星耀靴子","星耀勋章","星耀之盔"},
					{"金蝉项链","金蝉戒指","金蝉戒指","金蝉护腕","金蝉护腕","金蝉腰带","金蝉靴子","金蝉勋章","金蝉之盔"},
					{"圣影项链","圣影戒指","圣影戒指","圣影护腕","圣影护腕","圣影腰带","圣影靴子","圣影勋章","圣影之盔"},
					{"羊年通用头盔","羊年通用项链","羊年通用戒指","羊年通用戒指","羊年通用护腕","羊年通用护腕","羊年通用腰带","羊年通用靴子","羊年通用勋章"},
					{"羊年战士头盔","羊年战士项链","羊年战士戒指","羊年战士戒指","羊年战士护腕","羊年战士护腕","羊年战士腰带","羊年战士靴子","羊年战士勋章"},
					{"羊年道士头盔","羊年道士项链","羊年道士戒指","羊年道士戒指","羊年道士护腕","羊年道士护腕","羊年道士腰带","羊年道士靴子","羊年道士勋章"},
					{"羊年法师头盔","羊年法师项链","羊年法师戒指","羊年法师戒指","羊年法师护腕","羊年法师护腕","羊年法师腰带","羊年法师靴子","羊年法师勋章"},
					{"情人节头盔","情人节项链","情人节戒指","情人节戒指","情人节护腕","情人节护腕","情人节腰带","情人节靴子","情人节勋章"},
					{"西域战士头盔","西域战士项链","西域战士戒指","西域战士戒指","西域战士护腕","西域战士护腕","西域战士腰带","西域战士勋章","西域战士靴子"},
					{"西域法师头盔","西域法师项链","西域法师戒指","西域法师戒指","西域法师护腕","西域法师护腕","西域法师腰带","西域法师靴子","西域法师勋章"},
					{"西域道士头盔","西域道士项链","西域道士戒指","西域道士戒指","西域道士护腕","西域道士护腕","西域道士腰带","西域道士靴子","西域道士勋章"},
					{"魔宫战士头盔","魔宫战士项链","魔宫战士戒指","魔宫战士戒指","魔宫战士手套","魔宫战士手套","魔宫战士腰带","魔宫战士靴子","魔宫战士勋章"},
					{"魔宫法师头盔","魔宫法师项链","魔宫法师戒指","魔宫法师戒指","魔宫法师手套","魔宫法师手套","魔宫法师腰带","魔宫法师靴子","魔宫法师勋章"},
					{"魔宫道士头盔","魔宫道士项链","魔宫道士戒指","魔宫道士戒指","魔宫道士手套","魔宫道士手套","魔宫道士腰带","魔宫道士靴子","魔宫道士勋章"},
					{"元灵头盔","元灵项链","元灵戒指","元灵戒指","元灵护腕","元灵护腕","元灵腰带","元灵靴子","元灵勋章"},
					{"御灵头盔","御灵项链","御灵戒指","御灵戒指","御灵护腕","御灵护腕","御灵腰带","御灵靴子","御灵勋章"},
					{"通灵头盔","通灵项链","通灵戒指","通灵戒指","通灵护腕","通灵护腕","通灵腰带","通灵靴子","通灵勋章"},
					{"七星头盔","七星项链","七星戒指","七星戒指","七星护腕","七星护腕","七星腰带","七星靴子","七星勋章"},
					{"铁血头盔(男)","铁血头盔(女)"},
					{"赤星头盔","赤星项链","赤星戒指","赤星戒指","赤星护腕","赤星护腕","赤星腰带","赤星鞋子"},
					{"惊鸿头盔","惊鸿项链","惊鸿戒指","惊鸿戒指","惊鸿护腕","惊鸿护腕","惊鸿腰带","惊鸿靴子"},
					{"鬼焰头盔","鬼焰项链","鬼焰戒指","鬼焰戒指","鬼焰护腕","鬼焰护腕","鬼焰腰带","鬼焰靴子"},
					{"玄阴头盔","玄阴项链","玄阴戒指","玄阴戒指","玄阴护腕","玄阴护腕","玄阴腰带","玄阴靴子"},
}
	tempstr =""
	for i = 1, #shous[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
			lualib:AddItem(player, shous[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..shous[key][i].."!")
			tempstr = tempstr .. ",[" .. shous[key][i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@shoushi *01*返回>\n"
end

function dp(npc, player,key)
	key= tonumber(key)
	local dunp = {
					{"修罗盾牌"},
					{"烬火盾牌"},
					{"星辰盾牌"},
					{"九幽盾牌"},
					{"刑天盾牌"},
					{"雷霆盾牌"},
					{"帝释盾牌"},
					{"寒魄盾牌"},
					{"战王盾牌"},
					{"铁王盾牌"},
}
	for i = 1, #dunp[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, dunp[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..dunp[key][1].."!")
			return "你获得了["..dunp[key][1].."]!\n  \n<@dunpai *01*返回>\n"
		end
	end
end

function cb(npc, player,key)
	key= tonumber(key)
	local chib = {{"风神翼"},
	{"焚天翼"},
	{"落焰翼"},
	{"清霜翼"},
	{"天凤翼"},
	{"雷霆翼"},
	{"浣纱洗练翼"},
	{"梦魇翼"},
					{"新翅膀9"},
					{"新翅膀10"},
					{"新翅膀11"},
					{"新翅膀12"},	
					{"新翅膀13"},	
					{"新翅膀1"},
					{"金羽之翼"},
					{"妖魔之翼"},
					{"冰龙之翼"},
					{"天使之翼"},
					{"天羽之翼"},
					{"荣光之翼"},
					{"圣战之翼"},
					{"幽灵黄焰翼"},
					{"幻灵虹霓翅"},
					{"光芒天使羽"},
					{"冻之魂羽"},
					{"凤舞金羽"},
					{"紫琉璃羽"},
					{"圣战之翼大版"},
					{"荣光之翼大版"},
					{"天羽之翼大版"},
					{"天道之翼大版"},
					{"魔幻佑翼(初级)"},
					{"魔幻佑翼(高级)"},
					{"封神羽翼(初级)"},
					{"封神羽翼(高级)"},
					{"弑神之翼"},
					{"君临之翼"},
					{"神之黄羽"},
					{"蓝影之羽"},
					{"圣洁绿羽"},
					{"红芒神翼"},
					{"天劫之翼"},
					{"无双之翼"},
					{"风云之翼"},
					{"缥缈之翼"},
					{"紫炎之羽"},
					{"凤天魔翼(高级)"},
					{"凤天魔翼(初级)"},
					{"虚空之翼"},
					{"赤炎之羽"},
					{"兰炎之羽"},
					{"寸芒之翼"},
					{"星辰之翼"},
					{"莽荒之翼"},
					{"九霄神天翼"},
					{"伏魔金翅"},
					{"嗜血魔翼"},
					{"玄清道羽"},
					{"炽天战羽"},
					{"幽冥法羽"},
					{"雷霆闪电翼"},
					{"双龙翼"},
					{"启天之翼"},
					{"流澜之翼"},
					{"风魂之羽"},
					{"蓝妖之翼"},
					{"血色神羽"},
					{"绿野仙翅"},
					{"烈焰之羽"},
					{"风雪之翅"},
					{"金丝魔翼"},
					{"浩然之翅"},
					{"罗兰幻羽"},
					{"圣光之翼"},
					{"圣蓝之翼"},
					{"紫光之翼"},
					{"天道之翼"},
					{"金羽之翼"},
					{"大乘之翼特效版"},
					{"新翅膀2"},
					{"新翅膀3"},
					{"新翅膀4"},
					{"新翅膀5"},
					{"新翅膀6"},
					{"新翅膀7"},
					{"新翅膀8"},

}
	for i = 1, #chib[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, chib[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..chib[key][1].."!")
			return "你获得了["..chib[key][1].."]!\n  \n<@chibang *01*返回>\n"
		end
	end
end

function acb(npc, player,key)
	local chib = {"风神翼",
	"焚天翼",
	"落焰翼",
	"清霜翼",
	"天凤翼",
	"雷霆翼",
	"浣纱洗练翼",
	"梦魇翼",
	                "大乘之翼特效版",
	                "新翅膀1",
					"新翅膀2",
					"新翅膀3",
					"新翅膀4",
					"新翅膀5",
					"新翅膀6",
					"新翅膀7",
					"新翅膀8",
					"新翅膀9",
					"新翅膀10",
					"新翅膀11",
					"新翅膀12",
					"蓝妖之翼",
					"血色神羽",
					"绿野仙翅",
					"烈焰之羽",
					"风雪之翅",
					"金丝魔翼",
					"浩然之翅",
					"罗兰幻羽",
					"圣光之翼",
					"圣蓝之翼",
					"紫光之翼",
					"天道之翼",
					"金羽之翼",
					"妖魔之翼",
					"冰龙之翼",
					"天使之翼",
					"天羽之翼",
					"荣光之翼",
					"圣战之翼",
					"幽灵黄焰翼",
					"幻灵虹霓翅",
					"光芒天使羽",
					"冻之魂羽",
					"凤舞金羽",
					"紫琉璃羽",
					"圣战之翼大版",
					"荣光之翼大版",
					"天羽之翼大版",
					"天道之翼大版",
					"魔幻佑翼(初级)",
					"魔幻佑翼(高级)",
					"封神羽翼(初级)",
					"封神羽翼(高级)",
					"弑神之翼",
					"君临之翼",
					"神之黄羽",
					"蓝影之羽",
					"圣洁绿羽",
					"红芒神翼",
					"天劫之翼",
					"无双之翼",
					"风云之翼",
					"缥缈之翼",
					"紫炎之羽",
					"凤天魔翼(高级)",
					"凤天魔翼(初级)",
					"虚空之翼",
					"赤炎之羽",
					"兰炎之羽",
					"寸芒之翼",
					"星辰之翼",
					"莽荒之翼",
					"九霄神天翼",
					"伏魔金翅",
					"嗜血魔翼",
					"玄清道羽",
					"炽天战羽",
					"幽冥法羽",
					"雷霆闪电翼",
					"双龙翼",
					"启天之翼",
					"流澜之翼",
					"风魂之羽",
					"金羽之翼",
}
	tempstr =""
	for i = 1, #chib do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
			lualib:AddItem(player, chib[i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..chib[i].."!")
			tempstr = tempstr .. ",[" .. chib[i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@chibang *01*返回>\n"
end

function zq(npc, player,key)
	key= tonumber(key)
	local zuoq = {
					{"火龙"},
					{"冰龙"},
					{"嗜血飞龙"},
					{"七彩鸟"},
					{"铁甲大象1"},
					{"铁甲大象2"},
					{"大角羊"},
					{"铁甲犀牛"},
					{"蓝色狮鹫"},
					{"黄色狮鹫"},
					{"神鹿"},
					{"黑豹"},
					{"猎豹"},
					{"刺龙"},
					{"白翼飞龙"},
					{"骨龙"},
					{"熔岩犀牛"},
					{"九尾狐(冰)"},
					{"九尾狐(火)"},
					{"烈焰巨龙"},
					{"寒霜巨龙"},
					{"海马"},
					{"风雨扇"},
					{"御剑"},
}
	for i = 1, #zuoq[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
		lualib:AddItem(player, zuoq[key][1], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..zuoq[key][1].."!")
			return "你获得了["..zuoq[key][1].."]!\n  \n<@zuoqi *01*返回>\n"
		end
	end
end

function azq(npc, player,key)
	local zuoq = {
					"火龙",
					"冰龙",
					"嗜血飞龙",
					"七彩鸟",
					"铁甲大象1",
					"铁甲大象2",
					"大角羊",
					"铁甲犀牛",
					"蓝色狮鹫",
					"黄色狮鹫",
					"神鹿",
					"黑豹",
					"猎豹",
					"刺龙",
					"白翼飞龙",
					"骨龙",
					"熔岩犀牛",
					"九尾狐(冰)",
					"九尾狐(火)",
					"烈焰巨龙",
					"寒霜巨龙",
					"海马",
}
	tempstr =""
	for i = 1, #zuoq do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满")
		else
			lualib:AddItem(player, zuoq[i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..zuoq[i].."!")
			tempstr = tempstr .. ",[" .. zuoq[i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@zuoqi *01*返回>\n"
end

function gw(npc, player,key)
	key= tonumber(key)
	local guaiw = {
					
					{"九千岁"},
					{"强盗"},
					{"强盗头目"},
					{"邪恶剑客"},
					{"山贼"},
					{"叛军"},
					{"狼骑兵"},
					{"锦衣卫"},
					{"铁甲犀牛"},
					{"大角羊"},
					{"铁甲大象1"},
					{"铁甲大象2"},
					{"七彩鸟"},
					{"嗜血飞龙"},
					{"冰龙"},
					{"火龙"},
					{"蓝鹿"},
					{"熔岩犀牛"},
					{"犀牛"},
					{"熔岩毒虫"},
					{"古代僵尸"},
					{"僵尸护卫"},
					{"嗜血僵尸"},
					{"熔岩蜘蛛"},
					{"熔岩召唤兽"},
					{"熔岩骑兽"},
					{"熔岩巨人"},
					{"毒龙"},
					{"噬魔邪君"},
					{"噬魂戾兽"},
					{"烈焰盘龙"},
					{"寒冰盘龙"},
					{"剧毒盘龙"},
					{"神圣盘龙"},
					{"兽王"},
					{"恶灵祭祀"},
					{"血色屠夫"},
					{"雪域巨猿"},
					{"冰域钳兽人"},
					{"冰原法师"},
					{"铁锤巨人"},
					{"冰原狼人"},
					{"九尾狐(冰)"},
					{"九尾狐(火)"},
					{"雪域魔女"},
					{"雪域巨熊"},
					{"雪域食人兽"},
					{"雪域黑猿"},
					{"九尾狐(棕)"},
					{"暗岩龙"},
					{"赤骨棘兽"},
					{"烈焰巨龙"},
					{"寒霜巨龙"},
					{"蛮族统领"},
					{"通天塔统领"},
					{"赤火巨魔"},
					{"勾魂法师"},
					{"沙魂"},
					{"赤发妖僧"},
					{"鼓妖僧"},
					{"沙人"},
					{"沙盗弓箭手"},
					{"沙镰蛇"},
					{"伏地妖僧"},
					{"赤炎神将"},
					{"旋龟"},
					{"火焰石人"},
					{"狸猫道士"},
					{"鹿力大仙"},
					{"恶鬼"},
					{"守财刀奴"},
					{"通天鼠妖"},
					{"阴鬼"},
					{"恶灵"},
					{"藏宝女巫"},
					{"死亡尸虫"},
					{"玄眉道长"},
					{"镇宝大将"},
					{"大力士"},
					{"魔婴"},
					{"死亡秃鹰"},
					{"厉鬼"},
					{"暗忍"},
					{"浪人"},
					{"嗜血无常"},
					{"死亡魇魅"},
					{"食人夜叉"},
					{"食尸兽"},
					{"火云邪神"},
					{"星空石灵"},
					{"嗤颅狂魔"},
					{"守护者"},
					{"噬魂魔女"},
					{"星空灵蟒"},
					{"星空幽灵"},
					{"食尸蝙蝠"},
					{"星空战灵"},
					{"血罗汉"},
					{"嗜血战将"},
					{"星空战神"},
					{"沙漠刀客"},
					{"嗜血野猪"},
					{"嗜血刀客"},
					{"通天炎魔"},
					{"沙漠骑士"},
					{"星空亡灵"},
					{"星空兽灵"},
					{"木乃伊"},
					{"冰原野蛮人"},
					{"亡灵守卫"},
					{"冰原猎人"},
					{"亡灵法师"},
					{"亡灵教主"},
					{"剧毒甲虫"},
					{"古代木乃伊"},
					{"亡灵力士"},
					{"嗜血蝙蝠人"},
					{"远古女巫"},
					{"远古沙虫"},
					{"远古树人"},
					{"远古毒虫"},
					{"远古守卫"},
					{"地鬼王"},
					{"蛊族遗民"},
					{"王陵守卫"},
					{"王陵战将"},
					{"王陵魔像"},
					{"蛊族邪灵法师"},
					{"蛊虫"},
					{"嗜血滕花"},
					{"嗜沙虫"},
					{"嗜沙皇虫"},
					{"皇陵苦工"},
					{"皇陵劳工"},
					{"皇陵弓箭手"},
					{"皇陵督军"},
					{"双头巨魔"},
					{"皇陵统领"},
					{"铁血大帝"},
					{"铁血狂徒"},
					{"铁血突袭者"},
					{"铁血巡守"},
					{"铁血祭祀"},
					{"刺龙"},
					{"黄色狮鹫"},
					{"蓝色狮鹫"},
					{"骨龙"},
					{"白翼飞龙"},
					{"黑炎巨魔"},
					{"妖后"},
					{"魔皇"},
					{"剑灵"},					
}
	for i = 1, #guaiw[key] do
		local x, y, strMap = lualib:X(player), lualib:Y(player), lualib:MapGuid(player);
		local servant = lualib:Map_GenSingleMonster(strMap, x, y, 2, lualib:GenRandom(0, 7), guaiw[key][1], false);
		assert(servant ~= "", "系统错误:刷怪失败,是否怪物没有出生点?");
		lualib:AddTimer(servant, 1, 30000, -1, "del_monster")
		lualib:SysWarnMsg(player, "你在身边刷新了【".. guaiw[key][1] .."】!它将在30秒后消失！")
	end
	return ""
end

function del_monster(servant)
	if servant ~= "" then
		lualib:Monster_Remove(servant)
	end
end

function qingli(npc, player)
	if lualib:ClearBag(player, false, true, false, false, "清物品", "发起人") == true then
		lualib:SysWarnMsg(player, "你清空了身上的包裹！")
	end
	return ""
end

function baoguo(npc, player)
	if lualib:GetBagFree(player) < 1 then
		lualib:SysWarnMsg(player, "你的包裹已满")
	else
	lualib:AddItem(player, "乾坤囊(40格)", 1, false, "", player)
		lualib:SysWarnMsg(player, "你获得了".."乾坤囊(40格)".."!")
		return "你获得了[".."乾坤囊(40格)".."]!\n  \n<@main *01*返回>\n"
	end
end

function jineng(npc,player)
	local jineng1 = {
				"游龙斩1级",
				"狂风雷电1级",
				"破天一剑1级",
				"冰冻三尺1级",
				"奥义怒火斩1级",
				"寒冰剑术1级",
				"烈焰焚天1级",
				"雷神万钧1级",
				"怒剑噬天1级",
				"火轮斩1级",
				"赋毒术1级",
				"五行法术1级",
				"瞬狱斩1级",
				"天星落1级",
				"旋焰击1级",
				"冰雨1级",
				"雷龙击1级",
				"追日剑法",
	}
	for i = 1, #jineng1 do
		if lualib:HasSkill(player,jineng1[i],true) == true then
			lualib:SysWarnMsg(player, "你已经拥有【"..jineng1[i].."】这个技能，无法再次学习！")
		else
		lualib:AddSkill(player,jineng1[i])
			lualib:SysWarnMsg(player, "你学会了技能："..jineng1[i])
		end
	end
end

function texiao(npc,player,leixing)
	leixing = tonumber(leixing)
	local texiao1 = {
					8453,
					8454,
					8455,
					8456,
					8457,
					8458,
					8459,
					8460,
					8461,
					8462,
					8463,
					8464,
}
--	for i = 1, #texiao1 do
		lualib:Player_AddEffect(player,2, texiao1[leixing])
		lualib:SysWarnMsg(player, "你获得了"..texiao1[leixing].."这个外观特效!")
--	end
     return ""
end

function xiaote(npc,player,leixing)
	lualib:Player_AddEffect(player,2,0)
	lualib:SysWarnMsg(player, "你清除了身上的外观特效!")
end