local ye = 12
local jewelry_t = {--装备列表  --要新增新的道具，从最前面开始加 
	{"龙凤法杖","西域战刀","西域法杖","西域道剑","王者战刃","镇龙道剑","怒斩","命运之刃","血饮","龙纹剑","骨玉权杖","裁决之杖","魔杖","炼狱","祈祷之刃","凝霜","降魔","偃月","青冥藤杖","尖翎双刃(初级)","尖翎双刃(中级)","尖翎双刃(高级)","飞轮长刀","唤灵权杖","紫灵权杖","诛神炎杖","冥火之魇","摄魂之魇",},--武器
	{"凤鸣刀","怒海","日月法杖","倚天剑","龙泉剑","七星剑","寂灭法杖","赤霄剑","轮回法杖","赤龙刃","双龙剑","双龙剑(无特效)","铁血之刃","铁血法杖","铁血赤扇","新武器1","新武器2","新武器3","修罗","半月","海魂","八荒","青铜斧","短剑","铁剑","木剑","嗜魂法杖","屠龙","逍遥扇","镇天","幻灵绝咒","赤霄道剑","镇岳尚方","雷霆绝影","紫冥雷刃","广寒玄扇","坤悟","乘胜万里","灵羽法刃","凤羽法杖",},--武器
	{"朱雀道剑","玄天","鹤嘴锄","光剑","扳手","棒球棍","路牌","铁管","铁铲","球拍","平底锅","骨头","双节棍","榔头","电锯","菜刀","板凳","擀面杖",},--武器
	{"貂蝉双剑","赵云长枪","关羽大刀","死神镰刀","金箍棒","唐僧法杖","红月","嗜血屠刀","双面斧","玄铁刀","烈焰之刃","血魔刃","凤麟法杖","炎魔刺","逆天之刃","断头刃","通天金刃","权霸","夺魂","绿玉屠龙","玄冰夜火","无名剑",},--武器
	{"巨魔之刃","铁血屠龙","蛮王大刀","狂龙之刺","炎黄之刃","霸者之刃","秋月法杖","光芒法杖","七星法杖","妖魂法杖","七彩刃法","摄魄神杖","轮回道剑","匕首","乌木剑","青铜剑","凌风","破魂","斩马刀","银蛇","井中月","无极棍",},--武器
	{"仙道天剑","尘佛","凤凰道扇","蓝炎道剑","七彩刃道","清风落英","漫舞神剑","火龙长剑","诸葛亮羽毛扇","黄金霸天刃","黄金屠龙","黄金斥地","龙牙","赤血魔剑","罗刹","开天","光剑","方天画戟","七彩刃战","百战狂刀","深渊鬼刀","霸天之刃",},--武器
	{"末尺","魅影刃","黄金魅影刃","黄金霸龙刀","龙牙金刃","弑龙斩金","弑龙斩银","死亡棘刃","火眼双刃","封岩之锥","火之魅影","金龙宝刀","红星法杖","焚天","万绝神杖","神龙法杖","万剑归宗","时空道剑","斥地","烈域","霸龙刀","降龙神杖",},--武器
	{"血龙宝刀","地狱裁决","伏龙重刃","玄天之斩","金坤短戟","利齿钢刀","黄金马刀","钛银马刀","玄铁马刀","赤羽法杖","锍金斩魄","雷月藤杖","炽焰利斩","怒魔巨刃","冰龙魔杖","火龙魔杖","骨龙魔杖","碧灵藤杖","栗灵木杖","丹阳","怒火狂刀","魔域巨刃",},--武器
}

function main(npc, player)
	msg = "\n#COLORCOLOR_GREENG#     这里可以领取新首饰！#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ───────────────────────────────────────────#COLOREND#\n\n"
	msg = msg.."                       #COLORCOLOR_YELLOW##OFFSET<X:0,Y:0>##IMAGE1902700037#<@jewelry#1 *01*「新更新装备」   >  #COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_BROWN#    ───────────────────────────────────────────#COLOREND#\n"
--	msg = msg .. "#OFFSET<X:500,Y:2>##IMAGE<ID:1902700019>##OFFSET<X:0,Y:-2>#<@main *01*「返回」>"
    return msg
end

function jewelry(npc,player,t)
	local msg = "\n#COLORCOLOR_YELLOW#        ━━━━━━━━━━━━━━━━━━━━━━━━━#COLOREND##COLORCOLOR_SKYBLUE#美术资源武器展示区#COLOREND##COLORCOLOR_YELLOW#━━━━━━━━━━━━━━━━━━━━━━━#COLOREND#\n\n"
    msg = msg.."#COLORCOLOR_RED#    这里可以领取各种装备类道具！点击标题即可领取装备，比如点击「装备类」即可领取所有的装备！领取前，请注意包裹空间是否足够！#COLOREND#\n\n\n"
	msg = msg.."#COLORCOLOR_BROWN#      ┌──────┬──────┬──────┬──────┬──────┬──────┬──────┬──────┐#COLOREND#\n"
	msg = msg.."#COLORCOLOR_BROWN#      │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#1 *01*「武器」> #COLORCOLOR_BROWN# │#COLOREND# <@ww#2 *01*「武器」> #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#  │ #COLOREND# <@ww#3 *01*「武器」>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│ #COLOREND# <@ww#4 *01*「武器」>  #COLORCOLOR_BROWN##OFFSET<X:-2,Y:0>#│  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#5 *01*「武器」>  #COLORCOLOR_BROWN#│  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#6 *01*「武器」> #COLORCOLOR_BROWN# │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*「武器」> #COLORCOLOR_BROWN# │  #COLOREND##OFFSET<X:-2,Y:0>#<@ww#7 *01*「武器」> #COLORCOLOR_BROWN##OFFSET<X:-	2,Y:0># │#COLOREND#\n"
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
	msg = msg.."\n#COLORCOLOR_BROWN#      └──────┴──────┴──────┴──────┴──────┴──────┴────────────┴┘#COLOREND#\n\n"   
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
	lualib:AddItem(player,key,1,false,"装备","装备")
	return jewelry(npc,player,t)
end