local ye = 12
local jewelry_t = {--首饰列表  --要新增新的道具，从最前面开始加 
	{"狱龙头盔","冥魔头盔","妖皇头盔","碎魂头盔","血焰头盔","蚀魔头盔","苍冥头盔","魔银头盔","魂毒头盔","陨铁头盔","玄阴头盔","鬼焰头盔","惊鸿头盔","赤星头盔","炼魔套头盔",},--头盔
	{"狱龙靴子","冥魔靴子","妖皇靴子","碎魂靴子","血焰靴子","蚀魔靴子","苍冥靴子","魔银靴子","魂毒靴子","陨铁靴子","玄阴靴子","鬼焰靴子","惊鸿靴子","赤星鞋子","炼魔套靴子",},--靴子
	{"狱龙项链","冥魔项链","妖皇项链","碎魂项链","血焰项链","蚀魔项链","苍冥项链","魔银项链","魂毒项链","陨铁项链","玄阴项链","鬼焰项链","惊鸿项链","赤星项链","炼魔套项链",},--项链
	{"狱龙戒指","冥魔戒指","妖皇戒指","碎魂戒指","血焰戒指","蚀魔戒指","苍冥戒指","魔银戒指","魂毒戒指","陨铁戒指","玄阴戒指","鬼焰戒指","惊鸿戒指","赤星戒指","炼魔套戒指",},--戒指
	{"狱龙腰带","冥魔腰带","妖皇腰带","碎魂腰带","血焰腰带","蚀魔腰带","苍冥腰带","魔银腰带","魂毒腰带","陨铁腰带","玄阴腰带","鬼焰腰带","惊鸿腰带","赤星腰带","炼魔套腰带",},--腰带
	{"狱龙护腕","冥魔护腕","妖皇护腕","碎魂护腕","血焰护腕","蚀魔护腕","苍冥护腕","魔银护腕","魂毒护腕","陨铁护腕","玄阴护腕","鬼焰护腕","惊鸿护腕","赤星护腕","炼魔套护腕",},--护腕
	{"狱龙套勋章","冥魔套勋章","妖皇套勋章","碎魂套勋章","血焰套勋章","蚀魔套勋章","苍冥套勋章","魔银套勋章","魂毒套勋章","陨铁套勋章","玄阴套勋章","鬼焰套勋章","惊鸿套勋章","赤星套勋章","炼魔套勋章",},--勋章
	{"狱龙套宝石","冥魔套宝石","妖皇套宝石","碎魂套宝石","血焰套宝石","蚀魔套宝石","苍冥套宝石","魔银套宝石","魂毒套宝石","陨铁套宝石","玄阴套宝石","鬼焰套宝石","惊鸿套宝石","赤星套宝石","炼魔套宝石",},--宝石
}

function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     这里可以领取新首饰！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ───────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."                       #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@jewelry#1 *01*「新更新首饰」   >  #COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ───────────────────────────────────────────#COLOREND#\n"
--	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function jewelry(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#        ━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源首饰展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#    这里可以领取各种首饰类道具！点击标题即可领取首饰，比如点击「头盔类」即可领取所有的头盔！领取前，请注意包裹空间是否足够！#COLOREND#\n\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*「头盔」> #COLORCOLOR_BROWN# │#COLOREND# <@ww#2 *01*「靴子」> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#  │ #COLOREND# <@ww#3 *01*「项链」>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND# <@ww#4 *01*「戒指」>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#5 *01*「腰带」>  #COLORCOLOR_BROWN#│  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#6 *01*「护腕」> #COLORCOLOR_BROWN# │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*「勋章」> #COLORCOLOR_BROWN# │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*「宝石」> #COLORCOLOR_BROWN##OFFSET<X:-	2,Y:0># │#COLOREND#\n"
    msg = msg.."#COLORCOLOR_BROWN#      ├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┤#COLOREND#\n"
	local yt = 0
	for i = (t - 1) * ye + 1 , ye * t do 
		local y = 135 + yt * 30
		msg = msg .."#POS<X:36>##POS<Y:"..y+8 ..">##COLORCOLOR_BROWN#│            │            │            │            │            │            │            │            │"
		if i ~= ye * t then
			msg = msg .."#POS<X:36>##POS<Y:"..y+23 ..">##COLORCOLOR_BROWN#├──────┼──────┼──────┼──────┼──────┼──────┼──────┼──────┤"
		end
		yt = yt + 1
		for j = 1 , #jewelry_t do 
			local x = 16 + 90 * j
			if j ~= 8 then
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			else
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#"
			end
			if i <= #jewelry_t[j] then
				x = 65 + 83 * ( j - 1 )
				msg = msg .."#POS<X:"..x..">##POS<Y:"..y+8 ..">#<@get_jewelry#"..jewelry_t[j][i].."#"..t.." *01*"..jewelry_t[j][i]..">"
			end
		end
	end
	msg = msg.."\n#COLORCOLOR_BROWN#      └──────┴──────┴──────┴──────┴──────┴──────┴──────┴──────┘#COLOREND#\n\n"   
    msg = msg.."#COLORCOLOR_BROWN#      ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n"
	msg = msg .. "#OFFSET<X:200,Y:0>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@jewelryAg#"..t.." *01*「上一页」>       #IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@jewelryNe#"..t.." *01*「下一页」>      <@main *01*「返回」>"
	lualib:NPCTalkDetailEx(npc,player,msg,818,800)
    return ""
end

function jewelryAg(npc,player,t)
	t = tonumber(t) - 1
	if t < 1 then
		t = 1
	end
	return jewelry(npc,player,t)
end

function jewelryNe(npc,player,t)
	t = tonumber(t)
	local k = t * ye + 1
	if jewelry_t[1][k] ~= nil or jewelry_t[2][k] ~= nil or jewelry_t[3][k] ~= nil or jewelry_t[4][k] ~= nil or jewelry_t[6][k] ~= nil or jewelry_t[6][k] ~= nil or jewelry_t[7][k] ~= nil or jewelry_t[8][k] ~= nil then
		t = t + 1
	end
	return jewelry(npc,player,t)
end

function ww(npc, player,key)
	key= tonumber(key)
	tempstr =""
	for i = 1, #jewelry_t[key] do
		if lualib:GetBagFree(player) < 1 then
			lualib:SysWarnMsg(player, "你的包裹已满！")
		else
			lualib:AddItem(player, jewelry_t[key][i], 1, false, "", player)
			lualib:SysWarnMsg(player, "你获得了"..jewelry_t[key][i].."!")
			tempstr = tempstr .. ",[" .. jewelry_t[key][i] .. "]"
		end
	end
	return "你获得了" .. tempstr .. "!\n  \n<@jewelry#1 *01*返回>\n"
end

function get_jewelry(npc,player,key,t)
	lualib:AddItem(player,key,1,false,"首饰","首饰")
	return jewelry(npc,player,t)
end